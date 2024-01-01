module onecomp_beh (A,B,S,Z,C,O);
input wire [7:0] A,B;
output reg [7:0] S;
output reg C,Z,O;
integer i;

always @(*)
begin

for(i=0;i<8;i=i+1)
begin 
if (B[i])
S[i]=0;
else
S[i]=1;
end 

case({S[0],S[1],S[2],S[3],S[4],S[5],S[6],S[7]})
8'b00000000: Z=1;
default : Z=0;
endcase

C=0;
O=0;

end
endmodule
