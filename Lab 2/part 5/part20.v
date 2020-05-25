module part20 (v0,HEX0);
	
	input [4:0]v0;
	output [6:0]HEX0;
	wire z0,c0;
	wire[2:0]y0;
	wire[3:0]m0;
	
	comparator0(v0,z0);
	comparator10(v0,c0);
	circuitA0 (v0,y0);
	mux4bit2to10 (z0,c0,v0,y0,m0);
	segmen70(m0,HEX0);
	
endmodule


module comparator0(v0,z0);							//1st

	input [4:0]v0;
	output z0;
	
	assign z0 = (v0>5'd9)? 1:0;

endmodule


module comparator10(v0,c0);						//2nd

	input [4:0]v0;
	output c0;
	
	assign c0 = (v0>5'd17)? 1:0;

endmodule


module circuitA0 (v0,y0);							//3rd

	input [2:0]v0;
	output reg [2:0]y0;

	always @ (v0[2:0])
		begin
		if (v0 == 3'b010)
			y0 = 3'b000;	//0
		else if (v0 == 3'b011)
			y0 = 3'b001;	//1
		else if (v0 == 3'b100)
			y0 = 3'b010;	//2
		else if (v0 == 3'b101)
			y0 = 3'b011;	//3
		else if (v0 == 3'b110)
			y0 = 3'b100;	//4
		else if (v0 == 3'b111)
			y0 = 3'b101;	//5
		else if (v0 == 3'b000)
			y0 = 3'b110;	//6
		else if ( v0 == 3'b001)
			y0 = 3'b111;	//7
		else y0 = 3'bxxx;
		end
		
endmodule




module mux2to1 (s,x,y,m);						//4th
	
	input s,x,y;
	output m;
	
	assign m = (~s&x)|(s&y);
	
endmodule


module mux4bit2to10 (z0,c0,v0,y0,m0);					//5th
	
	input z0,c0;
	input [3:0]v0,y0;
	output [3:0]m0;
	
	
	mux2to1
	m__0 (.s(z0), .x(v0[0]), .y(y0[0]), .m(m0[0])),
	m__1 (.s(z0), .x(v0[1]), .y(y0[1]), .m(m0[1])),
	m__2 (.s(z0), .x(v0[2]), .y(y0[2]), .m(m0[2])),
	m__3 (.s(z0), .x(v0[3]), .y(c0), .m(m0[3]));
	
	
endmodule


module segmen70(m0,HEX0);							//6th

	input [3:0]m0;
	output [6:0]HEX0;
	
	assign HEX0 = 	(m0[3:0] == 4'b0000)? 7'b1000000 :	//0
						(m0[3:0] == 4'b0001)? 7'b1111001 :	//1
						(m0[3:0] == 4'b0010)? 7'b0100100 :	//2
						(m0[3:0] == 4'b0011)? 7'b0011000 :	//3
						(m0[3:0] == 4'b0100)? 7'b0011001 :	//4
						(m0[3:0] == 4'b0101)? 7'b0010010 :	//5
						(m0[3:0] == 4'b0110)? 7'b0000010 :	//6
						(m0[3:0] == 4'b0111)? 7'b1110000 :	//7
						(m0[3:0] == 4'b1000)? 7'b0000000 : 	//8
						(m0[3:0] == 4'b1001)? 7'b0010000 : 7'b0111111 ; //9
			 
endmodule