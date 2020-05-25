module ALU4bit(A,B,M,F);

	input [7:4]A;
	input [3:0]B;
	input [2:0]M;
	output [7:0]F;
	wire [3:0]dec,div,AND,OR;
	wire [4:0]add,S,inc;
	wire [7:0]mul;
	
	add (A,B,ci,add);
	sub(A,B,LEDR,S);
	increment(A,inc);
	decrement(A,dec);
	multiply2(A,mul);
	divide2(A,div);
	bitwiseAND (A,B,AND);
	bitwiseOR (A,B,OR);
	
	assign F[7:0] = (M[2:0] == 3'b000)? add[4:0]:
						 (M[2:0] == 3'b001)? S[4:0]:
						 (M[2:0] == 3'b010)? inc[4:0]:
						 (M[2:0] == 3'b011)? dec[3:0]:
						 (M[2:0] == 3'b100)? mul[7:0]:
						 (M[2:0] == 3'b101)? div[3:0]:
						 (M[2:0] == 3'b110)? AND[3:0]: OR[3:0];
						
						 
endmodule