#include "ap_axi_sdata.h"
#include "ap_int.h"

typedef ap_axiu<32,1,1,1> AXI_VAL;
// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface

// --------------------------------------------------------
// functions to insert and extract elements from an axi stream
// includes conversion to correct data type

int Axi_Transfer(AXI_VAL* in_data, AXI_VAL* out_data, int value, int loop)
{
	int Temproray;
	Temproray= in_data->data;
	if (loop==1)
	{
	out_data->data=Temproray;
	}else out_data->data=value;
	out_data->dest = in_data->dest;
	out_data->id = in_data->id;
	out_data->keep = in_data->keep;
	out_data->last = in_data->last;
	out_data->strb = in_data->strb;
	out_data->user = in_data->user;
	return Temproray;
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
	float Input[6000],Weight[5000],Bias[1000];
	float Temproray,Precision,Transfer_value,Convolve_value;
	int H_Result,W_Result,Index,Index2,Parameters[17],Counter,R_Plane,R_Row,Relu_Activation,Load_Input,Load_Weight;
	// Get Module initial parameters

	for(int idx=0; idx< (17); idx++)
		{
		Transfer_value=0;
		Parameters[idx]= Axi_Transfer(in_data, out_data,Transfer_value,1);
	}

	//Convoulution

	// Parameters In convolution { 0-Module selection,1-Input size, 2-Input D, 3-Input H, 4-Input W, 5-Filter N,6-
	// Filter D,7- Filter H,8- Filter W,9- stride H,10- Stride w,11- padding,12- bias size,13- Relu_Activation, 14-precision 15-Load_Input 16-Load_Weight}

	if(Parameters[0]==0)
	{
		Relu_Activation=Parameters[13];
		Load_Input=Parameters[15];
		Load_Weight=Parameters[16];

		Precision=Parameters[14];
		// Get Input Tensor
		if(Load_Input==1)
		{
		for (int idx=0; idx<Parameters[1];idx++)
		{
			Temproray= Axi_Transfer(in_data, out_data,1,0);
			Input[idx]= Temproray/Precision;
		}
		}
		if(Load_Weight==1)
		// Get Bias (if there is Bias)
		if(Parameters[12]==1)
		{
			for (int idx=0; idx<Parameters[5];idx++)
			{
				Transfer_value=2;
				Temproray= Axi_Transfer(in_data, out_data,Transfer_value,0);
				Bias[idx]= Temproray/Precision;
			}
		}

		// Layer weights load
		for (int idx=0; idx<(Parameters[5]*Parameters[6]*Parameters[7]*Parameters[8]);idx++)
		{
			Transfer_value=3;
			Temproray= Axi_Transfer(in_data, out_data,Transfer_value,0);;
			Weight[idx]= Temproray/Precision;

		}
		}

		H_Result=int(((Parameters[3]-Parameters[7])/Parameters[9])+1); // calculate Output dimension
		W_Result=int(((Parameters[4]-Parameters[8])/Parameters[10])+1); // calculate Output dimension

		// Send output Result to CPU
	    Temproray=(Parameters[5]*W_Result*H_Result);
	    Axi_Transfer(in_data, out_data,Temproray,0);
	    Axi_Transfer(in_data, out_data,H_Result,0);
	    Axi_Transfer(in_data, out_data,W_Result,0);


	    // Main Convolution

	    for (int idx=0; idx<Parameters[5];idx++)
	        {
	    	H_Result=int(((Parameters[3]-Parameters[7])/Parameters[9])+1); // calculate Output dimension
	        for(int idx2=0; idx2<H_Result;idx2++)
	            {
	        	W_Result=int(((Parameters[4]-Parameters[8])/Parameters[10])+1); // calculate Output dimension
	            for(int idx3=0; idx3<W_Result;idx3++)
	                {
	            	Index2= (idx*(H_Result*W_Result))+(idx2*W_Result)+idx3; // store location of convolution result
	            	Convolve_value=0;
	            	for(int k=0; k<Parameters[6];k++)
	            	{
	            		R_Plane=(k*(Parameters[3]*Parameters[4])); // find plane of element for multiplication
						for(int i=0; i<Parameters[7];i++)
							{
							R_Row=R_Plane+(((idx2*(Parameters[9]))+i)*Parameters[4]);  // find Row of element for multiplication
							for(int j=0; j<Parameters[8];j++)
								{
									Index=R_Row+(idx3*Parameters[10])+j;  // find Input element for multiplication
									// Multiply and accumulate
									Convolve_value=Convolve_value+Input[Index]*Weight[((k*(Parameters[7]*Parameters[8]))+(i*Parameters[8])+j)];
								}
							}
	            	}
	            	if(Parameters[12]!=0)
	            	{
						//bias (if ro ezafe koni hatman)

	            		Convolve_value=Convolve_value+Bias[idx];
	            	}
	            	if(Relu_Activation==1)
	            	{
	            		if (Convolve_value < 0) Convolve_value=0;
	            	}
	            	Convolve_value=Convolve_value*Precision;
	            	Axi_Transfer(in_data, out_data,int(Convolve_value),0); // Return Result to CPU
//Input[Index2]=Convolve_value; // Copy Final result to Input to reduce further Transmission in Sequential operation
	                }
	            }
	        }// End of Convolution

	    //POOLING

	    // Parameters In POOLING{ 0-Module selection,1-Input size, 2-Input D, 3-Input H, 4-Input W, 5-Filter N,6-
	    	// Filter D,7- Filter H,8- Filter W,9- stride H,10- Stride w,11- padding,13- Relu_Activation, 14-precision 15-Load_Input }
/*

		if(Parameters[0]==1)
		{

			// Get Input Tensor
			if(Load_Input==1)
			{
			for (int idx=0; idx<Parameters[1];idx++)
			{
				Temproray= Axi_Transfer(in_data, out_data,1,0);
				Input[idx]= Temproray/Precision;
			}
			}

			H_Result=int(((Parameters[3]-Parameters[7])/Parameters[9])+1); // calculate Output dimension
			W_Result=int(((Parameters[4]-Parameters[8])/Parameters[10])+1); // calculate Output dimension

			// Send output Result to CPU
		    Temproray=(Parameters[5]*W_Result*H_Result);
		    Axi_Transfer(in_data, out_data,Temproray,0);
		    Axi_Transfer(in_data, out_data,H_Result,0);
		    Axi_Transfer(in_data, out_data,W_Result,0);


			// { 0-Module selection,1-Input size, 2-Input D, 3-Input H, 4-Input W, 5-Filter N,6-
			// Filter D,7- Filter H,8- Filter W,9- stride H,10- Stride w,11- padding,12- bias size,13- Relu}

		    // Main Convolution

		    for (int idx=0; idx<Parameters[5];idx++)
		        {
		    	H_Result=int(((Parameters[3]-Parameters[7])/Parameters[9])+1); // calculate Output dimension
		        for(int idx2=0; idx2<H_Result;idx2++)
		            {
		        	W_Result=int(((Parameters[4]-Parameters[8])/Parameters[10])+1); // calculate Output dimension
		            for(int idx3=0; idx3<W_Result;idx3++)
		                {
		            	Index2= (idx*(H_Result*W_Result))+(idx2*W_Result)+idx3; // store location of convolution result
		            	Convolve_value=0;
	#pragma HLS PIPELINE II=1
		            	for(int k=0; k<Parameters[6];k++)
		            	{
		            		R_Plane=(k*(Parameters[3]*Parameters[4])); // find plane of element for multiplication
							for(int i=0; i<Parameters[7];i++)
								{
								R_Row=R_Plane+(((idx2*(Parameters[9]))+i)*Parameters[4]);  // find Row of element for multiplication
								for(int j=0; j<Parameters[8];j++)
									{
										Index=R_Row+(idx3*Parameters[10])+j;  // find Input element for multiplication
										// Multiply and accumulate
										Convolve_value=Convolve_value+Input[Index]*Weight[((k*(Parameters[7]*Parameters[8]))+(i*Parameters[8])+j)];
									}
								}
		            	}
		            	if(Parameters[12]!=0)
		            	{
							//bias (if ro ezafe koni hatman)

		            		Convolve_value=Convolve_value+Bias[idx];
		            	}
		            	if(Relu_Activation==1)
		            	{
		            		if (Convolve_value < 0) Convolve_value=0;
		            	}
		            	Convolve_value=Convolve_value*Precision;
		            	Axi_Transfer(in_data, out_data,int(Convolve_value),0); // Return Result to CPU
		            	Input[Index2]=Convolve_value; // Copy Final result to Input to reduce further Transmission in Sequential operation
		                }
		            }
		        }// End of Convolution
*/

		} // End of Main While

}







