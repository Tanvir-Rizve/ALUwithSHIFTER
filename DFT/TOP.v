/*
module TOP(A,B,S,Cin,H,clk,reset,Cout,F,O);
input A,B,S,Cin,H,clk,reset;
input [3:0]F;
output Cout;
output [3:0]O;

ALU alu(.A(A),.B(B),.S(S),.Cin(Cin),.clk(clk),.reset(reset),.F(F),.Cout(Cout));
SHIFTER shifter(.F(F),.H(H),.O(O));
endmodule
*/

module TOP (
	input [3:0] A,
	input [3:0] B,
	input [2:0] S,
	input Cin,
	input clk,
	input reset,
	input [1:0] H,
	output Cout,
	output [3:0]O,
	inout scan_in_1,
	inout scan_out_1,
	inout scan_enable
	);
wire [3:0]W;

ALU alu_inst (
	.A(A),
	.B(B),
	.S(S),
	.Cin(Cin),
	.clk(clk),
	.reset(reset),
	.Cout(Cout),
	.F(W)
	);

SHIFTER shifter_inst (
	.F(W),
	.H(H),
	.O(O)
	);
endmodule
