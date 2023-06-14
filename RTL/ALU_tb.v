module ALU_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0]S;
reg Cin,clk,reset;
wire [3:0]F;
wire Cout;
integer i;
ALU f1(A,B,S,Cin,clk,reset,F,Cout);			

initial begin
A = 4'b0000;
B = 4'b0000;
S= 3'b000;
Cin=0;
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
for(i =0; i <33000 ; i = i+1)
begin
  {A,B,S,Cin} = i;
  #2;
end
end
initial
#33000 //end time
$finish; //end command

//initial begin
//$monitor("A =%b, B = %b, com_in = %b,out = %b",A,B,S,Cin,);
//#2500 $stop;
//end
endmodule

