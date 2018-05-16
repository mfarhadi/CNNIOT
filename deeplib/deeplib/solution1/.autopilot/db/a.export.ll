; ModuleID = '/home/common/FPGA/deeplib/deeplib/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@cnn_str = internal unnamed_addr constant [4 x i8] c"cnn\00"
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare i79 @llvm.part.select.i79(i79, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @cnn(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V) {
  %Precision_1 = alloca float
  %Relu_Activation_1 = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_data_data_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_data_keep_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_data_strb_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_data_user_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_data_last_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_data_id_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_data_dest_V), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_data_data_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_data_keep_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_data_strb_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_data_user_V), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_data_last_V), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_data_id_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_data_dest_V), !map !91
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @cnn_str) nounwind
  %Input = alloca [6000 x float], align 16
  %Weight = alloca [5000 x float], align 16
  %Bias = alloca [1000 x float], align 16
  %Parameters = alloca [17 x i32], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %Parameters_addr = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 0
  %Parameters_addr_1 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 13
  %Parameters_addr_2 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 15
  %Parameters_addr_3 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 16
  %Parameters_addr_4 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 14
  %Parameters_addr_5 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 12
  %Parameters_addr_6 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 5
  %Parameters_addr_7 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 6
  %Parameters_addr_8 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 7
  %Parameters_addr_9 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 8
  %Parameters_addr_10 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 1
  %Parameters_addr_11 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 3
  %Parameters_addr_12 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 9
  %Parameters_addr_13 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 4
  %Parameters_addr_14 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 10
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  br label %1

; <label>:1                                       ; preds = %2, %.loopexit
  %idx = phi i5 [ 0, %.loopexit ], [ %idx_1, %2 ]
  %exitcond = icmp eq i5 %idx, -15
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 17, i64 17, i64 17)
  %idx_1 = add i5 %idx, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_8 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 0, i1 true)
  %tmp_9 = zext i5 %idx to i64
  %Parameters_addr_15 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 %tmp_9
  store i32 %tmp_8, i32* %Parameters_addr_15, align 4
  br label %1

; <label>:3                                       ; preds = %1
  %Parameters_load = load i32* %Parameters_addr, align 16
  %tmp_s = icmp eq i32 %Parameters_load, 0
  br i1 %tmp_s, label %4, label %.loopexit3

; <label>:4                                       ; preds = %3
  %Relu_Activation = load i32* %Parameters_addr_1, align 4
  %Load_Input = load i32* %Parameters_addr_2, align 4
  %Load_Weight = load i32* %Parameters_addr_3, align 16
  %Parameters_load_4 = load i32* %Parameters_addr_4, align 8
  %Precision = sitofp i32 %Parameters_load_4 to float
  %tmp_1 = icmp eq i32 %Load_Input, 1
  br i1 %tmp_1, label %.preheader6.preheader, label %.loopexit7

.preheader6.preheader:                            ; preds = %4
  %Parameters_load_5 = load i32* %Parameters_addr_10, align 4
  br label %.preheader6

.preheader6:                                      ; preds = %5, %.preheader6.preheader
  %idx1 = phi i31 [ %idx_2, %5 ], [ 0, %.preheader6.preheader ]
  %idx1_cast = zext i31 %idx1 to i32
  %tmp_2 = icmp slt i32 %idx1_cast, %Parameters_load_5
  %idx_2 = add i31 %idx1, 1
  br i1 %tmp_2, label %5, label %.loopexit7.loopexit

; <label>:5                                       ; preds = %.preheader6
  %tmp_3 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 1, i1 false)
  %Temproray = sitofp i32 %tmp_3 to float
  %tmp_4 = fdiv float %Temproray, %Precision
  %tmp_5 = zext i31 %idx1 to i64
  %Input_addr = getelementptr inbounds [6000 x float]* %Input, i64 0, i64 %tmp_5
  store float %tmp_4, float* %Input_addr, align 4
  br label %.preheader6

.loopexit7.loopexit:                              ; preds = %.preheader6
  br label %.loopexit7

.loopexit7:                                       ; preds = %.loopexit7.loopexit, %4
  %tmp_6 = icmp eq i32 %Load_Weight, 1
  br i1 %tmp_6, label %6, label %.loopexit7._crit_edge

; <label>:6                                       ; preds = %.loopexit7
  %Parameters_load_6 = load i32* %Parameters_addr_5, align 16
  %tmp_7 = icmp eq i32 %Parameters_load_6, 1
  br i1 %tmp_7, label %.preheader4.preheader, label %.loopexit5

.preheader4.preheader:                            ; preds = %6
  %Parameters_load_7 = load i32* %Parameters_addr_6, align 4
  br label %.preheader4

.preheader4:                                      ; preds = %7, %.preheader4.preheader
  %idx2 = phi i31 [ %idx_3, %7 ], [ 0, %.preheader4.preheader ]
  %idx2_cast = zext i31 %idx2 to i32
  %tmp_10 = icmp slt i32 %idx2_cast, %Parameters_load_7
  %idx_3 = add i31 %idx2, 1
  br i1 %tmp_10, label %7, label %.loopexit5.loopexit

; <label>:7                                       ; preds = %.preheader4
  %tmp_11 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 2, i1 false)
  %Temproray_1 = sitofp i32 %tmp_11 to float
  %tmp_12 = fdiv float %Temproray_1, %Precision
  %tmp_13 = zext i31 %idx2 to i64
  %Bias_addr = getelementptr inbounds [1000 x float]* %Bias, i64 0, i64 %tmp_13
  store float %tmp_12, float* %Bias_addr, align 4
  br label %.preheader4

.loopexit5.loopexit:                              ; preds = %.preheader4
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %6
  br label %.loopexit7._crit_edge

.loopexit7._crit_edge:                            ; preds = %.loopexit5, %.loopexit7
  %Parameters_load_8 = load i32* %Parameters_addr_6, align 4
  %Parameters_load_9 = load i32* %Parameters_addr_7, align 8
  %Parameters_load_10 = load i32* %Parameters_addr_8, align 4
  %Parameters_load_11 = load i32* %Parameters_addr_9, align 16
  %tmp1 = mul i32 %Parameters_load_9, %Parameters_load_8
  %tmp2 = mul i32 %Parameters_load_10, %Parameters_load_11
  %tmp_14 = mul i32 %tmp2, %tmp1
  br label %8

; <label>:8                                       ; preds = %9, %.loopexit7._crit_edge
  %idx3 = phi i31 [ 0, %.loopexit7._crit_edge ], [ %idx_4, %9 ]
  %idx3_cast = zext i31 %idx3 to i32
  %tmp_15 = icmp slt i32 %idx3_cast, %tmp_14
  %idx_4 = add i31 %idx3, 1
  br i1 %tmp_15, label %9, label %.loopexit3.loopexit

; <label>:9                                       ; preds = %8
  %tmp_16 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 3, i1 false)
  %Temproray_2 = sitofp i32 %tmp_16 to float
  %tmp_17 = fdiv float %Temproray_2, %Precision
  %tmp_18 = zext i31 %idx3 to i64
  %Weight_addr = getelementptr inbounds [5000 x float]* %Weight, i64 0, i64 %tmp_18
  store float %tmp_17, float* %Weight_addr, align 4
  br label %8

.loopexit3.loopexit:                              ; preds = %8
  store i32 %Relu_Activation, i32* %Relu_Activation_1
  store float %Precision, float* %Precision_1
  br label %.loopexit3

.loopexit3:                                       ; preds = %.loopexit3.loopexit, %3
  %Relu_Activation_1_lo = load i32* %Relu_Activation_1
  %Parameters_load_12 = load i32* %Parameters_addr_11, align 4
  %Parameters_load_13 = load i32* %Parameters_addr_8, align 4
  %tmp_19 = sub nsw i32 %Parameters_load_12, %Parameters_load_13
  %Parameters_load_14 = load i32* %Parameters_addr_12, align 4
  %tmp_20 = sdiv i32 %tmp_19, %Parameters_load_14
  %H_Result = add nsw i32 1, %tmp_20
  %Parameters_load_15 = load i32* %Parameters_addr_13, align 16
  %Parameters_load_16 = load i32* %Parameters_addr_9, align 16
  %tmp_21 = sub nsw i32 %Parameters_load_15, %Parameters_load_16
  %Parameters_load_17 = load i32* %Parameters_addr_14, align 8
  %tmp_22 = sdiv i32 %tmp_21, %Parameters_load_17
  %W_Result = add nsw i32 1, %tmp_22
  %Parameters_load_18 = load i32* %Parameters_addr_6, align 4
  %tmp3 = mul i32 %W_Result, %H_Result
  %tmp_23 = mul i32 %Parameters_load_18, %tmp3
  %Temproray_3 = sitofp i32 %tmp_23 to float
  %p_Val2_s = bitcast float %Temproray_3 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %tmp_3_i_i_i2 = call i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1 true, i23 %loc_V_1, i1 false)
  %tmp_3_i_i_i2_cast9 = zext i25 %tmp_3_i_i_i2 to i79
  %tmp_i_i_i_i2_cast8 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_i2_cast8
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_5_i_i_i3 = sub i8 127, %loc_V
  %tmp_5_i_i_i3_cast = sext i8 %tmp_5_i_i_i3 to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_5_i_i_i3_cast, i9 %sh_assign
  %sh_assign_7_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_7_cast_cas = sext i9 %sh_assign_1 to i25
  %tmp_7_i_i_i3 = zext i32 %sh_assign_7_cast to i79
  %tmp_8_i_i_i3 = lshr i25 %tmp_3_i_i_i2, %sh_assign_7_cast_cas
  %tmp_i_i_i3 = shl i79 %tmp_3_i_i_i2_cast9, %tmp_7_i_i_i3
  %tmp_51 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %tmp_8_i_i_i3, i32 24)
  %tmp_36 = zext i1 %tmp_51 to i32
  %tmp_47 = call i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79 %tmp_i_i_i3, i32 24, i32 55)
  %p_Val2_2 = select i1 %isNeg, i32 %tmp_36, i32 %tmp_47
  %p_Val2_6_i_i_i3 = sub i32 0, %p_Val2_2
  %p_Val2_4 = select i1 %p_Result_s, i32 %p_Val2_6_i_i_i3, i32 %p_Val2_2
  %empty_7 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %p_Val2_4, i1 false)
  %empty_8 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %H_Result, i1 false)
  %empty_9 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %W_Result, i1 false)
  %tmp_24 = icmp eq i32 %Relu_Activation_1_lo, 1
  %Parameters_load_19 = load i32* %Parameters_addr_7, align 8
  %Parameters_load_20 = load i32* %Parameters_addr_5, align 16
  %tmp_25 = icmp eq i32 %Parameters_load_20, 0
  br label %.loopexit4

.loopexit4.loopexit:                              ; preds = %.loopexit2
  br label %.loopexit4

.loopexit4:                                       ; preds = %.loopexit4.loopexit, %.loopexit3
  %idx4 = phi i31 [ 0, %.loopexit3 ], [ %idx_5, %.loopexit4.loopexit ]
  %idx4_cast = zext i31 %idx4 to i32
  %tmp_26 = icmp slt i32 %idx4_cast, %Parameters_load_18
  %idx_5 = add i31 %idx4, 1
  br i1 %tmp_26, label %10, label %.loopexit.loopexit

; <label>:10                                      ; preds = %.loopexit4
  %tmp_27 = zext i31 %idx4 to i64
  %Bias_addr_1 = getelementptr inbounds [1000 x float]* %Bias, i64 0, i64 %tmp_27
  %Bias_load = load float* %Bias_addr_1, align 4
  br label %.loopexit2

.loopexit2.loopexit:                              ; preds = %12
  br label %.loopexit2

.loopexit2:                                       ; preds = %.loopexit2.loopexit, %10
  %idx5 = phi i31 [ 0, %10 ], [ %idx2_1, %.loopexit2.loopexit ]
  %idx5_cast = zext i31 %idx5 to i32
  %tmp_28 = icmp slt i32 %idx5_cast, %H_Result
  %idx2_1 = add i31 %idx5, 1
  br i1 %tmp_28, label %11, label %.loopexit4.loopexit

; <label>:11                                      ; preds = %.loopexit2
  %tmp_29 = mul nsw i32 %Parameters_load_14, %idx5_cast
  br label %12

; <label>:12                                      ; preds = %_ifconv, %11
  %idx6 = phi i31 [ 0, %11 ], [ %idx3_1, %_ifconv ]
  %idx6_cast = zext i31 %idx6 to i32
  %tmp_30 = icmp slt i32 %idx6_cast, %W_Result
  %idx3_1 = add i31 %idx6, 1
  br i1 %tmp_30, label %.preheader.preheader, label %.loopexit2.loopexit

.preheader.preheader:                             ; preds = %12
  %tmp_31 = mul nsw i32 %Parameters_load_17, %idx6_cast
  br label %.preheader

.preheader.loopexit:                              ; preds = %.loopexit1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader.preheader
  %k = phi i31 [ 0, %.preheader.preheader ], [ %k_1, %.preheader.loopexit ]
  %Convolve_value = phi float [ 0.000000e+00, %.preheader.preheader ], [ %Convolve_value_1, %.preheader.loopexit ]
  %k_cast = zext i31 %k to i32
  %tmp_32 = icmp slt i32 %k_cast, %Parameters_load_19
  %k_1 = add i31 %k, 1
  br i1 %tmp_32, label %13, label %_ifconv

; <label>:13                                      ; preds = %.preheader
  %tmp_33 = mul i32 %Parameters_load_12, %k_cast
  %tmp_34 = mul i32 %Parameters_load_13, %k_cast
  br label %.loopexit1

.loopexit1.loopexit:                              ; preds = %15
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %13
  %Convolve_value_1 = phi float [ %Convolve_value, %13 ], [ %Convolve_value_2, %.loopexit1.loopexit ]
  %i = phi i31 [ 0, %13 ], [ %i_1, %.loopexit1.loopexit ]
  %i_cast = zext i31 %i to i32
  %tmp_40 = icmp slt i32 %i_cast, %Parameters_load_13
  %i_1 = add i31 %i, 1
  br i1 %tmp_40, label %14, label %.preheader.loopexit

; <label>:14                                      ; preds = %.loopexit1
  %tmp4 = add i32 %tmp_29, %i_cast
  %tmp_41 = add i32 %tmp4, %tmp_33
  %R_Row = mul i32 %Parameters_load_15, %tmp_41
  %tmp = add i32 %i_cast, %tmp_34
  %tmp9 = mul i32 %Parameters_load_16, %tmp
  br label %15

; <label>:15                                      ; preds = %16, %14
  %Convolve_value_2 = phi float [ %Convolve_value_1, %14 ], [ %Convolve_value_8, %16 ]
  %j = phi i31 [ 0, %14 ], [ %j_1, %16 ]
  %j_cast = zext i31 %j to i32
  %tmp_42 = icmp slt i32 %j_cast, %Parameters_load_16
  %j_1 = add i31 %j, 1
  br i1 %tmp_42, label %16, label %.loopexit1.loopexit

; <label>:16                                      ; preds = %15
  %tmp5 = add i32 %tmp_31, %j_cast
  %Index = add i32 %tmp5, %R_Row
  %tmp_43 = sext i32 %Index to i64
  %Input_addr_1 = getelementptr inbounds [6000 x float]* %Input, i64 0, i64 %tmp_43
  %Input_load = load float* %Input_addr_1, align 4
  %tmp_44 = add i32 %tmp9, %j_cast
  %tmp_45 = sext i32 %tmp_44 to i64
  %Weight_addr_1 = getelementptr inbounds [5000 x float]* %Weight, i64 0, i64 %tmp_45
  %Weight_load = load float* %Weight_addr_1, align 4
  %tmp_46 = fmul float %Input_load, %Weight_load
  %Convolve_value_8 = fadd float %Convolve_value_2, %tmp_46
  br label %15

_ifconv:                                          ; preds = %.preheader
  %Precision_1_load = load float* %Precision_1
  %Convolve_value_6 = fadd float %Convolve_value, %Bias_load
  %Convolve_value_3 = select i1 %tmp_25, float %Convolve_value, float %Convolve_value_6
  %Convolve_value_3_to_s = bitcast float %Convolve_value_3 to i32
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %Convolve_value_3_to_s, i32 23, i32 30)
  %tmp_54 = trunc i32 %Convolve_value_3_to_s to i23
  %notlhs = icmp ne i8 %tmp_35, -1
  %notrhs = icmp eq i23 %tmp_54, 0
  %tmp_37 = or i1 %notrhs, %notlhs
  %tmp_38 = fcmp olt float %Convolve_value_3, 0.000000e+00
  %tmp_39 = and i1 %tmp_37, %tmp_38
  %Convolve_value_4 = select i1 %tmp_39, float 0.000000e+00, float %Convolve_value_3
  %Convolve_value_5 = select i1 %tmp_24, float %Convolve_value_4, float %Convolve_value_3
  %Convolve_value_7 = fmul float %Convolve_value_5, %Precision_1_load
  %p_Val2_5 = bitcast float %Convolve_value_7 to i32
  %p_Result_1 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_5, i32 31)
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_5, i32 23, i32 30) nounwind
  %loc_V_3 = trunc i32 %p_Val2_5 to i23
  %tmp_3_i_i_i3 = call i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1 true, i23 %loc_V_3, i1 false)
  %tmp_3_i_i_i3_cast7 = zext i25 %tmp_3_i_i_i3 to i79
  %tmp_i_i_i_i3_cast6 = zext i8 %loc_V_2 to i9
  %sh_assign_2 = add i9 -127, %tmp_i_i_i_i3_cast6
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_5_i_i_i4 = sub i8 127, %loc_V_2
  %tmp_5_i_i_i4_cast = sext i8 %tmp_5_i_i_i4 to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_5_i_i_i4_cast, i9 %sh_assign_2
  %sh_assign_9_cast = sext i9 %sh_assign_3 to i32
  %sh_assign_9_cast_cas = sext i9 %sh_assign_3 to i25
  %tmp_7_i_i_i4 = zext i32 %sh_assign_9_cast to i79
  %tmp_8_i_i_i4 = lshr i25 %tmp_3_i_i_i3, %sh_assign_9_cast_cas
  %tmp_i_i_i4 = shl i79 %tmp_3_i_i_i3_cast7, %tmp_7_i_i_i4
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %tmp_8_i_i_i4, i32 24)
  %tmp_48 = zext i1 %tmp_58 to i32
  %tmp_49 = call i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79 %tmp_i_i_i4, i32 24, i32 55)
  %p_Val2_7 = select i1 %isNeg_1, i32 %tmp_48, i32 %tmp_49
  %p_Val2_6_i_i_i4 = sub i32 0, %p_Val2_7
  %p_Val2_9 = select i1 %p_Result_1, i32 %p_Val2_6_i_i_i4, i32 %p_Val2_7
  %empty_10 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %p_Val2_9, i1 false)
  br label %12
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32, i4, i4, i1, i1, i1, i1) {
entry:
  store i32 %7, i32* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i32* %0
  %empty_11 = load i4* %1
  %empty_12 = load i4* %2
  %empty_13 = load i1* %3
  %empty_14 = load i1* %4
  %empty_15 = load i1* %5
  %empty_16 = load i1* %6
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_11, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_12, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_13, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_14, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_15, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_16, 6
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_17 = trunc i32 %empty to i8
  ret i8 %empty_17
}

define weak i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79, i32, i32) nounwind readnone {
entry:
  %empty = call i79 @llvm.part.select.i79(i79 %0, i32 %1, i32 %2)
  %empty_18 = trunc i79 %empty to i32
  ret i32 %empty_18
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_19 = shl i9 1, %empty
  %empty_20 = and i9 %0, %empty_19
  %empty_21 = icmp ne i9 %empty_20, 0
  ret i1 %empty_21
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_22 = and i32 %0, %empty
  %empty_23 = icmp ne i32 %empty_22, 0
  ret i1 %empty_23
}

define weak i1 @_ssdm_op_BitSelect.i1.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i25
  %empty_24 = shl i25 1, %empty
  %empty_25 = and i25 %0, %empty_24
  %empty_26 = icmp ne i25 %empty_25, 0
  ret i1 %empty_26
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1, i23, i1) nounwind readnone {
entry:
  %empty = zext i23 %1 to i24
  %empty_27 = zext i1 %2 to i24
  %empty_28 = shl i24 %empty, 1
  %empty_29 = or i24 %empty_28, %empty_27
  %empty_30 = zext i1 %0 to i25
  %empty_31 = zext i24 %empty_29 to i25
  %empty_32 = shl i25 %empty_30, 24
  %empty_33 = or i25 %empty_32, %empty_31
  ret i25 %empty_33
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %value_r, i1 %loop_r) {
  %loop_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %loop_r)
  %value_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %value_r)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, [5 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, [5 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V)
  %Temproray = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 0
  %in_data_keep_V_tmp = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 1
  %in_data_strb_V_tmp = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 2
  %in_data_user_V_tmp = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 3
  %in_data_last_V_tmp = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 4
  %in_data_id_V_tmp = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 5
  %in_data_dest_V_tmp = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 6
  %out_data_data_V_tmp = select i1 %loop_read, i32 %Temproray, i32 %value_read
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %out_data_data_V_tmp, i4 %in_data_keep_V_tmp, i4 %in_data_strb_V_tmp, i1 %in_data_user_V_tmp, i1 %in_data_last_V_tmp, i1 %in_data_id_V_tmp, i1 %in_data_dest_V_tmp)
  ret i32 %Temproray
}

!opencl.kernels = !{!0, !7, !13, !19, !21, !21, !24, !24, !30, !24}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!32}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"AXI_VAL*", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in_data", metadata !"out_data", metadata !"value", metadata !"loop"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"AXI_VAL*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"in_data", metadata !"out_data"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!19 = metadata !{null, metadata !14, metadata !15, metadata !20, metadata !17, metadata !18, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!21 = metadata !{null, metadata !14, metadata !15, metadata !22, metadata !17, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space"}
!26 = metadata !{metadata !"kernel_arg_access_qual"}
!27 = metadata !{metadata !"kernel_arg_type"}
!28 = metadata !{metadata !"kernel_arg_type_qual"}
!29 = metadata !{metadata !"kernel_arg_name"}
!30 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !18, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!32 = metadata !{metadata !33, [1 x i32]* @llvm_global_ctors_0}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"llvm.global_ctors.0", metadata !37, metadata !"", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, i32 1}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"in_data.data.V", metadata !37, metadata !"uint32", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 3, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"in_data.keep.V", metadata !37, metadata !"uint4", i32 0, i32 3}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 3, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"in_data.strb.V", metadata !37, metadata !"uint4", i32 0, i32 3}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"in_data.user.V", metadata !37, metadata !"uint1", i32 0, i32 0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"in_data.last.V", metadata !37, metadata !"uint1", i32 0, i32 0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"in_data.id.V", metadata !37, metadata !"uint1", i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 0, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"in_data.dest.V", metadata !37, metadata !"uint1", i32 0, i32 0}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"out_data.data.V", metadata !37, metadata !"uint32", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 3, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"out_data.keep.V", metadata !37, metadata !"uint4", i32 0, i32 3}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 3, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"out_data.strb.V", metadata !37, metadata !"uint4", i32 0, i32 3}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 0, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"out_data.user.V", metadata !37, metadata !"uint1", i32 0, i32 0}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 0, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"out_data.last.V", metadata !37, metadata !"uint1", i32 0, i32 0}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 0, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"out_data.id.V", metadata !37, metadata !"uint1", i32 0, i32 0}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"out_data.dest.V", metadata !37, metadata !"uint1", i32 0, i32 0}
