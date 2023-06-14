set_clock_latency -source -early -max   -0.0001 [get_ports {clk}] -clock func_clk 
set_clock_latency -source -late -max   -0.0001 [get_ports {clk}] -clock func_clk 
