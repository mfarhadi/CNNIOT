set moduleName Axi_Transfer
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Axi_Transfer}
set C_modelType { int 32 }
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
	{ value_r int 32 regular  }
	{ loop_r int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_data_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "value_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "loop_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_data_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_data_TVALID sc_in sc_logic 1 invld 0 } 
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
	{ value_r sc_in sc_lv 32 signal 14 } 
	{ loop_r sc_in sc_lv 1 signal 15 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ in_data_TDATA_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_data_TDATA_blk_n sc_out sc_logic 1 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data_data_V", "role": "default" }} , 
 	{ "name": "in_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_data_data_V", "role": "default" }} , 
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
 	{ "name": "out_data_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_dest_V", "role": "default" }} , 
 	{ "name": "value_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_r", "role": "default" }} , 
 	{ "name": "loop_r", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "loop_r", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "in_data_TDATA_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data_TDATA_blk_n", "role": "default" }} , 
 	{ "name": "out_data_TDATA_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_TDATA_blk_n", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "loop_r", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_data_data_V { axis {  { in_data_TDATA in_data 0 32 }  { in_data_TVALID in_vld 0 1 } } }
	in_data_keep_V { axis {  { in_data_TKEEP in_data 0 4 } } }
	in_data_strb_V { axis {  { in_data_TSTRB in_data 0 4 } } }
	in_data_user_V { axis {  { in_data_TUSER in_data 0 1 } } }
	in_data_last_V { axis {  { in_data_TLAST in_data 0 1 } } }
	in_data_id_V { axis {  { in_data_TID in_data 0 1 } } }
	in_data_dest_V { axis {  { in_data_TREADY in_acc 1 1 }  { in_data_TDEST in_data 0 1 } } }
	out_data_data_V { axis {  { out_data_TDATA out_data 1 32 } } }
	out_data_keep_V { axis {  { out_data_TKEEP out_data 1 4 } } }
	out_data_strb_V { axis {  { out_data_TSTRB out_data 1 4 } } }
	out_data_user_V { axis {  { out_data_TUSER out_data 1 1 } } }
	out_data_last_V { axis {  { out_data_TLAST out_data 1 1 } } }
	out_data_id_V { axis {  { out_data_TID out_data 1 1 } } }
	out_data_dest_V { axis {  { out_data_TVALID out_vld 1 1 }  { out_data_TREADY out_acc 0 1 }  { out_data_TDEST out_data 1 1 } } }
	value_r { ap_none {  { value_r in_data 0 32 } } }
	loop_r { ap_none {  { loop_r in_data 0 1 } } }
}
