transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {mux2_6_1200mv_85c_slow.svo}

vlog -sv -work work +incdir+/home/mostorero294/ArqComp/Quartus/Mux2 {/home/mostorero294/ArqComp/Quartus/Mux2/sillyfunction_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  testbench1

add wave *
view structure
view signals
run -all
