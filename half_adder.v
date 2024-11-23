`timescale 1 ns / 1 ns
module half_adder(
	input a,	// Input 'a'
	input b,	// Input 'b'
	output s,	// Output 's' (Sum)
	output c	// Output 'c' (Carry)
);
xor (s, a, b);
and (c, a, b);

endmodule
