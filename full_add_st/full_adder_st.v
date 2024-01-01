module full_adder_st(A,B,Cin,S,C);
input A,B,Cin;
output S,C;
half_adder g1(A,B,S1,C1);
half_adder g2(S1,Cin,S,C2);
or g3(C,C1,C2);
endmodule