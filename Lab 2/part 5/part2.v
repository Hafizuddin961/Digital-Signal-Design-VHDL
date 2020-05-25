module part21 (v1,HEX1,HEX2);
	
	input [4:0]v1;
	output [6:0]HEX1,HEX2;
	wire z1,c1;
	wire[2:0]y1;
	wire[3:0]m1;
	
	comparator1(v1,z1);
	comparator11(v1,c1);
	circuitA1 (v1,y1);
	circuitB(z1,HEX2);
	mux4bit2to11 (z1,c1,v1,y1,m1);
	segmen71(m1,HEX1);
	
endmodule


module comparator1(v1,z1);							//1st

	input [4:0]v1;
	output z1;
	
	assign z1 = (v1>5'd10)? 1:0;

endmodule


module comparator11(v1,c1);						//2nd

	input [4:0]v1;
	output c1;
	
	assign c1 = (v1>5'd17)? 1:0;

endmodule


module circuitA1 (v1,y1);							//3rd

	input [2:0]v1;
	output reg [2:0]y1;

	always @ (v1[2:0])
		begin
		if (v1 == 3'b010)
			y1 = 3'b000;	//0
		else if (v1 == 3'b011)
			y1 = 3'b001;	//1
		else if (v1 == 3'b100)
			y1 = 3'b010;	//2
		else if (v1 == 3'b101)
			y1 = 3'b011;	//3
		else if (v1 == 3'b110)
			y1 = 3'b100;	//4
		else if (v1 == 3'b111)
			y1 = 3'b101;	//5
		else if (v1 == 3'b000)
			y1 = 3'b110;	//6
		else if ( v1 == 3'b001)
			y1 = 3'b111;	//7
		else y1 = 3'bxxx;
		end
		
endmodule


module circuitB(z1,HEX2);						//4th

	input z1;
	output [6:0]HEX2;
	
	assign	HEX2 = (z1 == 1'b0)? 7'b1000000 : 7'b1111001;
	
endmodule


	


module mux4bit2to11 (z1,c1,v1,y1,m1);					//5th
	
	input z1,c1;
	input [3:0]v1,y1;
	output [3:0]m1;
	
	
	mux2to1
	m_0 (.s(z1), .x(v1[0]), .y(y1[0]), .m(m1[0])),
	m_1 (.s(z1), .x(v1[1]), .y(y1[1]), .m(m1[1])),
	m_2 (.s(z1), .x(v1[2]), .y(y1[2]), .m(m1[2])),
	m_3 (.s(z1), .x(v1[3]), .y(c1), .m(m1[3]));
	
	
endmodule


module segmen71(m1,HEX1);							//6th

	input [3:0]m1;
	output [6:0]HEX1;
	
	assign HEX1 = 	(m1[3:0] == 4'b0000)? 7'b1000000 :	//0
						(m1[3:0] == 4'b0001)? 7'b1111001 :	//1
						(m1[3:0] == 4'b0010)? 7'b0100100 :	//2
						(m1[3:0] == 4'b0011)? 7'b0011000 :	//3
						(m1[3:0] == 4'b0100)? 7'b0011001 :	//4
						(m1[3:0] == 4'b0101)? 7'b0010010 :	//5
						(m1[3:0] == 4'b0110)? 7'b0000010 :	//6
						(m1[3:0] == 4'b0111)? 7'b1110000 :	//7
						(m1[3:0] == 4'b1000)? 7'b0000000 : 	//8
						(m1[3:0] == 4'b1001)? 7'b0010000 : 7'b0111111 ; //9
			 
endmodule