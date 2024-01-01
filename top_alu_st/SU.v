module SU (A, S2,S3,S,Z,C,O);
input [7:0] A;
input S2,S3;
output [7:0] S;
output Z,C,O;
wire [7:0] T,G;

shifter s(A,S3,T);
rotate r(A,S3,G);
mux2 m1(S,G,T,S2);

nor n(Z,S[0],S[1],S[2],S[3],S[4],S[5],S[6],S[7]);
assign C=0;
assign O=0;

endmodule