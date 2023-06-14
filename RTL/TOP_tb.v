/*
module TOP_tb;  			
reg [3:0]A,B; 
reg [2:0]S;
reg [1:0]H;
reg Cin,clk,reset;
wire [3:0]O,F;
wire Cout;

integer i;

TOP dut(.A(A),.B(B),.S(S),.Cin(Cin),.H(H),.clk(clk),.reset(reset),.F(F),.Cout(Cout),.O(O));

initial begin
A = 4'b0000;
B = 4'b0000;
S= 3'b000;
Cin=1'b0;
H=2'b00;
clk=0;
reset=0;
i=0;
end 

initial
begin
reset=1;
#10
reset=0;
end

always
begin
clk=~clk;
#0.5;
end


initial begin
for(i =0; i <16384 ; i = i+1)
begin
  {A,B,H,S,Cin} = i;
  #2;
end
end 

initial
#33000 //end time
$finish; //end command

//initial begin
//$monitor("A =%b, B = %b, H = %b,S = %b,Cin = %b",A,B,H,S,Cin);
//#33000 $stop;
//end
endmodule

*/

module TOP_tb;
	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg [2:0] S;
	reg Cin;
	reg clk;
	reg reset;
	reg [1:0] H;
	// Outputs
	wire Cout;
	wire [3:0] O;
	wire [3:0] F;
// Instantiate the DUT
TOP dut (
	.A(A),
	.B(B),
	.S(S),
	.Cin(Cin),
	.clk(clk),
	.reset(reset),
	.Cout(Cout),
	.H(H),
	.F(F),
	.O(O)
	);
initial begin
	clk=0;
	forever #5 clk = ~clk;
end

initial
begin
	reset = 1;
	#10;
	reset = 0;
end
initial
begin
//Signal 1, Operation 1 , No shift
	A = 5;
	B = 3;
	S = 3'b000;
	Cin = 0;
	H = 2'b00;
	#10;

// Signal 2, Operation 7 , Right shift
	A = 7;
	B = 2;
	S = 3'b000;
	Cin = 1;
	H = 2'b01;
	#10;
//Signal 3, Operation 5, Left shift
	A = 9;
	B = 6;
	S = 3'b001;
	Cin = 0;
	H = 2'b10;
	#10;
// Signal 4, Operation 4 , No operation
	A = 5;
	B = 4;
	S = 3'b001;
	Cin = 1;
	H = 2'b11;
	#10;
// Signal 5, Operation 2 , No shift
	A = 3;
	B = 6;
	S = 3'b010;
	Cin = 0;
	H = 2'b00;
	#10;

// Signal 6, Operation 3 , Right shift
	A = 4;
	B = 8;
	S = 3'b010;
	Cin = 1;
	H = 2'b01;
	#10;
// Test case 7: Signal 7, Operation 6 , Left shift
	A = 8;
	B = 3;
	S = 3'b011;
	Cin = 0;
	H = 2'b10;
	#10;
// Operation 8 , No operation
	A = 6;
	B = 2;
	S = 3'b011;
	Cin = 1;
	H = 2'b11;
	#10;
// Operation 9, No shift
	A = 6;
	B = 3;
	S = 3'b100;
	Cin = 1;
	H = 2'b00;
	#10;

//Signal 10, Operation 12 , Right shift
	A = 7;
	B = 2;
	S = 3'b101;
	Cin = 1;
	H = 2'b01;
	#10;
//Operation 10 , left shift
	A = 5;
	B = 9;
	S = 3'b110;
	Cin = 1;
	H = 2'b10;
	#10;
//Operation 11 , No operation
	A = 8;
	B = 6;
	S = 3'b111;
	Cin = 1;
	H = 2'b11;
	#10;
	$finish;
end
endmodule

