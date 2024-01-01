module topAU(A,B,S3,S2,S,C,O,Z,E,G,L);
input [7:0] A,B;
input S3,S2;
output C,O,Z,E,G,L;
output [7:0] S;

comp_st c1(A,B,E,G,L);
addsub_st c2(A,B,S3,S2,Z,C,O,S);

endmodule
