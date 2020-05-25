module comparatorCarry(v0,cin);
	
	input [4:0]v0;
	output cin;
	
	assign cin = (v0[4:0]>4'd9)? 1:0;
	
endmodule