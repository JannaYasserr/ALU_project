module shifter_tb;
reg [7:0] A;
reg S3;
wire [7:0] S;

shifter ss(A,S3,S);
initial
begin
A=8'b00000001;
S3=0;
#100;
A=8'b00000001;
S3=1;
#100;
A=8'b10010001;
S3=0;
#100;
A=8'b11111111;
S3=0;
#100;
end
endmodule
