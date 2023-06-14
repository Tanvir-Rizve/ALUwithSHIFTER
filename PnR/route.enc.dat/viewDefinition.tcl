if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name WC\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow_vdd1v0_basicCells.lib]
create_library_set -name BC\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast_vdd1v0_basicCells.lib]
create_rc_corner -name rcworst125\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 1\
   -preRoute_clkcap 1\
   -postRoute_clkcap 1\
   -postRoute_clkres 1\
   -T 125\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rcworst125/gpdk045.tch
create_rc_corner -name rcbest0\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 1\
   -preRoute_clkcap 1\
   -postRoute_clkcap 1\
   -postRoute_clkres 1\
   -T 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rcworst125/gpdk045.tch
create_delay_corner -name WC_rcworst125.setup\
   -library_set WC\
   -rc_corner rcworst125
create_delay_corner -name BC_rcbest0.hold\
   -library_set BC\
   -rc_corner rcbest0
create_constraint_mode -name func\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/func/func.sdc]
create_analysis_view -name func@BC_rcbest0.hold -constraint_mode func -delay_corner BC_rcbest0.hold -latency_file ${::IMEX::dataVar}/mmmc/views/func@BC_rcbest0.hold/latency.sdc
create_analysis_view -name func@WC_rcworst125.setup -constraint_mode func -delay_corner WC_rcworst125.setup -latency_file ${::IMEX::dataVar}/mmmc/views/func@WC_rcworst125.setup/latency.sdc
set_analysis_view -setup [list func@WC_rcworst125.setup] -hold [list func@BC_rcbest0.hold]
