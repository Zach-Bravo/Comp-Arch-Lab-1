module Lab1_testbench();
	reg [3:0] switch;
	wire hex;
	
	Lab1 dut (switch, hex);

	initial
		switch <= 4'b0;
	
	always begin
		#10 
		switch <= switch + 4'b0001;
	end
	
	initial begin
		#1500 $stop;
	end
endmodule
