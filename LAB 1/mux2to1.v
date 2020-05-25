module mux2to1 (s,x,y,m);
	
	input s,x,y;
	output m;
	
	assign m = (~s&x)|(s&y);
	
endmodule