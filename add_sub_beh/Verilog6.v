module addsub_tb;
reg [7:0] A, B;
reg Cin;
wire [7:0] S;
wire Z,C,O;

addsub_beh uut(A, B, Cin, S,Z, C, O);

initial 
begin
A=8'b10010100;
B=8'b11001011;
Cin=1;
#100;
A=8'b00010100;
B=8'b10001011;
Cin=0;
#100;
A=8'b10010100;
B=8'b10010100;
Cin=0;
#100;
A=8'b00010100;
B=8'b11111011;
Cin=1;
#100;
A=8'b00010100;
B=8'b00001111;
Cin=1;
#100;

end
endmodule

