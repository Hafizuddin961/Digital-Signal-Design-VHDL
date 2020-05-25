module part3 (SW,LEDG,LEDR);

	input [8:0]SW ;		// A/B/cin
	output [8:0]LEDR ;
	output [4:0]LEDG ;	// cout/s
	wire c1,c2,c3 ;
	
	fulladder
	FA1 (.ci(SW[8]),.a(SW[4]),.b(SW[0]),.s(LEDG[0]),.co(c1)) ,
	FA2 (.ci(c1),.a(SW[5]),.b(SW[1]),.s(LEDG[1]),.co(c2)) ,
	FA3 (.ci(c2),.a(SW[6]),.b(SW[2]),.s(LEDG[2]),.co(c3)) ,
	FA4 (.ci(c3),.a(SW[7]),.b(SW[3]),.s(LEDG[3]),.co(LEDG[4])) ;
	
	assign LEDR = SW;
	
endmodule