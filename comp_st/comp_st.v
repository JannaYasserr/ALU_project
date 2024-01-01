module comp_st (A,B,E,K,L);
input [7:0] A,B;
output E,K,L;

wire [6:0] e,G;

and g1(p,~A[7],B[7]);
and g2(n,A[7],~B[7]);
and g3(sn,A[7],B[7]);
nor g4(sp,A[7],B[7]);
or g5(s,sp,sn);

and g6(G[6],A[6],~B[6]);
xnor g7(e[6],A[6],B[6]);

and g8(G[5],A[5],~B[5],e[6]);
xnor g9(e[5],A[5],B[5]);

and g10(G[4],A[4],~B[4],e[6],e[5]);
xnor g11(e[4],A[4],B[4]);

and g12(G[3],A[3],~B[3],e[6],e[5],e[4]);
xnor g13(e[3],A[3],B[3]);

and g14(G[2],A[2],~B[2],e[6],e[5],e[4],e[3]);
xnor g15(e[2],A[2],B[2]);

and g16(G[1],A[1],~B[1],e[6],e[5],e[4],e[3],e[2]);
xnor g17(e[1],A[1],B[1]);

and g18(G[0],A[0],~B[0],e[6],e[5],e[4],e[3],e[2],e[1]);
xnor g19(e[0],A[0],B[0]);

and g20(E,e[0],e[1],e[2],e[3],e[4],e[5],e[6],s,~p,~n);
or g21(x,p,G[0],G[1],G[2],G[3],G[4],G[5],G[6]);
and g22(K,x,~n);
nor g23(L,K,E);
endmodule








