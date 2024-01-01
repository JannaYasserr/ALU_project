module full_adder_tb;
reg A, B, Cin;
wire S, C;
full_adder_st uut(A, B, Cin, S, C);

initial
begin 
A=0; B=0; Cin=0;
#100;

A=0; B=0; Cin=1;
#100;

A=0; B=1; Cin=0;
#100;

A=0; B=1; Cin=1;
#100;

A=1; B=0; Cin=0;
#100;

A=1; B=0; Cin=1;
#100;

A=1; B=1; Cin=0;
#100;

A=1; B=1; Cin=1;
#100;

end
endmodule 


