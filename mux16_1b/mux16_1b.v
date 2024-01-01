module mux16_1b(out, D0, D1, D2, D3, D4, D5, D6, D7,D8,D9,D10, S0, S1, S2,S3);
input wire D0, D1, D2, D3, D4, D5, D6, D7,D8,D9,D10;
input wire S0, S1, S2 ,S3;
output reg out;
always@(*)
begin
case(S0 & S1 & S2 &S3)
3'b0000: out=D0;
3'b0001: out=D1;
3'b0011: out=D2;
3'b1000: out=D3;
3'b1001: out=D4;
3'b1010: out=D5;
3'b1011: out=D6;
3'b1100: out=D7;
3'b1101: out=D8;
3'b1110: out=D9;
3'b1111: out=D10;
default: out=1'b0;
endcase
end
endmodule