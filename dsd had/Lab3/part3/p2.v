module p2(a,b,p,c2,c3);

	input [2:0]a;
	input [2:0]b;
	output [2:2]p;
	output c2,c3;
	wire c1,s2;
	
	and (a2b0,a[2],b[0]);
	and (a1b1,a[1],b[1]);
	and (a0b2,a[0],b[2]);
	
	p1(a,b,p,c1);
	
	fulladder
	FA2(.ci(c1),.a(a2b0),.b(a1b1),.s(s2),.co(c2));
	FA3(.ci(0),.a(s1),.b(a0b2),.s(p[2]),.co(c3));
	
endmodule
	