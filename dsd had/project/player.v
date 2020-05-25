module player(move,reset,player);
	
	input move,reset;
	output reg [6:0]player;
	
	always @(posedge move,posedge reset)
	begin
		if (reset)
			player = 7'b0000001;
		else 
			begin
			player[6] <= player[5];
			player[5] <= player[4];
			player[4] <= player[3];
			player[3] <= player[2];
			player[2] <= player[1];
			player[1] <= player[0];
			player[0] <= player[6];
			end
	end
	
endmodule
