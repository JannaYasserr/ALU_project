module mux4(out,a,b,c,d,S2,S3);
input [7:0] a,b,c,d;
input S2,S3;
output [7:0] out;

wire S2n,S3n; //not S3 , S2
wire [7:0] w1,w2,w3,w4;

 not n0(S3n,S3);
 not n1(S2n,S2);
 
 and a1(w1[0],a[0],S2n,S3n);
 and a2(w1[1],a[1],S2n,S3n);
 and a3(w1[2],a[2],S2n,S3n);
 and a4(w1[3],a[3],S2n,S3n);
 and a5(w1[4],a[4],S2n,S3n);
 and a6(w1[5],a[5],S2n,S3n);
 and a7(w1[6],a[6],S2n,S3n);
 and a8(w1[7],a[7],S2n,S3n);
 
 and b1(w2[0],b[0],S2n,S3);
 and b2(w2[1],b[1],S2n,S3);
 and b3(w2[2],b[2],S2n,S3);
 and b4(w2[3],b[3],S2n,S3);
 and b5(w2[4],b[4],S2n,S3);
 and b6(w2[5],b[5],S2n,S3);
 and b7(w2[6],b[6],S2n,S3);
 and b8(w2[7],b[7],S2n,S3);
 
 and c1(w3[0],c[0],S2,S3n);
 and c2(w3[1],c[1],S2,S3n);
 and c3(w3[2],c[2],S2,S3n);
 and c4(w3[3],c[3],S2,S3n);
 and c5(w3[4],c[4],S2,S3n);
 and c6(w3[5],c[5],S2,S3n);
 and c7(w3[6],c[6],S2,S3n);
 and c8(w3[7],c[7],S2,S3n);
 
 and d1(w4[0],d[0],S2,S3);
 and d2(w4[1],d[1],S2,S3);
 and d3(w4[2],d[2],S2,S3);
 and d4(w4[3],d[3],S2,S3);
 and d5(w4[4],d[4],S2,S3);
 and d6(w4[5],d[5],S2,S3);
 and d7(w4[6],d[6],S2,S3);
 and d8(w4[7],d[7],S2,S3);
 

or or1(out[0],w1[0],w2[0],w3[0],w4[0]);
or or2(out[1],w1[1],w2[1],w3[1],w4[1]);
or or3(out[2],w1[2],w2[2],w3[2],w4[2]);
or or4(out[3],w1[3],w2[3],w3[3],w4[3]);
or or5(out[4],w1[4],w2[4],w3[4],w4[4]);
or or6(out[5],w1[5],w2[5],w3[5],w4[5]);
or or7(out[6],w1[6],w2[6],w3[6],w4[6]);
or or8(out[7],w1[7],w2[7],w3[7],w4[7]);


endmodule