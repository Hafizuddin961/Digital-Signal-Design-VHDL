module fulladder4bit1 (SW,v1);

	input [15:0]SW ;	
	output [4:0]v1 ;	
	wire cin,c11,c21,c31 ;
	
	comparatorCarry(v0,cin);
	
	fulladder
	FA1 (.ci(cin),.a(SW[12]),.b(SW[4]),.s(v1[0]),.co(c11)) ,
	FA2 (.ci(c11),.a(SW[13]),.b(SW[5]),.s(v1[1]),.co(c21)) ,
	FA3 (.ci(c21),.a(SW[14]),.b(SW[6]),.s(v1[2]),.co(c31)) ,
	FA4 (.ci(c31),.a(SW[15]),.b(SW[7]),.s(v1[3]),.co(v1[4])) ;
	
	
endmodule


