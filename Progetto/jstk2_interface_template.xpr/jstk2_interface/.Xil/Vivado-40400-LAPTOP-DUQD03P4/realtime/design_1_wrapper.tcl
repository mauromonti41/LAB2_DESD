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
    set ::env(RT_TMP) "C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/.Xil/Vivado-40400-LAPTOP-DUQD03P4/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7a35tcpg236-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include c:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/jstk2_interface.gen/sources_1/bd/design_1/ipshared/d0f7 {
      D:/Vivado/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      D:/Vivado/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv
      D:/Vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_vhdl -lib xil_defaultlib {
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/.Xil/Vivado-40400-LAPTOP-DUQD03P4/realtime/design_1_AXI4Stream_UART_0_0_stub.vhdl
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/.Xil/Vivado-40400-LAPTOP-DUQD03P4/realtime/design_1_axi4stream_spi_master_0_0_stub.vhdl
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/.Xil/Vivado-40400-LAPTOP-DUQD03P4/realtime/design_1_clk_wiz_0_0_stub.vhdl
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/.Xil/Vivado-40400-LAPTOP-DUQD03P4/realtime/design_1_proc_sys_reset_0_0_stub.vhdl
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/.Xil/Vivado-40400-LAPTOP-DUQD03P4/realtime/design_1_jstk_uart_bridge_0_0_stub.vhdl
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/.Xil/Vivado-40400-LAPTOP-DUQD03P4/realtime/design_1_digilent_jstk2_0_0_stub.vhdl
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/jstk2_interface.srcs/sources_1/new/jstk_uart_bridge.vhd
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/jstk2_interface.srcs/sources_1/new/digilent_jstk2.vhd
      c:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/jstk2_interface.gen/sources_1/bd/design_1/synth/design_1.vhd
      C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/jstk2_interface.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
    }
      rt::read_vhdl -lib xpm D:/Vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top design_1_wrapper
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "C:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/.Xil/Vivado-40400-LAPTOP-DUQD03P4/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
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
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
