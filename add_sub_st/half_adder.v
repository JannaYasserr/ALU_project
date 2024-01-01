module half_adder(A,B,S,C);
input A,B;
output S,C;
xor g1(S,A,B);
and g2(C,A,B);
endmodule
