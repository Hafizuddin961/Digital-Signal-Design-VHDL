module game(move,reset,blink,obstacle,player,score);
	input reset,move,blink;
	output [6:0]obstacle;
	output [5:0]score;
	output [6:0]player;
	wire [2:0]equal;
//	wire [6:0]players,obstacles;
	reg [1:0]mod;
	
	player p1(move,reset,player);
	obstacle o1(player,blink,reset,obstacle);
	cmpplayobs c1(player,obstacle,equal);
	
	always @(equal,player)
	begin 
		if( equal[0] || equal[1] || equal[2])
			begin
			mod[1] = 1;
			mod[0] = 1;
			end
		else if(player[6])
			begin
			mod[1] = 0;
			mod[0] = 1;
			end
		else if(player[0] || player[2] || player[4])
			mod = 0;
	end

endmodule

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

module obstacle(Player,Blink,Reset,obstacle);
	input Blink,Reset;
	input [6:0]Player;
	output reg [6:0]obstacle;
	wire delay;
	
	testtimer
	t1(Blink,Reset,delay);
	
	always @(Player)
	begin
	if (Reset)
		obstacle = 0;
	else if(Player[0]==1)
		obstacle[1] = delay;
	else if(Player[2]==1)
		obstacle[3] = delay;
	else if(Player[4]==1)
		obstacle[5] = delay;
	else
		obstacle = 0;
	end

endmodule

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

module testtimer(Clk,Clr,delay);
	input Clk,Clr;
	output delay;
	
	reg delay = 1'b0;
	reg [27:0]count;
	
	always @(posedge Clk or posedge Clr)
	begin 
	if (Clr==1'b1)
		begin
		delay<=0;
		count<=0;
		end
	else
		begin
		count<=count+1;
		if (count== 25000000)
			begin
			count<=0;
			delay=~delay;
			end
		end
	end

endmodule