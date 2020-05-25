module segment7 (SW,HEX0);

	input [2:0]SW;
	output reg [0:6]HEX0;
	
	always @(SW)
		case (SW)
			3'b000 : HEX0 = 7'b1000100;	//H
			3'b001 : HEX0 = 7'b0011000;	//E
			3'b010 : HEX0 = 7'b1110001;	//L
			3'b011 : HEX0 = 7'b0000001;	//O
			3'b100 : HEX0 = 7'b1111111;
			3'b101 : HEX0 = 7'b1111111;
			3'b110 : HEX0 = 7'b1111111;
			3'b111 : HEX0 = 7'b1111111;
		endcase	
	
		
endmodule