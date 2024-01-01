module CU_1b (A,B,C,S0,S1,R);
input A,B,C;
input S0,S1 ;
output R;
wire D;

mux2_1b m1(D,B,C,S1);
mux2_1b m2(R,A,D,S0);

endmodule



