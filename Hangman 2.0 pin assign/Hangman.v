module Hangman(CLK,EN,CLR,start,SW,HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0,LEDG);
	
	input CLK,EN,CLR,start;
	input [15:0]SW;
	output reg [6:0]HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0;
	output reg [1:0]LEDG;
	
	wire [3:0]Q,press;
	wire [6:0]led6,led7,led0,led1;
	reg AGTB,ALTB,AEQB;
	reg [2:0]state;
	reg [1:0]life;
	

	
	SW(SW,CLR,CLK,press);
	random(CLK,EN,CLR,Q);
	
	segmen7(press,led6,led7);
	segmen7(Q,led0,led1);

parameter 
	S0 = 3'b000, 
	S1 = 3'b001, 
	S2 = 3'b010, 
	S3 = 3'b011, 
	S4 = 3'b100, 
	S5 = 3'b101;
	
	
	
always @(negedge CLR or posedge start  )
	begin 
		if(CLR!=1)
		begin 
			state<=S0;
			
	end
	
	 else if(start)
		begin
		
		case(state)
			
		S0: 			

		begin	
			
		if(!EN)begin
			state <= S1;
			life <= 2'b11;
		end
		
		else 
		state <= S0;
			
		
		end 
		
		S1:	//compare answer
		
			
		begin
			if (press==Q)
			begin
				AEQB<=1;
				life<=life;
				state<=S3;
			end
			
			else if (press<Q)
			begin
				ALTB<=1; 
				life<=life - 1;
				state<= S5;
			end 
			
			else if (press>Q)
			begin
				AGTB<=1; 
				life<=life - 1;
				state<= S2;
			end 

		
		end
		
		S2: //compare life
		
		begin 
			
			if(life != 2'b00)
			state<=S1;
			
			else if(life==2'b00)
			state<=S4;
			
		 
		end
		
		
		S3: //display 'WIN'
		
		begin
		 if(!CLR)
			state<=S0;
			else
			state<=S3;
		end 
		
		
		
		S4: //display 'LOSE'

		begin 
			if(!CLR)
			state<=S0;
			else
			state<=S4;
		
		end
		
		S5: //compare life
		
		begin 
			
			if(life != 2'b00)
			state<=S1;
			
			else if(life==2'b00)
			state<=S4;
		end
		
endcase
	
end
end






always@(state)
	begin
		case(state)
		
		S0:
		begin 
			HEX0<= 7'b1000000 ;	//0
			HEX1<= 7'b1000000 ;	//0
			HEX2<= 7'b1000000 ;	//0
			HEX3<= 7'b1000000 ;	//0
			HEX4<= 7'b1000000 ;	//0
			HEX5<= 7'b1000000 ;	//0
			HEX6<= 7'b1000000 ;	//0
			HEX7<= 7'b1000000 ;	//0
			LEDG[1:0]<=life[1:0];
			
		end
	
		S1:


		begin
			HEX1 <= 7'b111_1001; //I
			HEX0 <= 7'b100_1000;	//N
			HEX2<= 7'b1111111 ;	//blank
			HEX3<= 7'b1111111 ;	//blank
			HEX4<= 7'b1111111 ;	//blank
			HEX5<= 7'b1111111 ;	//blank
			HEX6<= led6 ;	//user number
			HEX7<= led7 ;	//user number
			LEDG[1:0]<=life[1:0];
		 
		end
		
		S2 :begin
			HEX1 <= 7'b111_1001; //I
			HEX0 <= 7'b100_1000; //N
			HEX2<= 7'b1111111 ;	//blank
			HEX3<= 7'b1111111 ;	//blank
			HEX5 <= 7'b011_1111 ; //AGTB symbol
			HEX4 <= 7'b011_0000 ; //AGTB symbol
			HEX6<= led6 ;	//user number
			HEX7<= led7 ;	//user number
			LEDG[1:0]<=life[1:0];
		
		
		
		end
		
		
		S3 :		//display win
		begin
			HEX3 <= 7'b100_0011; //w
			HEX2 <= 7'b110_0001;	//w
			HEX1 <= 7'b111_1001;	//I
			HEX0 <= 7'b100_1000;	//n
			HEX5 <= 7'b111_1111;
			HEX4 <= 7'b111_1111;
			HEX6<= 7'b1111111 ;	
			HEX7<= 7'b1111111 ;	
			LEDG[1:0]<=life[1:0];
			
		end
		
		S4 :  //display lose
		begin
			HEX3 <= 7'b100_0111; //L
			HEX2 <= 7'b100_0000;	//O
			HEX1 <= 7'b001_0010; //S
			HEX0 <= 7'b000_0110;	//E
			HEX5 <= 7'b111_1111;
			HEX4 <= 7'b111_1111;
			HEX6<= 7'b1111111 ;	
			HEX7<= 7'b1111111 ;	
			LEDG[1:0]<=life[1:0];
		end
		
		S5 :begin
			HEX1 <= 7'b111_1001; //I
			HEX0 <= 7'b100_1000; //N
			HEX2<= 7'b1111111 ;	//blank
			HEX3<= 7'b1111111 ;	//blank
			HEX5 <= 7'b000_0110 ; //ALTB symbol
			HEX4 <=7'b011_1111 ; //ALTB symbol
			HEX6<= led6 ;	//user number
			HEX7<= led7 ;	//user number
			LEDG[1:0]<=life[1:0];
			end
		endcase
		end
		
	
	
endmodule

module SW(SW,CLR,CLK,press);

	input CLK,CLR;
	input [15:0]SW;
	output reg [3:0]press;
	
	
	always @ (negedge CLK,negedge CLR)
		if(!CLR)begin
			press[3:0]=4'b0000;
			end
			else begin
		if (SW[0])
			press = 4'b0000;
		else if (SW[1])
			press = 4'b0001;
		else if (SW[2])
			press = 4'b0010;
		else if (SW[3])
			press = 4'b0011;
		else if (SW[4])
			press = 4'b0100;
		else if (SW[5])
			press = 4'b0101;
		else if (SW[6])
			press = 4'b0110;
		else if (SW[7])
			press = 4'b0111;
		else if (SW[8])
			press = 4'b1000;
		else if (SW[9])
			press = 4'b1001;
		else if (SW[10])
			press = 4'b1010;
		else if (SW[11])
			press = 4'b1011;
		else if (SW[12])
			press = 4'b1100;
		else if (SW[13])
			press = 4'b1101;
		else if (SW[14])
			press = 4'b1110;
		else if (SW[15])
			press = 4'b1111;
		end
	
endmodule

module random(CLK,EN,CLR,Q);

	input CLK,EN,CLR;
	output reg [3:0]Q;
	
	
	always @ (posedge CLK,negedge CLR)
	
		if(!CLR)begin
		Q[3:0]<=0;
		
		end
			else if (!EN)begin
				Q[3:0]<=Q[3:0]+1;
		
				end
		
		
endmodule		

module segmen7(press,led6,led7);							

	input [3:0]press;
	output [6:0]led6,led7;
	
	assign led6 = 	(press[3:0] == 4'b0000)? 7'b1000000 :	//0
						(press[3:0] == 4'b0001)? 7'b1111001 :	//1
						(press[3:0] == 4'b0010)? 7'b0100100 :	//2
						(press[3:0] == 4'b0011)? 7'b0110000 :	//3
						(press[3:0] == 4'b0100)? 7'b0011001 :	//4
						(press[3:0] == 4'b0101)? 7'b0010010 :	//5
						(press[3:0] == 4'b0110)? 7'b0000010 :	//6
						(press[3:0] == 4'b0111)? 7'b1111000 :	//7
						(press[3:0] == 4'b1000)? 7'b0000000 : 	//8
						(press[3:0] == 4'b1001)? 7'b0010000 :  //9
						(press[3:0] == 4'b1010)? 7'b1000000 :	//0
						(press[3:0] == 4'b1011)? 7'b1111001 :	//1
						(press[3:0] == 4'b1100)? 7'b0100100 :	//2
						(press[3:0] == 4'b1101)? 7'b0110000 :	//3
						(press[3:0] == 4'b1110)? 7'b0011001 :	//4
						(press[3:0] == 4'b1111)? 7'b0010010 :	7'b0111111 ;  //5
			 
			 
	assign led7 = 	(press[3:0] == 4'b0000)? 7'b1000000 :	//0
						(press[3:0] == 4'b0001)? 7'b1000000 :	//0
						(press[3:0] == 4'b0010)? 7'b1000000 :	//0
						(press[3:0] == 4'b0011)? 7'b1000000 :	//0
						(press[3:0] == 4'b0100)? 7'b1000000 :	//0
						(press[3:0] == 4'b0101)? 7'b1000000 :	//0
						(press[3:0] == 4'b0110)? 7'b1000000 :	//0
						(press[3:0] == 4'b0111)? 7'b1000000 :	//0
						(press[3:0] == 4'b1000)? 7'b1000000 :	//0
						(press[3:0] == 4'b1001)? 7'b1000000 :	//0
						(press[3:0] == 4'b1010)? 7'b1111001 :	//1
						(press[3:0] == 4'b1011)? 7'b1111001 :	//1
						(press[3:0] == 4'b1100)? 7'b1111001 :	//1
						(press[3:0] == 4'b1101)? 7'b1111001 :	//1
						(press[3:0] == 4'b1110)? 7'b1111001 :	//1
						(press[3:0] == 4'b1111)? 7'b1111001 :	7'b0111111 ;  //1	 
	
endmodule 



