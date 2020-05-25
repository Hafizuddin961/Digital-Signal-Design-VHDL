module comparator(v,z);

	input [3:0]v;
	output z;
	
	assign z = (v>4'd10)? 1:0;

endmodule
	