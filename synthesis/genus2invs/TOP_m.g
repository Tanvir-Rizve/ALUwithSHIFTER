######################################################################

# Created by Genus(TM) Synthesis Solution 16.13-s036_1 on Thu Jun 15 12:23:39 +0600 2023

# This file contains the RC script for /designs/TOP

######################################################################

::legacy::set_attribute -quiet init_lib_search_path /home/cad/VLSI2Lab/Digital/library/ /
::legacy::set_attribute -quiet common_ui false /
::legacy::set_attribute -quiet design_mode_process no_value /
::legacy::set_attribute -quiet phys_assume_met_fill 0.0 /
::legacy::set_attribute -quiet phys_use_invs_extraction false /
::legacy::set_attribute -quiet phys_route_blockage_free false /
::legacy::set_attribute -quiet runtime_by_stage { {to_generic 0 36 0 10}  {first_condense 1 38 0 11}  {reify 0 38 0 11}  {global_incr_map 0 38 0 11}  {incr_opt 0 38 0 11} } /
::legacy::set_attribute -quiet tinfo_tstamp_file .rs_Team14.tstamp /
::legacy::set_attribute -quiet syn_generic_effort high /
::legacy::set_attribute -quiet flow_metrics_snapshot_uuid 56dec4e3 /
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias inf /
::legacy::set_attribute -quiet interconnect_mode wireload /
::legacy::set_attribute -quiet wireload_mode enclosed /
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKAND2X12
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKAND2X2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKAND2X3
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKAND2X4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKAND2X6
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKAND2X8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKBUFX12
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKBUFX16
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKBUFX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKBUFX20
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKBUFX3
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKBUFX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKBUFX6
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKBUFX8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX12
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX16
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX20
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX3
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX6
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKINVX8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKMX2X12
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKMX2X2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKMX2X3
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKMX2X4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKMX2X6
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKMX2X8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKXOR2X1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKXOR2X2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKXOR2X4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/CLKXOR2X8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/DLY1X1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/DLY1X4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/DLY2X1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/DLY2X4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/DLY3X1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/DLY3X4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/DLY4X1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/DLY4X4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFHQX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFHQX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFHQX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFHQX8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFNSRX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFNSRX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFNSRX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFNSRXL
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFQX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFQX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFQX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFQXL
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFRHQX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFRHQX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFRHQX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFRHQX8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFRX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFRX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFRX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFRXL
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSHQX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSHQX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSHQX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSHQX8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSRHQX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSRHQX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSRHQX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSRHQX8
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSRX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSRX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSRX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSRXL
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFSXL
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFTRX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFTRX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFTRX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFTRXL
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFX1
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFX2
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFX4
::legacy::set_attribute -quiet avoid true /libraries/slow_vdd1v0/libcells/SDFFXL
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/slow_vdd1v0/operating_conditions/PVT_0P9V_125C
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/slow_vdd1v0/operating_conditions/_nominal_
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/fast_vdd1v0/operating_conditions/PVT_1P1V_0C
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/fast_vdd1v0/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name func_clk -domain domain_1 -period 5000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 5 -design /designs/TOP /designs/TOP/ports_in/clk
define_cost_group -design /designs/TOP -name func_clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name create_clock_delay_domain_1_func_clk_R_0 /designs/TOP/ports_in/clk
::legacy::set_attribute -quiet clock_network_latency_included true /designs/TOP/timing/external_delays/create_clock_delay_domain_1_func_clk_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -edge_fall -name create_clock_delay_domain_1_func_clk_F_0 /designs/TOP/ports_in/clk
::legacy::set_attribute -quiet clock_network_latency_included true /designs/TOP/timing/external_delays/create_clock_delay_domain_1_func_clk_F_0
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_17 {{/designs/TOP/ports_in/A[3]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_17_1_1 {{/designs/TOP/ports_in/A[2]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_17_2_1 {{/designs/TOP/ports_in/A[1]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_17_3_1 {{/designs/TOP/ports_in/A[0]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_18 {{/designs/TOP/ports_in/B[3]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_18_4_1 {{/designs/TOP/ports_in/B[2]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_18_5_1 {{/designs/TOP/ports_in/B[1]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_18_6_1 {{/designs/TOP/ports_in/B[0]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_19 {{/designs/TOP/ports_in/S[2]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_19_7_1 {{/designs/TOP/ports_in/S[1]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_19_8_1 {{/designs/TOP/ports_in/S[0]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_20 /designs/TOP/ports_in/Cin
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_21 {{/designs/TOP/ports_in/H[1]}}
external_delay -accumulate -input {400.0 400.0 400.0 400.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_21_9_1 {{/designs/TOP/ports_in/H[0]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_23 /designs/TOP/ports_out/Cout
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_24 {{/designs/TOP/ports_out/O[3]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_24_10_1 {{/designs/TOP/ports_out/O[2]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_24_11_1 {{/designs/TOP/ports_out/O[1]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock /designs/TOP/timing/clock_domains/domain_1/func_clk -name TOP.sdc_line_24_12_1 {{/designs/TOP/ports_out/O[0]}}
path_group -paths [specify_paths -to /designs/TOP/timing/clock_domains/domain_1/func_clk]  -name func_clk -group /designs/TOP/timing/cost_groups/func_clk -user_priority -1047552
multi_cycle -paths [specify_paths -lenient -from /designs/TOP/ports_in/reset]  -launch_shift 0 -capture_shift 3 -name TOP.sdc_line_14 -setup -user_priority -999424
::legacy::set_attribute -quiet sdc_filename_linenumber {{TOP.sdc 14}} /designs/TOP/timing/exceptions/multi_cycles/TOP.sdc_line_14
multi_cycle -paths [specify_paths -lenient -from /designs/TOP/ports_in/reset]  -launch_shift 2 -capture_shift 1 -name TOP.sdc_line_15 -hold -user_priority -999424
::legacy::set_attribute -quiet sdc_filename_linenumber {{TOP.sdc 15}} /designs/TOP/timing/exceptions/multi_cycles/TOP.sdc_line_15
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 652} {cell_count 195} {utilization  0.00} {runtime 0 36 0 10} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 698} {cell_count 273} {utilization  0.00} {runtime 1 38 0 11} }{reify {wns 3013} {tns 0} {vep 0} {area 258} {cell_count 155} {utilization  0.00} {runtime 0 38 0 11} }{global_incr_map {wns 2976} {tns 0} {vep 0} {area 255} {cell_count 152} {utilization  0.00} {runtime 0 38 0 11} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 254} {cell_count 152} {utilization  0.00} {runtime 0 38 0 11} }} /designs/TOP
::legacy::set_attribute -quiet hdl_user_name TOP /designs/TOP
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {ALU.v SHIFTER.v TOP.v} {}}} /designs/TOP
::legacy::set_attribute -quiet verification_directory fv/TOP /designs/TOP
::legacy::set_attribute -quiet arch_filename TOP.v /designs/TOP
::legacy::set_attribute -quiet entity_filename TOP.v /designs/TOP
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/A[3]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/A[2]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/A[1]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/A[0]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/B[3]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/B[2]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/B[1]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/B[0]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/S[2]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/S[1]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/S[0]}
::legacy::set_attribute -quiet min_transition no_value /designs/TOP/ports_in/Cin
::legacy::set_attribute -quiet min_transition no_value /designs/TOP/ports_in/clk
::legacy::set_attribute -quiet min_transition no_value /designs/TOP/ports_in/reset
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/H[1]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_in/H[0]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_out/O[3]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_out/O[2]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_out/O[1]}
::legacy::set_attribute -quiet min_transition no_value {/designs/TOP/ports_out/O[0]}
::legacy::set_attribute -quiet min_transition no_value /designs/TOP/ports_out/Cout
::legacy::set_attribute -quiet hdl_user_name ALU /designs/TOP/subdesigns/ALU
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {ALU.v} {}}} /designs/TOP/subdesigns/ALU
::legacy::set_attribute -quiet ungroup_ok false /designs/TOP/subdesigns/ALU
::legacy::set_attribute -quiet arch_filename ALU.v /designs/TOP/subdesigns/ALU
::legacy::set_attribute -quiet entity_filename ALU.v /designs/TOP/subdesigns/ALU
::legacy::set_attribute -quiet gint_phase_inversion false /designs/TOP/instances_hier/alu_inst/instances_seq/Cout_reg
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/TOP/instances_hier/alu_inst/instances_seq/F_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/TOP/instances_hier/alu_inst/instances_seq/F_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/TOP/instances_hier/alu_inst/instances_seq/F_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/TOP/instances_hier/alu_inst/instances_seq/F_reg[0]}
::legacy::set_attribute -quiet hdl_user_name SHIFTER /designs/TOP/subdesigns/SHIFTER
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {SHIFTER.v} {}}} /designs/TOP/subdesigns/SHIFTER
::legacy::set_attribute -quiet ungroup_ok false /designs/TOP/subdesigns/SHIFTER
::legacy::set_attribute -quiet arch_filename SHIFTER.v /designs/TOP/subdesigns/SHIFTER
::legacy::set_attribute -quiet entity_filename SHIFTER.v /designs/TOP/subdesigns/SHIFTER
