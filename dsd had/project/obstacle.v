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