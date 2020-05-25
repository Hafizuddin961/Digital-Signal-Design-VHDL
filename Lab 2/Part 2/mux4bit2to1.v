module mux4bit2to1 (z,v,y,m);
	
	input z;
	input [3:0]v,y;
	output [3:0]m;
	
	
	mux2to1
	m0 (.s(z), .x(v[0]), .y(y[0]), .m(m[0])),
	m1 (.s(z), .x(v[1]), .y(y[1]), .m(m[1])),
	m2 (.s(z), .x(v[2]), .y(y[2]), .m(m[2])),
	m3 (.s(z), .x(v[3]), .y(0), .m(m[3]));
	
	
endmodule