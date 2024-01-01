module shifter(A,S3,S);
input [7:0] A;
input S3;
output [7:0] S;

//module mux2(out,a,b,S1);

mux2 m1(S[0],A[1],1'b0,S3);
mux2 m2(S[1],A[2],A[0],S3);
mux2 m3(S[2],A[3],A[1],S3);
mux2 m4(S[3],A[4],A[2],S3);
mux2 m5(S[4],A[5],A[3],S3);
mux2 m6(S[5],A[6],A[4],S3);
mux2 m7(S[6],A[7],A[5],S3);
mux2 m8(S[7],1'b0,A[6],S3);

endmodule



