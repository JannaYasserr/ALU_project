module reg_beh_tb;
localparam clk_period=100;
reg clk;
reg rst;
reg [7:0] in;
wire [7:0] out;

reg_beh uut(in,out,rst,clk);
initial
begin
clk=1;
 end
always #(clk_period/2) clk = ~clk;

initial
begin
in=8'b01010101;
rst=1;
#100;
in=8'b00000000;
rst=1;
#100;
in=8'b01010101;
rst=0;
#100;
end
endmodule
