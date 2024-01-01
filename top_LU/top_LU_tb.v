module top_LU_tb;
reg [7:0] A,B;
reg S2,S3;
wire [7:0] S;
wire Z,C,O;

top_LU tt(A,B,S2,S3,S,Z,C,O);

initial 
begin
A=8'b10101010;
B=8'b11111111;
S2=1;
S3=0;
#100;
A=8'b11100011;
B=8'b11010011;
S2=1;
S3=1;
#100;
A=8'b01101000;
B=8'b00010000;
S2=0;
S3=0;
#100;
A=8'b11110000;
B=8'b11111111;
S2=0;
S3=1;
#100;
end

endmodule