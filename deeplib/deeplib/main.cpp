#include "ap_axi_sdata.h"
#include "ap_int.h"

typedef ap_axiu<32,1,1,1> AXI_VAL;
// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface

// --------------------------------------------------------
// functions to insert and extract elements from an axi stream
// includes conversion to correct data type


int pop_stream(AXI_VAL* e)
{
#pragma HLS INLINE

	int ret = e->data;

	volatile ap_uint<sizeof(int)> strb = e->strb;
	volatile ap_uint<sizeof(int)> keep = e->keep;
	volatile ap_uint<1> user = e->user;
	volatile ap_uint<1> last = e->last;
	volatile ap_uint<1> id = e->id;
	volatile ap_uint<1> dest = e->dest;
	return ret;
}

void push_stream(AXI_VAL* e,int const &v, bool &last)
{
#pragma HLS INLINE

	e->data = v;
	e->strb = (1<<sizeof(int))-1;
	e->keep = (1<<sizeof(int))-1;
	e->user = 0;
	e->last = last ? 1 : 0;
	e->id = 0;
	e->dest = 0;
}

//-----------------------------------------------------------------
// Main function

void cnn (AXI_VAL* in_data, AXI_VAL* out_data)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis      port=in_data
#pragma HLS INTERFACE axis      port=out_data

while(true)
{
	float Input[5000],Weight[5000],Bias[1000], Result[5000];
	float Temproray,Precision;
	int H_Result,W_Result,Index,Index2,Parameters[15],Transfer_value,Convolve_value,counter=0,Rec_counter=0,Transfer_array[3000],Result_counter;
	bool Last_indicate=false;

	// Get Module initial parameters
	// { 0-Module selection,1-Input size, 2-Input D, 3-Input H, 4-Input W, 5-Filter N,6-
	// Filter D,7- Filter H,8- Filter W,9- stride H,10- Stride w,11- padding,12- bias size,13- Relu, 14-precision}
	for(int idx=0; idx< (15); idx++)
		{
		Transfer_value=0;
		Parameters[idx]= pop_stream(in_data);
		if (idx==14) Last_indicate=true;
		if (Rec_counter==2999) Rec_counter=0;
		push_stream(out_data,Parameters[idx], Last_indicate);
	}
	Precision=Parameters[14];
	//Convoulution with New weights, bias
	if(Parameters[0]==0)
	{

		// Get Input Tensor
		for (int idx=0; idx<Parameters[1];idx++)
		{
			Temproray= pop_stream(in_data);
			Input[idx]= Temproray/Precision;
			Transfer_value=1;
			if (idx==(Parameters[1]-1)) Last_indicate=true;
			if (Rec_counter==2999) Rec_counter=0;
			push_stream(out_data,Transfer_value, Last_indicate);
		}
		// Get Bias (if there is Bias)
		if(Parameters[12]==1)
		{
			for (int idx=0; idx<Parameters[5];idx++)
			{
				Transfer_value=2;
				Temproray= pop_stream(in_data);
				Bias[idx]= Temproray/Precision;
				if (idx==(Parameters[5]-1)) Last_indicate=true;
				if (Rec_counter==2999) Rec_counter=0;
				push_stream(out_data,Transfer_value, Last_indicate);
			}
		}

		// Layer weights load
		for (int idx=0; idx<(Parameters[5]*Parameters[6]*Parameters[7]*Parameters[8]);idx++)
		{
			Transfer_value=3;
			Temproray= pop_stream(in_data);
			Weight[idx]= (Temproray/Precision);
			if (idx==((Parameters[5]*Parameters[6]*Parameters[7]*Parameters[8])-1)) Last_indicate=true;
			if (Rec_counter==2999) Rec_counter=0;
			push_stream(out_data,Weight[idx], Last_indicate);

		}
		// { 0-Module selection,1-Input size, 2-Input D, 3-Input H, 4-Input W, 5-Filter N,6-
		// Filter D,7- Filter H,8- Filter W,9- stride H,10- Stride w,11- padding,12- bias size,13- Relu}

	    for (int idx=0; idx<Parameters[5];idx++)
	        {
	    	H_Result=int(((Parameters[3]-Parameters[7])/Parameters[9])+1); // calculate Output dimension
	        for(int idx2=0; idx2<H_Result;idx2++)
	            {
	        	W_Result=int(((Parameters[4]-Parameters[8])/Parameters[10])+1); // calculate Output dimension
	            for(int idx3=0; idx3<W_Result;idx3++)
	                {
	            	Index2= (idx*(H_Result*W_Result))+(idx2*W_Result)+idx3;
	            	Convolve_value=0;
	            	for(int k=0; k<Parameters[6];k++)
	            	{
	            		Index=(k*(Parameters[3]*Parameters[4])); // find plane of element for multiplication
						for(int i=0; i<Parameters[7];i++)
							{
							Index=Index+((idx2*(Parameters[9]))*Parameters[4])+i;  // find Row of element for multiplication
							for(int j=0; j<Parameters[8];j++)
								{
									Index=Index+(idx3*Parameters[10])+j;  // find Input element for multiplication
									// Multiply and accumulate
									Convolve_value=Convolve_value+Input[Index]*Weight[((k*(Parameters[7]*Parameters[8]))+(i*Parameters[8])+j)];
								}
							}
	            	}
	            	if(Parameters[12]!=0)
	            	{
						//bias

	            		Convolve_value=Convolve_value+Bias[idx];

	            	}
	            	Result[Index2]=Convolve_value*Precision;

	                }

	            }
	        }

		// Return Result
	    for(int idx=0; idx<3000; idx++)
	    {
		if (idx==2999)
			{
			Last_indicate=true;
			Rec_counter=0;
			}
		Last_indicate=true;
		push_stream(out_data,Result[idx], Last_indicate);
	    }


}


}

}






