module SHIFTER(F,H,O);
input [3:0]F;
input[1:0]H;
output reg [3:0]O;

always@(*)
	begin
  case(H)
    2'b00:O=F;
    2'b01:O=F>>1;
    2'b10:O=F<<1;
    2'b11:O=0;
   endcase
end
endmodule

