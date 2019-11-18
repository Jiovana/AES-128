// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II 64-Bit"
// VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

// DATE "11/18/2019 16:15:11"

// 
// Device: Altera EP3C25F324C6 Package FBGA324
// 

// 
// This Verilog file should be used for Cadence Conformal only
// 


module altsyncram (
	aclr0,
	aclr1,
	address_a,
	address_b,
	addressstall_a,
	addressstall_b,
	byteena_a,
	byteena_b,
	clock0,
	clock1,
	clocken0,
	clocken1,
	clocken2,
	clocken3,
	data_a,
	data_b,
	eccstatus,
	q_a,
	q_b,
	rden_a,
	rden_b,
	wren_a,
	wren_b);
input	aclr0;
input	aclr1;
input	[7:0]	address_a;
input	[7:0]	address_b;
input	addressstall_a;
input	addressstall_b;
input	[0:0]	byteena_a;
input	[0:0]	byteena_b;
input	clock0;
input	clock1;
input	clocken0;
input	clocken1;
input	clocken2;
input	clocken3;
input	[7:0]	data_a;
input	[7:0]	data_b;
output	[2:0]	eccstatus;
output	[7:0]	q_a;
output	[7:0]	q_b;
input	rden_a;
input	rden_b;
input	wren_a;
input	wren_b;

endmodule
