##################################################################
###### Placement 
##################################################################
# Define placement stage 
set step placeopt
## Reload lib setting 
set_interactive_constraint_modes [all_constraint_modes -active]
setDontUse BUF* false
setDontUse INV* false 
set_dont_touch [get_lib_cells "*/BUF* */INV* " ] false
# Innovus Database Saving
## to get an idea about clock tree of the design #
#create_ccopt_clock_tree_spec -file ./scripts/clock.spec 
#source ./scripts/clock.spec
# checking placement status before athe placement stage 
timeDesign -prePlace
set MAX_SIGNAL_ROUTING_LAYER 5
set MIN_SIGNAL_ROUTING_LAYER 1
# setting routing variable 
set maxRouteLayer $MAX_SIGNAL_ROUTING_LAYER
set minRouteLayer $MIN_SIGNAL_ROUTING_LAYER
setTrialRouteMode -highEffort true -minRouteLayer $MIN_SIGNAL_ROUTING_LAYER -maxRouteLayer  $MAX_SIGNAL_ROUTING_LAYER
setOptMode -effort high
# place and optimize the design
place_opt_design
puts "TimeDesign Final after Placement, Optimization"

saveDesign dbs/${step}.enc -compress
