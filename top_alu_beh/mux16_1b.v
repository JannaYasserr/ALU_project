module mux16_1b(out, D0, D1, D2, D3, D4, D5, D6, D7,D8,D9,D10, S0, S1, S2,S3);
input wire D0, D1, D2, D3, D4, D5, D6, D7,D8,D9,D10;
input wire S0, S1, S2 ,S3;
output reg out;
always@(*)
begin
case({S0, S1 , S2 ,S3})
4'b0000: out=D0;
4'b0001: out=D1;
4'b0011: out=D2;
4'b1000: out=D3;
4'b1001: out=D4;
4'b1010: out=D5;
4'b1011: out=D6;
4'b1100: out=D7;
4'b1101: out=D8;
4'b1110: out=D9;
4'b1111: out=D10;
default: out=1'b0;
endcase
end
endmodule