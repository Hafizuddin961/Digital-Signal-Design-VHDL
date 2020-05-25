module P0(a,b,p);

	input [0:0]a;
	input [0:0]b;
	output [0:0]p;
	
	assign p[0] = a[0]&b[0];
	
endmodule