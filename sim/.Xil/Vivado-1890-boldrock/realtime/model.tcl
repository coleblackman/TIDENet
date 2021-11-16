# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-1890-boldrock/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7vx485tffg1761-2

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv {
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/acc_addr.sv
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/vector_muladd.sv
      /opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog {
      ./.Xil/Vivado-1890-boldrock/realtime/conv1_rm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/conv1_wm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/conv1_bm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/pool1_rm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/conv2_rm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/conv2_wm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/conv2_bm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/pool2_rm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/ip1_rm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/ip1_wm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/ip1_bm_ram_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/mul16_unsigned_stub.v
      ./.Xil/Vivado-1890-boldrock/realtime/mul16x16_signed_stub.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/addr2.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/addr4.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/bit_trunc.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/bn_bias_relu.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/busm2n.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/controller_v2.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/controller_v2_a.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/try6/TIDENet/accdnn/build/src/conv1_layer.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/try6/TIDENet/accdnn/build/src/conv2_layer.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/ddr_read_delay.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/delay.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/verilog/interlayer_sync_fifo.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/try6/TIDENet/accdnn/build/src/ip1_layer.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/multiplier.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/try6/TIDENet/accdnn/build/src/pool1_layer.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/try6/TIDENet/accdnn/build/src/pool2_layer.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/vivado_prj/lenet1/lenet1.srcs/sources_1/imports/tidenet/vivado_prj/project_2/project_2.srcs/sources_1/imports/verilog/vector_max.v
      /home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/sources_1/imports/tidenet/try6/TIDENet/accdnn/build/src/model.v
    }
      rt::read_vhdl -lib xpm /opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top model
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-1890-boldrock/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] && [info exists rt::doParallel] && $rt::doParallel} { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] && [info exists rt::doParallel] && $rt::doParallel} { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
