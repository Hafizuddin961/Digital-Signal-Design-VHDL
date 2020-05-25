module sub(A,B,LEDR,S);

	input [7:4]A ;	
	input [3:0]B ;
	output [7:0]LEDR ;
	output reg [4:0]S;
	wire [4:0]LEDG ;

	part3 (A,LEDG);
	
	always @ (LEDG)
		if (B>A) 
			S = ~(LEDG - 1);
		else S = LEDG;
		
	assign LEDR[7:4] = A[7:4];
	assign LEDR[3:0] = B[3:0];
	
endmodule


module part3 (A,LEDG);

	input [7:4]A ;		
	output [4:0]LEDG ;	
	wire c1,c2,c3,c4 ;
	wire [3:0]m;
	
	mux4bit2to1 (sub,B,m);
	
	fulladder
	FA1 (.ci(0),.a(A[4]),.b(m[0]),.s(LEDG[0]),.co(c1)) ,
	FA2 (.ci(c1),.a(A[5]),.b(m[1]),.s(LEDG[1]),.co(c2)) ,
	FA3 (.ci(c2),.a(A[6]),.b(m[2]),.s(LEDG[2]),.co(c3)) ,
	FA4 (.ci(c3),.a(A[7]),.b(m[3]),.s(LEDG[3]),.co(c4)) ;
	
	assign LEDG[4] = c3^c4;
	
	
endmodule



module mux2to1 (s,x,y,m);
	
	input s,x,y;
	output m;
	
	assign m = (~s&x)|(s&y);
	
endmodule

module mux4bit2to1 (sub,B,m);
	
	input sub;
	input [3:0]B;
	output [3:0]m;
	wire [3:0]B2;
	
	twoscompl (B,B2);
	
	mux2to1
	m0 (.s(sub), .x(B[0]), .y(B2[0]), .m(m[0])),
	m1 (.s(sub), .x(B[1]), .y(B2[1]), .m(m[1])),
	m2 (.s(sub), .x(B[2]), .y(B2[2]), .m(m[2])),
	m3 (.s(sub), .x(B[3]), .y(B2[3]), .m(m[3]));
	
	
endmodule

module twoscompl (B,B2);

	input [3:0]B;
	output [3:0]B2;
	
	assign B2 = (~B) + 1;
	
endmodule