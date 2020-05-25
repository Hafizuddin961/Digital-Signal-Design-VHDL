module part5(SW,HEX0,HEX1,HEX2,HEX3,HEX4);

	input [17:0]SW;
	output reg [0:6]HEX0,HEX1,HEX2,HEX3,HEX4;
	
	mux5to1 (SW,LEDG);
	
	always @(LEDG)
		case (LEDG)
			3'b000 : HEX0 = 7'b0000001;	//O
			3'b000 :	HEX1 = 7'b1110001;	//L
			3'b000 :	HEX2 = 7'b1110001;	//L
			3'b000 :	HEX3 = 7'b0011000;	//E
			3'b000 :	HEX4 = 7'b1000100;	//H
			
			3'b001 : HEX0 = 7'b1000100;	//H
			3'b001 :	HEX1 = 7'b0000001;	//O
			3'b001 : HEX2 = 7'b1110001;	//L
			3'b001 :	HEX3 = 7'b1110001;	//L
			3'b001 :	HEX4 = 7'b0011000;	//E
			
			3'b010 : HEX0 = 7'b0011000;	//E
			3'b010 :	HEX1 = 7'b1000100;	//H
			3'b010 : HEX2 = 7'b0000001;	//O
			3'b010 :	HEX3 = 7'b1110001;	//L
			3'b010 :	HEX4 = 7'b1110001;	//L
			
			3'b001 : HEX0 = 7'b1110001;	//L
			3'b001 :	HEX1 = 7'b0011000;	//E
			3'b001 : HEX2 = 7'b1000100;	//H
			3'b001 :	HEX3 = 7'b0000001;	//O
			3'b001 :	HEX4 = 7'b1110001;	//L
			
			3'b001 : HEX0 = 7'b1110001;	//L
			3'b001 :	HEX1 = 7'b1110001;	//L
			3'b001 : HEX2 = 7'b0011000;	//E
			3'b001 :	HEX3 = 7'b1000100;	//H
			3'b001 :	HEX4 = 7'b0000001;	//O
			
		endcase	
	
		
endmodule

	
