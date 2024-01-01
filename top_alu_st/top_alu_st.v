module top_alu_st(A,B,S3,S2,S1,S0,F,z,c,o,G,L,E,clk,rst);
input [7:0] A,B;
input rst,clk,S3,S2,S1,S0;
output [7:0] F;
wire[2:0] C,Z,O;
output G,L,E;
wire [7:0] R [2:0];
wire [7:0] I;
output wire c,z,o;

comp_st c0(A,B,E,G,L);
addsub_st a(A,B,S3,S2,Z[0],C[0],O[0],R[0]);
top_LU l(A,B,S2,S3,R[1],Z[1],C[1],O[1]);
SU s(A, S2,S3,R[2],Z[2],C[2],O[2]);
CU c1(R[0],R[1],R[2],S0,S1,I);
CU_1b c2(Z[0],Z[1],Z[2],S0,S1,z);
CU_1b c3(C[0],C[1],C[2],S0,S1,c);
CU_1b c4(O[0],O[1],O[2],S0,S1,o);

reg_beh re(I,F,rst,clk);

endmodule

