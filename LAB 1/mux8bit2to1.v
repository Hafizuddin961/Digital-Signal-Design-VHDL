module mux8bit2to1 (SW,LEDG,LEDR);

	input [17:0]SW;
	
	output [7:0]LEDG;
	output [17:0]LEDR;
	wire [7:0]m;
	
	part1(SW,LEDR);
	
	mux2to1
	m0 (.s(SW[17]), .x(SW[0]), .y(SW[8]), .m(m[0])),
	m1 (.s(SW[17]), .x(SW[1]), .y(SW[9]), .m(m[1])),
	m2 (.s(SW[17]), .x(SW[2]), .y(SW[10]), .m(m[2])),
	m3 (.s(SW[17]), .x(SW[3]), .y(SW[11]), .m(m[3])),
	m4 (.s(SW[17]), .x(SW[4]), .y(SW[12]), .m(m[4])),
	m5 (.s(SW[17]), .x(SW[5]), .y(SW[13]), .m(m[5])),
	m6 (.s(SW[17]), .x(SW[6]), .y(SW[14]), .m(m[6])),
	m7 (.s(SW[17]), .x(SW[7]), .y(SW[15]), .m(m[7]));
	
	assign LEDG = m;
endmodule