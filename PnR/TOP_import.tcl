##################################################################
############ ##### import design
################################################################## #
#Here all the basic variable for running the design is defined
set TECH 45
set step import
set POWER_NET VDD
set GROUND_NET VSS
set FLOW_DBS dbs
set MAX_SIGNAL_ROUTING_LAYER 5
set MIN_SIGNAL_ROUTING_LAYER 1
setMultiCpuUsage -localCpu 8
setDesignMode -process $TECH
set pdk_dir /home/cad/VLSI2Lab/Digital/library

# Define the power and GND net
set init_pwr_net $POWER_NET
set init_gnd_net $GROUND_NET
# Define tech file location
set init_lef_file "${pdk_dir}/gsclib045_tech.lef ${pdk_dir}/gsclib045_macro.lef"
# Define netlist file location
set init_verilog TOP_m.v
# Define mmmc file
set init_mmmc_file TOP.view
# initialize all variable
init_design
# delete all empty module on the design
deleteEmptyModule
# chech if there is any duplicate module in the design
checkUnique
# Define the global Power & Gnd nets. Otherwise the 1'b0/1'b1 are not properly connected
globalNetConnect $POWER_NET -type pgpin -pin VDD -inst *
globalNetConnect $POWER_NET -type tiehi -inst *
globalNetConnect $GROUND_NET -type pgpin -pin VSS -inst *
globalNetConnect $GROUND_NET -type tielo -inst *
# Make sure the usage of buffers/inverters
set_interactive_constraint_modes [all_constraint_modes -active]
setDontUse BUF* false
setDontUse INV* false 
set_dont_touch [get_lib_cells "*/BUF* */INV* " ] false
# Innovus Database Saving
set enc_save_portable_design 1
saveDesign ${FLOW_DBS}/${step}.enc -compress
saveNetlist ./generated_netlist/${step}.v
