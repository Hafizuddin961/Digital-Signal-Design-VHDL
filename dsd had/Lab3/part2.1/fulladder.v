module fulladder(ci,a,b,s,co);

	input ci,a,b;
	output s,co;
	
	assign s = a^b^ci ;
	assign co = (a&b)|(a&ci)|(b&ci) ;
	
endmodule
