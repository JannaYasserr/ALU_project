module two_comp_struct(A,B,S);
input [7:0] A,B;
output [7:0] S;

not n1(S[0],B[0]);
not n2(S[1],B[1]);
not n3(S[2],B[2]);
not n4(S[3],B[3]);
not n5(S[4],B[4]);
not n6(S[5],B[5]);
not n7(S[6],B[6]);
not n8(S[7],B[7]);

endmodule
