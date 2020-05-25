module decrement(A,dec);
	
	input [7:4]A ;	
	output [4:0]dec ;	
	wire c1,c2,c3 ;
	
	fulladder
	FA9 (.ci(0),.a(A[4]),.b(1),.s(dec[0]),.co(c1)) ,
	FA10 (.ci(c1),.a(A[5]),.b(1),.s(dec[1]),.co(c2)) ,
	FA11 (.ci(c2),.a(A[6]),.b(1),.s(dec[2]),.co(c3)) ,
	FA12 (.ci(c3),.a(A[7]),.b(1),.s(dec[3]),.co(dec[4])) ;
	
endmodule