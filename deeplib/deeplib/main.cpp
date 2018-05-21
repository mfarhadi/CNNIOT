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
	float Input[30000],Weight[30000],Bias[2000];
	float Temproray,Precision,Transfer_value,Convolve_value,Pool_Value;
	int H_Result,W_Result,Index,Index2,Parameters[17],Counter,R_Plane,R_Row,Relu_Activation,Load_Input,Load_Weight,Stride_Size[2],Window_Size[2], Filter_size[4],Input_Size[3],Bias_Activation,Pooling_Mode;

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
		Relu_Activation=Parameters[13]; // Relu Activation
		Bias_Activation=Parameters[12]; // Bias Activation
		Load_Input=Parameters[15]; // Activate receiver to get new Input
		Load_Weight=Parameters[16]; // Activate receiver to get new Weights
		Stride_Size[0]=Parameters[9]; // Stride H
		Stride_Size[1]=Parameters[10]; // Stride W
		Filter_size[0]=Parameters[5];  // Number of Filters (output planes)
		Filter_size[1]=Parameters[6];  // Filter Depth
		Filter_size[2]=Parameters[7];  // Filter H
		Filter_size[3]=Parameters[8];  // Filter W
		Input_Size[0]=Parameters[2];  // Input Depth
		Input_Size[1]=Parameters[3];  // Input H
		Input_Size[2]=Parameters[4];  // Input W


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
		{
		// Get Bias (if there is Bias)
		if(Bias_Activation==1)
		{
			for (int idx=0; idx<Filter_size[0];idx++)
			{
				Transfer_value=2;
				Temproray= Axi_Transfer(in_data, out_data,Transfer_value,0);
				Bias[idx]= Temproray/Precision;
			}
		}

		// Layer weights load
		for (int idx=0; idx<(Filter_size[0]*Filter_size[1]*Filter_size[2]*Filter_size[3]);idx++)
		{
			Transfer_value=3;
			Temproray= Axi_Transfer(in_data, out_data,Transfer_value,0);;
			Weight[idx]= Temproray/Precision;

		}
		}

		H_Result=int(((Input_Size[1]-Filter_size[2])/Stride_Size[0])+1); // calculate Output dimension
		W_Result=int(((Input_Size[2]-Filter_size[3])/Stride_Size[1])+1); // calculate Output dimension

		// Send output Result to CPU
	    Temproray=(Filter_size[0]*W_Result*H_Result);
	    Axi_Transfer(in_data, out_data,Temproray,0);
	    Axi_Transfer(in_data, out_data,H_Result,0);
	    Axi_Transfer(in_data, out_data,W_Result,0);


	    // Main Convolution
		// Parameters In convolution { 0-Module selection,1-Input size, 2-Input D, 3-Input H, 4-Input W, 5-Filter N,6-
		// Filter D,7- Filter H,8- Filter W,9- stride H,10- Stride w,11- padding,12- bias size,13- Relu_Activation, 14-precision 15-Load_Input 16-Load_Weight}
	    for (int idx=0; idx<Filter_size[0];idx++)
	        {
	        for(int idx2=0; idx2<H_Result;idx2++)
	            {
	            for(int idx3=0; idx3<W_Result;idx3++)
	                {
	            	Index2= (idx*(H_Result*W_Result))+(idx2*W_Result)+idx3; // store location of convolution result
	            	Convolve_value=0;
#pragma HLS PIPELINE II=1
	            	for(int k=0; k<Filter_size[1];k++)
	            	{
	            		R_Plane=(k*(Input_Size[1]*Input_Size[2])); // find plane of element for multiplication
						for(int i=0; i<Filter_size[2];i++)
							{
							R_Row=R_Plane+(((idx2*(Stride_Size[0]))+i)*Input_Size[2]);  // find Row of element for multiplication
							for(int j=0; j<Filter_size[3];j++)
								{
									Index=R_Row+(idx3*Stride_Size[1])+j;  // find Input element for multiplication
									// Multiply and accumulate
									Convolve_value=Convolve_value+Input[Index]*Weight[((idx*(Filter_size[1]*Filter_size[2]*Filter_size[3]))+(k*Filter_size[2]*Filter_size[3])+(i*Filter_size[3])+j)];

								}
							}
	            	}
	            	if(Bias_Activation!=0)
	            	{
						//bias

	            		Convolve_value=Convolve_value+Bias[idx];
	            	}
	            	if(Relu_Activation==1)
	            	{
	            		if (Convolve_value < 0) Convolve_value=0;
	            	}
	            	Convolve_value=Convolve_value*Precision;
	            	Axi_Transfer(in_data, out_data,int(Convolve_value),0); // Return Result to CPU
	                }
	            }
	        }
	       }// End of Convolution

	    //POOLING

	    // Parameters In POOLING{ 0-Module selection,1-Input size, 2-Input D, 3-Input H, 4-Input W, 5-Pooling window H,6-
	    	// Pooling window W,7- stride H,8- Stride W,9- Pooling Type {0:max , 1: Average},10- padding,11- Relu_Activation, 12-precision, 13-Load_Input }


	if(Parameters[0]==1)
	{


		Input_Size[0]=Parameters[2];  // Input Depth
		Input_Size[1]=Parameters[3];  // Input H
		Input_Size[2]=Parameters[4];  // Input W
		Window_Size[0]=Parameters[5];  // pooling window H
		Window_Size[1]=Parameters[6];  // pooling window W
		Stride_Size[0]=Parameters[7]; // Stride H
		Stride_Size[1]=Parameters[8]; // Stride W
		Pooling_Mode=Parameters[9]; // pooling Mode 0: Max , 1:Average
		Relu_Activation=Parameters[11]; // Relu Activation
		Precision=Parameters[12];
		Load_Input=Parameters[13]; // Activate receiver to get new Input


		// Get Input Tensor
		if(Load_Input==1)
		{
		for (int idx=0; idx<Parameters[1];idx++)
		{
			Temproray= Axi_Transfer(in_data, out_data,1,0);
			Input[idx]= Temproray;
		}
		}

		H_Result=int(((Input_Size[1])/Stride_Size[0])); // calculate Output dimension
		W_Result=int(((Input_Size[2])/Stride_Size[1])); // calculate Output dimension

		// Send output Result to CPU
	    Temproray=(Input_Size[0]*W_Result*H_Result);
	    Axi_Transfer(in_data, out_data,Temproray,0);
	    Axi_Transfer(in_data, out_data,H_Result,0);
	    Axi_Transfer(in_data, out_data,W_Result,0);

	    // Pooling Function
	    for (int idx=0; idx<Input_Size[0];idx++)
	        {
	        for(int idx2=0; idx2<H_Result;idx2++)
	            {
	            for(int idx3=0; idx3<W_Result;idx3++)
	                {
	            	Pool_Value=0;
#pragma HLS PIPELINE II=1
	            	for(int k=0; k<Window_Size[0];k++)
	            	{
						for(int i=0; i<Window_Size[1];i++)
							{
							// Maximum Pooling Function
							if(Pooling_Mode==0)
							{
							if(k==0 && i==0)
								{
								Pool_Value=Input[(idx*(Input_Size[1]*Input_Size[2]))+(idx2*(Stride_Size[0])*Input_Size[2])+ (idx3*Stride_Size[1])];
								}
								else
								{

									Temproray=Input[(idx*(Input_Size[1]*Input_Size[2]))+((idx2*(Stride_Size[0])+k)*Input_Size[2])+(idx3*Stride_Size[1])+i];
									if (Temproray>Pool_Value) Pool_Value=Temproray;
								}
							}
							// Average Pooling Function
							if(Pooling_Mode==1)
							{
							if(k==0 && i==0)
								{
								Pool_Value=Pool_Value+Input[(idx*(Input_Size[1]*Input_Size[2]))+((idx2*(Stride_Size[0])+k)*Input_Size[2])+(idx3*Stride_Size[1])+i];
								}
							}
	            	}
	            	}
					if(Pooling_Mode==1)
					{
						Pool_Value=(Pool_Value/(Window_Size[0]*Window_Size[0]));
					}
	            	if(Relu_Activation==1)
	            	{
	            		if (Pool_Value < 0) Pool_Value=0;
	            	}
	            	Axi_Transfer(in_data, out_data,int(Pool_Value),0); // Return Result to CPU
	                }
	            }
	        }

			}// End of Pooling

	//Fully Connected
    // Parameters In Fully Connected{ 0-Module selection,1-Input size, 2-Output size 3- Relu_Activation, 4-precision, 5-Load_Input, 6- Bias Activation }
	if(Parameters[0]==2)
		{



			Input_Size[0]=Parameters[1];  // Input Depth
			Relu_Activation=Parameters[3]; // Relu Activation
			Precision=Parameters[4];
			Load_Input=Parameters[5]; // Activate receiver to get new Input
			Bias_Activation=Parameters[6]; // Bias Activation

			// Get Input Tensor
			if(Load_Input==1)
			{
			for (int idx=0; idx<Input_Size[0];idx++)
			{
				Temproray= Axi_Transfer(in_data, out_data,Input_Size[0],0);
				Input[idx]= Temproray/Precision;
			}
			}

			// Get Bias (if there is Bias)
			if(Bias_Activation==1)
			{
				for (int idx=0; idx<Parameters[2];idx++)
				{
					Transfer_value=2;
					Temproray= Axi_Transfer(in_data, out_data,Transfer_value,1);
					Bias[idx]= Temproray/Precision;
				}
			}

		    for (int idx=0; idx<Parameters[2];idx++)
		        {
		    	Transfer_value=0;
		        for(int idx2=0; idx2<Input_Size[0];idx2++)
		            {
		        		Temproray= Axi_Transfer(in_data, out_data,4,0);
		        		Temproray=Temproray/Precision;
		        		Transfer_value=Transfer_value+ Input[idx2]*Temproray;
		            }
				if(Relu_Activation==1)
				{
					if (Transfer_value < 0) Transfer_value=0;
				}
				if(Bias_Activation==1)
				{
					Transfer_value=Transfer_value+Bias[idx];
				}
				Transfer_value=Transfer_value*Precision;
				Weight[idx]= Transfer_value;
				}
		    for(int idx=0; idx<Parameters[2];idx++)
		    {
		    	Axi_Transfer(in_data, out_data,int(Weight[idx]),0); // Return Result to CPU
		    }
		       }// End of Fully Connected Layer


		} // End of Main While

}







