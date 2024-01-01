module addsub_st(A,B,S3,S2,Z,C,O,S);
input [7:0] A,B;
input S3,S2;
output Z,C,O;
output [7:0] S;

wire [7:0] W,R;
wire Cin,x;
wire [6:0] c;

or g1(Cin,S3,S2);

xor g2(W[0],B[0],Cin);
xor g3(W[1],B[1],Cin);
xor g4(W[2],B[2],Cin);
xor g5(W[3],B[3],Cin);
xor g6(W[4],B[4],Cin);
xor g7(W[5],B[5],Cin);
xor g8(W[6],B[6],Cin);
xor g9(W[7],B[7],Cin);

nand f1(x,S3,S2);

and t1(R[0],A[0],x);
and t2(R[1],A[1],x);
and t3(R[2],A[2],x);
and t4(R[3],A[3],x);
and t5(R[4],A[4],x);
and t6(R[5],A[5],x);
and t7(R[6],A[6],x);
and t8(R[7],A[7],x);


full_adder_st F1(R[0], W[0], Cin, S[0], c[0]);
full_adder_st F2(R[1], W[1], c[0], S[1], c[1]);
full_adder_st F3(R[2], W[2], c[1], S[2], c[2]);
full_adder_st F4(R[3], W[3], c[2], S[3], c[3]);
full_adder_st F5(R[4], W[4], c[3], S[4], c[4]);
full_adder_st F6(R[5], W[5], c[4], S[5], c[5]);
full_adder_st F7(R[6], W[6], c[5], S[6], c[6]);
full_adder_st F8(R[7], W[7], c[6], S[7], C);

nor j1(Z,S[0],S[1],S[2],S[3],S[4],S[5],S[6],S[7]);
xor j2(O,C,c[6]);

endmodule



