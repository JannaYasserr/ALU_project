module addsub_beh(A,B,Cin,S,Z,C,O);
input wire [7:0] A,B;
input wire Cin;
output reg Z,O;
output wire C; 
output wire [7:0] S;
integer i;

reg[7:0] W,R;
wire[6:0] c;
//reg  x;

always @ (*)
begin

for(i=0;i<8;i=i+1)
begin

case({B[i],Cin})   //XOR
2'b00: W[i]= 0;
2'b01: W[i]= 1;
2'b10: W[i]= 1;
2'b11: W[i]= 0;
endcase

end


case({S[0],S[1],S[2],S[3],S[4],S[5],S[6],S[7]})
8'b00000000: Z=1;
default : Z=0;
endcase

case({c[6],C})   //XOR
2'b00: O= 0;
2'b01: O= 1;
2'b10: O= 1;
2'b11: O= 0;
endcase
end

ful_add_beh f1 (A[0], W[0], Cin, S[0], c[0]);
ful_add_beh f2(A[1], W[1], c[0], S[1], c[1]);
ful_add_beh f3(A[2], W[2], c[1], S[2], c[2]);
ful_add_beh f4(A[3], W[3], c[2], S[3], c[3]);
ful_add_beh f5(A[4], W[4], c[3], S[4], c[4]);
ful_add_beh f6(A[5], W[5], c[4], S[5], c[5]);
ful_add_beh f7(A[6], W[6], c[5], S[6], c[6]);
ful_add_beh f8(A[7], W[7], c[6], S[7], C);

endmodule
