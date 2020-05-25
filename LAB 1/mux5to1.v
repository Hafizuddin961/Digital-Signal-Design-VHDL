module mux5to1 (SW,LEDG,LEDR);
	
	input [17:0]SW;
	output reg [2:0]LEDG;
	output [17:0]LEDR;
	
	part1(SW,LEDR);
	
	always @(SW[17:15])
		case(SW [17:15])
		3'b000 : LEDG[2:0] = SW[2:0];
		3'b001 : LEDG[2:0] = SW[5:3];
		3'b010 : LEDG[2:0] = SW[8:6];
		3'b011 : LEDG[2:0] = SW[11:9];
		3'b100 : LEDG[2:0] = SW[14:12];
		3'b101 : LEDG[2:0] = SW[14:12];
		3'b110 : LEDG[2:0] = SW[14:12];
		3'b111 : LEDG[2:0] = SW[14:12];
		endcase
		
	
	
endmodule