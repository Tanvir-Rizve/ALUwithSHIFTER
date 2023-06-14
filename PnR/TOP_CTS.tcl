##################################################################
#Delete previous clock treedelete_ccopt_clock_tree_specdelete_ccopt_clock_trees *#define cts stage
set step cts
# define which cell need to ignore
set_interactive_constraint_modes [all_constraint_modes -active]setDontUse CLKINV* false
set_dont_touch [get_lib_cells " */CLKINV* " ] false
## Settings CCOPT
create_ccopt_clock_tree_spec -file ./scripts/clock.spec
source ./scripts/clock.spec
#create_ccopt_clock_tree -name clk -source clkccopt_design -cts

## if timing is not metoptDesign -postCTSoptDesign -postCTS -hold
# saving timing report (setup & hold) in CTS stage
puts "TimeDesign Final"
timeDesign -postCTS -outdir ./timingReports/$step/timeDesign -postCTS -hold -outdir ./timingReports/$step/
# save netlist after cts
saveNetlist ./generated_netlist/${step}.v
# Save database
set enc_save_portable_design 1
saveDesign ${FLOW_DBS}/${step}.enc -compress
