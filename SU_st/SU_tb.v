module SU_tb;
reg [7:0] A;
reg S2,S3;
wire [7:0] S;
wire Z,C,O;
SU uut(A, S2,S3,S,Z,C,O);
initial 
begin 
A=8'b10000000;
S2=0;
S3=1;
#100;
A=8'b11111111;
S2=1;
S3=0;
#100;
A=8'b10000000;
S2=0;
S3=0;
#100;
A=8'b11111000;
S2=1;
S3=1;
#100;
A=8'b00000001;
S2=1;
S3=0;
#100;
end
endmodule
