module Part2(add_sub,A,B,LEDR,LEDG);
	
	input add_sub;
	input [7:4]A ;		
	input [3:0]B ;
	output [8:0]LEDR ;
	output [4:0]LEDG ;
	wire c1,c2,c3,c4,add_sub;
	wire [3:0]m;
	
	add_sub (add_sub,B,m);
	
	fulladder
	FA1 (.ci(0),.a(A[4]),.b(m[0]),.s(LEDG[0]),.co(c1)) ,
	FA2 (.ci(c1),.a(A[5]),.b(m[1]),.s(LEDG[1]),.co(c2)) ,
	FA3 (.ci(c2),.a(A[6]),.b(m[2]),.s(LEDG[2]),.co(c3)) ,
	FA4 (.ci(c3),.a(A[7]),.b(m[3]),.s(LEDG[3]),.co(c4)) ;
	
	assign LEDG[4] = c3^c4 ;
	assign LEDR[7:4] = A ;
	assign LEDR[3:0] = B ;
	assign LEDR[8] = add_sub ;
	
	
endmodule

