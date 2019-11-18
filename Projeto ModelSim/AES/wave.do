onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Magenta /testbench/clk_sg
add wave -noupdate -color Gold /testbench/en_t_sg
add wave -noupdate -color Magenta /testbench/en_r_sg
add wave -noupdate -color Blue /testbench/en_c_sg
add wave -noupdate -color {Orange Red} /testbench/en_ra_sg
add wave -noupdate /testbench/sel_m_sg
add wave -noupdate -color Yellow /testbench/sel_m3_sg
add wave -noupdate -color Blue /testbench/reset_sg
add wave -noupdate -radix hexadecimal /testbench/chipher_sg
add wave -noupdate -radix unsigned /testbench/round_sg
add wave -noupdate -color {Orange Red} -radix unsigned /testbench/state_sg
add wave -noupdate /testbench/top/rst_c
add wave -noupdate -radix hexadecimal /testbench/top/po/outReg_key
add wave -noupdate -radix hexadecimal /testbench/top/po/outAdd
add wave -noupdate -radix hexadecimal /testbench/top/po/outAdd1
add wave -noupdate -radix hexadecimal /testbench/top/po/outMux
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {144994 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 203
configure wave -valuecolwidth 56
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
WaveRestoreZoom {0 ps} {433439 ps}
