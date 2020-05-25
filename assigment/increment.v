module increment(A,inc);
	
	input [7:4]A ;	
	output [4:0]inc ;	
	wire c1,c2,c3 ;
	
	fulladder
	FA5 (.ci(0),.a(A[4]),.b(0),.s(inc[0]),.co(c1)) ,
	FA6 (.ci(c1),.a(A[5]),.b(0),.s(inc[1]),.co(c2)) ,
	FA7 (.ci(c2),.a(A[6]),.b(0),.s(inc[2]),.co(c3)) ,
	FA8 (.ci(c3),.a(A[7]),.b(0),.s(inc[3]),.co(inc[4])) ;
	
endmodule