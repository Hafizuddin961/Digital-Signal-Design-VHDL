module divide2(A,div);
	
	input [7:4]A;
	output [3:0]div;
	
	assign div[3:0] = A[7:4] / 2;
	
endmodule