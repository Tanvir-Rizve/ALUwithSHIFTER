module ALU(A,B,S,Cin,clk,reset,F,Cout);
  input [3:0]A,B;
  input [2:0]S;
  input Cin,clk,reset;
  output reg [3:0]F;
  output reg Cout;
  always@(posedge clk or posedge reset)
    begin
if(reset==1)
begin
	F=4'b0000;
	Cout=0;
end
else
	begin
  case({S,Cin})
//Operation 1 (F=A,Cout=0)
    4'b0000:	
begin
      F=A;
      Cout=0;
end
//Operation 7 (F=A-1,Cout=1 on condition)
    4'b0001:
begin
      F=A-1;
    if(A!=0)
    	Cout=1;
    else
	Cout=0;
end
//Operation 5 (F=A-B-1,Cout=1 on condition)
    4'b0010:
begin
      F=A-B-1;
    if((A>B))
      Cout=1;
    else
	Cout=0;
end
//Operation 4 
    4'b0011:
begin
      F=A+B+1;
      if((A+B)>=15)
        Cout=1;
      else
	Cout=0;
end
//Operation 2
    4'b0100:
begin
        F=A+1;
       if(A==15)
         Cout=1;
       else
	Cout=0;
end
//Operation 3
    4'b0101:
begin
        F=A+B;
       if((A+B)>=16)
        Cout=1;
       else
	Cout=0;
end  
//Operation 6  
    4'b0110:
begin
        F=A-B;
       if((A>=B))
         Cout=1;
	else
	Cout=0;
end
//Operation 8
    4'b0111:
begin
        F=A;
        Cout=1;
end
//Operation 9
    4'b1001:
begin
      F= A | B;
      Cout=0;
end
//Operation 12
    4'b1011:
begin
      F= ~A;
      Cout=0;
end
//Operation 10
    4'b1101:
begin
      F= A ^ B;
      Cout=0;
end
//Operation 11
    4'b1111:
begin
      F=A & B;
      Cout=0;
end
default:
begin
Cout=0;
F=4'b0000;
end
       endcase


end
end
endmodule
