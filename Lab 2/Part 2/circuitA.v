/* Muhammad Hafizuddin bin Redzuan 
	Muhammad Aris bin Adnan
	Mohamad Afnan Ilham bin Abdul Rahman */

module circuitA (v,y);

	input [2:0]v;
	output reg [2:0]y;

	always @ (v[2:0]) begin
		if (v == 3'b010)
			y = 3'b000;
		else if (v == 3'b011)
			y = 3'b001;
		else if (v == 3'b100)
			y = 3'b010;
		else if (v == 3'b101)
			y = 3'b011;
		else if (v == 3'b110)
			y = 3'b100;
		else if (v == 3'b111)
			y = 3'b101;
		else y = 3'bxxx;
		end
		
endmodule