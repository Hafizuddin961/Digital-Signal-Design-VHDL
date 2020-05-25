module p6(a,b,p,c12);

	input [3:3]a;
	input [3:3]b;
	output [6:6]p;
	output c12;
	wire c10,c11;
	
	and (a3b3,a[3],b[3]);
	
	p5(a,b,p,c10,c11);
	
	fulladder
	FA10(.ci(c11),.a(c10),.b(a3b3),.s(p[6]),.co(c12));
	
endmodule
	