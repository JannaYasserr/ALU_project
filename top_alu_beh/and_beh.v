module and_beh (A,B,S,Z,C,O);
input wire [7:0] A,B;
output reg [7:0] S;
output reg C,Z,O;
integer i;

always @(*)
begin

for(i=0;i<8;i=i+1)
begin 
case({A[i],B[i]})   //XOR
2'b00: S[i]= 0;
2'b01: S[i]= 0;
2'b10: S[i]= 0;
2'b11: S[i]= 1;
endcase
end 

case({S[0],S[1],S[2],S[3],S[4],S[5],S[6],S[7]})
8'b00000000: Z=1;
default : Z=0;
endcase

C=0;
O=0;

end
endmodule