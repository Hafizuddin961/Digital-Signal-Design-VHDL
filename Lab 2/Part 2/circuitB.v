module circuitB(z,HEX1);

	input z;
	output [6:0]HEX1;
	
	assign	HEX1 = (z == 1'b0)? 7'b1000000 : 7'b1111001;
	
endmodule