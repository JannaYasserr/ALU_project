module or_struct(A,B,S);
input [7:0] A,B;
output [7:0] S;


or a1(S[0],A[0],B[0]);
or a2(S[1],A[1],B[1]);
or a3(S[2],A[2],B[2]);
or a4(S[3],A[3],B[3]);
or a5(S[4],A[4],B[4]);
or a6(S[5],A[5],B[5]);
or a7(S[6],A[6],B[6]);
or a8(S[7],A[7],B[7]);

endmodule
