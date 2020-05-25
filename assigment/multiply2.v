module multiply2(A,mul);
	
	input [7:4]A;
	output [7:0]mul;
	
	assign mul[7:0] = A[7:4] * 2;
	
endmodule