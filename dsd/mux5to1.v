module mux5to1 (SW[17:15],SW[2:0],SW[5:3],SW[8:6],SW[11:9],SW[14:12],M,LEDR);

	input [17:0]SW;
	output [2:0]M;
	output [17:0]LEDR;
	
	wire w0,w1,w2;
	
	mux2to1
	m0 (.s(SW[15]), .x(SW[2:0]), .y(SW[5:3]), .m(w0)),
	m1 (.s(SW[15]), .x(SW[8:6]), .y(SW[11:9]), .m(w1)),
	m2 (.s(SW[16]), .x(w0), .y(w1), .m(w2)),
	m (.s(SW[17]), .x(w2), .y(SW[14:12]), .m(M[2:0]));
	
	assign LEDR = SW;
	
	
endmodule