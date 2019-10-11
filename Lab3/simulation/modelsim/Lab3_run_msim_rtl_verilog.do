transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/mux2.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/flopr.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/fetch.sv}

vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3/../Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/../Lab1/fetch_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  fetch_tb

add wave *
view structure
view signals
run -all
