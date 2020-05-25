module cmpplayobs(player,obstacle,equal);
	input [6:0]player,obstacle;
	output reg [2:0]equal;

	always @(player,obstacle)
		if(player[1] && obstacle[1])
			equal[0]=1;
		else if(player[3] && obstacle[3])
			equal[1]=1;
		else if(player[5] && obstacle[5])
			equal[2]=1;
		else
			equal[2:0]=0;
endmodule
