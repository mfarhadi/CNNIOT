#include <stdio.h>
#include <stdlib.h>
#include <iostream>

#include "mmult.h"

void matrix_multiply_ref(T offsets[CLASSES], T out[CLASSES])
{
	// matrix multiplication of a A*B matrix
	for (int i = 0; i < CLASSES; ++i) {

			out[i] = offsets[classes];
		}
	return;
}


int main(void)
{
	int i,j,err;

	union
	{
		axi_T packet;
		struct {T f0; T f1;} val;
	} converter;

	T offsets[CLASSES];
	T weights[CLASSES][FEAT];
	T inputs[BATCH][FEAT];
	T matMult_sw[BATCH][CLASSES];
	T matMult_hw[BATCH][CLASSES];

	/** Matrix Initiation */
	for(i = 0; i<CLASSES; i++) {
		offsets[i] = (T) (i);
	}

	printf("DEBUGGING AXI4 STREAMING DATA TYPES!\r\n");

	// prepare data for the DUT
	AXI_VAL in_stream[IS_SIZE];
	AXI_VAL out_stream[OS_SIZE];

	// input and output stream indices
	int is_idx = 0;
	int os_idx = 0;

	// stream in the offset vector
	for(int i=0; i<CLASSES; i+=WIDTH_RATIO) {
		converter.val.f0 = offsets[i+0];
		converter.val.f1 = offsets[i+1];
		in_stream[is_idx++] = push_stream(converter.packet, 0);
	}


	//call the DUT
	mmult_hw(in_stream, out_stream);

	// extract the output matrix from the out stream
	for(int i=0; i<BATCH; i++) {
		for(int j=0; j<CLASSES; j+=WIDTH_RATIO) {
			converter.packet = pop_stream(out_stream[os_idx++]);
			matMult_hw[i][j+0] = converter.val.f0;
			matMult_hw[i][j+1] = converter.val.f1;
		}
	}

	/* reference Matrix Multiplication */
	matrix_multiply_ref(offsets, weights, inputs, matMult_sw);

	/** Matrix comparison */
	err = 0;
	for (i = 0; i<BATCH; i++) {
		for (j = 0; j<CLASSES; j++) {
			if (matMult_sw[i][j] != matMult_hw[i][j]) {
				err++;
				std::cout << i << "," << j << ": expected " << matMult_sw[i][j] << " but got " << matMult_hw[i][j] << std::endl;
			}
		}
	}

	if (err == 0)
		printf("Matrices identical ... Test successful!\r\n");
	else
		printf("Test failed!\r\n");

	return err;

}
