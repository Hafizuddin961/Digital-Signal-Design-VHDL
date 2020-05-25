module part6(SW,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7);

	input [17:0]SW;
	output reg [0:6]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7;
	
	
	mux5to1 (SW,LEDG,LEDR);
	
	always @(LEDG)
		case (LEDG)
			3'b000 : HEX0 = 7'b0000001;	//O
			3'b000 :	HEX1 = 7'b1110001;	//L
			3'b000 :	HEX2 = 7'b1110001;	//L
			3'b000 :	HEX3 = 7'b0011000;	//E
			3'b000 :	HEX4 = 7'b1000100;	//H
			3'b000 : HEX5 = 7'b1111111;
			3'b000 : HEX6 = 7'b1111111;
			3'b000 : HEX7 = 7'b1111111;
			
			3'b001 : HEX0 = 7'b1111111;
			3'b001 : HEX1 = 7'b0000001;	//O
			3'b001 :	HEX2 = 7'b1110001;	//L
			3'b001 :	HEX3 = 7'b1110001;	//L
			3'b001 :	HEX4 = 7'b0011000;	//E
			3'b001 :	HEX5 = 7'b1000100;	//H
			3'b001 : HEX6 = 7'b1111111;
			3'b001 : HEX7 = 7'b1111111;
			
			3'b010 : HEX0 = 7'b1111111;
			3'b010 : HEX1 = 7'b1111111;
			3'b010 : HEX2 = 7'b0000001;	//O
			3'b010 :	HEX3 = 7'b1110001;	//L
			3'b010 :	HEX4 = 7'b1110001;	//L
			3'b010 :	HEX5 = 7'b0011000;	//E
			3'b010 :	HEX6 = 7'b1000100;	//H
			3'b010 : HEX7 = 7'b1111111;
			
			
			3'b011 : HEX0 = 7'b1111111;
			3'b011 : HEX1 = 7'b1111111;
			3'b011 : HEX2 = 7'b1111111;
			3'b011 : HEX3 = 7'b0000001;	//O
			3'b011 :	HEX4 = 7'b1110001;	//L
			3'b011 :	HEX5 = 7'b1110001;	//L
			3'b011 :	HEX6 = 7'b0011000;	//E
			3'b011 :	HEX7 = 7'b1000100;	//H
			
			
			3'b100 :	HEX0 = 7'b1000100;	//H
			3'b100 : HEX1 = 7'b1111111;
			3'b100 : HEX2 = 7'b1111111;
			3'b100 : HEX3 = 7'b1111111;
			3'b100 : HEX4 = 7'b0000001;	//O
			3'b100 :	HEX5 = 7'b1110001;	//L
			3'b100 :	HEX6 = 7'b1110001;	//L
			3'b100 :	HEX7 = 7'b0011000;	//E
			
			
			3'b101 :	HEX0 = 7'b0011000;	//E
			3'b101 :	HEX1 = 7'b1000100;	//H
			3'b101 : HEX2 = 7'b1111111;
			3'b101 : HEX3 = 7'b1111111;
			3'b101 : HEX4 = 7'b1111111;
			3'b101 : HEX5 = 7'b0000001;	//O
			3'b101 :	HEX6 = 7'b1110001;	//L
			3'b101 :	HEX7 = 7'b1110001;	//L
			
			
			3'b110 :	HEX0 = 7'b1110001;	//L
			3'b110 :	HEX1 = 7'b0011000;	//E
			3'b110 :	HEX2 = 7'b1000100;	//H
			3'b110 : HEX3 = 7'b1111111;
			3'b110 : HEX4 = 7'b1111111;
			3'b110 : HEX5 = 7'b1111111;
			3'b110 : HEX6 = 7'b0000001;	//O
			3'b110 :	HEX7 = 7'b1110001;	//L
			
			
			3'b111 :	HEX0 = 7'b1110001;	//L
			3'b111 :	HEX1 = 7'b1110001;	//L
			3'b111 :	HEX2 = 7'b0011000;	//E
			3'b111 :	HEX3 = 7'b1000100;	//H
			3'b111 : HEX4 = 7'b1111111;
			3'b111 : HEX5 = 7'b1111111;
			3'b111 : HEX6 = 7'b1111111;
			3'b111 : HEX7 = 7'b0000001;	//O
			
		endcase	
	
		
endmodule

	