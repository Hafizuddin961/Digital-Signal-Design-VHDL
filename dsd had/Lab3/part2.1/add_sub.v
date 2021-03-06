module twoscompl(B,B2);

	input [3:0]B;
	output [3:0]B2;
	
	assign B2[3:0] = ~B[3:0]+1;
	
endmodule


module mux2to1 (s,x,y,m);
	
	input s,x,y;
	output m;
	
	assign m = (~s&x)|(s&y);
	
endmodule

module add_sub (add_sub,B,m);
	
	input add_sub;
	input [3:0]B;
	output [3:0]m;
	wire [3:0]B2;
	
	twoscompl(B,B2);
	
	mux2to1
	m0 (.s(add_sub), .x(B[0]), .y(B2[0]), .m(m[0])),
	m1 (.s(add_sub), .x(B[1]), .y(B2[1]), .m(m[1])),
	m2 (.s(add_sub), .x(B[2]), .y(B2[2]), .m(m[2])),
	m3 (.s(add_sub), .x(B[3]), .y(B2[3]), .m(m[3]));


endmodule

