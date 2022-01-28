/*module Lab1();
	input x0,x1,x2,x3;
	output y;
	
	wire W, X, Y, Z;
	assign W = x3&x2&(~x1)&x0;
	assign X = x3&(~x2)&x1&x0;
	assign Y = (~x3)&(~x2)&x1&(~x0);
	assign Z = (~x3)&x0;
	
	assign y = W | X | Y | Z;
endmodule*/

module Lab1(SW, LEDR);
	input [3:0] SW;
	output LEDR;
	
	wire W, X, Y, Z;
	assign W = SW[3]&SW[2]&(~SW[1])&SW[0];
	assign X = SW[3]&(~SW[2])&SW[1]&SW[0];
	assign Y = (~SW[3])&(~SW[2])&SW[1]&(~SW[0]);
	assign Z = (~SW[3])&SW[0];
	
	assign LEDR = W | X | Y | Z;
endmodule
