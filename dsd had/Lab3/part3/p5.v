module p5(a,b,p,c10,c11);

	input [3:3]a;
	input [3:2]b;
	output [5:5]p;
	output c10,c11;
	wire c7,c8,c9,s10;
	
	and (a3b2,a[3],b[2]);
	and (a2b3,a[2],b[3]);
	
	p4(a,b,p,c7,c8,c9);
	
	fulladder
	FA10(.ci(c8),.a(c7),.b(a3b2),.s(s10),.co(c10));
	FA11(.ci(c9),.a(s10),.b(a2b3),.s(p[5]),.co(c11));
	
endmodule
	