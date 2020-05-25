transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/hafizuddin/Music/dsd/Lab\ 2/Part\ 2 {C:/Users/hafizuddin/Music/dsd/Lab 2/Part 2/circuitA.v}
vlog -vlog01compat -work work +incdir+C:/Users/hafizuddin/Music/dsd/Lab\ 2/Part\ 2 {C:/Users/hafizuddin/Music/dsd/Lab 2/Part 2/circuitB.v}
vlog -vlog01compat -work work +incdir+C:/Users/hafizuddin/Music/dsd/Lab\ 2/Part\ 2 {C:/Users/hafizuddin/Music/dsd/Lab 2/Part 2/mux2to1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hafizuddin/Music/dsd/Lab\ 2/Part\ 2 {C:/Users/hafizuddin/Music/dsd/Lab 2/Part 2/mux4bit2to1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hafizuddin/Music/dsd/Lab\ 2/Part\ 2 {C:/Users/hafizuddin/Music/dsd/Lab 2/Part 2/segmen7.v}
vlog -vlog01compat -work work +incdir+C:/Users/hafizuddin/Music/dsd/Lab\ 2/Part\ 2 {C:/Users/hafizuddin/Music/dsd/Lab 2/Part 2/comparator.v}
vlog -vlog01compat -work work +incdir+C:/Users/hafizuddin/Music/dsd/Lab\ 2/Part\ 2 {C:/Users/hafizuddin/Music/dsd/Lab 2/Part 2/part2.v}

