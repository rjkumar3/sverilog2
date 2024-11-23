`timescale 1ns / 1 ns
module full_adder_tb;
	reg a;
	reg b;
	reg ci;
	wire s;
	wire cout;

	full_adder UUT(a, b, ci, s, cout);

	initial
	$monitorb ("%d a= %b b= %b ci= %b s= %b cout= %b,", $time, a, b, ci, s, cout);
	initial begin
	$vcdpluson;
	a=0; b=0; ci=0;
	#10 a=0; b=0; ci=1;
	#10 a=0; b=1; ci=0;
	#10 a=0; b=1; ci=1;
	#10 a=1; b=0; ci=0;
	#10 a=1; b=0; ci=1;
	#10 a=1; b=1; ci=0;
	#10 a=1; b=1; ci=1;
	#10 $finish;
	end

endmodule
