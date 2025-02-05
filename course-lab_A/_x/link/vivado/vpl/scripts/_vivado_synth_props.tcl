# This file was automatically generated by vpl
# this creates all the ooc run objects without running them
launch_runs my_rm_synth_1 -scripts_only
# rest all the synthesis runs
set runs [get_runs -filter {IS_SYNTHESIS == 1}]
set runs_list {}
foreach _run $runs {
  lappend runs_list [get_property name $_run]
  reset_run [get_runs $_run]
}
# Send list of all synthesis runs to xcd server for job status messaging
::vitis_log::synth_runs -runs $runs_list

proc get_all_kernel_synth_runs {} {
  set krnl_runs {}
  set cand_runs [get_runs -filter {IS_SYNTHESIS == 1}]
  foreach cand_run $cand_runs {
    set cand_fs [get_property srcset $cand_run]
    if {[get_property fileset_type $cand_fs] != "BlockSrcs"} {continue}
    set cand_files [get_files -of_objects $cand_fs -norecurse]
    if {[llength $cand_files] != 1} {continue}
    set cand_file [lindex $cand_files 0]
    if {[get_property FILE_TYPE $cand_file] != "IP"} {continue}
    set cand_ip [get_ips -all [get_property IP_TOP $cand_file]]
    if {$cand_ip == {}} {continue}
    set prop_val [get_property SDX_KERNEL $cand_ip]
    if {[get_property SDX_KERNEL $cand_ip] && [get_property SDX_KERNEL_TYPE $cand_ip] eq "hls"} {lappend krnl_runs $cand_run}
  }
  return $krnl_runs
}

set krnl_runs [get_all_kernel_synth_runs]
if { [llength $krnl_runs] > 0 } {
  set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-directive sdx_optimization_effort_high} -objects $krnl_runs
}
