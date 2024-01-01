module top_alu_st_tb;
localparam clk_period=100;
reg clk;
reg rst;
reg [7:0] A,B;
reg S0,S1,S2,S3 ;
wire [7:0] F;
wire z,c,o,G,L,E;

top_alu_st uut(A,B,S3,S2,S1,S0,F,z,c,o,G,L,E,clk,rst);

initial
begin
clk=0;
 end
 
always #(clk_period/2) clk = ~clk;

initial
begin
A=8'b01010101;
B=8'b01111111;
S3=0;
S2=0;
S1=0;
S0=0;
rst=1;
#100;
A=8'b01111111;
B=8'b01111111;
S3=1;
S2=0;
S1=0;
S0=0;
rst=1;
#100;
A=8'b01010101;
B=8'b01111111;
S3=1;
S2=1;
S1=0;
S0=0;
rst=1;
#100;
A=8'b01010101;
B=8'b01111111;
S3=0;
S2=0;
S1=0;
S0=1;
rst=1;
#100;
A=8'b01010101;
B=8'b01111111;
S3=1;
S2=0;
S1=0;
S0=1;
rst=1;
#100;
A=8'b01010101;
B=8'b00001111;
S3=0;
S2=1;
S1=0;
S0=1;
rst=1;
#100;
A=8'b01010101;
B=8'b01111111;
S3=1;
S2=1;
S1=0;
S0=1;
rst=1;
#100;
A=8'b00001111;
B=8'b01111111;
S3=0;
S2=0;
S1=1;
S0=1;
rst=1;
#100;
A=8'b01010101;
B=8'b01111111;
S3=1;
S2=0;
S1=1;
S0=1;
rst=1;
#100;
A=8'b11000100;
B=8'b01111111;
S3=0;
S2=1;
S1=1;
S0=1;
rst=1;
#100;
A=8'b11111111;
B=8'b01111111;
S3=1;
S2=1;
S1=1;
S0=1;
rst=1;
#100;
A=8'b11111111;
B=8'b01111111;
S3=1;
S2=1;
S1=1;
S0=1;
rst=0;
#100;

end
endmodule