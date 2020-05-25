module p1(a,b,p,c1);

	input [1:0]a;
	input [1:1]b;
	output [1:1]p;
	output c1;
	
	and (a1b1,a[1],b[1]);
	and (a0b1,a[0],b[1]);
	
	fulladder(.ci(0),.a(a1b1),.b(a0b1),.s(p[1]),.co(c1));
	
endmodule