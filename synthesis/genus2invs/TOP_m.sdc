# ####################################################################

#  Created by Genus(TM) Synthesis Solution 16.13-s036_1 on Thu Jun 15 12:23:39 +0600 2023

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design TOP

create_clock -name "func_clk" -add -period 5.0 -waveform {0.0 1.0} [get_ports clk]
set_multicycle_path -from [get_ports reset] -setup -end 3
set_multicycle_path -from [get_ports reset] -hold -start 2
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {A[3]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {A[2]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {A[1]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {A[0]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {B[3]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {B[2]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {B[1]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {B[0]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {S[2]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {S[1]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {S[0]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports Cin]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {H[1]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.4 [get_ports {H[0]}]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.6 [get_ports Cout]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.6 [get_ports {O[3]}]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.6 [get_ports {O[2]}]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.6 [get_ports {O[1]}]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.6 [get_ports {O[0]}]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells slow_vdd1v0/CLKAND2X12]
set_dont_use [get_lib_cells slow_vdd1v0/CLKAND2X2]
set_dont_use [get_lib_cells slow_vdd1v0/CLKAND2X3]
set_dont_use [get_lib_cells slow_vdd1v0/CLKAND2X4]
set_dont_use [get_lib_cells slow_vdd1v0/CLKAND2X6]
set_dont_use [get_lib_cells slow_vdd1v0/CLKAND2X8]
set_dont_use [get_lib_cells slow_vdd1v0/CLKBUFX12]
set_dont_use [get_lib_cells slow_vdd1v0/CLKBUFX16]
set_dont_use [get_lib_cells slow_vdd1v0/CLKBUFX2]
set_dont_use [get_lib_cells slow_vdd1v0/CLKBUFX20]
set_dont_use [get_lib_cells slow_vdd1v0/CLKBUFX3]
set_dont_use [get_lib_cells slow_vdd1v0/CLKBUFX4]
set_dont_use [get_lib_cells slow_vdd1v0/CLKBUFX6]
set_dont_use [get_lib_cells slow_vdd1v0/CLKBUFX8]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX1]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX12]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX16]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX2]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX20]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX3]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX4]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX6]
set_dont_use [get_lib_cells slow_vdd1v0/CLKINVX8]
set_dont_use [get_lib_cells slow_vdd1v0/CLKMX2X12]
set_dont_use [get_lib_cells slow_vdd1v0/CLKMX2X2]
set_dont_use [get_lib_cells slow_vdd1v0/CLKMX2X3]
set_dont_use [get_lib_cells slow_vdd1v0/CLKMX2X4]
set_dont_use [get_lib_cells slow_vdd1v0/CLKMX2X6]
set_dont_use [get_lib_cells slow_vdd1v0/CLKMX2X8]
set_dont_use [get_lib_cells slow_vdd1v0/CLKXOR2X1]
set_dont_use [get_lib_cells slow_vdd1v0/CLKXOR2X2]
set_dont_use [get_lib_cells slow_vdd1v0/CLKXOR2X4]
set_dont_use [get_lib_cells slow_vdd1v0/CLKXOR2X8]
set_dont_use [get_lib_cells slow_vdd1v0/DLY1X1]
set_dont_use [get_lib_cells slow_vdd1v0/DLY1X4]
set_dont_use [get_lib_cells slow_vdd1v0/DLY2X1]
set_dont_use [get_lib_cells slow_vdd1v0/DLY2X4]
set_dont_use [get_lib_cells slow_vdd1v0/DLY3X1]
set_dont_use [get_lib_cells slow_vdd1v0/DLY3X4]
set_dont_use [get_lib_cells slow_vdd1v0/DLY4X1]
set_dont_use [get_lib_cells slow_vdd1v0/DLY4X4]
set_dont_use [get_lib_cells slow_vdd1v0/HOLDX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFHQX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFHQX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFHQX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFHQX8]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFNSRX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFNSRX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFNSRX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFNSRXL]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFQX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFQX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFQX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFQXL]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFRHQX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFRHQX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFRHQX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFRHQX8]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFRX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFRX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFRX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFRXL]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSHQX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSHQX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSHQX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSHQX8]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSRHQX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSRHQX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSRHQX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSRHQX8]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSRX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSRX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSRX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSRXL]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFSXL]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFTRX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFTRX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFTRX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFTRXL]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFX1]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFX2]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFX4]
set_dont_use [get_lib_cells slow_vdd1v0/SDFFXL]