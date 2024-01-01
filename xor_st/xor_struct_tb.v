module xor_struct_tb;
reg [7:0] A, B;
wire [7:0] S;

xor_struct uut(A, B, S);

initial 
begin
A=8'b10010100;
B=8'b11001011;
#100;
end
endmodule
