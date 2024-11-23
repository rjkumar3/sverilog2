`timescale 1 ns / 1 ns
module half_adder_tb();
	reg a, b;
	wire s, c;

	half_adder UUT(a, b, s, c);

	initial
	$monitorb("%d a= %b b= %b s= %b c= %b", $time, a, b, s, c);
	initial begin
	$vcdpluson;
	a= 0; b= 0;
	#10 a=0; b=1;
	#20 a=1; b=0;
	#20 a=1; b=1;
	#20 $finish;
	end

endmodule
