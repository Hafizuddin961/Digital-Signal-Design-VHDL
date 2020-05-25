module part2 (v,HEX0,HEX1);
	
	input [4:0]v;
	output [6:0]HEX0,HEX1;
	wire z,c1;
	wire[2:0]y;
	wire[3:0]m;
	
	comparator(v,z);
	comparator1(v,c1);
	circuitA (v,y);
	circuitB(z,HEX1);
	mux4bit2to1 (z,c1,v,y,m);
	segmen7(m,HEX0);
	
endmodule


module comparator(v,z);							//1st

	input [4:0]v;
	output z;
	
	assign z = (v>5'd9)? 1:0;

endmodule


module comparator1(v,c1);						//2nd

	input [4:0]v;
	output c1;
	
	assign c1 = (v>5'd17)? 1:0;

endmodule


module circuitA (v,y);							//3rd

	input [2:0]v;
	output reg [2:0]y;

	always @ (v[2:0])
		begin
		if (v == 3'b010)
			y = 3'b000;	//0
		else if (v == 3'b011)
			y = 3'b001;	//1
		else if (v == 3'b100)
			y = 3'b010;	//2
		else if (v == 3'b101)
			y = 3'b011;	//3
		else if (v == 3'b110)
			y = 3'b100;	//4
		else if (v == 3'b111)
			y = 3'b101;	//5
		else if (v == 3'b000)
			y = 3'b110;	//6
		else if ( v == 3'b001)
			y = 3'b111;	//7
		else y = 3'bxxx;
		end
		
endmodule


module circuitB(z,HEX1);						//4th

	input z;
	output [6:0]HEX1;
	
	assign	HEX1 = (z == 1'b0)? 7'b1000000 : 7'b1111001;
	
endmodule


module mux2to1 (s,x,y,m);						//5th
	
	input s,x,y;
	output m;
	
	assign m = (~s&x)|(s&y);
	
endmodule


module mux4bit2to1 (z,c1,v,y,m);					//6th
	
	input z,c1;
	input [3:0]v,y;
	output [3:0]m;
	
	
	mux2to1
	m0 (.s(z), .x(v[0]), .y(y[0]), .m(m[0])),
	m1 (.s(z), .x(v[1]), .y(y[1]), .m(m[1])),
	m2 (.s(z), .x(v[2]), .y(y[2]), .m(m[2])),
	m3 (.s(z), .x(v[3]), .y(c1), .m(m[3]));
	
	
endmodule


module segmen7(m,HEX0);							//7th

	input [3:0]m;
	output [6:0]HEX0;
	
	assign HEX0 = 	(m[3:0] == 4'b0000)? 7'b1000000 :	//0
						(m[3:0] == 4'b0001)? 7'b1111001 :	//1
						(m[3:0] == 4'b0010)? 7'b0100100 :	//2
						(m[3:0] == 4'b0011)? 7'b0011000 :	//3
						(m[3:0] == 4'b0100)? 7'b0011001 :	//4
						(m[3:0] == 4'b0101)? 7'b0010010 :	//5
						(m[3:0] == 4'b0110)? 7'b0000010 :	//6
						(m[3:0] == 4'b0111)? 7'b1110000 :	//7
						(m[3:0] == 4'b1000)? 7'b0000000 : 	//8
						(m[3:0] == 4'b1001)? 7'b0010000 : 7'b0111111 ; //9
			 
endmodule