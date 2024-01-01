module addsub_tb;
reg [7:0] A, B;
reg S3,S2;
wire [7:0] S;
wire Z,C,O;

addsub_st uut(A, B, S3, S2, Z, C, O, S);

initial 
begin
A=8'b10010100;
B=8'b11001011;
S3=1;
S2=1;
#100;

A=8'b10010100;
B=8'b11001011;
S3=1;
S2=0;
#100;

A=8'b00010100;
B=8'b10001011;
S3=1;
S2=1;
#100;

A=8'b00010100;
B=8'b11111011;
S3=0;
S2=1;
#100;

A=8'b00010100;
B=8'b00001111;
S3=1;
S2=0;
#100;

end
endmodule

