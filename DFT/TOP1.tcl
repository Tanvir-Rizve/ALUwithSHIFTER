#### Template Script for RTL->Gate-Level Flow (generated from GENUS 17.20-p003_1)
if {[file exists /proc/cpuinfo]} {
sh grep "model name" /proc/cpuinfo
sh grep "cpu MHz" /proc/cpuinfo
}
puts "Hostname : [info hostname]"
##############################################################################
## Preset global variables and attributes
##############################################################################
set DESIGN TOP
set SYN_EFF high
set MAP_EFF high
set GEN_EFF high
set OPT_EFF high
set DATE [clock format [clock seconds] -format "%b%d-%T"]
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}
set ET_WORKDIR modus
set_attribute information_level 7

###############################################################
## Library setup - (Read Target Libraries)
###############################################################
## Set library search path
## set_attribute init_lib_search_path ./../library_open_source /
## Read Target Libraries
## Set library search path

set_attribute library {slow_vdd1v0_basicCells.lib fast_vdd1v0_basicCells.lib}

## Read LEF Files

set_attribute lef_library gsclib045_tech.lef

puts "FINISHED Library setup"

####################################################################
## Load Design - (Read HDL Files)
####################################################################
## Set RTL search path
##set_attribute init_hdl_search_path ./rtl_uart /
## Read the mapped to scan netlist

read_hdl -sv {ALU.v SHIFTER.v TOP.v}

####################################################################
## Elaborate Design
####################################################################
## Elaborate overall design

elaborate $DESIGN
puts "Runtime & Memory after 'read_hdl'"

time_info Elaboration
check_design -unresolved -undriven
set_attribute ungroup_ok false alu_inst
set_attribute ungroup_ok false shifter_inst

####################################################################
## Constraints Setup - (Set Timing & Design Constraints)
####################################################################
read_sdc TOP.sdc
#define_clock -period 10000 -name clk -design /designs/uart_top
puts "The number of exceptions is [llength [find /designs/$DESIGN -exception *]]"
if {![file exists ${_LOG_PATH}]} {
file mkdir ${_LOG_PATH}
puts "Creating directory ${_LOG_PATH}"
}
if {![file exists ${_OUTPUTS_PATH}]} {
file mkdir ${_OUTPUTS_PATH}
puts "Creating directory ${_OUTPUTS_PATH}"
}
if {![file exists ${_REPORTS_PATH}]} {
file mkdir ${_REPORTS_PATH}
puts "Creating directory ${_REPORTS_PATH}"
}
report timing -lint
###################################################################################
## Define cost groups (clock-clock, clock-output, input-clock, input-output)
###################################################################################
## Uncomment to remove already existing costgroups before creating new ones.
## rm [find /designs/* -cost_group *]
if {[llength [all::all_seqs]] > 0} {
define_cost_group -name I2C -design $DESIGN
define_cost_group -name C2O -design $DESIGN
define_cost_group -name C2C -design $DESIGN
path_group -from [all::all_seqs] -to [all::all_seqs] -group C2C -name C2C
path_group -from [all::all_seqs] -to [all_outputs] -group C2O -name C2O
path_group -from [all_inputs] -to [all::all_seqs] -group I2C -name I2C
}
define_cost_group -name I2O -design $DESIGN
path_group -from [all::all_inps] -to [all::all_outs] -group I2O -name I2O

foreach cg [find / -cost_group *] {
report timing -cost_group [list $cg] >> $_REPORTS_PATH/${DESIGN}_pretim.rpt
}
# Harun added
##check_dft_rules > $_REPORTS_PATH/${DESIGN}-tdrcs

puts "#############	HELLO	##################"
##################################################################################################
## DFT Setup - (Setup for DFT Rule Checker)
##################################################################################################
set_attribute dft_scan_style muxed_scan /
set_attribute dft_prefix DFT_ /
set_attribute dft_identify_top_level_test_clocks true /
set_attribute dft_identify_test_signals true /
set_attribute dft_identify_internal_test_clocks false /
set_attribute use_scan_seqs_for_non_dft false /
# DFT Attributes to control scan mapping and connectivity
# tdrc_pass allows only flip-flops that pass DFT rule checks to be mapped during synthesis
# force_all controls mapping of all non-scan flip-flops. Only use if you plan to fix the violations
set_attribute dft_scan_map_mode tdrc_pass "/designs/$DESIGN"
#set_attribute dft_scan_map_mode force_all "/designs/$DESIGN"
set_attribute dft_connect_shift_enable_during_mapping tie_off "/designs/$DESIGN"
set_attribute dft_connect_scan_data_pins_during_mapping loopback "/designs/$DESIGN"
set_attribute dft_scan_output_preference auto "/designs/$DESIGN"
set_attribute dft_lockup_element_type preferred_level_sensitive "/designs/$DESIGN"
# Scan Clock
#define_dft test_clock -name clk -domain clk -period 50000 -rise <integer> -fall <integer> <portOrpin>
define_dft test_clock -name clk /designs/TOP/ports_in/clk
set_compatible_test_clocks -all
# scan enable
define_dft shift_enable -name scan_enable -active high /designs/TOP/ports_in/scan_enable
set_attr preserve false /TOP

puts "FINISHED DFT Setup"
##################################################################################################
## DFT Rule Checker - (Run DFT Rule Checker and Report Registers)
##################################################################################################

check_dft_rules > dft_rules.report

##check_dft_rules > $_REPORTS_PATH/${DESIGN}-tdrcs //Harun Commented
report dft_registers > $_REPORTS_PATH/${DESIGN}-DFTregs
report dft_setup > $_REPORTS_PATH/${DESIGN}-DFTsetup_tdrc
report dft_registers
check_design -multidriven
report dft_violations > $_REPORTS_PATH/${DESIGN}-AdvancedDFTViols

##fix_dft_violations   -async_set -async_reset -clock  clk -design $DESIGN
#check_atpg_rules
#analyze_testability

puts "FINISHED DFT Rule Checker"

####################################################################################################
## Synthesizing to generic
####################################################################################################
set_attribute syn_generic_effort $GEN_EFF /

#Harun added
#set_attr lp_insert_clock_gating true

syn_generic
puts "Runtime & Memory after 'syn_generic'"
time_info GENERIC
#report timing -lint
write_snapshot -outdir $_REPORTS_PATH -tag generic
report datapath > $_REPORTS_PATH/generic/${DESIGN}_datapath.rpt
report_summary -outdir $_REPORTS_PATH
####
#set_attribute delete_hier_insts_on_preserved_net true /
####################################################################################################
## Synthesizing to gates
####################################################################################################
set_attribute syn_map_effort $MAP_OPT_EFF /
syn_map
puts "Runtime & Memory after 'syn_map'"
time_info MAPPED
write_snapshot -outdir $_REPORTS_PATH -tag map
report_summary -outdir $_REPORTS_PATH
report datapath > $_REPORTS_PATH/map/${DESIGN}_datapath.rpt
write_do_lec -revised_design fv_map -logfile ${_LOG_PATH}/rtl2intermediate.lec.log > ${_OUTPUTS_PATH}/rtl2intermediate.lec.do

#set_attr lp_insert_clock_gating true // Harun comment out

#replace_scan $DESIGN
################## Scan Chains ###################################
###################################################################
### Stable Chains Below, do not delete
# -shared_input was removed from both of them
define_dft scan_chain -name chain1 -sdi /designs/TOP/ports_in/scan_in_1 -sdo /designs/TOP/ports_out/scan_out_1
#define_dft scan_chain -name chain2 -sdi /designs/uart_top/ports_in/scan_in_2 -sdo /designs/uart_top/ports_out/scan_out_2
#define_dft scan_chain -name chain3 -sdi /designs/uart_top/ports_in/scan_in_3 -sdo /designs/uart_top/ports_out/scan_out_3

#define_dft scan_chain -name chain4 -sdi /designs/uart_top/ports_in/scan_in_4 -sdo /designs/uart_top/ports_out/scan_out_4

check_dft_rules > dft_rules_aft.report

connect_scan_chains $DESIGN -auto_create_chains


report dft_registers
report dft_chains

puts "FINISHED Scan Chains"
#######################################################################################################
## Optimize Netlist
#######################################################################################################
set_attribute syn_opt_effort $MAP_OPT_EFF /
syn_opt
write_snapshot -outdir $_REPORTS_PATH -tag syn_opt
report_summary -outdir $_REPORTS_PATH
puts "Runtime & Memory after 'syn_opt'"
time_info OPT
#############################################
## DFT Reports
#############################################
report dft_setup > $_REPORTS_PATH/${DESIGN}-DFTsetup_final
puts "FINISHED DFT Reports"
#write_scandef > ${DESIGN}-scanDEF
#write_dft_abstract_model > ${DESIGN}-scanAbstract
#write_hdl -abstract > ${DESIGN}-logicAbstract
#write_script -analyze_all_scan_chains > ${DESIGN}-writeScript-analyzeAllScanChains
######################################################################################################
## write backend file set (verilog, SDC, config, etc.)
######################################################################################################
report datapath > $_REPORTS_PATH/${DESIGN}_datapath_incr.rpt
report messages > $_REPORTS_PATH/${DESIGN}_messages.rpt
write_snapshot -outdir $_REPORTS_PATH -tag final
report_summary -outdir $_REPORTS_PATH
write_hdl > TOP_netlist.v
## write_script > ${_OUTPUTS_PATH}/${DESIGN}_m.script
write_sdc > TOP_m.sdc

puts "FINISHED write backend file set"
#################################
### write_do_lec
#################################

write_do_lec -revised_design TOP_netlist.v > rtl2final.lec.do
################# ATPG STARTS HERE ###############################3
# write_dft_atpg is the latest updated command for modus

write_et_atpg -library "/home/Team29/library/fast_vdd1v0_basicCells.lib" -directory ./et_atpg_output $DESIGN -ncsim_library "/home/Team29/library/fast_vdd1v0_basicCells.v"

puts "Final Runtime & Memory."
time_info FINAL
puts "============================"
puts "Synthesis Finished ........."
puts "============================"
#file copy [get_attribute stdout_log /] ${_LOG_PATH}/.
##quit
