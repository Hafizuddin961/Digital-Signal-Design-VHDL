module overflow(add_sub,A,B,LEDR,out);

	input add_sub;
	input [7:4]A ;		
	input [3:0]B ;
	output [8:0]LEDR ;
	output reg [4:0]out ;
	wire [4:0]LEDG ;
	
	Part2(add_sub,A,B,LEDR,LEDG);
	
	always @ (LEDG[4:0])
		if (B>A)
			out = ~(LEDG[4:0]+1);
			
		else out = LEDG [4:0];
		
endmodule
