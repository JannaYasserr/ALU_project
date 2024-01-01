module xor_struct(A,B,S);
input [7:0] A,B;
output [7:0] S;


xor a1(S[0],A[0],B[0]);
xor a2(S[1],A[1],B[1]);
xor a3(S[2],A[2],B[2]);
xor a4(S[3],A[3],B[3]);
xor a5(S[4],A[4],B[4]);
xor a6(S[5],A[5],B[5]);
xor a7(S[6],A[6],B[6]);
xor a8(S[7],A[7],B[7]);

endmodule