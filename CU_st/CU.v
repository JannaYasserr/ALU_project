module CU (A,B,C,S0,S1,R);
input [7:0] A,B,C;
input S0,S1 ;
output [7:0] R;
wire [7:0] D;

mux2 m1(D,B,C,S1);
mux2 m2(R,A,D,S0);

endmodule



