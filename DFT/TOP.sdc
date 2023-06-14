# setting up time units
set_units -time 1ns -capacitance pF

set clock_period 10; # setting the clock period 10ns, as period = 1/freq, here, freq = 100MHz
set top_module "TOP"
set clock_port {clk};
set reset_port {reset};
set input_ports {A,B,S,Cin,H} ; # setting the input ports in a list to a variable
set output_ports {Cout,O} ; # setting the output ports in a list to a variable
# define the clocks
create_clock -period ${clock_period} -waveform {0 5} -name func_clk [get_ports ${clock_port}]
# setting up constraints for the reset signal
set_multicycle_path -setup 3 -from [get_ports ${reset_port}]
set_multicycle_path -hold 2 -from [get_ports ${reset_port}]
# Define input delays
set_input_delay 0.5 -clock [get_clocks {func_clk}] {A}
set_input_delay 0.5 -clock [get_clocks {func_clk}] {B}
set_input_delay 0.5 -clock [get_clocks {func_clk}] {S}
set_input_delay 0.5 -clock [get_clocks {func_clk}] {Cin}
set_input_delay 0.5 -clock [get_clocks {func_clk}] {H}
# Define output delays
set_output_delay 0.5 -clock [get_clocks {func_clk}] {Cout}
set_output_delay 0.5 -clock [get_clocks {func_clk}] {O}
