module part5(SW,HEX7,HEX6,HEX5,HEX4,HEX2,HEX1,HEX0,LEDR,LEDG);

	input [15:0]SW;
	output [6:0]HEX7,HEX6,HEX5,HEX4,HEX2,HEX1,HEX0;
	output [15:0]LEDR ;
	output reg [8:0]LEDG ;
	wire cA1,cA0,cB1,cB0,v0,v1;
	
	
	A1segmen7(SW,HEX7);
	A0segmen7(SW,HEX6);
	B1segmen7(SW,HEX5);
	B0segmen7(SW,HEX4);
	comparatorA1(SW,cA1);
	comparatorA0(SW,cA0);
	comparatorB1(SW,cB1);
	comparatorB0(SW,cB0);
	fulladder4bit0 (SW,v0);
	part20 (v0,HEX0);
	fulladder4bit0 (SW,v1);
	part21 (v1,HEX1,HEX2);
	
	
	always @ (cA1,cA0,cB1,cB0)
		begin
		if (cA1 == 1)
			LEDG[8] = 1;
		else if (cA0 == 1)
			LEDG[8] = 1;
		else if (cB1 == 1)
			LEDG[8] = 1;
		else if (cB0 == 1)
			LEDG[8] = 1;
			
		else	LEDG[8] = 0;

		end
		
		
	assign LEDR = SW;
	
endmodule