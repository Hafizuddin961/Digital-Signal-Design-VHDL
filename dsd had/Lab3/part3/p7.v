module p7(p);

	output [7:7]p;
	wire c12;
	
	p6(a,b,p,c12);
	
	assign p[7] = c12;
	
endmodule