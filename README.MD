# CNNIOT

CNNIOT is a lightweight deep learning framework in python, to run convolution neural networks inside IOT devices. The idea underlying its design is to provide an easy-to-understand, fast and energy efficient platform and codebase. The framework supports major functions of CNN, such as convolution, pooling (max and average) and fully connected layer. The framework is implemented to support embedded platforms such as the Xilinx PYNQ FPGA which makes it fast and energy efficient. We envision that a variety of applications in computer vision, natural language processing, robotics can be implemented using this framework.

## How To Use

For a quick overview on the CNNIOT please watch [my video tutorial](https://www.youtube.com/watch?v=0sYbDA_sCZI).

* Copy Bitstream.bit, Bitstream.tcl, CNNIOT.py into your project folder inside pynq
* import CNNIOT in your python file

Lenet_FPGA.ipynb is an example of our library.

## How to extract weights and bias 

For extracting weights and bias from pretrained model in pytorch please watch [my video tutorial](https://www.youtube.com/watch?v=TKpMIX_FJZI&t=114s).
You can also use following resouces from PyTorch
* [Torchvison](https://pytorch.org/docs/master/torchvision/models.html).
* [Numpy Bridge](https://pytorch.org/tutorials/beginner/blitz/tensor_tutorial.html#numpy-bridge).

### PYNQ board

The PYNQ board website complete with documentation and forums is available [here](http://www.pynq.io/).
Follow the **Getting Started** tutorial to get your Pynq board set up (please read the notes below first).

**SD card flashing notes**
* We recommend using [Etcher](https://etcher.io/) for one-step SD-card flashing. You can download the image for the SD card on the PYNQ board [website](http://www.pynq.io/).

**Board setup notes:**
* Your boot jumper should be set to SD position.
* Your power jumper should be set to the REG position.
* No need to connect a USB cable.
* Connect your 12V adapter to power on the board.

**Ethernet connection notes:**
* Instead of connecting to a network, you will connect the board directly to an Ethernet port on the computer.
* Note that it'll be easier easier to connect to the board via your primary OS rather than your VM (if you are using one).

**Connecting to Jupyter notes:**
* It seems like you won’t be able to connect to the board successfully using either Firefox or Safari. We recommend using [Chrome](https://www.google.com/chrome/) instead.

### How to define Convolution Layer

conv=CNNIOT.Convolution2D(In.Planes, Out.Planes, Filter.H,Filter.W ,Stride.H, Stride.W, Padding,Relu,Weight, Bias,Precision)

Output= Conv.forward(data,CNNIOT.dma,Load.Input)

* In.Planes: Number of channels in the input tensor
* Out.Planes: Number of channels produced by the convolution
* Filter.H \& Filter.W:  size of the convolution kernel or filter's dimensions
* Stride size: stride of the convolution 
* Padding: get the size of padding for input tensor
* Relu: by setting this value to one, Relu function will be applied to the result of this layer.
* Weight: accept weight tensor in Numpy tensor array format 
* Bias: accept bias tensor in Numpy tensor array format 
* precision: user can control the float number precision of input and output of layer
* Input data: the input tensor
* CNNIOT.dma: user can use the default bitsteram or their own bitstream 

### How to define Pooling Layer

pool=CNNIOT.Pool(P.H,P.W,S.H,S.W,Pooling,Padding,Relu,Precision)

Output= pool.forward(data,CNNIOT.dma)

* Input data:the input Tensor
* Window size: window size of the pooling function 
* Stride size: stride size  of the pooling function 
* Pooling: Max as setting pooling layer as max pooling function or Avg as setting the layer as average pooling
* Relu: by setting this switch on, Relu function will be applied to the result of this layer
* Padding: get the size of padding for the input tensor
* precision: user can control the float number precision of input and output of layer
* item CNNIOT.dma: user can go with the default bitsteram or use their own bitstream 

### How to define fully connected Layer

FC=CNNIOT.FC(Input Size,Output Size,Relu,Weight,Bias,precision)

Output= FC.forward(data,CNNIOT.dma)

* Input Size: configure layer to accept specific input;
* Output Size: configure output size of layer;
* Relu: by setting this value to one then Relu function will be applied to the result of this layer;
* Weight: the tensor of weights in numpy tensor array format and it's dimension and size should be $ Output Size \times Input Size$; 
* Bias: the bias tensor in numpy tensor array format and it's dimension and size should be $Output Size$
* precision: user can control the float number precision of input and output of layer
* CNNIOT.dma: user can go with the default bitsteram or use their own bitstream;


### High Level Synthesis

Hardware is most commonly described with low-level hardware description languages such as Verilog or VHDL. Those domain specific languages have a fairly steep learning curve so we’ll rely on a higher-level entry language instead: [HLS-C](https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0012-vivado-high-level-synthesis-hub.html).

This high-level language is very similar to C/C++, but incorporates compiler pragmas to express hardware-specific optimizations. While HLS-C still requires getting used to, its learning curve is not as steep as Verilog, and when utilized correctly can outperform expert-designed hardware code.

### Hardware Kit Overview

You will be given an FPGA kit that consists of the following components:
* A [PYNQ board](http://www.pynq.io/) with a Xilinx [Zynq](https://www.xilinx.com/products/silicon-devices/soc/zynq-7000.html) Programmable SoC (Artix 7 FPGA + ARM Cortex A-9 Processor).
* An external 12V, 3A power adapter to power on the PYNQ board.
* An SD card to serve as primary drive.

In addition, you will need an Ethernet port on your machine to communicate with the board. We can provide complementary Ethernet to USB adapters.

# How to generate bitstream from scratch:
## install vivado
### Linux 64-bit OS

If you don’t have a 64-bit Linux OS installed on your machine, we recommend [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox) (free), [VMWare](http://www.vmware.com/) (free under [CSE VMWare Academic Program](https://www.cs.washington.edu/lab/software/homeVMs)), or dual booting your machine. 

Make sure to allocate at least 32GB (or 64GB preferably) of disk drive space for your VM’s main partition. In addition, compilation jobs can be resource-intensive, so allocating 4-8GB of DRAM for your VM would be wise. We’ve tested the tools under Ubuntu 16.04.2 but any of the following OSes or newer should work:
* Red Hat Enterprise Linux 6.6 64-bit
* CentOS Linux 6.7
* SUSE Enterprise Linux 11.4 64-bit
* Ubuntu Linux 16.04.1 LTS 64-bit

**Note** If you're using VMWare, do not have your source and work directory sit on a shared drive with your host OS. For some reason VMWare directory sharing is slow to update file changes from the host OS to the virtual OS, which can lead to compilation bugs.

### Vivado HL WebPACK 2017.1

You’ll need to install Xilinx’ FPGA compilation toolchain, [Vivado HL WebPACK 2017.1](https://www.xilinx.com/products/design-tools/vivado.html), which a license-free version of the Vivado HLx toolchain.

1. Go to the [download webpage](https://www.xilinx.com/support/download.html), and download the Linux Self Extracting Web Installer for Vivado HL 2017.1 WebPACK and Editions.
2. You’ll have to sign in with a Xilinx account. This requires a Xilinx account creation that will take 2 minutes.
3. Pass the Name and Address Verification by clicking “Next”, and you will get the opportunity to download a binary file, called `Xilinx_Vivado_SDK_2017.1_0415_1_Lin64.bin`.
4. Now that the file is downloaded, go to your Downloads directory, and change the file permissions so it can be executed: `chmod u+x Xilinx_Vivado_SDK_2017.1_0415_1_Lin64.bin`
5. Now you can execute the binary: `./Xilinx_Vivado_SDK_2017.1_0415_1_Lin64.bin`
6. A Vivado 2017.1 Installer program GUI will launch.
   * Click “Next” on the **Welcome** screen.
   * Enter your Xilinx User Credentials under “User Authentication” and select the “Download and Install Now” before clicking “Next” on the **Select Install Type** screen.
   * Accept all terms before clicking on “Next” on the **Accept License Agreements** screen.
   * Select the “Vivado HL WebPACK” before clicking on “Next” on the **Select Edition to Install** screen.
   * Under the **Vivado HL WebPACK** screen, before hitting “Next", check the following options (the rest should be unchecked):
     * Design Tools -> Vivado Design Suite -> Vivado
     * Design Tools -> Vivado Design Suite -> Vivado High Level Synthesis
     * Devices -> Production Services -> SoCs -> Zynq-7000 Series
   * Your total download size should be about 3GB and the amount of Disk Space Required 13GB.
   * Set the installation directory before clicking “Next” on the **Select Destination Directory** screen. It might highlight some paths as red - that’s because the installer doesn’t have the permission to write to that directory. In that case select a path that doesn’t require special write permissions (e.g. in your home directory).
   * Hit “Install” under the **Installation Summary** screen.
   * An **Installation Progress Window** will pop-up to track progress of the download and the installation.
   * This process will take about 20-30 minutes depending on your connection speed.
   * A pop-up window will inform you that the installation completed successfully. Click "OK".
   * Finally the **Vivado License Manager** will launch. Select "Get Free ISE WebPACK, ISE/Vivado IP or PetaLinux License" and click "Connect Now" to complete the license registration process. 
7. The last step is to update your `~/.bashrc` with the following line:
```bash
### Xilinx Vivado 2017.1 environment
source <install_path>/Vivado/2017.1/settings64.sh
```
## Generate Bitstream

For generating bitstream using vivado please watch [my video tutorial.](https://www.youtube.com/watch?v=-svVmfeA3lk).

## Team Members
* Mohammad Farhadi Bajestani
* Mehdi Ghasemi
* Yezhou Yang


### References

* Paszke A, Gross S, Chintala S, Chanan G, Yang E, DeVito Z, Lin Z, Desmaison A, Antiga L, Lerer A. Automatic differentiation in PyTorch.


