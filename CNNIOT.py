from pynq import Xlnk
from pynq import Overlay
import numpy as np
import pynq.lib.dma

overlay = Overlay('Bitstream.bit')   # load bitstream inside FPGA
dma = overlay.CNNIOT.CNN_dma         # define module DMA

xlnk = Xlnk()


class Convolution2D:
    def __init__(self, Input_planes, Out_planes, Conv_H, Conv_W, Stride_H, Stride_W, Padding, Relu, Weight,
                 Bias=np.any([False]), Precision=10000):
        self.Input_planes = Input_planes
        self.Out_planes = Out_planes
        self.Conv_H = Conv_H
        self.Conv_W = Conv_W
        self.Stride_H = Stride_H
        self.Stride_W = Stride_W
        self.Padding = Padding
        self.Relu = Relu
        assert len(Weight.shape) == 4, 'Input Tensor deminision should be (D,X,Y,Z) '
        self.Weight = np.multiply(Weight.flatten(), Precision)
        if (Bias.any()):
            self.Bias = np.multiply(Bias, Precision)
        else:
            self.Bias = np.any([False])
        self.Precision = Precision  # precision of weights and bias in our calculation inside FPGA

    def forward(self, data, dma, Load_Input=1, Load_Weight=1):

        assert len(data.shape) == 3, 'Input Tensor deminision should be (X,Y,Z) '
        in_buffer = xlnk.cma_array(shape=(3000,), dtype=np.int32)
        data = np.multiply(data, self.Precision)
        x = data.flatten()
        size = data.shape

        Configuration = xlnk.cma_array(shape=(17,), dtype=np.int32)
        Configuration[0] = 0
        Configuration[1] = x.shape[0]
        Configuration[2] = size[0]  # image deminsion d
        Configuration[3] = size[1]  # image deminsion h
        Configuration[4] = size[2]  # image deminsion w
        Configuration[5] = self.Out_planes  # Number of filters
        Configuration[6] = self.Input_planes  # first deminsion of weights
        Configuration[7] = self.Conv_H
        Configuration[8] = self.Conv_W
        Configuration[9] = self.Stride_H
        Configuration[10] = self.Stride_W
        Configuration[11] = self.Padding
        if (self.Bias.any()):
            Configuration[12] = 1
        else:
            Configuration[12] = 0
        Configuration[13] = self.Relu
        Configuration[14] = self.Precision
        Configuration[15] = Load_Input
        Configuration[16] = Load_Weight
        dma.sendchannel.transfer(Configuration)
        dma.sendchannel.wait()
        dma.recvchannel.transfer(Configuration)
        dma.recvchannel.wait()

        # upload image inside FPGA
        for idx in range(int((x.shape[0]) / 3000)):
            temproray = x[(idx * 3000):(idx * 3000) + 3000]

            np.copyto(in_buffer, temproray, casting='unsafe')
            dma.sendchannel.transfer(in_buffer)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer)
            dma.recvchannel.wait()
        if ((x.shape[0]) % 3000 != 0):
            in_buffer_remind = xlnk.cma_array(shape=(((x.shape[0]) % 3000),), dtype=np.int32)
            temproray = x[int((x.shape[0]) / 3000) * 3000:x.shape[0]]
            np.copyto(in_buffer_remind, temproray, casting='unsafe')
            dma.sendchannel.transfer(in_buffer_remind)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer_remind)
            dma.recvchannel.wait()

        # upload Bias inside FPGA

        if (self.Bias.any()):

            for idx in range(int((self.Bias.shape[0]) / 3000)):
                temproray = self.Bias[(idx * 3000):(idx * 3000) + 3000]
                np.copyto(in_buffer, temproray, casting='unsafe')
                dma.sendchannel.transfer(in_buffer)
                dma.sendchannel.wait()
                dma.recvchannel.transfer(in_buffer)
                dma.recvchannel.wait()
            if ((self.Bias.shape[0]) % 3000 != 0):
                in_buffer_remind = xlnk.cma_array(shape=(((self.Bias.shape[0]) % 3000),), dtype=np.int32)
                temproray = self.Bias[int((self.Bias.shape[0]) / 3000) * 3000:self.Bias.shape[0]]
                np.copyto(in_buffer_remind, temproray, casting='unsafe')
                dma.sendchannel.transfer(in_buffer_remind)
                dma.sendchannel.wait()
                dma.recvchannel.transfer(in_buffer_remind)
                dma.recvchannel.wait()

        # upload weights inside FPGA


        for idx in range(int((self.Weight.shape[0]) / 3000)):
            temproray = self.Weight[(idx * 3000):(idx * 3000) + 3000]
            np.copyto(in_buffer, temproray, casting='unsafe')
            dma.sendchannel.transfer(in_buffer)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer)
            dma.recvchannel.wait()
        if ((self.Weight.shape[0]) % 3000 != 0):
            in_buffer_remind = xlnk.cma_array(shape=(((self.Weight.shape[0]) % 3000),), dtype=np.int32)
            temproray = self.Weight[int((self.Weight.shape[0]) / 3000) * 3000:self.Weight.shape[0]]
            np.copyto(in_buffer_remind, temproray, casting='unsafe')
            dma.sendchannel.transfer(in_buffer_remind)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer_remind)
            dma.recvchannel.wait()

        # Get final Result size
        in_buffer_remind = xlnk.cma_array(shape=(3,), dtype=np.int32)
        dma.sendchannel.transfer(in_buffer_remind)
        dma.sendchannel.wait()
        dma.recvchannel.transfer(in_buffer_remind)
        dma.recvchannel.wait()

        Total_result = in_buffer_remind[0]
        Out_H = in_buffer_remind[1]
        Out_W = in_buffer_remind[2]
        Output = np.zeros((Total_result,))
        # Return Final size from FPGA
        for idx in range(int((Total_result) / 3000)):
            dma.sendchannel.transfer(in_buffer)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer)
            dma.recvchannel.wait()
            np.copyto(Output[(idx * 3000):((idx * 3000) + 3000)], in_buffer, casting='unsafe')
        if ((Total_result) % 3000 != 0):
            in_buffer_remind = xlnk.cma_array(shape=(((Total_result) % 3000),), dtype=np.int32)
            dma.sendchannel.transfer(in_buffer_remind)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer_remind)
            dma.recvchannel.wait()
            np.copyto(Output[(int((Total_result) / 3000) * 3000):Total_result], in_buffer_remind, casting='unsafe')

        # Return result to float format and reshape
        Output = np.divide(Output, self.Precision).reshape(self.Out_planes, Out_H, Out_W)
        return Output



class Pool:
    def __init__(self, Win_H, Win_W, Stride_H, Stride_W, Pool_type, Padding, Relu, Precision=10000):
        self.Win_H = Win_H
        self.Win_W = Win_W
        self.Stride_H = Stride_H
        self.Stride_W = Stride_W
        self.Padding = Padding
        self.Relu = Relu
        if (Pool_type == 'Max'):
            self.Pool_type = 0
        else:
            self.Pool_type = 1

        self.Precision = Precision  # precision of weights and bias in our calculation inside FPGA

    # Parameters In POOLING{ 0-Module selection,1-Input size, 2-Input D, 3-Input H, 4-Input W, 5-Pooling window H,6-
    #  Pooling window W,7- stride H,8- Stride W,9- Pooling Type {0:max , 1: Average},10- padding,11- Relu_Activation, 12-precision, 13-Load_Input }

    def forward(self, data, dma, Load_Input=1):

        assert len(data.shape) == 3, 'Input Tensor deminision should be (X,Y,Z) '
        in_buffer = xlnk.cma_array(shape=(3000,), dtype=np.int32)
        data = np.multiply(data, self.Precision)
        x = data.flatten()
        size = data.shape
        Configuration = xlnk.cma_array(shape=(17,), dtype=np.int32)
        Configuration[0] = 1
        Configuration[1] = x.shape[0]
        Configuration[2] = size[0]  # image deminsion d
        Configuration[3] = size[1]  # image deminsion h
        Configuration[4] = size[2]  # image deminsion w
        Configuration[5] = self.Win_H
        Configuration[6] = self.Win_W
        Configuration[7] = self.Stride_H
        Configuration[8] = self.Stride_W
        Configuration[9] = self.Pool_type
        Configuration[10] = self.Padding
        Configuration[11] = self.Relu
        Configuration[12] = self.Precision
        Configuration[13] = Load_Input
        Configuration[14] = 0
        Configuration[15] = 0
        Configuration[16] = 0
        dma.sendchannel.transfer(Configuration)
        dma.sendchannel.wait()
        dma.recvchannel.transfer(Configuration)
        dma.recvchannel.wait()

        # upload image inside FPGA
        for idx in range(int((x.shape[0]) / 3000)):
            temproray = x[(idx * 3000):(idx * 3000) + 3000]

            np.copyto(in_buffer, temproray, casting='unsafe')
            dma.sendchannel.transfer(in_buffer)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer)
            dma.recvchannel.wait()
        if ((x.shape[0]) % 3000 != 0):
            in_buffer_remind = xlnk.cma_array(shape=(((x.shape[0]) % 3000),), dtype=np.int32)
            temproray = x[int((x.shape[0]) / 3000) * 3000:x.shape[0]]
            np.copyto(in_buffer_remind, temproray, casting='unsafe')
            dma.sendchannel.transfer(in_buffer_remind)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer_remind)
            dma.recvchannel.wait()

        # Get final Result size
        in_buffer_remind = xlnk.cma_array(shape=(3,), dtype=np.int32)
        dma.sendchannel.transfer(in_buffer_remind)
        dma.sendchannel.wait()
        dma.recvchannel.transfer(in_buffer_remind)
        dma.recvchannel.wait()

        Total_result = in_buffer_remind[0]
        Out_H = in_buffer_remind[1]
        Out_W = in_buffer_remind[2]
        Output = np.zeros((Total_result,))

        # Return Final size from FPGA
        for idx in range(int((Total_result) / 3000)):
            dma.sendchannel.transfer(in_buffer)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer)
            dma.recvchannel.wait()
            np.copyto(Output[(idx * 3000):((idx * 3000) + 3000)], in_buffer, casting='unsafe')
        if ((Total_result) % 3000 != 0):
            in_buffer_remind = xlnk.cma_array(shape=(((Total_result) % 3000),), dtype=np.int32)
            dma.sendchannel.transfer(in_buffer_remind)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer_remind)
            dma.recvchannel.wait()
            np.copyto(Output[(int((Total_result) / 3000) * 3000):Total_result], in_buffer_remind, casting='unsafe')

        # Return result to float format and reshape
        Output = np.divide(Output, self.Precision).reshape(size[0], Out_H, Out_W)
        return Output



class FC:
    # { 0-Module selection,1-Input size, 2-Output size 3- Relu_Activation, 4-precision, 5-Load_Input, 6- Bias Activation }
    def __init__(self, Input_Size, Output_Size, Relu, Weight, Bias=np.any([False]), Precision=10000):
        self.Input_planes = Input_Size
        self.Output = Output_Size
        self.Relu = Relu
        assert len(Weight.shape) == 2, 'Weight Tensor deminision should be (D,X) '
        assert Weight.shape[1] == Input_Size, 'Weight Tensor deminision should be same az Input size '
        assert Weight.shape[0] == Output_Size, 'Weight Tensor deminision should be same az Input size '
        self.Weight = np.multiply(Weight, Precision)
        if (Bias.any()):
            self.Bias = np.multiply(Bias, Precision)
        else:
            self.Bias = np.any([False])
        self.Precision = Precision  # precision of weights and bias in our calculation inside FPGA

    def forward(self, data, dma, Load_Input=1):

        in_buffer = xlnk.cma_array(shape=(3000,), dtype=np.int32)
        data = np.multiply(data, self.Precision)
        x = data.flatten()
        size = data.shape
        assert x.shape[0] == self.Input_planes, 'Input Tensor deminision should be Same Input size '
        Configuration = xlnk.cma_array(shape=(17,), dtype=np.int32)
        Configuration[0] = 2
        Configuration[1] = self.Input_planes
        Configuration[2] = self.Output
        Configuration[3] = self.Relu
        Configuration[4] = self.Precision
        Configuration[5] = Load_Input
        if (self.Bias.any()):
            Configuration[6] = 1
        else:
            Configuration[6] = 0
        Configuration[7] = 0
        Configuration[8] = 0
        Configuration[9] = 0
        Configuration[10] = 0
        Configuration[11] = 0

        Configuration[13] = 0
        Configuration[14] = 0
        Configuration[15] = 0
        Configuration[16] = 0
        dma.sendchannel.transfer(Configuration)
        dma.sendchannel.wait()
        dma.recvchannel.transfer(Configuration)
        dma.recvchannel.wait()

        # upload image inside FPGA
        for idx in range(int((x.shape[0]) / 3000)):
            temproray = x[(idx * 3000):(idx * 3000) + 3000]

            np.copyto(in_buffer, temproray, casting='unsafe')
            dma.sendchannel.transfer(in_buffer)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer)
            dma.recvchannel.wait()
            print('image1', in_buffer)
        if ((x.shape[0]) % 3000 != 0):
            in_buffer_remind = xlnk.cma_array(shape=(((x.shape[0]) % 3000),), dtype=np.int32)
            temproray = x[int((x.shape[0]) / 3000) * 3000:x.shape[0]]
            np.copyto(in_buffer_remind, temproray, casting='unsafe')
            dma.sendchannel.transfer(in_buffer_remind)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer_remind)
            dma.recvchannel.wait()

        # upload Bias inside FPGA

        if (self.Bias.any()):

            for idx in range(int((self.Bias.shape[0]) / 3000)):
                temproray = self.Bias[(idx * 3000):(idx * 3000) + 3000]
                np.copyto(in_buffer, temproray, casting='unsafe')
                dma.sendchannel.transfer(in_buffer)
                dma.sendchannel.wait()
                dma.recvchannel.transfer(in_buffer)
                dma.recvchannel.wait()
            if ((self.Bias.shape[0]) % 3000 != 0):
                in_buffer_remind = xlnk.cma_array(shape=(((self.Bias.shape[0]) % 3000),), dtype=np.int32)
                temproray = self.Bias[int((self.Bias.shape[0]) / 3000) * 3000:self.Bias.shape[0]]
                np.copyto(in_buffer_remind, temproray, casting='unsafe')
                dma.sendchannel.transfer(in_buffer_remind)
                dma.sendchannel.wait()
                dma.recvchannel.transfer(in_buffer_remind)
                dma.recvchannel.wait()

        # upload weights inside FPGA
        for i in range(self.Output):
            Tmp_w = self.Weight[i]
            size = (Tmp_w.shape[0])
            for idx in range(int(size / 3000)):
                temproray = Tmp_w[(idx * 3000):(idx * 3000) + 3000]
                np.copyto(in_buffer, temproray, casting='unsafe')
                dma.sendchannel.transfer(in_buffer)
                dma.sendchannel.wait()
                dma.recvchannel.transfer(in_buffer)
                dma.recvchannel.wait()
            if ((size) % 3000 != 0):
                in_buffer_remind = xlnk.cma_array(shape=(((size) % 3000),), dtype=np.int32)
                temproray = Tmp_w[int((size) / 3000) * 3000:size]
                np.copyto(in_buffer_remind, temproray, casting='unsafe')
                dma.sendchannel.transfer(in_buffer_remind)
                dma.sendchannel.wait()
                dma.recvchannel.transfer(in_buffer_remind)
                dma.recvchannel.wait()
                # Return result to float format and reshape
        Total_result = self.Output
        Output = np.zeros((Total_result,))
        for idx in range(int((Total_result) / 3000)):
            dma.sendchannel.transfer(in_buffer)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer)
            dma.recvchannel.wait()
            np.copyto(Output[(idx * 3000):((idx * 3000) + 3000)], in_buffer, casting='unsafe')
        if ((Total_result) % 3000 != 0):
            in_buffer_remind = xlnk.cma_array(shape=(((Total_result) % 3000),), dtype=np.int32)
            dma.sendchannel.transfer(in_buffer_remind)
            dma.sendchannel.wait()
            dma.recvchannel.transfer(in_buffer_remind)
            dma.recvchannel.wait()
            np.copyto(Output[(int((Total_result) / 3000) * 3000):Total_result], in_buffer_remind, casting='unsafe')
        Output = np.divide(Output, self.Precision)
        return Output
