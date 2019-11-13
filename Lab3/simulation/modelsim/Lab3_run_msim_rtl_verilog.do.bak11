transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/hd_unit.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/writeback.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/signext.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/regfile.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/processor_arm.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/mux2.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/memory.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/maindec.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/imem.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/flopr.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/fetch.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/execute.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/decode.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/datapath.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/controller.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/aludec.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/alu.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/flopre.sv}
vcom -2008 -work work {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/dmem.vhd}

vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab3 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab3/processor_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  processor_tb

add wave *
view structure
view signals
run -all
