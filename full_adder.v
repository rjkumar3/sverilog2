`timescale 1ns / 1 ns
module full_adder(
input a,
input b,
input ci,
output s,
output cout
);
wire c1, s1,c2;

half_adder half_adder1(a, b, s1, c1);
half_adder half_adder2(ci, s1, s, c2);
or(cout, c1, c2);

endmodule
