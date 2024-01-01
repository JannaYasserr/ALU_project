module top_alu_beh (A,B,S3,S2,S1,S0,F,z,c,o,G,L,E,clk,rst);
input wire [7:0] A,B;
input wire rst,clk,S3,S2,S1,S0;
output wire [7:0] F;
wire[10:0] C,Z,O;
output wire G,L,E;
wire [7:0] R [10:0];
wire [7:0] I;
output wire c,z,o;

comp_beh comp(A,B,E,G,L);
addsub_beh add(A,B,1'b0,R[0],Z[0],C[0],O[0]);
addsub_beh sub(A,B,1'b1,R[1],Z[1],C[1],O[1]);
addsub_beh two_comp(8'b00000000,B,1'b1,R[2],Z[2],C[2],O[2]);
and_beh and1(A,B,R[3],Z[3],C[3],O[3]);
xor_beh xor1(A,B,R[4],Z[4],C[4],O[4]);
or_beh or1(A,B,R[5],Z[5],C[5],O[5]);
onecomp_beh one_comp(A,B,R[6],Z[6],C[6],O[6]);
rr rr(A,R[7],Z[7],C[7],O[7]);
rl rl(A,R[8],Z[8],C[8],O[8]);
shift_r sr(A,R[9],Z[9],C[9],O[9]);
shift_left sl(A,R[10],Z[10],C[10],O[10]);

mux16 m1(I,R[0],R[1],R[2],R[3],R[4],R[5],R[6],R[7],R[8],R[9],R[10], S0, S1, S2,S3);
mux16_1b m2(c,C[0],C[1],C[2],C[3],C[4],C[5],C[6],C[7],C[8],C[9],C[10],S0, S1, S2,S3);
mux16_1b m3(z,Z[0],Z[1],Z[2],Z[3],Z[4],Z[5],Z[6],Z[7],Z[8],Z[9],Z[10],S0, S1, S2,S3);
mux16_1b m4(o,O[0],O[1],O[2],O[3],O[4],O[5],O[6],O[7],O[8],O[9],O[10],S0, S1, S2,S3);

reg_beh re(I,F,rst,clk);

endmodule
