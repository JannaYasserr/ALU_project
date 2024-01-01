module rl(A,S,Z,C,O);
input wire [7:0] A;
output reg [7:0] S;
output reg Z,C,O;

 always @(*)
 begin
S[7:1]=A[6:0];
S[0]=A[7];
C=0;
O=0;
case({S[0],S[1],S[2],S[3],S[4],S[5],S[6],S[7]})
8'b00000000: Z=1;
default : Z=0;
endcase



end
endmodule


