module ful_add_beh (A, B, CIN, S, COUT);
input A, B, CIN;
output reg S, COUT;

always @ (*)
begin
case({A, B, CIN})
3'b000 : S= 0;
3'b001 : S= 1;
3'b010 : S= 1;
3'b011 : S= 0;
3'b100 : S= 1;
3'b101 : S= 0;
3'b110 : S= 0;
3'b111 : S= 1;
endcase
case ({A, B, CIN})
3'b000 : COUT= 0;
3'b001 : COUT= 0;
3'b010 : COUT= 0;
3'b011 : COUT= 1;
3'b100 : COUT= 0;
3'b101 : COUT= 1;
3'b110 : COUT= 1;
3'b111 : COUT= 1;
endcase
end
endmodule