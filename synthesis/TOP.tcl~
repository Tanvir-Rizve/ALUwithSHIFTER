#run Genus in Legacy UI if Genus is invoked with Common UI
::legacy::set_attribute common_ui false / ;
if {[file exists /proc/cpuinfo]} {
sh grep "model name" /proc/cpuinfo
sh grep "cpu MHz" /proc/cpuinfo
}
puts "Hostname : [info hostname]"
##############################################################################
### Preset global variables and attributes
##############################################################################
set DESIGN TOP
set SYN_EFF high
set MAP_EFF high
set OPT_EFF high
# Directory of PDK
set pdk_dir /home/cad/VLSI2Lab/Digital/library/
#set_attribute init_lib_search_path $pdk_dir/gsclib045/timing
#set_attribute init_hdl_search_path /home/wsadiq/buet_flow/rtl
set_attribute init_lib_search_path $pdk_dir
#set_attribute init_hdl_search_path ../../rtl
##Set synthesizing effort for each synthesis stage
set_attribute syn_generic_effort $SYN_EFF
set_attribute syn_map_effort $MAP_EFF
set_attribute syn_opt_effort $OPT_EFF
#set_attribute library "\slow_vdd1v0_basicCells_hvt.lib \
#slow_vdd1v0_basicCells.lib \
#slow_vdd1v0_basicCells_lvt.lib"
set_attribute library {slow_vdd1v0_basicCells.lib fast_vdd1v0_basicCells.lib}
set_dont_use [get_lib_cells CLK*]
set_dont_use [get_lib_cells SDFF*]
set_dont_use [get_lib_cells DLY*]
set_dont_use [get_lib_cells HOLD*]
# If you dont want to use LVT uncomment this line
#set_dont_use [get_lib_cells *LVT*]
####################################################################
## Load Design - (Read HDL Files)
####################################################################
## Set RTL search path
read_hdl -sv {ALU.v SHIFTER.v TOP.v}
puts "FINISHED Load Design"
####################################################################
## Elaborate Design
####################################################################
## Elaborate overall design
elaborate $DESIGN
puts "Runtime & Memory after 'read_hdl'"
time_info Elaboration
check_design -unresolved 
set_attribute ungroup_ok false ALU
set_attribute ungroup_ok false SHIFTER
puts "FINISHED Elaborate Design"
####################################################################
### Constraints Setup
#####################################################################
read_sdc TOP.sdc
report timing -encounter >> reports/${DESIGN}_pretim.rpt
####################################################################################################
### Synthesizing to generic
####################################################################################################
syn_generic
puts "Runtime & Memory after 'syn_generic'"
time_info GENERIC
report datapath > reports/${DESIGN}_datapath_generic.rpt
generate_reports -outdir reports -tag generic
write_db -to_file ${DESIGN}_generic.db
report timing -encounter >> reports/${DESIGN}_generic.rpt

######################################################################### Synthesizing to gates#######################################################################Master command
syn_map
puts "Runtime & Memory after 'syn_map'"time_info MAPPED
report datapath > reports/${DESIGN}_datapath_map.rptgenerate_reports -outdir reports -tag map
report timing -encounter >> reports/${DESIGN}_map.rptwrite_db -to_file ${DESIGN}_map.db

######################################################################### Incremental Synthesis#######################################################################master command
syn_opt
puts "Runtime & Memory after syn_opt"time_info INCREMENTAL
generate_reports -outdir reports -tag incrementalsummary_table -outdir reports
report timing -encounter >> reports/${DESIGN}_opt.rptwrite_db -to_file ${DESIGN}_opt.db
######################################################################### Dumping reports write Innovus file set (verilog, SDC, config,etc.)######################################################################report area > reports/${DESIGN}_area.rpt
report datapath > reports/${DESIGN}_datapath_incr.rptreport messages > reports/${DESIGN}_messages.rptreport gates > reports/${DESIGN}_gates.rptwrite_design -basename genus2invs/${DESIGN}_m
write_hdl > genus2invs/${DESIGN}_m.vwrite_sdc > genus2invs/${DESIGN}_m.sdcputs "Final Runtime & Memory."time_info FINAL
gui_show
puts "============================"

