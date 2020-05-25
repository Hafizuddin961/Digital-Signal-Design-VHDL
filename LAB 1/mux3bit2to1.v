module mux3bit2to1 (s,x,y,m);
	
	input [2:0]x;
	input [2:0]y;
	input s;
	output m;
	
	assign m = (~s&x[2:0])|(s&y[2:0]);
	
	
endmodule