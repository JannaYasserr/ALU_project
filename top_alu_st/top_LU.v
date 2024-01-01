module top_LU (A,B,S2,S3,S,Z,C,O);
input [7:0] A,B ;
input S2,S3;
output [7:0] S;
wire [7:0] R [3:0];
output Z,C,O;

and_struct a1(A,B,R[0]);
xor_struct x1(A,B,R[1]);
or_struct o1(A,B,R[2]);
two_comp_struct t1(A,B,R[3]);

mux4 m1(S,R[0],R[1],R[2],R[3],S2,S3);

nor n(Z,S[0],S[1],S[2],S[3],S[4],S[5],S[6],S[7]);
assign C=0;
assign O=0;

endmodule