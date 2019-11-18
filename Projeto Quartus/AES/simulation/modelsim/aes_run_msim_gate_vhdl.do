transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {aes.vho}

vcom -93 -work work {D:/Documentos/Designs/Quartus/AES/testbench.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  testbench

source aes_dump_all_vcd_nodes.tcl
add wave *
view structure
view signals
run 1000 ns
