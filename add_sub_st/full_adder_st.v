module full_adder_st(A,B,Cin,S,C);
input A,B,Cin;
output S,C;

wire [1:0] c;
wire S1;

half_adder g1(A,B,S1,c[0]);
half_adder g2(S1,Cin,S,c[1]);
or g3(C,c[0],c[1]);
endmodule