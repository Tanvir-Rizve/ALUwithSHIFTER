# ####################################################################

#  Created by Genus(TM) Synthesis Solution 16.13-s036_1 on Thu Jun 15 12:28:26 +0600 2023

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design TOP

create_clock -name "func_clk" -add -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_multicycle_path -from [get_ports reset] -setup -end 3
set_multicycle_path -from [get_ports reset] -hold -start 2
group_path -name C2C -from [list \
  [get_cells {alu_inst/F_reg[3]}]  \
  [get_cells {alu_inst/F_reg[2]}]  \
  [get_cells {alu_inst/F_reg[1]}]  \
  [get_cells alu_inst/Cout_reg]  \
  [get_cells {alu_inst/F_reg[0]}] ] -to [list \
  [get_cells {alu_inst/F_reg[3]}]  \
  [get_cells {alu_inst/F_reg[2]}]  \
  [get_cells {alu_inst/F_reg[1]}]  \
  [get_cells alu_inst/Cout_reg]  \
  [get_cells {alu_inst/F_reg[0]}] ]
group_path -name C2O -from [list \
  [get_cells {alu_inst/F_reg[3]}]  \
  [get_cells {alu_inst/F_reg[2]}]  \
  [get_cells {alu_inst/F_reg[1]}]  \
  [get_cells alu_inst/Cout_reg]  \
  [get_cells {alu_inst/F_reg[0]}] ] -to [list \
  [get_ports Cout]  \
  [get_ports {O[3]}]  \
  [get_ports {O[2]}]  \
  [get_ports {O[1]}]  \
  [get_ports {O[0]}]  \
  [get_ports scan_in_1]  \
  [get_ports scan_out_1]  \
  [get_ports scan_enable] ]
group_path -name I2C -from [list \
  [get_ports {A[3]}]  \
  [get_ports {A[2]}]  \
  [get_ports {A[1]}]  \
  [get_ports {A[0]}]  \
  [get_ports {B[3]}]  \
  [get_ports {B[2]}]  \
  [get_ports {B[1]}]  \
  [get_ports {B[0]}]  \
  [get_ports {S[2]}]  \
  [get_ports {S[1]}]  \
  [get_ports {S[0]}]  \
  [get_ports Cin]  \
  [get_ports clk]  \
  [get_ports reset]  \
  [get_ports {H[1]}]  \
  [get_ports {H[0]}]  \
  [get_ports scan_in_1]  \
  [get_ports scan_out_1]  \
  [get_ports scan_enable] ] -to [list \
  [get_cells {alu_inst/F_reg[3]}]  \
  [get_cells {alu_inst/F_reg[2]}]  \
  [get_cells {alu_inst/F_reg[1]}]  \
  [get_cells alu_inst/Cout_reg]  \
  [get_cells {alu_inst/F_reg[0]}] ]
group_path -name I2O -from [list \
  [get_ports {A[3]}]  \
  [get_ports {A[2]}]  \
  [get_ports {A[1]}]  \
  [get_ports {A[0]}]  \
  [get_ports {B[3]}]  \
  [get_ports {B[2]}]  \
  [get_ports {B[1]}]  \
  [get_ports {B[0]}]  \
  [get_ports {S[2]}]  \
  [get_ports {S[1]}]  \
  [get_ports {S[0]}]  \
  [get_ports Cin]  \
  [get_ports clk]  \
  [get_ports reset]  \
  [get_ports {H[1]}]  \
  [get_ports {H[0]}]  \
  [get_ports scan_in_1]  \
  [get_ports scan_out_1]  \
  [get_ports scan_enable] ] -to [list \
  [get_ports Cout]  \
  [get_ports {O[3]}]  \
  [get_ports {O[2]}]  \
  [get_ports {O[1]}]  \
  [get_ports {O[0]}]  \
  [get_ports scan_in_1]  \
  [get_ports scan_out_1]  \
  [get_ports scan_enable] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {A[3]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {A[2]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {A[1]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {A[0]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {B[3]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {B[2]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {B[1]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {B[0]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {S[2]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {S[1]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {S[0]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports Cin]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {H[1]}]
set_input_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {H[0]}]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports Cout]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {O[3]}]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {O[2]}]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {O[1]}]
set_output_delay -clock [get_clocks func_clk] -add_delay 0.5 [get_ports {O[0]}]
set_dont_use [get_lib_cells fast_vdd1v0/HOLDX1]
