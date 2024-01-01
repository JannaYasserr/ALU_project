module reg_beh (in,out,rst,clk);
input wire clk;
input wire rst;
input wire [7:0] in;
output reg [7:0] out;


 always @(posedge clk or negedge rst) 
 begin
 if (~rst)
 begin
 out <= 8'b0;
 end 
 else 
 begin
 out <=in;
 end
 end

endmodule