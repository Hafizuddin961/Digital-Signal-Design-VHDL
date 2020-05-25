module p4(a,b,p,c7,c8,c9);

	input [3:3]a;
	input [3:1]b;
	output [4:4]p;
	output c7,c8,c9;
	wire c4,c5,c6,s5,s7;
	
	and (a3b1,a[3],b[1]);
	and (a2b2,a[2],b[2]);
	and (a1b3,a[1],b[3]);
	
	p3(a,b,p,c4,c5,c6);
	
	fulladder
	FA7(.ci(c4),.a(0),.b(a3b1),.s(s7),.co(c7));
	FA8(.ci(c5),.a(s7),.b(a2b2),.s(s7),.co(c8));
	FA9(.ci(c6),.a(s8),.b(a1b3),.s(p[4]),.co(c9));
	
endmodule
	