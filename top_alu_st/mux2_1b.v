module mux2_1b(out,a,b,S);
input a,b;
input S;
output out;

wire w1,w2;

 not n0(Sn,S);
 
 and a1(w1,a,Sn);
 and b1(w2,b,S);
or or1(out,w1,w2);

endmodule