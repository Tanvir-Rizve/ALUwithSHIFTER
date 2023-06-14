# Define route stageset step route## Reload lib setting
#set_dont_touch [get_lib_cells "*/BUF* */INV* " ] falsesetDelayCalMode -SIAware true
setAnalysisMode -analysisType onChipVariation# Preparing for Routing
checkPlaceverifyTracks## set route properties
set MAX_SIGNAL_ROUTING_LAYER 5
set MIN_SIGNAL_ROUTING_LAYER 1
set routeTopRoutingLayer $MAX_SIGNAL_ROUTING_LAYER
set routeBottomRoutingLayer $MIN_SIGNAL_ROUTING_LAYER
setNanoRouteMode -routeWithTimingDriven true
setNanoRouteMode -routeBottomRoutingLayer $MIN_SIGNAL_ROUTING_LAYERsetNanoRouteMode -routeTopRoutingLayer $MAX_SIGNAL_ROUTING_LAYERsetAttribute -bottom_preferred_routing_layer 1 -net *
setAttribute -top_preferred_routing_layer 7 -net *
# Route the design#routeDesign -detailglobalDetailRoute
# PostRoute Parasitic Extraction Settings
setExtractRCMode -coupled true -engine postRoute -total_c_th 5 -relative_c_th 0.03 -coupling_c_th 3 -effortLevel medium
# checking timing after routeputs "TimeDesign Final"timeDesign -postRoutetimeDesign -postRoute -hold## if timing is not metsetOptMode -effort high
# setup optimizationsetAnalysisMode -checkType setupoptDesign -postRoute
#hold optimizationsetAnalysisMode -checkType hold
# Necessary if setup violation increase after hold optimizationsetAnalysisMode -checkType setup
optDesign -postRoute## Adding filler cell
set FILLER_cells [dbGet head.allCells.name FILL*]
addFiller -cell $FILLER_cells -prefix FILL_INST -fitGapaddFiller -cell $FILLER_cells -prefix FILL_INST -fitGap -fixDRC
# saving timing report (setup & hold) in post-route stageputs "TimeDesign Final"
timeDesign -postRoute -outdir ./timingReports/$step/timeDesign -postRoute -hold -outdir ./timingReports/$step/## Different types of checks
verify_drcverify_connectivity
report_power## Dump Spef file
rcOut -rc_corner rcworst125 -spef ./output/alu_rcworst.spef## GDS dump
set ip_gds "/home/Team29/library/gsclib045.gds"set name [clock format [clock seconds] -format "%b%d-%T"]
streamOut output/[dbGet [dbgTopCell].name].${name}.IP_MERGED.gds \-libName DesignLib \
-structureName [dbGet [dbgTopCell].name] \-stripes 1 \
-dieAreaAsBoundary \
-units 1000 \-mode ALL \-merge "$ip_gds"save final netlist
saveNetlist ./generated_netlist/${step}.v
# Save database
set enc_save_portable_design 1
saveDesign ${FLOW_DBS}/${step}.enc -compress
