module part4(SW,HEX6,HEX4,HEX1,HEX0,LEDR,LEDG);

	input [8:0]SW;
	output [6:0]HEX6,HEX4,HEX1,HEX0;
	output [8:0]LEDR ;
	output reg [8:0]LEDG ;
	wire v,cA,cB;
	
	Asegmen7(SW,HEX6);
	Bsegmen7(SW,HEX4);
	comparatorA(SW,cA);
	comparatorB(SW,cB);
	fulladder4bit (SW,v);
	part2 (v,HEX0,HEX1);

	always @ (cA,cB)
		begin
		if (cA == 1)
			LEDG[8] = 1;
		else if (cB == 1)
			LEDG[8] = 1;
			
		else	LEDG[8] = 0;

		end
		
		
	assign LEDR = SW;
endmodule