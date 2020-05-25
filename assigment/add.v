module add (A,B,ci,add);

	input [7:4]A ;	
	input [3:0]B ;
	input ci ;
	output [4:0]add ;	
	wire c1,c2,c3 ;
	
	fulladder
	FA1 (.ci(ci),.a(A[4]),.b(B[0]),.s(add[0]),.co(c1)) ,
	FA2 (.ci(c1),.a(A[5]),.b(B[1]),.s(add[1]),.co(c2)) ,
	FA3 (.ci(c2),.a(A[6]),.b(B[2]),.s(add[2]),.co(c3)) ,
	FA4 (.ci(c3),.a(A[7]),.b(B[3]),.s(add[3]),.co(add[4])) ;
	
	
endmodule


module fulladder(ci,a,b,s,co);

	input ci,a,b;
	output s,co;
	
	assign s = a^b^ci ;
	assign co = (a&b)|(a&ci)|(b&ci) ;
	
endmodule