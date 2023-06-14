module shifter_tb;

reg [3:0] F;
reg [1:0]H;
wire[3:0]O;

integer i;

SHIFTER dut(F,H,O);

initial begin
F=4'b0000;
H=2'b00;
i = 0;
end 

initial begin
for(i =0; i <64 ; i = i+1)begin
  {F,H} = i;
  #1;
end
end 

//initial begin
//$monitor("A =%b, B = %b, com_in = %b,out = %b",A,B,com_in,out);
//#100 $stop;
//end
endmodule

