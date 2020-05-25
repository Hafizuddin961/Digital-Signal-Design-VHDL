module bitwiseOR (A,B,OR);

	input [7:4]A ;	
	input [3:0]B ;
	output [3:0]OR;
	
	assign OR[3:0] = A[7:4] | B[3:0];
	
endmodule