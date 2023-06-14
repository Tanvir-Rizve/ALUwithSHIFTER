###############################################################
#  Generated by:      Cadence Innovus 16.10-p004_1
#  OS:                Linux x86_64(Host ID CadenceServer3.localdomain)
#  Generated on:      Tue Jun 13 16:50:36 2023
#  Design:            TOP
#  Command:           saveDesign powerPlan.en
###############################################################
current_design TOP
set_clock_gating_check -rise -setup 0 
set_clock_gating_check -fall -setup 0 
create_clock [get_ports {clk}]  -name func_clk -period 5.000000 -waveform {0.000000 1.000000}
set_wire_load_mode enclosed
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {H[0]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {A[2]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {A[0]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {S[1]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {B[2]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {B[0]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {H[1]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {A[3]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {Cin}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {A[1]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {S[2]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {B[3]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {S[0]}]
set_input_delay -add_delay 0.4 -clock [get_clocks {func_clk}] [get_ports {B[1]}]
set_output_delay -add_delay 0.6 -clock [get_clocks {func_clk}] [get_ports {O[3]}]
set_output_delay -add_delay 0.6 -clock [get_clocks {func_clk}] [get_ports {O[1]}]
set_output_delay -add_delay 0.6 -clock [get_clocks {func_clk}] [get_ports {Cout}]
set_output_delay -add_delay 0.6 -clock [get_clocks {func_clk}] [get_ports {O[2]}]
set_output_delay -add_delay 0.6 -clock [get_clocks {func_clk}] [get_ports {O[0]}]
set_multicycle_path 3 -setup  -from [get_ports {reset}] 
set_multicycle_path 2 -hold  -from [get_ports {reset}] 
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKBUFX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSXL}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSRHQX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFRHQX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFHQX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKXOR2X8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/DLY4X1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX6}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKBUFX3}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFTRX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSRHQX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFRHQX8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFNSRX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKMX2X12}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKBUFX6}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFTRXL}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKAND2X2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSRX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFRX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFNSRX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKMX2X3}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKAND2X4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSRX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFRXL}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFQX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKMX2X6}]
set_dont_use  [get_lib_cells {slow_vdd1v0/DLY1X4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX16}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFXL}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKAND2X8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSHQX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFQX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKXOR2X1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/DLY2X4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX20}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKBUFX16}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSHQX8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFRHQX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFHQX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKXOR2X4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/DLY3X4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKBUFX20}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFTRX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSRHQX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFRHQX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFHQX8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/HOLDX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/DLY4X4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKBUFX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFTRX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKAND2X12}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSRHQX8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFRX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFNSRX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKMX2X2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKBUFX8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKAND2X3}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSRX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFRX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFNSRXL}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKMX2X4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/DLY1X1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX12}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKAND2X6}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSRXL}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSHQX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFQX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKMX2X8}]
set_dont_use  [get_lib_cells {slow_vdd1v0/DLY2X1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKBUFX12}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSX2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFSHQX4}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFQXL}]
set_dont_use  [get_lib_cells {slow_vdd1v0/SDFFHQX1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKXOR2X2}]
set_dont_use  [get_lib_cells {slow_vdd1v0/DLY3X1}]
set_dont_use  [get_lib_cells {slow_vdd1v0/CLKINVX3}]
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX3}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX1}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/BUFX20}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX6}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX16}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/BUFX4}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVXL}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/BUFX12}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX20}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/BUFX8}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/BUFX2}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX4}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX12}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/BUFX3}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX8}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/INVX2}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/BUFX6}] false
set_dont_touch  [get_lib_cells {slow_vdd1v0/BUFX16}] false
