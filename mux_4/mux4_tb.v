module mux4_tb;
reg [7:0] a,b,c,d;
reg S2,S3;
wire [7:0] out;
mux4 m(out,a,b,c,d,S2,S3);
initial 
begin 
a=8'b00000000;
b=8'b11111111;
c=8'b10101010;
d=8'b01110111;
S2=0;
S3=1;
#100;
end
endmodule
