module mux2(out,a,b,S1);
input [7:0] a,b;
input S1;
output [7:0] out;

wire S2n,S3n; //not S3 , S2
wire [7:0] w1,w2;

 not n0(S1n,S1);
 
 and a1(w1[0],a[0],S1n);
 and a2(w1[1],a[1],S1n);
 and a3(w1[2],a[2],S1n);
 and a4(w1[3],a[3],S1n);
 and a5(w1[4],a[4],S1n);
 and a6(w1[5],a[5],S1n);
 and a7(w1[6],a[6],S1n);
 and a8(w1[7],a[7],S1n);
 
 and b1(w2[0],b[0],S1);
 and b2(w2[1],b[1],S1);
 and b3(w2[2],b[2],S1);
 and b4(w2[3],b[3],S1);
 and b5(w2[4],b[4],S1);
 and b6(w2[5],b[5],S1);
 and b7(w2[6],b[6],S1);
 and b8(w2[7],b[7],S1);
 
 

or or1(out[0],w1[0],w2[0]);
or or2(out[1],w1[1],w2[1]);
or or3(out[2],w1[2],w2[2]);
or or4(out[3],w1[3],w2[3]);
or or5(out[4],w1[4],w2[4]);
or or6(out[5],w1[5],w2[5]);
or or7(out[6],w1[6],w2[6]);
or or8(out[7],w1[7],w2[7]);


endmodule