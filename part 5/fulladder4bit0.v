module fulladder4bit0 (SW,v0);

	input [11:0]SW ;
	output [4:0]v0 ;	
	wire c10,c20,c30 ;
	
	
	
	fulladder
	FA1 (.ci(0),.a(SW[8]),.b(SW[0]),.s(v0[0]),.co(c10)) ,
	FA2 (.ci(c10),.a(SW[9]),.b(SW[1]),.s(v0[1]),.co(c20)) ,
	FA3 (.ci(c20),.a(SW[10]),.b(SW[2]),.s(v0[2]),.co(c30)) ,
	FA4 (.ci(c30),.a(SW[11]),.b(SW[3]),.s(v0[3]),.co(v0[4])) ;
	
	
endmodule


module fulladder(ci,a,b,s,co);

	input ci,a,b;
	output s,co;
	
	assign s = a^b^ci ;
	assign co = (a&b)|(a&ci)|(b&ci) ;
	
endmodule