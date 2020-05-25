module comparator(SW,LEDG);

	input [3:0]SW;
	output reg [0:0]LEDG;
	
	
	always @ (SW[3:0])
	
		case (SW[3:0])
			4'd00 : LEDG[0] = 0;
			4'd01 : LEDG[0] = 0;
			4'd02 : LEDG[0] = 0;
			4'd03 : LEDG[0] = 0;
			4'd04 : LEDG[0] = 0;
			4'd05 : LEDG[0] = 0;
			4'd06 : LEDG[0] = 0;
			4'd07 : LEDG[0] = 0;
			4'd08 : LEDG[0] = 0;
			4'd09 : LEDG[0] = 0;
			
			default : LEDG[0] = 1;
		endcase
	
					


	
endmodule