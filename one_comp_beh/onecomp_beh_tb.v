module onecomp_beh_tb;
reg[7:0] A,B;
wire [7:0] S;
wire Z,C,O;

onecomp_beh uut(A,B,S,Z,C,O);

initial
begin
A=8'b00000000;
B=8'b01010101;
#100;
A=8'b11111111;
B=8'b01010101;
#100;
A=8'b10010111;
B=8'b10111011;
#100;

end
endmodule
