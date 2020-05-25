module part2 (v,HEX0,HEX1);
	
	input [3:0]v;
	output [6:0]HEX0,HEX1;
	wire z;
	wire[2:0]y;
	wire[3:0]m;
	
	comparator(v,z);
	circuitA (v,y);
	circuitB(z,HEX1);
	mux4bit2to1 (z,v,y,m);
	segmen7(m,HEX0);
	
endmodule