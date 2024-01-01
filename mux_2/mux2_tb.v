module mux2_tb;
reg [7:0] a,b;
reg S1;
wire [7:0] out;
mux2 m(out,a,b,S1);
initial 
begin 
a=8'b00000000;
b=8'b11111111;
S1=0;
#100;
a=8'b00000000;
b=8'b11111111;
S1=1;
#100;
a=8'b11100001;
b=8'b11111111;
S1=0;
#100;
end
endmodule
