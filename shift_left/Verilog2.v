module shift_left_tb;
reg[7:0] A;
wire [7:0] S;
wire Z,C,O;

shift_left uut(A,S,Z,C,O);

initial
begin
A=8'b00000000;
#100;
A=8'b11111111;
#100;
A=8'b10010111;
#100;
A=8'b01000111;
#100;
A=8'b00000001;
#100;
A=8'b01100110;
#100;

end
endmodule