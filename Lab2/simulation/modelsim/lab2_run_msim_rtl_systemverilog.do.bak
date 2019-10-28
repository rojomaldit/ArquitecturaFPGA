transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/signext.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/regfile.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/maindec.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/imem.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/flopr.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/fetch.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/execute.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab1 {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab1/alu.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/writeback.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/processor_arm.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/mux2.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/memory.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/decode.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/datapath.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/controller.sv}
vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/aludec.sv}
vcom -93 -work work {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/dmem.vhd}

vlog -sv -work work +incdir+C:/Users/mat_o/Desktop/Cosas\ Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules {C:/Users/mat_o/Desktop/Cosas Facultad/ArqComp/ArquitecturaFPGA/Lab2/SingleCycleProcessorPatterson-Modules/processor_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  processor_tb

add wave *
view structure
view signals
run -all
