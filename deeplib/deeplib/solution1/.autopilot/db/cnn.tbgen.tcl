set C_TypeInfoList {{ 
"cnn" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_data": [[],{ "pointer": "0"}] }, {"out_data": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "4"]},{ "last": [[], "4"]},{ "id": [[], "4"]},{ "dest": [[], "4"]}],""]}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}]
}}
set moduleName cnn
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {cnn}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data_data_V int 32 regular {axi_s 0 volatile  { in_data Data } }  }
	{ in_data_keep_V int 4 regular {axi_s 0 volatile  { in_data Keep } }  }
	{ in_data_strb_V int 4 regular {axi_s 0 volatile  { in_data Strb } }  }
	{ in_data_user_V int 1 regular {axi_s 0 volatile  { in_data User } }  }
	{ in_data_last_V int 1 regular {axi_s 0 volatile  { in_data Last } }  }
	{ in_data_id_V int 1 regular {axi_s 0 volatile  { in_data ID } }  }
	{ in_data_dest_V int 1 regular {axi_s 0 volatile  { in_data Dest } }  }
	{ out_data_data_V int 32 regular {axi_s 1 volatile  { out_data Data } }  }
	{ out_data_keep_V int 4 regular {axi_s 1 volatile  { out_data Keep } }  }
	{ out_data_strb_V int 4 regular {axi_s 1 volatile  { out_data Strb } }  }
	{ out_data_user_V int 1 regular {axi_s 1 volatile  { out_data User } }  }
	{ out_data_last_V int 1 regular {axi_s 1 volatile  { out_data Last } }  }
	{ out_data_id_V int 1 regular {axi_s 1 volatile  { out_data ID } }  }
	{ out_data_dest_V int 1 regular {axi_s 1 volatile  { out_data Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_data.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_data_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_data.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_data_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_data.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_data_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_data.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_data_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_data.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_data_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_data.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_data_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_data.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_data.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_data.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_data.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_data.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_data.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_data.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_data.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_data_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_data_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_data_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_data_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_data_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_data_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_data_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_data_TID sc_in sc_lv 1 signal 5 } 
	{ in_data_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_data_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_data_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_data_TREADY sc_in sc_logic 1 outacc 13 } 
	{ out_data_TKEEP sc_out sc_lv 4 signal 8 } 
	{ out_data_TSTRB sc_out sc_lv 4 signal 9 } 
	{ out_data_TUSER sc_out sc_lv 1 signal 10 } 
	{ out_data_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_data_TID sc_out sc_lv 1 signal 12 } 
	{ out_data_TDEST sc_out sc_lv 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data_data_V", "role": "default" }} , 
 	{ "name": "in_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_data_dest_V", "role": "default" }} , 
 	{ "name": "in_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_data_dest_V", "role": "default" }} , 
 	{ "name": "in_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_data_keep_V", "role": "default" }} , 
 	{ "name": "in_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_data_strb_V", "role": "default" }} , 
 	{ "name": "in_data_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data_user_V", "role": "default" }} , 
 	{ "name": "in_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data_last_V", "role": "default" }} , 
 	{ "name": "in_data_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data_id_V", "role": "default" }} , 
 	{ "name": "in_data_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data_dest_V", "role": "default" }} , 
 	{ "name": "out_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data_data_V", "role": "default" }} , 
 	{ "name": "out_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_data_dest_V", "role": "default" }} , 
 	{ "name": "out_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_data_dest_V", "role": "default" }} , 
 	{ "name": "out_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_data_keep_V", "role": "default" }} , 
 	{ "name": "out_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_data_strb_V", "role": "default" }} , 
 	{ "name": "out_data_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_user_V", "role": "default" }} , 
 	{ "name": "out_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_last_V", "role": "default" }} , 
 	{ "name": "out_data_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_id_V", "role": "default" }} , 
 	{ "name": "out_data_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "cnn",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_data_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_data_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "in_data_data_V"}]},
			{"Name" : "in_data_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "in_data_keep_V"}]},
			{"Name" : "in_data_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "in_data_strb_V"}]},
			{"Name" : "in_data_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "in_data_user_V"}]},
			{"Name" : "in_data_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "in_data_last_V"}]},
			{"Name" : "in_data_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "in_data_id_V"}]},
			{"Name" : "in_data_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "in_data_dest_V"}]},
			{"Name" : "out_data_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_data_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "out_data_data_V"}]},
			{"Name" : "out_data_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "out_data_keep_V"}]},
			{"Name" : "out_data_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "out_data_strb_V"}]},
			{"Name" : "out_data_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "out_data_user_V"}]},
			{"Name" : "out_data_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "out_data_last_V"}]},
			{"Name" : "out_data_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "out_data_id_V"}]},
			{"Name" : "out_data_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi_Transfer_fu_806", "Port" : "out_data_dest_V"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_Axi_Transfer_fu_806", "SubBlockPort" : ["in_data_TDATA_blk_n", "out_data_TDATA_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Input_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Parameters_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i_fu_801", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Axi_Transfer_fu_806", "Parent" : "0",
		"CDFG" : "Axi_Transfer",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "in_data_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_data_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "in_data_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_data_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_data_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_data_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_data_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_data_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "value_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "loop_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fadd_32ns_32nbkb_U18", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fmul_32ns_32ncud_U19", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fdiv_32ns_32ndEe_U20", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_sitofp_32ns_3eOg_U21", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fcmp_32ns_32nfYi_U22", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_sdiv_32ns_32sg8j_U23", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_sdiv_32ns_32sg8j_U24", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_mul_64ns_32nshbi_U25", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_sdiv_32s_32s_ibs_U26", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_sdiv_32s_32s_ibs_U27", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_mul_64ns_32nshbi_U28", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn {
		in_data_data_V {Type I LastRead 0 FirstWrite -1}
		in_data_keep_V {Type I LastRead 0 FirstWrite -1}
		in_data_strb_V {Type I LastRead 0 FirstWrite -1}
		in_data_user_V {Type I LastRead 0 FirstWrite -1}
		in_data_last_V {Type I LastRead 0 FirstWrite -1}
		in_data_id_V {Type I LastRead 0 FirstWrite -1}
		in_data_dest_V {Type I LastRead 0 FirstWrite -1}
		out_data_data_V {Type O LastRead -1 FirstWrite 0}
		out_data_keep_V {Type O LastRead -1 FirstWrite 0}
		out_data_strb_V {Type O LastRead -1 FirstWrite 0}
		out_data_user_V {Type O LastRead -1 FirstWrite 0}
		out_data_last_V {Type O LastRead -1 FirstWrite 0}
		out_data_id_V {Type O LastRead -1 FirstWrite 0}
		out_data_dest_V {Type O LastRead -1 FirstWrite 0}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	Axi_Transfer {
		in_data_data_V {Type I LastRead 0 FirstWrite -1}
		in_data_keep_V {Type I LastRead 0 FirstWrite -1}
		in_data_strb_V {Type I LastRead 0 FirstWrite -1}
		in_data_user_V {Type I LastRead 0 FirstWrite -1}
		in_data_last_V {Type I LastRead 0 FirstWrite -1}
		in_data_id_V {Type I LastRead 0 FirstWrite -1}
		in_data_dest_V {Type I LastRead 0 FirstWrite -1}
		out_data_data_V {Type O LastRead -1 FirstWrite 0}
		out_data_keep_V {Type O LastRead -1 FirstWrite 0}
		out_data_strb_V {Type O LastRead -1 FirstWrite 0}
		out_data_user_V {Type O LastRead -1 FirstWrite 0}
		out_data_last_V {Type O LastRead -1 FirstWrite 0}
		out_data_id_V {Type O LastRead -1 FirstWrite 0}
		out_data_dest_V {Type O LastRead -1 FirstWrite 0}
		value_r {Type I LastRead 0 FirstWrite -1}
		loop_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_data_data_V { axis {  { in_data_TDATA in_data 0 32 } } }
	in_data_keep_V { axis {  { in_data_TKEEP in_data 0 4 } } }
	in_data_strb_V { axis {  { in_data_TSTRB in_data 0 4 } } }
	in_data_user_V { axis {  { in_data_TUSER in_data 0 1 } } }
	in_data_last_V { axis {  { in_data_TLAST in_data 0 1 } } }
	in_data_id_V { axis {  { in_data_TID in_data 0 1 } } }
	in_data_dest_V { axis {  { in_data_TVALID in_vld 0 1 }  { in_data_TREADY in_acc 1 1 }  { in_data_TDEST in_data 0 1 } } }
	out_data_data_V { axis {  { out_data_TDATA out_data 1 32 } } }
	out_data_keep_V { axis {  { out_data_TKEEP out_data 1 4 } } }
	out_data_strb_V { axis {  { out_data_TSTRB out_data 1 4 } } }
	out_data_user_V { axis {  { out_data_TUSER out_data 1 1 } } }
	out_data_last_V { axis {  { out_data_TLAST out_data 1 1 } } }
	out_data_id_V { axis {  { out_data_TID out_data 1 1 } } }
	out_data_dest_V { axis {  { out_data_TVALID out_vld 1 1 }  { out_data_TREADY out_acc 0 1 }  { out_data_TDEST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
