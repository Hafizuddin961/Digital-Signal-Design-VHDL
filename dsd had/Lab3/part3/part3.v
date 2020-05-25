module part3 (a,b,p);

	input [3:0]a;
	input [3:0]b;
	output [7:0]p;
	wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
	
	P0(a,b,p);
	p1(a,b,p,c1);
	p2(a,b,p,c2,c3);
	p3(a,b,p,c4,c5,c6);
	p4(a,b,p,c7,c8,c9);
	p5(a,b,p,c10,c11);
	p6(a,b,p,c12);
	p7(p);
	
endmodule