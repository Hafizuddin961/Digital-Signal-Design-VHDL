module p3(a,b,p,c4,c5,c6);

	input [3:2]a;
	input [3:0]b;
	output [3:3]p;
	output c4,c5,c6;
	wire c1,c3,s4,s5;
	
	and (a3b0,a[3],b[0]);
	and (a2b1,a[2],b[1]);
	and (a1b2,a[1],b[2]);
	and (a0b3,a[0],b[3]);
	
	p2(a,b,p,c2,c3);
	
	fulladder
	FA4(.ci(c2),.a(a3b0),.b(a2b1),.s(s4),.co(c4));
	FA5(.ci(c3),.a(s4),.b(a1b2),.s(s5),.co(c5));
	FA6(.ci(0),.a(s5),.b(a0b3),.s(p[3]),.co(c6));
	
endmodule
	