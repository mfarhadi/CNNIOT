; ModuleID = '/home/common/FPGA/CONV/CNNIOT/deeplib/deeplib/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@cnn_str = internal unnamed_addr constant [4 x i8] c"cnn\00"
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare i79 @llvm.part.select.i79(i79, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @cnn(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V) {
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
  %Input = alloca [30000 x float], align 16
  %Weight = alloca [30000 x float], align 16
  %Bias = alloca [2000 x float], align 16
  %Parameters = alloca [17 x i32], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %Parameters_addr = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 0
  %Parameters_addr_1 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 13
  %Parameters_addr_2 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 12
  %Parameters_addr_3 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 15
  %Parameters_addr_4 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 16
  %Parameters_addr_5 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 9
  %Parameters_addr_6 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 10
  %Parameters_addr_7 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 5
  %Parameters_addr_8 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 6
  %Parameters_addr_9 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 7
  %Parameters_addr_10 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 8
  %Parameters_addr_11 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 2
  %Parameters_addr_12 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 3
  %Parameters_addr_13 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 4
  %Parameters_addr_14 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 14
  %Parameters_addr_15 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 1
  %Parameters_addr_16 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 11
  br label %1

; <label>:1                                       ; preds = %.loopexit, %0
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  br label %2

; <label>:2                                       ; preds = %3, %1
  %idx = phi i5 [ 0, %1 ], [ %idx_1, %3 ]
  %exitcond = icmp eq i5 %idx, -15
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 17, i64 17, i64 17)
  %idx_1 = add i5 %idx, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %2
  %tmp_7 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 0, i1 true)
  %tmp_8 = zext i5 %idx to i64
  %Parameters_addr_17 = getelementptr inbounds [17 x i32]* %Parameters, i64 0, i64 %tmp_8
  store i32 %tmp_7, i32* %Parameters_addr_17, align 4
  br label %2

; <label>:4                                       ; preds = %2
  %Parameters_load = load i32* %Parameters_addr, align 16
  %tmp = icmp eq i32 %Parameters_load, 0
  br i1 %tmp, label %5, label %.loopexit15

; <label>:5                                       ; preds = %4
  %Relu_Activation = load i32* %Parameters_addr_1, align 4
  %Bias_Activation = load i32* %Parameters_addr_2, align 16
  %Load_Input = load i32* %Parameters_addr_3, align 4
  %Load_Weight = load i32* %Parameters_addr_4, align 16
  %Parameters_load_5 = load i32* %Parameters_addr_5, align 4
  %Parameters_load_6 = load i32* %Parameters_addr_6, align 8
  %Filter_size_0 = load i32* %Parameters_addr_7, align 4
  %Filter_size_1 = load i32* %Parameters_addr_8, align 8
  %Filter_size_2 = load i32* %Parameters_addr_9, align 4
  %Filter_size_3 = load i32* %Parameters_addr_10, align 16
  %Input_Size_1 = load i32* %Parameters_addr_12, align 4
  %Input_Size_2 = load i32* %Parameters_addr_13, align 16
  %Parameters_load_13 = load i32* %Parameters_addr_14, align 8
  %Precision = sitofp i32 %Parameters_load_13 to float
  %tmp_9 = icmp eq i32 %Load_Input, 1
  br i1 %tmp_9, label %.preheader19.preheader, label %.loopexit20

.preheader19.preheader:                           ; preds = %5
  %Parameters_load_14 = load i32* %Parameters_addr_15, align 4
  br label %.preheader19

.preheader19:                                     ; preds = %6, %.preheader19.preheader
  %idx1 = phi i31 [ %idx_2, %6 ], [ 0, %.preheader19.preheader ]
  %idx1_cast = zext i31 %idx1 to i32
  %tmp_3 = icmp slt i32 %idx1_cast, %Parameters_load_14
  %idx_2 = add i31 %idx1, 1
  br i1 %tmp_3, label %6, label %.loopexit20.loopexit

; <label>:6                                       ; preds = %.preheader19
  %tmp_4 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 1, i1 false)
  %Temproray = sitofp i32 %tmp_4 to float
  %tmp_5 = fdiv float %Temproray, %Precision
  %tmp_6 = zext i31 %idx1 to i64
  %Input_addr = getelementptr inbounds [30000 x float]* %Input, i64 0, i64 %tmp_6
  store float %tmp_5, float* %Input_addr, align 4
  br label %.preheader19

.loopexit20.loopexit:                             ; preds = %.preheader19
  br label %.loopexit20

.loopexit20:                                      ; preds = %.loopexit20.loopexit, %5
  %tmp_s = icmp eq i32 %Load_Weight, 1
  br i1 %tmp_s, label %7, label %.loopexit16

; <label>:7                                       ; preds = %.loopexit20
  %tmp_10 = icmp eq i32 %Bias_Activation, 1
  br i1 %tmp_10, label %.preheader17.preheader, label %.loopexit18

.preheader17.preheader:                           ; preds = %7
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.preheader, %8
  %idx2 = phi i31 [ %idx_3, %8 ], [ 0, %.preheader17.preheader ]
  %idx2_cast = zext i31 %idx2 to i32
  %tmp_11 = icmp slt i32 %idx2_cast, %Filter_size_0
  %idx_3 = add i31 %idx2, 1
  br i1 %tmp_11, label %8, label %.loopexit18.loopexit

; <label>:8                                       ; preds = %.preheader17
  %tmp_12 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 2, i1 false)
  %Temproray_1 = sitofp i32 %tmp_12 to float
  %tmp_13 = fdiv float %Temproray_1, %Precision
  %tmp_14 = zext i31 %idx2 to i64
  %Bias_addr = getelementptr inbounds [2000 x float]* %Bias, i64 0, i64 %tmp_14
  store float %tmp_13, float* %Bias_addr, align 4
  br label %.preheader17

.loopexit18.loopexit:                             ; preds = %.preheader17
  br label %.loopexit18

.loopexit18:                                      ; preds = %.loopexit18.loopexit, %7
  %tmp5 = mul i32 %Filter_size_1, %Filter_size_0
  %tmp6 = mul i32 %Filter_size_2, %Filter_size_3
  %tmp_15 = mul i32 %tmp6, %tmp5
  br label %9

; <label>:9                                       ; preds = %10, %.loopexit18
  %idx3 = phi i31 [ 0, %.loopexit18 ], [ %idx_4, %10 ]
  %idx3_cast = zext i31 %idx3 to i32
  %tmp_16 = icmp slt i32 %idx3_cast, %tmp_15
  %idx_4 = add i31 %idx3, 1
  br i1 %tmp_16, label %10, label %.loopexit16.loopexit

; <label>:10                                      ; preds = %9
  %tmp_17 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 3, i1 false)
  %Temproray_2 = sitofp i32 %tmp_17 to float
  %tmp_18 = fdiv float %Temproray_2, %Precision
  %tmp_19 = zext i31 %idx3 to i64
  %Weight_addr = getelementptr inbounds [30000 x float]* %Weight, i64 0, i64 %tmp_19
  store float %tmp_18, float* %Weight_addr, align 4
  br label %9

.loopexit16.loopexit:                             ; preds = %9
  br label %.loopexit16

.loopexit16:                                      ; preds = %.loopexit16.loopexit, %.loopexit20
  %tmp_20 = sub nsw i32 %Input_Size_1, %Filter_size_2
  %tmp_21 = sdiv i32 %tmp_20, %Parameters_load_5
  %H_Result = add nsw i32 %tmp_21, 1
  %tmp_22 = sub nsw i32 %Input_Size_2, %Filter_size_3
  %tmp_23 = sdiv i32 %tmp_22, %Parameters_load_6
  %W_Result = add nsw i32 %tmp_23, 1
  %tmp7 = mul i32 %H_Result, %W_Result
  %tmp_24 = mul i32 %tmp7, %Filter_size_0
  %Temproray_3 = sitofp i32 %tmp_24 to float
  %tmp_25 = call fastcc i32 @__hls_fptosi_float_i(float %Temproray_3)
  %empty_7 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %tmp_25, i1 false)
  %empty_8 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %H_Result, i1 false)
  %empty_9 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %W_Result, i1 false)
  %tmp_26 = icmp eq i32 %Bias_Activation, 0
  %tmp_27 = icmp eq i32 %Relu_Activation, 1
  %cast = zext i32 %H_Result to i64
  %cast1 = zext i32 %W_Result to i64
  %bound = mul i64 %cast1, %cast
  %cast3 = zext i32 %Filter_size_0 to i96
  %cast4 = zext i64 %bound to i96
  %bound5 = mul i96 %cast4, %cast3
  %tmp_38_mid = icmp sgt i32 %W_Result, 0
  br label %.preheader13

.preheader13:                                     ; preds = %.loopexit16, %_ifconv
  %indvar_flatten1 = phi i96 [ 0, %.loopexit16 ], [ %indvar_flatten_next1, %_ifconv ]
  %idx4 = phi i31 [ 0, %.loopexit16 ], [ %Bias_load_mid2_v, %_ifconv ]
  %indvar_flatten = phi i64 [ 0, %.loopexit16 ], [ %indvar_flatten_next, %_ifconv ]
  %idx5 = phi i31 [ 0, %.loopexit16 ], [ %idx5_mid2, %_ifconv ]
  %idx6 = phi i31 [ 0, %.loopexit16 ], [ %idx3_1, %_ifconv ]
  %idx5_cast_mid1 = zext i31 %idx5 to i32
  %tmp_28 = mul nsw i32 %idx5_cast_mid1, %Parameters_load_5
  %idx6_cast = zext i31 %idx6 to i32
  %tmp_29 = icmp slt i32 %idx6_cast, %W_Result
  %exitcond_flatten1 = icmp eq i96 %indvar_flatten1, %bound5
  %indvar_flatten_next1 = add i96 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %.loopexit15.loopexit, label %.preheader14.preheader

.loopexit85.loopexit:                             ; preds = %.loopexit84
  br label %.loopexit85

.loopexit85:                                      ; preds = %.loopexit85.loopexit, %.preheader14.preheader
  %k = phi i31 [ 0, %.preheader14.preheader ], [ %k_1, %.loopexit85.loopexit ]
  %Convolve_value = phi float [ 0.000000e+00, %.preheader14.preheader ], [ %Convolve_value_1, %.loopexit85.loopexit ]
  %k_cast = zext i31 %k to i32
  %tmp_32 = icmp slt i32 %k_cast, %Filter_size_1
  %k_1 = add i31 %k, 1
  br i1 %tmp_32, label %11, label %_ifconv

; <label>:11                                      ; preds = %.loopexit85
  %tmp_34 = mul i32 %Input_Size_1, %k_cast
  %tmp1 = add i32 %k_cast, %tmp_33_mid2
  %tmp2 = mul i32 %Filter_size_2, %tmp1
  br label %.loopexit84

.loopexit84.loopexit:                             ; preds = %13
  br label %.loopexit84

.loopexit84:                                      ; preds = %.loopexit84.loopexit, %11
  %i = phi i31 [ 0, %11 ], [ %i_1, %.loopexit84.loopexit ]
  %Convolve_value_1 = phi float [ %Convolve_value, %11 ], [ %Convolve_value_2, %.loopexit84.loopexit ]
  %i_cast = zext i31 %i to i32
  %tmp_44 = icmp slt i32 %i_cast, %Filter_size_2
  %i_1 = add i31 %i, 1
  br i1 %tmp_44, label %12, label %.loopexit85.loopexit

; <label>:12                                      ; preds = %.loopexit84
  %tmp8 = add i32 %tmp_36_mid2, %i_cast
  %tmp_45 = add i32 %tmp8, %tmp_34
  %R_Row = mul i32 %Input_Size_2, %tmp_45
  %tmp3 = add i32 %tmp2, %i_cast
  %tmp4 = mul i32 %Filter_size_3, %tmp3
  br label %13

; <label>:13                                      ; preds = %14, %12
  %j = phi i31 [ 0, %12 ], [ %j_1, %14 ]
  %Convolve_value_2 = phi float [ %Convolve_value_1, %12 ], [ %Convolve_value_8, %14 ]
  %j_cast = zext i31 %j to i32
  %tmp_53 = icmp slt i32 %j_cast, %Filter_size_3
  %j_1 = add i31 %j, 1
  br i1 %tmp_53, label %14, label %.loopexit84.loopexit

; <label>:14                                      ; preds = %13
  %tmp10 = add i32 %tmp_30, %j_cast
  %Index = add i32 %tmp10, %R_Row
  %tmp_55 = sext i32 %Index to i64
  %Input_addr_2 = getelementptr inbounds [30000 x float]* %Input, i64 0, i64 %tmp_55
  %Input_load = load float* %Input_addr_2, align 4
  %tmp_56 = add i32 %tmp4, %j_cast
  %tmp_57 = sext i32 %tmp_56 to i64
  %Weight_addr_1 = getelementptr inbounds [30000 x float]* %Weight, i64 0, i64 %tmp_57
  %Weight_load = load float* %Weight_addr_1, align 4
  %tmp_58 = fmul float %Input_load, %Weight_load
  %Convolve_value_8 = fadd float %Convolve_value_2, %tmp_58
  br label %13

_ifconv:                                          ; preds = %.loopexit85
  %Convolve_value_6 = fadd float %Convolve_value, %Bias_load
  %Convolve_value_3 = select i1 %tmp_26, float %Convolve_value, float %Convolve_value_6
  %Convolve_value_3_to_s = bitcast float %Convolve_value_3 to i32
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %Convolve_value_3_to_s, i32 23, i32 30)
  %tmp_36 = trunc i32 %Convolve_value_3_to_s to i23
  %notlhs1 = icmp ne i8 %tmp_35, -1
  %notrhs1 = icmp eq i23 %tmp_36, 0
  %tmp_37 = or i1 %notrhs1, %notlhs1
  %tmp_38 = fcmp olt float %Convolve_value_3, 0.000000e+00
  %tmp_39 = and i1 %tmp_37, %tmp_38
  %Convolve_value_4 = select i1 %tmp_39, float 0.000000e+00, float %Convolve_value_3
  %Convolve_value_5 = select i1 %tmp_27, float %Convolve_value_4, float %Convolve_value_3
  %Convolve_value_7 = fmul float %Convolve_value_5, %Precision
  %tmp_41 = call fastcc i32 @__hls_fptosi_float_i(float %Convolve_value_7)
  %empty_10 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %tmp_41, i1 false)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_1)
  %idx6_op = add i31 1, %idx6
  %idx6_mid210_op = select i1 %exitcond_flatten, i31 1, i31 %idx6_op
  %idx3_1 = select i1 %tmp_38_mid1, i31 %idx6_mid210_op, i31 1
  %indvar_flatten_op = add i64 1, %indvar_flatten
  %indvar_flatten_next = select i1 %exitcond_flatten, i64 1, i64 %indvar_flatten_op
  br label %.preheader13

.preheader14.preheader:                           ; preds = %.preheader13
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound
  %idx5_mid = select i1 %exitcond_flatten, i31 0, i31 %idx5
  %idx_s = add i31 %idx4, 1
  %Bias_load_mid2_v = select i1 %exitcond_flatten, i31 %idx_s, i31 %idx4
  %Bias_load_mid2 = zext i31 %Bias_load_mid2_v to i64
  %Bias_addr_1 = getelementptr [2000 x float]* %Bias, i64 0, i64 %Bias_load_mid2
  %Bias_load = load float* %Bias_addr_1, align 4
  %tmp_33_mid2_v = zext i31 %Bias_load_mid2_v to i32
  %tmp_33_mid2 = mul i32 %tmp_33_mid2_v, %Filter_size_1
  %tmp_36_mid = select i1 %exitcond_flatten, i32 0, i32 %tmp_28
  %idx6_cast_mid = select i1 %exitcond_flatten, i31 0, i31 %idx6
  %tmp_38_mid1 = select i1 %exitcond_flatten, i1 %tmp_38_mid, i1 %tmp_29
  %idx2_1 = add i31 %idx5_mid, 1
  %idx5_cast = zext i31 %idx2_1 to i32
  %tmp_36_mid1 = mul nsw i32 %idx5_cast, %Parameters_load_5
  %tmp_36_mid2 = select i1 %tmp_38_mid1, i32 %tmp_36_mid, i32 %tmp_36_mid1
  %idx6_cast_mid2 = select i1 %tmp_38_mid1, i31 %idx6_cast_mid, i31 0
  %idx6_cast_mid2_cast = zext i31 %idx6_cast_mid2 to i32
  %idx5_mid2 = select i1 %tmp_38_mid1, i31 %idx5_mid, i31 %idx2_1
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_30 = mul nsw i32 %idx6_cast_mid2_cast, %Parameters_load_6
  br label %.loopexit85

.loopexit15.loopexit:                             ; preds = %.preheader13
  br label %.loopexit15

.loopexit15:                                      ; preds = %.loopexit15.loopexit, %4
  %tmp_31 = icmp eq i32 %Parameters_load, 1
  br i1 %tmp_31, label %15, label %.loopexit10

; <label>:15                                      ; preds = %.loopexit15
  %Input_Size_0 = load i32* %Parameters_addr_11, align 8
  %Input_Size_1_1 = load i32* %Parameters_addr_12, align 4
  %Input_Size_2_1 = load i32* %Parameters_addr_13, align 16
  %Parameters_load_18 = load i32* %Parameters_addr_7, align 4
  %Parameters_load_19 = load i32* %Parameters_addr_8, align 8
  %Parameters_load_20 = load i32* %Parameters_addr_9, align 4
  %Parameters_load_21 = load i32* %Parameters_addr_10, align 16
  %Pooling_Mode = load i32* %Parameters_addr_5, align 4
  %Relu_Activation_1 = load i32* %Parameters_addr_16, align 4
  %Load_Input_1 = load i32* %Parameters_addr_1, align 4
  %tmp_33 = icmp eq i32 %Load_Input_1, 1
  br i1 %tmp_33, label %.preheader11.preheader, label %.loopexit12

.preheader11.preheader:                           ; preds = %15
  %Parameters_load_25 = load i32* %Parameters_addr_15, align 4
  br label %.preheader11

.preheader11:                                     ; preds = %16, %.preheader11.preheader
  %idx7 = phi i31 [ %idx_5, %16 ], [ 0, %.preheader11.preheader ]
  %idx7_cast = zext i31 %idx7 to i32
  %tmp_40 = icmp slt i32 %idx7_cast, %Parameters_load_25
  %idx_5 = add i31 %idx7, 1
  br i1 %tmp_40, label %16, label %.loopexit12.loopexit

; <label>:16                                      ; preds = %.preheader11
  %tmp_42 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 1, i1 false)
  %Temproray_4 = sitofp i32 %tmp_42 to float
  %tmp_43 = zext i31 %idx7 to i64
  %Input_addr_1 = getelementptr inbounds [30000 x float]* %Input, i64 0, i64 %tmp_43
  store float %Temproray_4, float* %Input_addr_1, align 4
  br label %.preheader11

.loopexit12.loopexit:                             ; preds = %.preheader11
  br label %.loopexit12

.loopexit12:                                      ; preds = %.loopexit12.loopexit, %15
  %H_Result_1 = sdiv i32 %Input_Size_1_1, %Parameters_load_20
  %W_Result_1 = sdiv i32 %Input_Size_2_1, %Parameters_load_21
  %tmp9 = mul i32 %H_Result_1, %W_Result_1
  %tmp_46 = mul i32 %tmp9, %Input_Size_0
  %Temproray_5 = sitofp i32 %tmp_46 to float
  %tmp_47 = call fastcc i32 @__hls_fptosi_float_i(float %Temproray_5)
  %empty_12 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %tmp_47, i1 false)
  %empty_13 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %H_Result_1, i1 false)
  %empty_14 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %W_Result_1, i1 false)
  %tmp_48 = icmp eq i32 %Pooling_Mode, 0
  %tmp_49 = icmp eq i32 %Pooling_Mode, 1
  %tmp_50 = mul nsw i32 %Parameters_load_18, %Parameters_load_18
  %tmp_51 = sitofp i32 %tmp_50 to float
  %tmp_52 = icmp eq i32 %Relu_Activation_1, 1
  %tmp_54 = trunc i32 %Pooling_Mode to i31
  %cast2 = zext i32 %H_Result_1 to i64
  %cast5 = zext i32 %W_Result_1 to i64
  %bound1 = mul i64 %cast5, %cast2
  %cast6 = zext i32 %Input_Size_0 to i96
  %cast7 = zext i64 %bound1 to i96
  %bound2 = mul i96 %cast7, %cast6
  %tmp_65_mid = icmp sgt i32 %W_Result_1, 0
  br label %.preheader8

.preheader8:                                      ; preds = %.loopexit12, %._crit_edge25_ifconv
  %indvar_flatten2 = phi i96 [ 0, %.loopexit12 ], [ %indvar_flatten_next3, %._crit_edge25_ifconv ]
  %idx8 = phi i31 [ 0, %.loopexit12 ], [ %idx8_mid2, %._crit_edge25_ifconv ]
  %indvar_flatten3 = phi i64 [ 0, %.loopexit12 ], [ %indvar_flatten_next2, %._crit_edge25_ifconv ]
  %idx9 = phi i31 [ 0, %.loopexit12 ], [ %idx9_mid2, %._crit_edge25_ifconv ]
  %idx10 = phi i31 [ 0, %.loopexit12 ], [ %idx3_2, %._crit_edge25_ifconv ]
  %idx8_cast_mid1 = zext i31 %idx8 to i32
  %tmp_59 = mul i32 %idx8_cast_mid1, %Input_Size_1_1
  %tmp_61 = mul i32 %tmp_59, %Input_Size_2_1
  %idx9_cast_mid1 = zext i31 %idx9 to i32
  %tmp_62 = mul i32 %idx9_cast_mid1, %Parameters_load_20
  %tmp_64 = add i32 %tmp_62, %tmp_59
  %tmp_68 = mul i32 %tmp_64, %Input_Size_2_1
  %idx10_cast = zext i31 %idx10 to i32
  %tmp_65 = icmp slt i32 %idx10_cast, %W_Result_1
  %exitcond_flatten3 = icmp eq i96 %indvar_flatten2, %bound2
  %indvar_flatten_next3 = add i96 %indvar_flatten2, 1
  br i1 %exitcond_flatten3, label %.loopexit10.loopexit, label %.preheader9.preheader

.loopexit83.loopexit:                             ; preds = %.preheader7
  br label %.loopexit83

.loopexit83:                                      ; preds = %.loopexit83.loopexit, %.preheader9.preheader
  %k2 = phi i31 [ 0, %.preheader9.preheader ], [ %k_2, %.loopexit83.loopexit ]
  %Pool_Value = phi float [ 0.000000e+00, %.preheader9.preheader ], [ %Pool_Value_1, %.loopexit83.loopexit ]
  %k2_cast = zext i31 %k2 to i32
  %tmp_72 = icmp slt i32 %k2_cast, %Parameters_load_18
  %k_2 = add i31 %k2, 1
  br i1 %tmp_72, label %.preheader7.preheader, label %17

.preheader7.preheader:                            ; preds = %.loopexit83
  %tmp_73 = add nsw i32 %k2_cast, %tmp_62_mid2
  %tmp_74 = mul nsw i32 %Input_Size_2_1, %tmp_73
  br label %.preheader7

.preheader7:                                      ; preds = %_ifconv1, %.preheader7.preheader
  %i2 = phi i31 [ %i_2, %_ifconv1 ], [ 0, %.preheader7.preheader ]
  %Pool_Value_1 = phi float [ %Pool_Value_6, %_ifconv1 ], [ %Pool_Value, %.preheader7.preheader ]
  %i2_cast = zext i31 %i2 to i32
  %tmp_75 = icmp slt i32 %i2_cast, %Parameters_load_19
  %i_2 = add i31 %i2, 1
  br i1 %tmp_75, label %_ifconv1, label %.loopexit83.loopexit

_ifconv1:                                         ; preds = %.preheader7
  %tmp_85 = or i31 %i2, %k2
  %tmp12 = add i32 %i2_cast, %tmp_74
  %tmp_86 = add i32 %tmp11, %tmp12
  %tmp_87 = sext i32 %tmp_86 to i64
  %Input_addr_5 = getelementptr inbounds [30000 x float]* %Input, i64 0, i64 %tmp_87
  %Temproray_11 = load float* %Input_addr_5, align 4
  %Temproray_11_to_int = bitcast float %Temproray_11 to i32
  %tmp_88 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %Temproray_11_to_int, i32 23, i32 30)
  %tmp_91 = trunc i32 %Temproray_11_to_int to i23
  %Pool_Value_1_to_int = bitcast float %Pool_Value_1 to i32
  %tmp_92 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %Pool_Value_1_to_int, i32 23, i32 30)
  %tmp_97 = trunc i32 %Pool_Value_1_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_88, -1
  %notrhs3 = icmp eq i23 %tmp_91, 0
  %tmp_98 = or i1 %notrhs3, %notlhs3
  %notlhs4 = icmp ne i8 %tmp_92, -1
  %notrhs4 = icmp eq i23 %tmp_97, 0
  %tmp_101 = or i1 %notrhs4, %notlhs4
  %tmp_106 = and i1 %tmp_98, %tmp_101
  %tmp_107 = fcmp ogt float %Temproray_11, %Pool_Value_1
  %tmp_109 = and i1 %tmp_106, %tmp_107
  %Pool_Value_2 = select i1 %tmp_109, float %Temproray_11, float %Pool_Value_1
  %Pool_Value_11 = select i1 %tmp_48, float %Pool_Value_2, float %Pool_Value_1
  %tmp_110 = or i31 %tmp_54, %tmp_85
  %tmp_111 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %Pooling_Mode, i32 31)
  %tmp_113 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %tmp_111, i31 %tmp_110)
  %tmp_114 = icmp eq i32 %tmp_113, 0
  %Pool_Value_4 = select i1 %tmp_114, float %Pool_Value_5, float %Pool_Value_11
  %tmp_115 = icmp eq i31 %tmp_85, 0
  %Pool_Value_12 = fadd float %Pool_Value_4, %Temproray_11
  %sel_tmp5 = and i1 %tmp_49, %tmp_115
  %Pool_Value_13 = select i1 %sel_tmp5, float %Pool_Value_12, float %Pool_Value_4
  %Pool_Value_6 = select i1 %tmp_49, float %Pool_Value_13, float %Pool_Value_4
  br label %.preheader7

; <label>:17                                      ; preds = %.loopexit83
  br i1 %tmp_49, label %18, label %._crit_edge25_ifconv

; <label>:18                                      ; preds = %17
  %Pool_Value_3 = fdiv float %Pool_Value, %tmp_51
  br label %._crit_edge25_ifconv

._crit_edge25_ifconv:                             ; preds = %18, %17
  %Pool_Value_7 = phi float [ %Pool_Value_3, %18 ], [ %Pool_Value, %17 ]
  %Pool_Value_7_to_int = bitcast float %Pool_Value_7 to i32
  %tmp_76 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %Pool_Value_7_to_int, i32 23, i32 30)
  %tmp_77 = trunc i32 %Pool_Value_7_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_76, -1
  %notrhs2 = icmp eq i23 %tmp_77, 0
  %tmp_78 = or i1 %notrhs2, %notlhs2
  %tmp_79 = fcmp olt float %Pool_Value_7, 0.000000e+00
  %tmp_80 = and i1 %tmp_78, %tmp_79
  %Pool_Value_8 = select i1 %tmp_80, float 0.000000e+00, float %Pool_Value_7
  %Pool_Value_9 = select i1 %tmp_52, float %Pool_Value_8, float %Pool_Value_7
  %tmp_84 = call fastcc i32 @__hls_fptosi_float_i(float %Pool_Value_9)
  %empty_15 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %tmp_84, i1 false)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_2)
  %idx10_op = add i31 1, %idx10
  %idx10_mid242_op = select i1 %exitcond_flatten2, i31 1, i31 %idx10_op
  %idx3_2 = select i1 %tmp_65_mid1, i31 %idx10_mid242_op, i31 1
  %indvar_flatten32_op = add i64 1, %indvar_flatten3
  %indvar_flatten_next2 = select i1 %exitcond_flatten2, i64 1, i64 %indvar_flatten32_op
  br label %.preheader8

.preheader9.preheader:                            ; preds = %.preheader8
  %idx_6 = add i31 %idx8, 1
  %idx8_cast = zext i31 %idx_6 to i32
  %exitcond_flatten2 = icmp eq i64 %indvar_flatten3, %bound1
  %idx9_mid = select i1 %exitcond_flatten2, i31 0, i31 %idx9
  %tmp_68_mid1 = mul i32 %Input_Size_1_1, %idx8_cast
  %tmp_68_mid2 = select i1 %exitcond_flatten2, i32 %tmp_68_mid1, i32 %tmp_59
  %tmp_69_mid1 = mul i32 %Input_Size_2_1, %tmp_68_mid1
  %tmp_69_mid2 = select i1 %exitcond_flatten2, i32 %tmp_69_mid1, i32 %tmp_61
  %tmp_62_mid = select i1 %exitcond_flatten2, i32 0, i32 %tmp_62
  %tmp_72_mid = select i1 %exitcond_flatten2, i32 %tmp_69_mid1, i32 %tmp_68
  %idx10_cast_mid = select i1 %exitcond_flatten2, i31 0, i31 %idx10
  %tmp_65_mid1 = select i1 %exitcond_flatten2, i1 %tmp_65_mid, i1 %tmp_65
  %idx8_mid2 = select i1 %exitcond_flatten2, i31 %idx_6, i31 %idx8
  %idx2_2 = add i31 %idx9_mid, 1
  %idx9_cast = zext i31 %idx2_2 to i32
  %tmp_62_mid1 = mul i32 %Parameters_load_20, %idx9_cast
  %tmp_62_mid2 = select i1 %tmp_65_mid1, i32 %tmp_62_mid, i32 %tmp_62_mid1
  %tmp_71_mid1 = add i32 %tmp_68_mid2, %tmp_62_mid1
  %tmp_72_mid1 = mul i32 %Input_Size_2_1, %tmp_71_mid1
  %tmp_72_mid2 = select i1 %tmp_65_mid1, i32 %tmp_72_mid, i32 %tmp_72_mid1
  %idx10_cast_mid2 = select i1 %tmp_65_mid1, i31 %idx10_cast_mid, i31 0
  %idx10_cast_mid2_cast = zext i31 %idx10_cast_mid2 to i32
  %idx9_mid2 = select i1 %tmp_65_mid1, i31 %idx9_mid, i31 %idx2_2
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_69 = mul nsw i32 %Parameters_load_21, %idx10_cast_mid2_cast
  %tmp_70 = add i32 %tmp_72_mid2, %tmp_69
  %tmp_71 = sext i32 %tmp_70 to i64
  %Input_addr_3 = getelementptr inbounds [30000 x float]* %Input, i64 0, i64 %tmp_71
  %Pool_Value_5 = load float* %Input_addr_3, align 4
  %tmp11 = add i32 %tmp_69, %tmp_69_mid2
  br label %.loopexit83

.loopexit10.loopexit:                             ; preds = %.preheader8
  br label %.loopexit10

.loopexit10:                                      ; preds = %.loopexit10.loopexit, %.loopexit15
  %tmp_60 = icmp eq i32 %Parameters_load, 2
  br i1 %tmp_60, label %19, label %.loopexit

; <label>:19                                      ; preds = %.loopexit10
  %Input_Size_0_1 = load i32* %Parameters_addr_15, align 4
  %Relu_Activation_2 = load i32* %Parameters_addr_12, align 4
  %Parameters_load_28 = load i32* %Parameters_addr_13, align 16
  %Precision_1 = sitofp i32 %Parameters_load_28 to float
  %Load_Input_2 = load i32* %Parameters_addr_7, align 4
  %Bias_Activation_1 = load i32* %Parameters_addr_8, align 8
  %tmp_63 = icmp eq i32 %Load_Input_2, 1
  br i1 %tmp_63, label %.preheader5.preheader, label %.loopexit6

.preheader5.preheader:                            ; preds = %19
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.preheader, %20
  %idx11 = phi i31 [ %idx_8, %20 ], [ 0, %.preheader5.preheader ]
  %idx11_cast = zext i31 %idx11 to i32
  %tmp_66 = icmp slt i32 %idx11_cast, %Input_Size_0_1
  %idx_8 = add i31 %idx11, 1
  br i1 %tmp_66, label %20, label %.loopexit6.loopexit

; <label>:20                                      ; preds = %.preheader5
  %tmp_81 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %Input_Size_0_1, i1 false)
  %Temproray_6 = sitofp i32 %tmp_81 to float
  %tmp_82 = fdiv float %Temproray_6, %Precision_1
  %tmp_83 = zext i31 %idx11 to i64
  %Input_addr_4 = getelementptr inbounds [30000 x float]* %Input, i64 0, i64 %tmp_83
  store float %tmp_82, float* %Input_addr_4, align 4
  br label %.preheader5

.loopexit6.loopexit:                              ; preds = %.preheader5
  br label %.loopexit6

.loopexit6:                                       ; preds = %.loopexit6.loopexit, %19
  %tmp_67 = icmp eq i32 %Bias_Activation_1, 1
  br i1 %tmp_67, label %.preheader3.preheader, label %.loopexit4

.preheader3.preheader:                            ; preds = %.loopexit6
  %Parameters_load_31 = load i32* %Parameters_addr_11, align 8
  br label %.preheader3

.preheader3:                                      ; preds = %21, %.preheader3.preheader
  %idx12 = phi i31 [ %idx_9, %21 ], [ 0, %.preheader3.preheader ]
  %idx12_cast = zext i31 %idx12 to i32
  %tmp_89 = icmp slt i32 %idx12_cast, %Parameters_load_31
  %idx_9 = add i31 %idx12, 1
  br i1 %tmp_89, label %21, label %.loopexit4.loopexit

; <label>:21                                      ; preds = %.preheader3
  %tmp_93 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 2, i1 true)
  %Temproray_7 = sitofp i32 %tmp_93 to float
  %tmp_94 = fdiv float %Temproray_7, %Precision_1
  %tmp_95 = zext i31 %idx12 to i64
  %Bias_addr_2 = getelementptr inbounds [2000 x float]* %Bias, i64 0, i64 %tmp_95
  store float %tmp_94, float* %Bias_addr_2, align 4
  br label %.preheader3

.loopexit4.loopexit:                              ; preds = %.preheader3
  br label %.loopexit4

.loopexit4:                                       ; preds = %.loopexit4.loopexit, %.loopexit6
  %tmp_90 = icmp eq i32 %Relu_Activation_2, 1
  %Parameters_load_32 = load i32* %Parameters_addr_11, align 8
  br label %22

; <label>:22                                      ; preds = %_ifconv10, %.loopexit4
  %idx13 = phi i31 [ 0, %.loopexit4 ], [ %idx_7, %_ifconv10 ]
  %idx13_cast = zext i31 %idx13 to i32
  %tmp_96 = icmp slt i32 %idx13_cast, %Parameters_load_32
  %idx_7 = add i31 %idx13, 1
  br i1 %tmp_96, label %.preheader2.preheader, label %.preheader.preheader

.preheader2.preheader:                            ; preds = %22
  br label %.preheader2

.preheader.preheader:                             ; preds = %22
  br label %.preheader

.preheader2:                                      ; preds = %.preheader2.preheader, %23
  %Transfer_value = phi float [ %Transfer_value_4, %23 ], [ 0.000000e+00, %.preheader2.preheader ]
  %idx14 = phi i31 [ %idx2_3, %23 ], [ 0, %.preheader2.preheader ]
  %idx14_cast = zext i31 %idx14 to i32
  %tmp_99 = icmp slt i32 %idx14_cast, %Input_Size_0_1
  %idx2_3 = add i31 %idx14, 1
  br i1 %tmp_99, label %23, label %_ifconv10

; <label>:23                                      ; preds = %.preheader2
  %tmp_102 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 4, i1 false)
  %Temproray_8 = sitofp i32 %tmp_102 to float
  %Temproray_9 = fdiv float %Temproray_8, %Precision_1
  %tmp_103 = zext i31 %idx14 to i64
  %Input_addr_6 = getelementptr inbounds [30000 x float]* %Input, i64 0, i64 %tmp_103
  %Input_load_2 = load float* %Input_addr_6, align 4
  %tmp_104 = fmul float %Input_load_2, %Temproray_9
  %Transfer_value_4 = fadd float %Transfer_value, %tmp_104
  br label %.preheader2

_ifconv10:                                        ; preds = %.preheader2
  %Transfer_value_to_in = bitcast float %Transfer_value to i32
  %tmp_116 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %Transfer_value_to_in, i32 23, i32 30)
  %tmp_117 = trunc i32 %Transfer_value_to_in to i23
  %notlhs = icmp ne i8 %tmp_116, -1
  %notrhs = icmp eq i23 %tmp_117, 0
  %tmp_118 = or i1 %notrhs, %notlhs
  %tmp_119 = fcmp olt float %Transfer_value, 0.000000e+00
  %tmp_120 = and i1 %tmp_118, %tmp_119
  %Transfer_value_1 = select i1 %tmp_120, float 0.000000e+00, float %Transfer_value
  %Transfer_value_2 = select i1 %tmp_90, float %Transfer_value_1, float %Transfer_value
  %tmp_112 = zext i31 %idx13 to i64
  %Bias_addr_3 = getelementptr inbounds [2000 x float]* %Bias, i64 0, i64 %tmp_112
  %Bias_load_1 = load float* %Bias_addr_3, align 4
  %Transfer_value_5 = fadd float %Transfer_value_2, %Bias_load_1
  %Transfer_value_3 = select i1 %tmp_67, float %Transfer_value_5, float %Transfer_value_2
  %Transfer_value_6 = fmul float %Transfer_value_3, %Precision_1
  %Weight_addr_3 = getelementptr inbounds [30000 x float]* %Weight, i64 0, i64 %tmp_112
  store float %Transfer_value_6, float* %Weight_addr_3, align 4
  br label %22

.preheader:                                       ; preds = %.preheader.preheader, %24
  %idx15 = phi i31 [ %idx_10, %24 ], [ 0, %.preheader.preheader ]
  %idx15_cast = zext i31 %idx15 to i32
  %tmp_100 = icmp slt i32 %idx15_cast, %Parameters_load_32
  %idx_10 = add i31 %idx15, 1
  br i1 %tmp_100, label %24, label %.loopexit.loopexit

; <label>:24                                      ; preds = %.preheader
  %tmp_105 = zext i31 %idx15 to i64
  %Weight_addr_2 = getelementptr inbounds [30000 x float]* %Weight, i64 0, i64 %tmp_105
  %Weight_load_1 = load float* %Weight_addr_2, align 4
  %tmp_108 = call fastcc i32 @__hls_fptosi_float_i(float %Weight_load_1)
  %empty_17 = call fastcc i32 @Axi_Transfer(i32* %in_data_data_V, i4* %in_data_keep_V, i4* %in_data_strb_V, i1* %in_data_user_V, i1* %in_data_last_V, i1* %in_data_id_V, i1* %in_data_dest_V, i32* %out_data_data_V, i4* %out_data_keep_V, i4* %out_data_strb_V, i1* %out_data_user_V, i1* %out_data_last_V, i1* %out_data_id_V, i1* %out_data_dest_V, i32 %tmp_108, i1 false)
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit10
  br label %1
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

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
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
  %empty_18 = load i4* %1
  %empty_19 = load i4* %2
  %empty_20 = load i1* %3
  %empty_21 = load i1* %4
  %empty_22 = load i1* %5
  %empty_23 = load i1* %6
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_18, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_19, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_20, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_21, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_22, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_23, 6
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

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i8
  ret i8 %empty_24
}

define weak i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79, i32, i32) nounwind readnone {
entry:
  %empty = call i79 @llvm.part.select.i79(i79 %0, i32 %1, i32 %2)
  %empty_25 = trunc i79 %empty to i32
  ret i32 %empty_25
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_26 = shl i9 1, %empty
  %empty_27 = and i9 %0, %empty_26
  %empty_28 = icmp ne i9 %empty_27, 0
  ret i1 %empty_28
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_29 = and i32 %0, %empty
  %empty_30 = icmp ne i32 %empty_29, 0
  ret i1 %empty_30
}

define weak i1 @_ssdm_op_BitSelect.i1.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i25
  %empty_31 = shl i25 1, %empty
  %empty_32 = and i25 %0, %empty_31
  %empty_33 = icmp ne i25 %empty_32, 0
  ret i1 %empty_33
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone {
entry:
  %empty = zext i1 %0 to i32
  %empty_34 = zext i31 %1 to i32
  %empty_35 = shl i32 %empty, 31
  %empty_36 = or i32 %empty_35, %empty_34
  ret i32 %empty_36
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1, i23, i1) nounwind readnone {
entry:
  %empty = zext i23 %1 to i24
  %empty_37 = zext i1 %2 to i24
  %empty_38 = shl i24 %empty, 1
  %empty_39 = or i24 %empty_38, %empty_37
  %empty_40 = zext i1 %0 to i25
  %empty_41 = zext i24 %empty_39 to i25
  %empty_42 = shl i25 %empty_40, 24
  %empty_43 = or i25 %empty_42, %empty_41
  ret i25 %empty_43
}

define internal fastcc i32 @__hls_fptosi_float_i(float %x) nounwind uwtable readnone {
  %x_read = call float @_ssdm_op_Read.ap_auto.float(float %x) nounwind
  %p_Val2_s = bitcast float %x_read to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %tmp_3_i_i = call i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1 true, i23 %loc_V_1, i1 false)
  %tmp_3_i_i_cast2 = zext i25 %tmp_3_i_i to i79
  %tmp_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_5_i_i = sub i8 127, %loc_V
  %tmp_5_i_i_cast = sext i8 %tmp_5_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_5_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cas = sext i9 %sh_assign_1 to i25
  %tmp_7_i_i = zext i32 %sh_assign_1_cast to i79
  %tmp_8_i_i = lshr i25 %tmp_3_i_i, %sh_assign_1_cast_cas
  %tmp_i_i = shl i79 %tmp_3_i_i_cast2, %tmp_7_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %tmp_8_i_i, i32 24)
  %tmp_13 = zext i1 %tmp to i32
  %tmp_14 = call i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79 %tmp_i_i, i32 24, i32 55)
  %p_Val2_2 = select i1 %isNeg, i32 %tmp_13, i32 %tmp_14
  %p_Val2_6_i_i = sub i32 0, %p_Val2_2
  %p_Val2_4 = select i1 %p_Result_s, i32 %p_Val2_6_i_i, i32 %p_Val2_2
  ret i32 %p_Val2_4
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
