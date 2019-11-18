onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/en_t_sg
add wave -noupdate /testbench/en_r_sg
add wave -noupdate /testbench/en_c_sg
add wave -noupdate /testbench/en_ra_sg
add wave -noupdate /testbench/en_rk2_sg
add wave -noupdate /testbench/sel_m_sg
add wave -noupdate /testbench/sel_m3_sg
add wave -noupdate /testbench/clk_sg
add wave -noupdate /testbench/reset_sg
add wave -noupdate -radix hexadecimal /testbench/chipher_sg
add wave -noupdate -radix unsigned /testbench/round_sg
add wave -noupdate -radix unsigned /testbench/state_sg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {240000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {37551 ps} {250655 ps}
