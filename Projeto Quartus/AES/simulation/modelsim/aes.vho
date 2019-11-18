-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/18/2019 16:15:10"

-- 
-- Device: Altera EP3C25F324C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_8 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_8;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_b <= address_b;
ww_address_a <= address_a;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y22_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|subBytes:sub|rom:mem5|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X45_Y16_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_10 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_10;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_b <= address_b;
ww_address_a <= address_a;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y20_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|subBytes:sub|rom:mem7|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X21_Y12_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_7 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_7;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_b <= address_b;
ww_address_a <= address_a;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y23_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|subBytes:sub|rom:mem4|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X36_Y16_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_4 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_4;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_b <= address_b;
ww_address_a <= address_a;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y25_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|subBytes:sub|rom:mem1|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X12_Y5_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_9 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_9;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_b <= address_b;
ww_address_a <= address_a;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y24_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|subBytes:sub|rom:mem6|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X9_Y7_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_1 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_1;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_a <= address_a;
ww_address_b <= address_b;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y28_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|roundKeyGen:keyGen|rom:mem0|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X31_Y3_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_3 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_3;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_b <= address_b;
ww_address_a <= address_a;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y19_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|subBytes:sub|rom:mem0|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X26_Y12_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_6 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_6;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_b <= address_b;
ww_address_a <= address_a;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y26_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|subBytes:sub|rom:mem3|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X47_Y5_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_2 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_2;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_a <= address_a;
ww_address_b <= address_b;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y29_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|roundKeyGen:keyGen|rom:mem1|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X19_Y9_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altsyncram_5 IS
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END altsyncram_5;

-- Design Ports Information


ARCHITECTURE structure OF altsyncram_5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock0 : std_logic;
SIGNAL auto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL auto_generated_aram_block1a0_aportadataout : std_logic;
SIGNAL auto_generated_aram_block1a0_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a7 : std_logic;
SIGNAL auto_generated_aram_block1a6 : std_logic;
SIGNAL auto_generated_aram_block1a5 : std_logic;
SIGNAL auto_generated_aram_block1a4 : std_logic;
SIGNAL auto_generated_aram_block1a3 : std_logic;
SIGNAL auto_generated_aram_block1a2 : std_logic;
SIGNAL auto_generated_aram_block1a1 : std_logic;
SIGNAL auto_generated_aram_block1a7_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a6_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a5_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a4_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a3_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a2_aPORTBDATAOUT0 : std_logic;
SIGNAL auto_generated_aram_block1a1_aPORTBDATAOUT0 : std_logic;
SIGNAL a_aGND_acombout : std_logic;

BEGIN

q_a <= ww_q_a;
q_b <= ww_q_b;
eccstatus <= ww_eccstatus;
ww_address_b <= address_b;
ww_address_a <= address_a;
ww_clock0 <= clock0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

auto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTBDATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

auto_generated_aram_block1a0_PORTAADDR_bus <= (ww_address_a(7) & ww_address_a(6) & ww_address_a(5) & ww_address_a(4) & ww_address_a(3) & ww_address_a(2) & ww_address_a(1) & ww_address_a(0));

auto_generated_aram_block1a0_PORTBADDR_bus <= (ww_address_b(7) & ww_address_b(6) & ww_address_b(5) & ww_address_b(4) & ww_address_b(3) & ww_address_b(2) & ww_address_b(1) & ww_address_b(0));

auto_generated_aram_block1a0_aportadataout <= auto_generated_aram_block1a0_PORTADATAOUT_bus(0);
auto_generated_aram_block1a1 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(1);
auto_generated_aram_block1a2 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(2);
auto_generated_aram_block1a3 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(3);
auto_generated_aram_block1a4 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(4);
auto_generated_aram_block1a5 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(5);
auto_generated_aram_block1a6 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(6);
auto_generated_aram_block1a7 <= auto_generated_aram_block1a0_PORTADATAOUT_bus(7);

auto_generated_aram_block1a0_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
auto_generated_aram_block1a1_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
auto_generated_aram_block1a2_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
auto_generated_aram_block1a3_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
auto_generated_aram_block1a4_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
auto_generated_aram_block1a5_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
auto_generated_aram_block1a6_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
auto_generated_aram_block1a7_aPORTBDATAOUT0 <= auto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

-- Location: M9K_X33_Y21_N0
auto_generated_aram_block1a0 : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0005800BB0015000B00003C002D002640041001A000420039800BF00034008900284008C0037C00280015400CE003A4008700078009B00250008E00364006900",
	mem_init1 => X"0440098003E000E100278001D003040086002E40057000D400610003800F60000C00480019800B5000F8007000228008B002F4004B0007C00740037400E80031800B400298001C000B80025001E000BA0002000AE001E80065003A800F400158006C002A4004E00354008D001B400370032000E7001E400E40025400910018800AC0034C00C200170002400018004900028003A000C800E00036C000B0017800DE0005000B8003B80046002200090000A8002200370004F002040060001CC0019001740064000F4007E0029C00C40005C00440025C005F003B000130003000CD0034800F3003FC00100008400DA002D800BC003D400380027400920023C00400",
	mem_init0 => X"028C0051002A0009F000F00050001FC0002003E40045002140033001340043003EC00AA003BC00D00033C005800130004A000E400BE0032C006A0016C00B1003F00020003B4000000344005300210002F0038C0029002CC00D6000EC005200280005A001B8001B00068002C0020C0009001D400B20009C00EB0038800800004800070026800050025800180030C00230031C0004000540031003600071003C400E50029400340033000F7000FC0036000980093003F400B700300007200290009C002BC00A20035000AD003C000470016400FA001F400C90020800CA001D800AB0035C00FE000AC006700004003000314006F001AC00F2001EC0077001F00063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/aes.ram0_rom_1d582.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:po|subBytes:sub|rom:mem2|altsyncram:rom_rtl_0|altsyncram_tin1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => ww_clock0,
	portadatain => auto_generated_aram_block1a0_PORTADATAIN_bus,
	portbdatain => auto_generated_aram_block1a0_PORTBDATAIN_bus,
	portaaddr => auto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => auto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => auto_generated_aram_block1a0_PORTADATAOUT_bus,
	portbdataout => auto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X17_Y29_N0
a_aGND : cycloneiii_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

ww_q_a(0) <= auto_generated_aram_block1a0_aportadataout;

ww_q_a(1) <= auto_generated_aram_block1a1;

ww_q_a(2) <= auto_generated_aram_block1a2;

ww_q_a(3) <= auto_generated_aram_block1a3;

ww_q_a(4) <= auto_generated_aram_block1a4;

ww_q_a(5) <= auto_generated_aram_block1a5;

ww_q_a(6) <= auto_generated_aram_block1a6;

ww_q_a(7) <= auto_generated_aram_block1a7;

ww_q_b(0) <= auto_generated_aram_block1a0_aPORTBDATAOUT0;

ww_q_b(1) <= auto_generated_aram_block1a1_aPORTBDATAOUT0;

ww_q_b(2) <= auto_generated_aram_block1a2_aPORTBDATAOUT0;

ww_q_b(3) <= auto_generated_aram_block1a3_aPORTBDATAOUT0;

ww_q_b(4) <= auto_generated_aram_block1a4_aPORTBDATAOUT0;

ww_q_b(5) <= auto_generated_aram_block1a5_aPORTBDATAOUT0;

ww_q_b(6) <= auto_generated_aram_block1a6_aPORTBDATAOUT0;

ww_q_b(7) <= auto_generated_aram_block1a7_aPORTBDATAOUT0;

ww_eccstatus(0) <= a_aGND_acombout;

ww_eccstatus(1) <= a_aGND_acombout;

ww_eccstatus(2) <= a_aGND_acombout;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aes IS
    PORT (
	osc_clk : IN std_logic;
	reset_n : IN std_logic;
	chipher : OUT std_logic_vector(127 DOWNTO 0);
	round_m : OUT std_logic_vector(3 DOWNTO 0);
	en_t : OUT std_logic;
	en_r : OUT std_logic;
	en_c : OUT std_logic;
	en_ra : OUT std_logic;
	en_rk2 : OUT std_logic;
	sel_m : OUT std_logic;
	sel_m3 : OUT std_logic;
	state : OUT std_logic_vector(2 DOWNTO 0)
	);
END aes;

-- Design Ports Information
-- chipher[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[4]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[9]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[12]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[13]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[14]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[15]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[16]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[17]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[18]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[19]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[20]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[22]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[23]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[24]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[25]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[26]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[27]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[28]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[29]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[30]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[31]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[32]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[33]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[34]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[35]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[36]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[37]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[38]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[39]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[40]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[41]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[42]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[43]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[44]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[45]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[46]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[47]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[48]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[49]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[50]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[51]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[52]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[53]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[54]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[55]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[56]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[57]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[58]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[59]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[60]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[61]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[62]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[63]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[64]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[65]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[66]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[67]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[68]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[69]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[70]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[71]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[72]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[73]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[74]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[75]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[76]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[77]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[78]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[79]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[80]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[81]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[82]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[83]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[84]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[85]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[86]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[87]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[88]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[89]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[90]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[91]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[92]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[93]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[94]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[95]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[96]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[97]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[98]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[99]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[100]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[101]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[102]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[103]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[104]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[105]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[106]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[107]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[108]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[109]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[110]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[111]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[112]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[113]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[114]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[115]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[116]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[117]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[118]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[119]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[120]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[121]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[122]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[123]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[124]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[125]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[126]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipher[127]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- round_m[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- round_m[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- round_m[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- round_m[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_t	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_r	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_c	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_ra	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_rk2	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_m	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_m3	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- osc_clk	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aes IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_osc_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_chipher : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_round_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_en_t : std_logic;
SIGNAL ww_en_r : std_logic;
SIGNAL ww_en_c : std_logic;
SIGNAL ww_en_ra : std_logic;
SIGNAL ww_en_rk2 : std_logic;
SIGNAL ww_sel_m : std_logic;
SIGNAL ww_sel_m3 : std_logic;
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem5_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem5_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem5_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem5_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem5_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem7_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem7_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem7_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem7_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem7_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem4_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem4_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem4_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem4_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem4_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem1_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem1_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem1_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem1_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem1_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem6_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem6_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem6_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem6_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem6_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem0_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem0_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem0_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem0_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem0_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem0_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem0_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem0_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem0_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem0_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem3_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem3_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem3_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem3_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem3_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem1_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem1_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem1_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem1_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_akeyGen_amem1_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem2_arom_rtl_0_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem2_arom_rtl_0_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem2_arom_rtl_0_eccstatus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_po_asub_amem2_arom_rtl_0_address_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_po_asub_amem2_arom_rtl_0_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL osc_clk_ainputclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_akeyGen_amem0_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_akeyGen_amem1_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_asub_amem0_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_asub_amem1_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_asub_amem2_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_asub_amem3_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_asub_amem4_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_asub_amem5_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_asub_amem6_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_a_a0_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_a_a1_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_a_a2_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_a_a3_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_a_a4_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_a_a5_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_a_a6_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_a_a7_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_b_a0_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_b_a1_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_b_a2_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_b_a3_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_b_a4_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_b_a5_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_b_a6_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aq_b_a7_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aeccstatus_a0_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aeccstatus_a1_a : std_logic;
SIGNAL po_asub_amem7_arom_rtl_0_aeccstatus_a2_a : std_logic;
SIGNAL po_amix3_aword_state_out_a2_a_a10_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a3_a_a12_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a4_a_a13_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a20_a_a25_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a29_a_a26_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a27_a_a28_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a0_a_a8_combout : std_logic;
SIGNAL po_amux2_aresult_a35_a_a3_combout : std_logic;
SIGNAL po_amux2_aresult_a43_a_a11_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a17_a_a22_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a18_a_a23_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a27_a_a28_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a28_a_a29_combout : std_logic;
SIGNAL po_amux2_aresult_a69_a_a37_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a11_a_a25_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a17_a_a28_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a18_a_a29_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a19_a_a30_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a20_a_a31_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a29_a_a32_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a30_a_a33_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a3_a_a18_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a13_a_a21_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a16_a_a27_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a17_a_a28_combout : std_logic;
SIGNAL po_amix0_am1_ab_out_a0_combout : std_logic;
SIGNAL po_amux2_aresult_a114_a_a82_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a18_a_a29_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a20_a_a31_combout : std_logic;
SIGNAL po_amux2_aresult_a117_a_a85_combout : std_logic;
SIGNAL po_amux2_aresult_a121_a_a89_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a28_a_a35_combout : std_logic;
SIGNAL po_akeyGen_amux_aMux5_a0_combout : std_logic;
SIGNAL po_akeyGen_amux_aMux2_a0_combout : std_logic;
SIGNAL po_areg_mix_aq_a20_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a27_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a30_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a31_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a49_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a55_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a59_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a60_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a63_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a75_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a77_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a84_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a84_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a87_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a109_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a111_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a116_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a120_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a57_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a81_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a97_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a124_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a17_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a52_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a13_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a14_a_afeeder_combout : std_logic;
SIGNAL chipher_a0_a_aoutput_o : std_logic;
SIGNAL chipher_a1_a_aoutput_o : std_logic;
SIGNAL chipher_a2_a_aoutput_o : std_logic;
SIGNAL chipher_a3_a_aoutput_o : std_logic;
SIGNAL chipher_a4_a_aoutput_o : std_logic;
SIGNAL chipher_a5_a_aoutput_o : std_logic;
SIGNAL chipher_a6_a_aoutput_o : std_logic;
SIGNAL chipher_a7_a_aoutput_o : std_logic;
SIGNAL chipher_a8_a_aoutput_o : std_logic;
SIGNAL chipher_a9_a_aoutput_o : std_logic;
SIGNAL chipher_a10_a_aoutput_o : std_logic;
SIGNAL chipher_a11_a_aoutput_o : std_logic;
SIGNAL chipher_a12_a_aoutput_o : std_logic;
SIGNAL chipher_a13_a_aoutput_o : std_logic;
SIGNAL chipher_a14_a_aoutput_o : std_logic;
SIGNAL chipher_a15_a_aoutput_o : std_logic;
SIGNAL chipher_a16_a_aoutput_o : std_logic;
SIGNAL chipher_a17_a_aoutput_o : std_logic;
SIGNAL chipher_a18_a_aoutput_o : std_logic;
SIGNAL chipher_a19_a_aoutput_o : std_logic;
SIGNAL chipher_a20_a_aoutput_o : std_logic;
SIGNAL chipher_a21_a_aoutput_o : std_logic;
SIGNAL chipher_a22_a_aoutput_o : std_logic;
SIGNAL chipher_a23_a_aoutput_o : std_logic;
SIGNAL chipher_a24_a_aoutput_o : std_logic;
SIGNAL chipher_a25_a_aoutput_o : std_logic;
SIGNAL chipher_a26_a_aoutput_o : std_logic;
SIGNAL chipher_a27_a_aoutput_o : std_logic;
SIGNAL chipher_a28_a_aoutput_o : std_logic;
SIGNAL chipher_a29_a_aoutput_o : std_logic;
SIGNAL chipher_a30_a_aoutput_o : std_logic;
SIGNAL chipher_a31_a_aoutput_o : std_logic;
SIGNAL chipher_a32_a_aoutput_o : std_logic;
SIGNAL chipher_a33_a_aoutput_o : std_logic;
SIGNAL chipher_a34_a_aoutput_o : std_logic;
SIGNAL chipher_a35_a_aoutput_o : std_logic;
SIGNAL chipher_a36_a_aoutput_o : std_logic;
SIGNAL chipher_a37_a_aoutput_o : std_logic;
SIGNAL chipher_a38_a_aoutput_o : std_logic;
SIGNAL chipher_a39_a_aoutput_o : std_logic;
SIGNAL chipher_a40_a_aoutput_o : std_logic;
SIGNAL chipher_a41_a_aoutput_o : std_logic;
SIGNAL chipher_a42_a_aoutput_o : std_logic;
SIGNAL chipher_a43_a_aoutput_o : std_logic;
SIGNAL chipher_a44_a_aoutput_o : std_logic;
SIGNAL chipher_a45_a_aoutput_o : std_logic;
SIGNAL chipher_a46_a_aoutput_o : std_logic;
SIGNAL chipher_a47_a_aoutput_o : std_logic;
SIGNAL chipher_a48_a_aoutput_o : std_logic;
SIGNAL chipher_a49_a_aoutput_o : std_logic;
SIGNAL chipher_a50_a_aoutput_o : std_logic;
SIGNAL chipher_a51_a_aoutput_o : std_logic;
SIGNAL chipher_a52_a_aoutput_o : std_logic;
SIGNAL chipher_a53_a_aoutput_o : std_logic;
SIGNAL chipher_a54_a_aoutput_o : std_logic;
SIGNAL chipher_a55_a_aoutput_o : std_logic;
SIGNAL chipher_a56_a_aoutput_o : std_logic;
SIGNAL chipher_a57_a_aoutput_o : std_logic;
SIGNAL chipher_a58_a_aoutput_o : std_logic;
SIGNAL chipher_a59_a_aoutput_o : std_logic;
SIGNAL chipher_a60_a_aoutput_o : std_logic;
SIGNAL chipher_a61_a_aoutput_o : std_logic;
SIGNAL chipher_a62_a_aoutput_o : std_logic;
SIGNAL chipher_a63_a_aoutput_o : std_logic;
SIGNAL chipher_a64_a_aoutput_o : std_logic;
SIGNAL chipher_a65_a_aoutput_o : std_logic;
SIGNAL chipher_a66_a_aoutput_o : std_logic;
SIGNAL chipher_a67_a_aoutput_o : std_logic;
SIGNAL chipher_a68_a_aoutput_o : std_logic;
SIGNAL chipher_a69_a_aoutput_o : std_logic;
SIGNAL chipher_a70_a_aoutput_o : std_logic;
SIGNAL chipher_a71_a_aoutput_o : std_logic;
SIGNAL chipher_a72_a_aoutput_o : std_logic;
SIGNAL chipher_a73_a_aoutput_o : std_logic;
SIGNAL chipher_a74_a_aoutput_o : std_logic;
SIGNAL chipher_a75_a_aoutput_o : std_logic;
SIGNAL chipher_a76_a_aoutput_o : std_logic;
SIGNAL chipher_a77_a_aoutput_o : std_logic;
SIGNAL chipher_a78_a_aoutput_o : std_logic;
SIGNAL chipher_a79_a_aoutput_o : std_logic;
SIGNAL chipher_a80_a_aoutput_o : std_logic;
SIGNAL chipher_a81_a_aoutput_o : std_logic;
SIGNAL chipher_a82_a_aoutput_o : std_logic;
SIGNAL chipher_a83_a_aoutput_o : std_logic;
SIGNAL chipher_a84_a_aoutput_o : std_logic;
SIGNAL chipher_a85_a_aoutput_o : std_logic;
SIGNAL chipher_a86_a_aoutput_o : std_logic;
SIGNAL chipher_a87_a_aoutput_o : std_logic;
SIGNAL chipher_a88_a_aoutput_o : std_logic;
SIGNAL chipher_a89_a_aoutput_o : std_logic;
SIGNAL chipher_a90_a_aoutput_o : std_logic;
SIGNAL chipher_a91_a_aoutput_o : std_logic;
SIGNAL chipher_a92_a_aoutput_o : std_logic;
SIGNAL chipher_a93_a_aoutput_o : std_logic;
SIGNAL chipher_a94_a_aoutput_o : std_logic;
SIGNAL chipher_a95_a_aoutput_o : std_logic;
SIGNAL chipher_a96_a_aoutput_o : std_logic;
SIGNAL chipher_a97_a_aoutput_o : std_logic;
SIGNAL chipher_a98_a_aoutput_o : std_logic;
SIGNAL chipher_a99_a_aoutput_o : std_logic;
SIGNAL chipher_a100_a_aoutput_o : std_logic;
SIGNAL chipher_a101_a_aoutput_o : std_logic;
SIGNAL chipher_a102_a_aoutput_o : std_logic;
SIGNAL chipher_a103_a_aoutput_o : std_logic;
SIGNAL chipher_a104_a_aoutput_o : std_logic;
SIGNAL chipher_a105_a_aoutput_o : std_logic;
SIGNAL chipher_a106_a_aoutput_o : std_logic;
SIGNAL chipher_a107_a_aoutput_o : std_logic;
SIGNAL chipher_a108_a_aoutput_o : std_logic;
SIGNAL chipher_a109_a_aoutput_o : std_logic;
SIGNAL chipher_a110_a_aoutput_o : std_logic;
SIGNAL chipher_a111_a_aoutput_o : std_logic;
SIGNAL chipher_a112_a_aoutput_o : std_logic;
SIGNAL chipher_a113_a_aoutput_o : std_logic;
SIGNAL chipher_a114_a_aoutput_o : std_logic;
SIGNAL chipher_a115_a_aoutput_o : std_logic;
SIGNAL chipher_a116_a_aoutput_o : std_logic;
SIGNAL chipher_a117_a_aoutput_o : std_logic;
SIGNAL chipher_a118_a_aoutput_o : std_logic;
SIGNAL chipher_a119_a_aoutput_o : std_logic;
SIGNAL chipher_a120_a_aoutput_o : std_logic;
SIGNAL chipher_a121_a_aoutput_o : std_logic;
SIGNAL chipher_a122_a_aoutput_o : std_logic;
SIGNAL chipher_a123_a_aoutput_o : std_logic;
SIGNAL chipher_a124_a_aoutput_o : std_logic;
SIGNAL chipher_a125_a_aoutput_o : std_logic;
SIGNAL chipher_a126_a_aoutput_o : std_logic;
SIGNAL chipher_a127_a_aoutput_o : std_logic;
SIGNAL round_m_a0_a_aoutput_o : std_logic;
SIGNAL round_m_a1_a_aoutput_o : std_logic;
SIGNAL round_m_a2_a_aoutput_o : std_logic;
SIGNAL round_m_a3_a_aoutput_o : std_logic;
SIGNAL en_t_aoutput_o : std_logic;
SIGNAL en_r_aoutput_o : std_logic;
SIGNAL en_c_aoutput_o : std_logic;
SIGNAL en_ra_aoutput_o : std_logic;
SIGNAL en_rk2_aoutput_o : std_logic;
SIGNAL sel_m_aoutput_o : std_logic;
SIGNAL sel_m3_aoutput_o : std_logic;
SIGNAL state_a0_a_aoutput_o : std_logic;
SIGNAL state_a1_a_aoutput_o : std_logic;
SIGNAL state_a2_a_aoutput_o : std_logic;
SIGNAL osc_clk_ainput_o : std_logic;
SIGNAL osc_clk_ainputclkctrl_outclk : std_logic;
SIGNAL reset_n_ainput_o : std_logic;
SIGNAL pc_astate_as0_a0_combout : std_logic;
SIGNAL pc_astate_as0_aq : std_logic;
SIGNAL po_acount_acnt_a0_combout : std_logic;
SIGNAL pc_astate_a12_combout : std_logic;
SIGNAL pc_astate_as1_aq : std_logic;
SIGNAL po_acount_acnt_a2_combout : std_logic;
SIGNAL pc_aEqual0_a0_combout : std_logic;
SIGNAL pc_astate_a15_combout : std_logic;
SIGNAL pc_astate_as3_aq : std_logic;
SIGNAL pc_astate_a11_combout : std_logic;
SIGNAL pc_astate_as4_aq : std_logic;
SIGNAL pc_astate_a16_combout : std_logic;
SIGNAL pc_astate_as5_aq : std_logic;
SIGNAL pc_astate_a14_combout : std_logic;
SIGNAL pc_astate_as6_aq : std_logic;
SIGNAL pc_astate_a13_combout : std_logic;
SIGNAL pc_astate_as2_aq : std_logic;
SIGNAL po_acount_acnt_a3_a_a1_combout : std_logic;
SIGNAL po_acount_acnt_a3_combout : std_logic;
SIGNAL po_akeyGen_amux_aMux1_a0_combout : std_logic;
SIGNAL po_acount_acnt_a4_combout : std_logic;
SIGNAL pc_aSelector4_a1_combout : std_logic;
SIGNAL pc_aSelector4_a0_combout : std_logic;
SIGNAL po_amux2_aresult_a96_a_a64_combout : std_logic;
SIGNAL pc_aWideOr3_a0_combout : std_logic;
SIGNAL po_amux2_aresult_a64_a_a32_combout : std_logic;
SIGNAL po_amux2_aresult_a32_a_a0_combout : std_logic;
SIGNAL pc_aSelector4_a2_combout : std_logic;
SIGNAL po_areg_sub_aq_a112_a_afeeder_combout : std_logic;
SIGNAL pc_astate_a10_combout : std_logic;
SIGNAL pc_astate_as7_aq : std_logic;
SIGNAL pc_aenable_top_a0_combout : std_logic;
SIGNAL po_areg_sub_aq_a39_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a31_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a72_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a0_a_a8_combout : std_logic;
SIGNAL po_areg_sub_aq_a32_a_afeeder_combout : std_logic;
SIGNAL pc_aSelector5_a0_combout : std_logic;
SIGNAL pc_aEqual2_a0_combout : std_logic;
SIGNAL pc_aSelector5_a1_combout : std_logic;
SIGNAL pc_aSelector3_a0_combout : std_logic;
SIGNAL po_areg_sub_aq_a24_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a113_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a25_a_a9_combout : std_logic;
SIGNAL po_areg_sub_aq_a25_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a25_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a1_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a97_a_a65_combout : std_logic;
SIGNAL po_amux2_aresult_a65_a_a33_combout : std_logic;
SIGNAL po_amux2_aresult_a33_a_a1_combout : std_logic;
SIGNAL po_amux2_aresult_a98_a_a66_combout : std_logic;
SIGNAL po_amux2_aresult_a66_a_a34_combout : std_logic;
SIGNAL po_areg_sub_aq_a26_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a114_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a18_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a74_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a10_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a26_a_a11_combout : std_logic;
SIGNAL po_amux2_aresult_a99_a_a67_combout : std_logic;
SIGNAL po_amux2_aresult_a67_a_a35_combout : std_logic;
SIGNAL po_areg_sub_aq_a75_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a11_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a115_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a19_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a3_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a35_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a100_a_a68_combout : std_logic;
SIGNAL po_amux2_aresult_a68_a_a36_combout : std_logic;
SIGNAL po_amux2_aresult_a36_a_a4_combout : std_logic;
SIGNAL po_areg_mix_aq_a4_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a36_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a4_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a117_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a13_a_a14_combout : std_logic;
SIGNAL po_areg_sub_aq_a77_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a13_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a37_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a101_a_a69_combout : std_logic;
SIGNAL po_amux2_aresult_a37_a_a5_combout : std_logic;
SIGNAL po_amux2_aresult_a102_a_a70_combout : std_logic;
SIGNAL po_amux2_aresult_a70_a_a38_combout : std_logic;
SIGNAL po_areg_shift_aq_a5_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a118_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a6_a_a15_combout : std_logic;
SIGNAL po_areg_sub_aq_a29_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a38_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a103_a_a71_combout : std_logic;
SIGNAL po_amux2_aresult_a39_a_a7_combout : std_logic;
SIGNAL po_amux2_aresult_a71_a_a39_combout : std_logic;
SIGNAL po_areg_sub_aq_a79_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a119_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a23_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a28_a_a16_combout : std_logic;
SIGNAL po_areg_mix_aq_a7_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a104_a_a72_combout : std_logic;
SIGNAL po_amux2_aresult_a40_a_a8_combout : std_logic;
SIGNAL po_areg_shift_aq_a0_a_afeeder_combout : std_logic;
SIGNAL po_amix3_am5_ab_out_a0_combout : std_logic;
SIGNAL po_areg_mix_aq_a8_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a9_a_a17_combout : std_logic;
SIGNAL po_areg_mix_aq_a9_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a73_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a106_a_a74_combout : std_logic;
SIGNAL po_amux2_aresult_a42_a_a10_combout : std_logic;
SIGNAL po_areg_mix_aq_a10_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a27_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a11_a_a18_combout : std_logic;
SIGNAL po_areg_mix_aq_a11_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a3_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a116_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a20_a_afeeder_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a12_a_a19_combout : std_logic;
SIGNAL po_areg_mix_aq_a12_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a76_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a108_a_a76_combout : std_logic;
SIGNAL po_amux2_aresult_a76_a_a44_combout : std_logic;
SIGNAL po_amux2_aresult_a44_a_a12_combout : std_logic;
SIGNAL po_amux2_aresult_a109_a_a77_combout : std_logic;
SIGNAL po_amux2_aresult_a77_a_a45_combout : std_logic;
SIGNAL po_amux2_aresult_a110_a_a78_combout : std_logic;
SIGNAL po_amux2_aresult_a78_a_a46_combout : std_logic;
SIGNAL po_areg_sub_aq_a78_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a111_a_a79_combout : std_logic;
SIGNAL po_amux2_aresult_a79_a_a47_combout : std_logic;
SIGNAL po_amux2_aresult_a47_a_a15_combout : std_logic;
SIGNAL po_areg_mix_aq_a15_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a80_a_a48_combout : std_logic;
SIGNAL po_amux2_aresult_a48_a_a16_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a16_a_a21_combout : std_logic;
SIGNAL po_amux2_aresult_a81_a_a49_combout : std_logic;
SIGNAL po_amux2_aresult_a49_a_a17_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a17_a_a22_combout : std_logic;
SIGNAL po_areg_mix_aq_a17_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a82_a_a50_combout : std_logic;
SIGNAL po_amux2_aresult_a50_a_a18_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a18_a_a23_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a19_a_a24_combout : std_logic;
SIGNAL po_areg_mix_aq_a19_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a116_a_a84_combout : std_logic;
SIGNAL po_amux2_aresult_a84_a_a52_combout : std_logic;
SIGNAL po_amux2_aresult_a52_a_a20_combout : std_logic;
SIGNAL po_amux2_aresult_a85_a_a53_combout : std_logic;
SIGNAL po_amux2_aresult_a53_a_a21_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a30_a_a27_combout : std_logic;
SIGNAL po_amux2_aresult_a119_a_a87_combout : std_logic;
SIGNAL po_amux2_aresult_a87_a_a55_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a31_a_a20_combout : std_logic;
SIGNAL po_areg_mix_aq_a23_a_afeeder_combout : std_logic;
SIGNAL po_amix3_am1_ab_out_a0_combout : std_logic;
SIGNAL po_areg_mix_aq_a24_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a120_a_a88_combout : std_logic;
SIGNAL po_akeyGen_ax_a24_a_a0_combout : std_logic;
SIGNAL po_amux2_aresult_a88_a_a56_combout : std_logic;
SIGNAL po_amux2_aresult_a56_a_a24_combout : std_logic;
SIGNAL po_areg_mix_aq_a25_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a122_a_a90_combout : std_logic;
SIGNAL po_akeyGen_ax_a26_a_a2_combout : std_logic;
SIGNAL po_amux2_aresult_a58_a_a26_combout : std_logic;
SIGNAL po_amux2_aresult_a123_a_a91_combout : std_logic;
SIGNAL po_akeyGen_amux_aMux4_a0_combout : std_logic;
SIGNAL po_akeyGen_ax_a27_a_a3_combout : std_logic;
SIGNAL po_amux2_aresult_a91_a_a59_combout : std_logic;
SIGNAL po_amux2_aresult_a59_a_a27_combout : std_logic;
SIGNAL po_amix3_aword_state_out_a28_a_a29_combout : std_logic;
SIGNAL po_areg_mix_aq_a28_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a28_a_afeeder_combout : std_logic;
SIGNAL po_akeyGen_amux_aMux3_a0_combout : std_logic;
SIGNAL po_amux2_aresult_a124_a_a92_combout : std_logic;
SIGNAL po_akeyGen_ax_a28_a_a4_combout : std_logic;
SIGNAL po_amux2_aresult_a92_a_a60_combout : std_logic;
SIGNAL po_amux2_aresult_a60_a_a28_combout : std_logic;
SIGNAL po_areg_shift_aq_a28_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a125_a_a93_combout : std_logic;
SIGNAL po_akeyGen_ax_a29_a_a5_combout : std_logic;
SIGNAL po_amux2_aresult_a61_a_a29_combout : std_logic;
SIGNAL po_amux2_aresult_a62_a_a30_combout : std_logic;
SIGNAL po_areg_sub_aq_a30_a_afeeder_combout : std_logic;
SIGNAL po_akeyGen_amux_aMux0_a0_combout : std_logic;
SIGNAL po_amux2_aresult_a95_a_a63_combout : std_logic;
SIGNAL po_amux2_aresult_a63_a_a31_combout : std_logic;
SIGNAL po_areg_sub_aq_a16_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a64_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a57_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a105_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a56_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a63_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a25_a_a9_combout : std_logic;
SIGNAL po_areg_mix_aq_a33_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a65_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a18_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a26_a_a11_combout : std_logic;
SIGNAL po_areg_sub_aq_a58_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a66_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a34_a_a2_combout : std_logic;
SIGNAL po_areg_sub_aq_a19_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a59_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a71_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a39_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a34_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a3_a_a12_combout : std_logic;
SIGNAL po_areg_mix_aq_a35_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a67_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a20_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a108_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a4_a_a13_combout : std_logic;
SIGNAL po_areg_mix_aq_a36_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a68_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a60_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a60_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a21_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a61_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a61_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a13_a_a14_combout : std_logic;
SIGNAL po_areg_sub_aq_a69_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a38_a_a6_combout : std_logic;
SIGNAL po_areg_sub_aq_a110_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a46_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a70_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a62_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a62_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a28_a_a16_combout : std_logic;
SIGNAL po_areg_shift_aq_a38_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a39_a_afeeder_combout : std_logic;
SIGNAL po_amix2_am5_ab_out_a0_combout : std_logic;
SIGNAL po_areg_mix_aq_a40_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a104_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a105_a_a73_combout : std_logic;
SIGNAL po_amux2_aresult_a73_a_a41_combout : std_logic;
SIGNAL po_amux2_aresult_a41_a_a9_combout : std_logic;
SIGNAL po_areg_sub_aq_a111_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a47_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a9_a_a17_combout : std_logic;
SIGNAL po_areg_mix_aq_a41_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a2_a_a10_combout : std_logic;
SIGNAL po_areg_mix_aq_a42_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a106_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a11_a_a18_combout : std_logic;
SIGNAL po_areg_mix_aq_a43_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a31_a_a20_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a12_a_a19_combout : std_logic;
SIGNAL po_areg_mix_aq_a44_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a109_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a45_a_a13_combout : std_logic;
SIGNAL po_amux2_aresult_a46_a_a14_combout : std_logic;
SIGNAL po_areg_shift_aq_a37_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a6_a_a15_combout : std_logic;
SIGNAL po_areg_mix_aq_a47_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a16_a_a21_combout : std_logic;
SIGNAL po_amux2_aresult_a115_a_a83_combout : std_logic;
SIGNAL po_amux2_aresult_a83_a_a51_combout : std_logic;
SIGNAL po_amux2_aresult_a51_a_a19_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a19_a_a24_combout : std_logic;
SIGNAL po_areg_mix_aq_a51_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a23_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a55_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a20_a_a25_combout : std_logic;
SIGNAL po_areg_mix_aq_a52_a_afeeder_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a29_a_a26_combout : std_logic;
SIGNAL po_amux2_aresult_a54_a_a22_combout : std_logic;
SIGNAL po_amix2_aword_state_out_a30_a_a27_combout : std_logic;
SIGNAL po_areg_sub_aq_a22_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a55_a_a23_combout : std_logic;
SIGNAL po_amix2_am1_ab_out_a0_combout : std_logic;
SIGNAL po_areg_mix_aq_a56_a_afeeder_combout : std_logic;
SIGNAL po_akeyGen_amux_aMux6_a0_combout : std_logic;
SIGNAL po_akeyGen_ax_a25_a_a1_combout : std_logic;
SIGNAL po_amux2_aresult_a89_a_a57_combout : std_logic;
SIGNAL po_amux2_aresult_a57_a_a25_combout : std_logic;
SIGNAL po_areg_sub_aq_a48_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a80_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a103_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a95_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a8_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a0_a_a14_combout : std_logic;
SIGNAL po_areg_sub_aq_a96_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a88_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a9_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a25_a_a15_combout : std_logic;
SIGNAL po_areg_mix_aq_a65_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a97_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a90_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a50_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a89_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a89_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a26_a_a17_combout : std_logic;
SIGNAL po_areg_sub_aq_a98_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a66_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a3_a_a18_combout : std_logic;
SIGNAL po_areg_sub_aq_a51_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a67_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a99_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a91_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a12_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a4_a_a20_combout : std_logic;
SIGNAL po_areg_sub_aq_a92_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a92_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a68_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a100_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a93_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a53_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a85_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a13_a_a21_combout : std_logic;
SIGNAL po_areg_sub_aq_a101_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a54_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a69_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a6_a_a22_combout : std_logic;
SIGNAL po_areg_sub_aq_a102_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a15_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a94_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a55_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a28_a_a23_combout : std_logic;
SIGNAL po_areg_mix_aq_a71_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a72_a_a40_combout : std_logic;
SIGNAL po_amix1_am5_ab_out_a0_combout : std_logic;
SIGNAL po_areg_mix_aq_a72_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a49_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a9_a_a24_combout : std_logic;
SIGNAL po_areg_mix_aq_a73_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a74_a_a42_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a2_a_a16_combout : std_logic;
SIGNAL po_areg_mix_aq_a74_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a10_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a107_a_a75_combout : std_logic;
SIGNAL po_amux2_aresult_a75_a_a43_combout : std_logic;
SIGNAL po_areg_sub_aq_a11_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a12_a_a19_combout : std_logic;
SIGNAL po_areg_mix_aq_a76_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a79_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a16_a_a27_combout : std_logic;
SIGNAL po_areg_mix_aq_a83_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a86_a_a54_combout : std_logic;
SIGNAL po_amix1_am1_ab_out_a0_combout : std_logic;
SIGNAL po_areg_mix_aq_a88_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a89_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a90_a_a58_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a27_a_a34_combout : std_logic;
SIGNAL po_areg_mix_aq_a91_a_afeeder_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a28_a_a35_combout : std_logic;
SIGNAL po_areg_mix_aq_a92_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a93_a_a61_combout : std_logic;
SIGNAL po_amux2_aresult_a94_a_a62_combout : std_logic;
SIGNAL po_amix1_aword_state_out_a31_a_a26_combout : std_logic;
SIGNAL po_areg_mix_aq_a95_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a80_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a120_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a7_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a127_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a0_a_a14_combout : std_logic;
SIGNAL po_areg_mix_aq_a96_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a0_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a122_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a82_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a42_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a26_a_a17_combout : std_logic;
SIGNAL po_areg_sub_aq_a2_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a83_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a43_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a107_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a99_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a3_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a99_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a44_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a4_a_a20_combout : std_logic;
SIGNAL po_areg_sub_aq_a84_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a100_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a4_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a5_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a126_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a126_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a6_a_a22_combout : std_logic;
SIGNAL po_areg_sub_aq_a46_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a110_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a6_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a102_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a47_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a111_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a87_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a28_a_a23_combout : std_logic;
SIGNAL po_areg_mix_aq_a103_a_afeeder_combout : std_logic;
SIGNAL po_amix0_am5_ab_out_a0_combout : std_logic;
SIGNAL po_areg_mix_aq_a104_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a40_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a1_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a81_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a9_a_a24_combout : std_logic;
SIGNAL po_areg_mix_aq_a105_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a41_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a2_a_a16_combout : std_logic;
SIGNAL po_areg_mix_aq_a106_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a11_a_a25_combout : std_logic;
SIGNAL po_areg_sub_aq_a123_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a107_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a31_a_a26_combout : std_logic;
SIGNAL po_areg_sub_aq_a124_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a124_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a12_a_a19_combout : std_logic;
SIGNAL po_areg_mix_aq_a108_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a109_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a45_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a112_a_a80_combout : std_logic;
SIGNAL po_amux2_aresult_a113_a_a81_combout : std_logic;
SIGNAL po_areg_mix_aq_a113_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a19_a_a30_combout : std_logic;
SIGNAL po_areg_mix_aq_a115_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a29_a_a32_combout : std_logic;
SIGNAL po_areg_sub_aq_a85_a_afeeder_combout : std_logic;
SIGNAL po_amux2_aresult_a118_a_a86_combout : std_logic;
SIGNAL po_areg_sub_aq_a86_a_afeeder_combout : std_logic;
SIGNAL po_areg_mix_aq_a119_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a25_a_a15_combout : std_logic;
SIGNAL po_areg_mix_aq_a121_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a121_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a27_a_a34_combout : std_logic;
SIGNAL po_areg_mix_aq_a123_a_afeeder_combout : std_logic;
SIGNAL po_areg_shift_aq_a117_a_afeeder_combout : std_logic;
SIGNAL po_areg_sub_aq_a125_a_afeeder_combout : std_logic;
SIGNAL po_amix0_aword_state_out_a30_a_a33_combout : std_logic;
SIGNAL po_amux2_aresult_a126_a_a94_combout : std_logic;
SIGNAL po_amux2_aresult_a127_a_a95_combout : std_logic;
SIGNAL po_areg_mix_aq_a127_a_afeeder_combout : std_logic;
SIGNAL pc_aWideOr10_a0_combout : std_logic;
SIGNAL pc_aWideOr9_acombout : std_logic;
SIGNAL pc_aWideOr8_acombout : std_logic;
SIGNAL po_areg_sub_aq : std_logic_vector(127 DOWNTO 0);
SIGNAL po_areg_shift_aq : std_logic_vector(127 DOWNTO 0);
SIGNAL po_amix1_aword_state_out : std_logic_vector(31 DOWNTO 0);
SIGNAL po_amix2_aword_state_out : std_logic_vector(31 DOWNTO 0);
SIGNAL po_amix3_aword_state_out : std_logic_vector(31 DOWNTO 0);
SIGNAL po_areg_mix_aq : std_logic_vector(127 DOWNTO 0);
SIGNAL po_areg_key_aq : std_logic_vector(127 DOWNTO 0);
SIGNAL po_aadd1_astate_out : std_logic_vector(127 DOWNTO 0);
SIGNAL po_areg_add_aq : std_logic_vector(127 DOWNTO 0);
SIGNAL po_amix0_aword_state_out : std_logic_vector(31 DOWNTO 0);
SIGNAL po_akeyGen_ax : std_logic_vector(31 DOWNTO 0);
SIGNAL po_akeyGen_aroundkey_out : std_logic_vector(127 DOWNTO 0);
SIGNAL po_akeyGen_areg_aq : std_logic_vector(31 DOWNTO 0);
SIGNAL po_acount_acnt : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_pc_aWideOr8_acombout : std_logic;
SIGNAL ALT_INV_pc_aWideOr9_acombout : std_logic;
SIGNAL ALT_INV_pc_aWideOr10_a0_combout : std_logic;
SIGNAL ALT_INV_pc_aSelector4_a2_combout : std_logic;

COMPONENT altsyncram_8
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_10
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_7
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_4
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_9
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_1
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_3
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_6
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_2
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT altsyncram_5
    PORT (
	q_a : OUT std_logic_vector(7 DOWNTO 0);
	q_b : OUT std_logic_vector(7 DOWNTO 0);
	eccstatus : OUT std_logic_vector(2 DOWNTO 0);
	address_b : IN std_logic_vector(7 DOWNTO 0);
	address_a : IN std_logic_vector(7 DOWNTO 0);
	clock0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_osc_clk <= osc_clk;
ww_reset_n <= reset_n;
chipher <= ww_chipher;
round_m <= ww_round_m;
en_t <= ww_en_t;
en_r <= ww_en_r;
en_c <= ww_en_c;
en_ra <= ww_en_ra;
en_rk2 <= ww_en_rk2;
sel_m <= ww_sel_m;
sel_m3 <= ww_sel_m3;
state <= ww_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

po_asub_amem5_arom_rtl_0_aq_a_a0_a <= ww_po_asub_amem5_arom_rtl_0_q_a(0);
po_asub_amem5_arom_rtl_0_aq_a_a1_a <= ww_po_asub_amem5_arom_rtl_0_q_a(1);
po_asub_amem5_arom_rtl_0_aq_a_a2_a <= ww_po_asub_amem5_arom_rtl_0_q_a(2);
po_asub_amem5_arom_rtl_0_aq_a_a3_a <= ww_po_asub_amem5_arom_rtl_0_q_a(3);
po_asub_amem5_arom_rtl_0_aq_a_a4_a <= ww_po_asub_amem5_arom_rtl_0_q_a(4);
po_asub_amem5_arom_rtl_0_aq_a_a5_a <= ww_po_asub_amem5_arom_rtl_0_q_a(5);
po_asub_amem5_arom_rtl_0_aq_a_a6_a <= ww_po_asub_amem5_arom_rtl_0_q_a(6);
po_asub_amem5_arom_rtl_0_aq_a_a7_a <= ww_po_asub_amem5_arom_rtl_0_q_a(7);

po_asub_amem5_arom_rtl_0_aq_b_a0_a <= ww_po_asub_amem5_arom_rtl_0_q_b(0);
po_asub_amem5_arom_rtl_0_aq_b_a1_a <= ww_po_asub_amem5_arom_rtl_0_q_b(1);
po_asub_amem5_arom_rtl_0_aq_b_a2_a <= ww_po_asub_amem5_arom_rtl_0_q_b(2);
po_asub_amem5_arom_rtl_0_aq_b_a3_a <= ww_po_asub_amem5_arom_rtl_0_q_b(3);
po_asub_amem5_arom_rtl_0_aq_b_a4_a <= ww_po_asub_amem5_arom_rtl_0_q_b(4);
po_asub_amem5_arom_rtl_0_aq_b_a5_a <= ww_po_asub_amem5_arom_rtl_0_q_b(5);
po_asub_amem5_arom_rtl_0_aq_b_a6_a <= ww_po_asub_amem5_arom_rtl_0_q_b(6);
po_asub_amem5_arom_rtl_0_aq_b_a7_a <= ww_po_asub_amem5_arom_rtl_0_q_b(7);

po_asub_amem5_arom_rtl_0_aeccstatus_a0_a <= ww_po_asub_amem5_arom_rtl_0_eccstatus(0);
po_asub_amem5_arom_rtl_0_aeccstatus_a1_a <= ww_po_asub_amem5_arom_rtl_0_eccstatus(1);
po_asub_amem5_arom_rtl_0_aeccstatus_a2_a <= ww_po_asub_amem5_arom_rtl_0_eccstatus(2);

ww_po_asub_amem5_arom_rtl_0_address_b <= (po_areg_add_aq(39) & po_areg_add_aq(38) & po_areg_add_aq(37) & po_areg_add_aq(36) & po_areg_add_aq(35) & po_areg_add_aq(34) & po_areg_add_aq(33) & po_areg_add_aq(32));

ww_po_asub_amem5_arom_rtl_0_address_a <= (po_areg_add_aq(47) & po_areg_add_aq(46) & po_areg_add_aq(45) & po_areg_add_aq(44) & po_areg_add_aq(43) & po_areg_add_aq(42) & po_areg_add_aq(41) & po_areg_add_aq(40));

po_asub_amem7_arom_rtl_0_aq_a_a0_a <= ww_po_asub_amem7_arom_rtl_0_q_a(0);
po_asub_amem7_arom_rtl_0_aq_a_a1_a <= ww_po_asub_amem7_arom_rtl_0_q_a(1);
po_asub_amem7_arom_rtl_0_aq_a_a2_a <= ww_po_asub_amem7_arom_rtl_0_q_a(2);
po_asub_amem7_arom_rtl_0_aq_a_a3_a <= ww_po_asub_amem7_arom_rtl_0_q_a(3);
po_asub_amem7_arom_rtl_0_aq_a_a4_a <= ww_po_asub_amem7_arom_rtl_0_q_a(4);
po_asub_amem7_arom_rtl_0_aq_a_a5_a <= ww_po_asub_amem7_arom_rtl_0_q_a(5);
po_asub_amem7_arom_rtl_0_aq_a_a6_a <= ww_po_asub_amem7_arom_rtl_0_q_a(6);
po_asub_amem7_arom_rtl_0_aq_a_a7_a <= ww_po_asub_amem7_arom_rtl_0_q_a(7);

po_asub_amem7_arom_rtl_0_aq_b_a0_a <= ww_po_asub_amem7_arom_rtl_0_q_b(0);
po_asub_amem7_arom_rtl_0_aq_b_a1_a <= ww_po_asub_amem7_arom_rtl_0_q_b(1);
po_asub_amem7_arom_rtl_0_aq_b_a2_a <= ww_po_asub_amem7_arom_rtl_0_q_b(2);
po_asub_amem7_arom_rtl_0_aq_b_a3_a <= ww_po_asub_amem7_arom_rtl_0_q_b(3);
po_asub_amem7_arom_rtl_0_aq_b_a4_a <= ww_po_asub_amem7_arom_rtl_0_q_b(4);
po_asub_amem7_arom_rtl_0_aq_b_a5_a <= ww_po_asub_amem7_arom_rtl_0_q_b(5);
po_asub_amem7_arom_rtl_0_aq_b_a6_a <= ww_po_asub_amem7_arom_rtl_0_q_b(6);
po_asub_amem7_arom_rtl_0_aq_b_a7_a <= ww_po_asub_amem7_arom_rtl_0_q_b(7);

po_asub_amem7_arom_rtl_0_aeccstatus_a0_a <= ww_po_asub_amem7_arom_rtl_0_eccstatus(0);
po_asub_amem7_arom_rtl_0_aeccstatus_a1_a <= ww_po_asub_amem7_arom_rtl_0_eccstatus(1);
po_asub_amem7_arom_rtl_0_aeccstatus_a2_a <= ww_po_asub_amem7_arom_rtl_0_eccstatus(2);

ww_po_asub_amem7_arom_rtl_0_address_b <= (po_areg_add_aq(7) & po_areg_add_aq(6) & po_areg_add_aq(5) & po_areg_add_aq(4) & po_areg_add_aq(3) & po_areg_add_aq(2) & po_areg_add_aq(1) & po_areg_add_aq(0));

ww_po_asub_amem7_arom_rtl_0_address_a <= (po_areg_add_aq(15) & po_areg_add_aq(14) & po_areg_add_aq(13) & po_areg_add_aq(12) & po_areg_add_aq(11) & po_areg_add_aq(10) & po_areg_add_aq(9) & po_areg_add_aq(8));

po_asub_amem4_arom_rtl_0_aq_a_a0_a <= ww_po_asub_amem4_arom_rtl_0_q_a(0);
po_asub_amem4_arom_rtl_0_aq_a_a1_a <= ww_po_asub_amem4_arom_rtl_0_q_a(1);
po_asub_amem4_arom_rtl_0_aq_a_a2_a <= ww_po_asub_amem4_arom_rtl_0_q_a(2);
po_asub_amem4_arom_rtl_0_aq_a_a3_a <= ww_po_asub_amem4_arom_rtl_0_q_a(3);
po_asub_amem4_arom_rtl_0_aq_a_a4_a <= ww_po_asub_amem4_arom_rtl_0_q_a(4);
po_asub_amem4_arom_rtl_0_aq_a_a5_a <= ww_po_asub_amem4_arom_rtl_0_q_a(5);
po_asub_amem4_arom_rtl_0_aq_a_a6_a <= ww_po_asub_amem4_arom_rtl_0_q_a(6);
po_asub_amem4_arom_rtl_0_aq_a_a7_a <= ww_po_asub_amem4_arom_rtl_0_q_a(7);

po_asub_amem4_arom_rtl_0_aq_b_a0_a <= ww_po_asub_amem4_arom_rtl_0_q_b(0);
po_asub_amem4_arom_rtl_0_aq_b_a1_a <= ww_po_asub_amem4_arom_rtl_0_q_b(1);
po_asub_amem4_arom_rtl_0_aq_b_a2_a <= ww_po_asub_amem4_arom_rtl_0_q_b(2);
po_asub_amem4_arom_rtl_0_aq_b_a3_a <= ww_po_asub_amem4_arom_rtl_0_q_b(3);
po_asub_amem4_arom_rtl_0_aq_b_a4_a <= ww_po_asub_amem4_arom_rtl_0_q_b(4);
po_asub_amem4_arom_rtl_0_aq_b_a5_a <= ww_po_asub_amem4_arom_rtl_0_q_b(5);
po_asub_amem4_arom_rtl_0_aq_b_a6_a <= ww_po_asub_amem4_arom_rtl_0_q_b(6);
po_asub_amem4_arom_rtl_0_aq_b_a7_a <= ww_po_asub_amem4_arom_rtl_0_q_b(7);

po_asub_amem4_arom_rtl_0_aeccstatus_a0_a <= ww_po_asub_amem4_arom_rtl_0_eccstatus(0);
po_asub_amem4_arom_rtl_0_aeccstatus_a1_a <= ww_po_asub_amem4_arom_rtl_0_eccstatus(1);
po_asub_amem4_arom_rtl_0_aeccstatus_a2_a <= ww_po_asub_amem4_arom_rtl_0_eccstatus(2);

ww_po_asub_amem4_arom_rtl_0_address_b <= (po_areg_add_aq(55) & po_areg_add_aq(54) & po_areg_add_aq(53) & po_areg_add_aq(52) & po_areg_add_aq(51) & po_areg_add_aq(50) & po_areg_add_aq(49) & po_areg_add_aq(48));

ww_po_asub_amem4_arom_rtl_0_address_a <= (po_areg_add_aq(63) & po_areg_add_aq(62) & po_areg_add_aq(61) & po_areg_add_aq(60) & po_areg_add_aq(59) & po_areg_add_aq(58) & po_areg_add_aq(57) & po_areg_add_aq(56));

po_asub_amem1_arom_rtl_0_aq_a_a0_a <= ww_po_asub_amem1_arom_rtl_0_q_a(0);
po_asub_amem1_arom_rtl_0_aq_a_a1_a <= ww_po_asub_amem1_arom_rtl_0_q_a(1);
po_asub_amem1_arom_rtl_0_aq_a_a2_a <= ww_po_asub_amem1_arom_rtl_0_q_a(2);
po_asub_amem1_arom_rtl_0_aq_a_a3_a <= ww_po_asub_amem1_arom_rtl_0_q_a(3);
po_asub_amem1_arom_rtl_0_aq_a_a4_a <= ww_po_asub_amem1_arom_rtl_0_q_a(4);
po_asub_amem1_arom_rtl_0_aq_a_a5_a <= ww_po_asub_amem1_arom_rtl_0_q_a(5);
po_asub_amem1_arom_rtl_0_aq_a_a6_a <= ww_po_asub_amem1_arom_rtl_0_q_a(6);
po_asub_amem1_arom_rtl_0_aq_a_a7_a <= ww_po_asub_amem1_arom_rtl_0_q_a(7);

po_asub_amem1_arom_rtl_0_aq_b_a0_a <= ww_po_asub_amem1_arom_rtl_0_q_b(0);
po_asub_amem1_arom_rtl_0_aq_b_a1_a <= ww_po_asub_amem1_arom_rtl_0_q_b(1);
po_asub_amem1_arom_rtl_0_aq_b_a2_a <= ww_po_asub_amem1_arom_rtl_0_q_b(2);
po_asub_amem1_arom_rtl_0_aq_b_a3_a <= ww_po_asub_amem1_arom_rtl_0_q_b(3);
po_asub_amem1_arom_rtl_0_aq_b_a4_a <= ww_po_asub_amem1_arom_rtl_0_q_b(4);
po_asub_amem1_arom_rtl_0_aq_b_a5_a <= ww_po_asub_amem1_arom_rtl_0_q_b(5);
po_asub_amem1_arom_rtl_0_aq_b_a6_a <= ww_po_asub_amem1_arom_rtl_0_q_b(6);
po_asub_amem1_arom_rtl_0_aq_b_a7_a <= ww_po_asub_amem1_arom_rtl_0_q_b(7);

po_asub_amem1_arom_rtl_0_aeccstatus_a0_a <= ww_po_asub_amem1_arom_rtl_0_eccstatus(0);
po_asub_amem1_arom_rtl_0_aeccstatus_a1_a <= ww_po_asub_amem1_arom_rtl_0_eccstatus(1);
po_asub_amem1_arom_rtl_0_aeccstatus_a2_a <= ww_po_asub_amem1_arom_rtl_0_eccstatus(2);

ww_po_asub_amem1_arom_rtl_0_address_b <= (po_areg_add_aq(103) & po_areg_add_aq(102) & po_areg_add_aq(101) & po_areg_add_aq(100) & po_areg_add_aq(99) & po_areg_add_aq(98) & po_areg_add_aq(97) & po_areg_add_aq(96));

ww_po_asub_amem1_arom_rtl_0_address_a <= (po_areg_add_aq(111) & po_areg_add_aq(110) & po_areg_add_aq(109) & po_areg_add_aq(108) & po_areg_add_aq(107) & po_areg_add_aq(106) & po_areg_add_aq(105) & po_areg_add_aq(104));

po_asub_amem6_arom_rtl_0_aq_a_a0_a <= ww_po_asub_amem6_arom_rtl_0_q_a(0);
po_asub_amem6_arom_rtl_0_aq_a_a1_a <= ww_po_asub_amem6_arom_rtl_0_q_a(1);
po_asub_amem6_arom_rtl_0_aq_a_a2_a <= ww_po_asub_amem6_arom_rtl_0_q_a(2);
po_asub_amem6_arom_rtl_0_aq_a_a3_a <= ww_po_asub_amem6_arom_rtl_0_q_a(3);
po_asub_amem6_arom_rtl_0_aq_a_a4_a <= ww_po_asub_amem6_arom_rtl_0_q_a(4);
po_asub_amem6_arom_rtl_0_aq_a_a5_a <= ww_po_asub_amem6_arom_rtl_0_q_a(5);
po_asub_amem6_arom_rtl_0_aq_a_a6_a <= ww_po_asub_amem6_arom_rtl_0_q_a(6);
po_asub_amem6_arom_rtl_0_aq_a_a7_a <= ww_po_asub_amem6_arom_rtl_0_q_a(7);

po_asub_amem6_arom_rtl_0_aq_b_a0_a <= ww_po_asub_amem6_arom_rtl_0_q_b(0);
po_asub_amem6_arom_rtl_0_aq_b_a1_a <= ww_po_asub_amem6_arom_rtl_0_q_b(1);
po_asub_amem6_arom_rtl_0_aq_b_a2_a <= ww_po_asub_amem6_arom_rtl_0_q_b(2);
po_asub_amem6_arom_rtl_0_aq_b_a3_a <= ww_po_asub_amem6_arom_rtl_0_q_b(3);
po_asub_amem6_arom_rtl_0_aq_b_a4_a <= ww_po_asub_amem6_arom_rtl_0_q_b(4);
po_asub_amem6_arom_rtl_0_aq_b_a5_a <= ww_po_asub_amem6_arom_rtl_0_q_b(5);
po_asub_amem6_arom_rtl_0_aq_b_a6_a <= ww_po_asub_amem6_arom_rtl_0_q_b(6);
po_asub_amem6_arom_rtl_0_aq_b_a7_a <= ww_po_asub_amem6_arom_rtl_0_q_b(7);

po_asub_amem6_arom_rtl_0_aeccstatus_a0_a <= ww_po_asub_amem6_arom_rtl_0_eccstatus(0);
po_asub_amem6_arom_rtl_0_aeccstatus_a1_a <= ww_po_asub_amem6_arom_rtl_0_eccstatus(1);
po_asub_amem6_arom_rtl_0_aeccstatus_a2_a <= ww_po_asub_amem6_arom_rtl_0_eccstatus(2);

ww_po_asub_amem6_arom_rtl_0_address_b <= (po_areg_add_aq(23) & po_areg_add_aq(22) & po_areg_add_aq(21) & po_areg_add_aq(20) & po_areg_add_aq(19) & po_areg_add_aq(18) & po_areg_add_aq(17) & po_areg_add_aq(16));

ww_po_asub_amem6_arom_rtl_0_address_a <= (po_areg_add_aq(31) & po_areg_add_aq(30) & po_areg_add_aq(29) & po_areg_add_aq(28) & po_areg_add_aq(27) & po_areg_add_aq(26) & po_areg_add_aq(25) & po_areg_add_aq(24));

po_akeyGen_amem0_arom_rtl_0_aq_a_a0_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_a(0);
po_akeyGen_amem0_arom_rtl_0_aq_a_a1_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_a(1);
po_akeyGen_amem0_arom_rtl_0_aq_a_a2_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_a(2);
po_akeyGen_amem0_arom_rtl_0_aq_a_a3_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_a(3);
po_akeyGen_amem0_arom_rtl_0_aq_a_a4_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_a(4);
po_akeyGen_amem0_arom_rtl_0_aq_a_a5_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_a(5);
po_akeyGen_amem0_arom_rtl_0_aq_a_a6_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_a(6);
po_akeyGen_amem0_arom_rtl_0_aq_a_a7_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_a(7);

po_akeyGen_amem0_arom_rtl_0_aq_b_a0_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_b(0);
po_akeyGen_amem0_arom_rtl_0_aq_b_a1_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_b(1);
po_akeyGen_amem0_arom_rtl_0_aq_b_a2_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_b(2);
po_akeyGen_amem0_arom_rtl_0_aq_b_a3_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_b(3);
po_akeyGen_amem0_arom_rtl_0_aq_b_a4_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_b(4);
po_akeyGen_amem0_arom_rtl_0_aq_b_a5_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_b(5);
po_akeyGen_amem0_arom_rtl_0_aq_b_a6_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_b(6);
po_akeyGen_amem0_arom_rtl_0_aq_b_a7_a <= ww_po_akeyGen_amem0_arom_rtl_0_q_b(7);

po_akeyGen_amem0_arom_rtl_0_aeccstatus_a0_a <= ww_po_akeyGen_amem0_arom_rtl_0_eccstatus(0);
po_akeyGen_amem0_arom_rtl_0_aeccstatus_a1_a <= ww_po_akeyGen_amem0_arom_rtl_0_eccstatus(1);
po_akeyGen_amem0_arom_rtl_0_aeccstatus_a2_a <= ww_po_akeyGen_amem0_arom_rtl_0_eccstatus(2);

ww_po_akeyGen_amem0_arom_rtl_0_address_a <= (po_areg_key_aq(23) & po_areg_key_aq(22) & po_areg_key_aq(21) & po_areg_key_aq(20) & po_areg_key_aq(19) & po_areg_key_aq(18) & po_areg_key_aq(17) & po_areg_key_aq(16));

ww_po_akeyGen_amem0_arom_rtl_0_address_b <= (po_areg_key_aq(15) & po_areg_key_aq(14) & po_areg_key_aq(13) & po_areg_key_aq(12) & po_areg_key_aq(11) & po_areg_key_aq(10) & po_areg_key_aq(9) & po_areg_key_aq(8));

po_asub_amem0_arom_rtl_0_aq_a_a0_a <= ww_po_asub_amem0_arom_rtl_0_q_a(0);
po_asub_amem0_arom_rtl_0_aq_a_a1_a <= ww_po_asub_amem0_arom_rtl_0_q_a(1);
po_asub_amem0_arom_rtl_0_aq_a_a2_a <= ww_po_asub_amem0_arom_rtl_0_q_a(2);
po_asub_amem0_arom_rtl_0_aq_a_a3_a <= ww_po_asub_amem0_arom_rtl_0_q_a(3);
po_asub_amem0_arom_rtl_0_aq_a_a4_a <= ww_po_asub_amem0_arom_rtl_0_q_a(4);
po_asub_amem0_arom_rtl_0_aq_a_a5_a <= ww_po_asub_amem0_arom_rtl_0_q_a(5);
po_asub_amem0_arom_rtl_0_aq_a_a6_a <= ww_po_asub_amem0_arom_rtl_0_q_a(6);
po_asub_amem0_arom_rtl_0_aq_a_a7_a <= ww_po_asub_amem0_arom_rtl_0_q_a(7);

po_asub_amem0_arom_rtl_0_aq_b_a0_a <= ww_po_asub_amem0_arom_rtl_0_q_b(0);
po_asub_amem0_arom_rtl_0_aq_b_a1_a <= ww_po_asub_amem0_arom_rtl_0_q_b(1);
po_asub_amem0_arom_rtl_0_aq_b_a2_a <= ww_po_asub_amem0_arom_rtl_0_q_b(2);
po_asub_amem0_arom_rtl_0_aq_b_a3_a <= ww_po_asub_amem0_arom_rtl_0_q_b(3);
po_asub_amem0_arom_rtl_0_aq_b_a4_a <= ww_po_asub_amem0_arom_rtl_0_q_b(4);
po_asub_amem0_arom_rtl_0_aq_b_a5_a <= ww_po_asub_amem0_arom_rtl_0_q_b(5);
po_asub_amem0_arom_rtl_0_aq_b_a6_a <= ww_po_asub_amem0_arom_rtl_0_q_b(6);
po_asub_amem0_arom_rtl_0_aq_b_a7_a <= ww_po_asub_amem0_arom_rtl_0_q_b(7);

po_asub_amem0_arom_rtl_0_aeccstatus_a0_a <= ww_po_asub_amem0_arom_rtl_0_eccstatus(0);
po_asub_amem0_arom_rtl_0_aeccstatus_a1_a <= ww_po_asub_amem0_arom_rtl_0_eccstatus(1);
po_asub_amem0_arom_rtl_0_aeccstatus_a2_a <= ww_po_asub_amem0_arom_rtl_0_eccstatus(2);

ww_po_asub_amem0_arom_rtl_0_address_b <= (po_areg_add_aq(119) & po_areg_add_aq(118) & po_areg_add_aq(117) & po_areg_add_aq(116) & po_areg_add_aq(115) & po_areg_add_aq(114) & po_areg_add_aq(113) & po_areg_add_aq(112));

ww_po_asub_amem0_arom_rtl_0_address_a <= (po_areg_add_aq(127) & po_areg_add_aq(126) & po_areg_add_aq(125) & po_areg_add_aq(124) & po_areg_add_aq(123) & po_areg_add_aq(122) & po_areg_add_aq(121) & po_areg_add_aq(120));

po_asub_amem3_arom_rtl_0_aq_a_a0_a <= ww_po_asub_amem3_arom_rtl_0_q_a(0);
po_asub_amem3_arom_rtl_0_aq_a_a1_a <= ww_po_asub_amem3_arom_rtl_0_q_a(1);
po_asub_amem3_arom_rtl_0_aq_a_a2_a <= ww_po_asub_amem3_arom_rtl_0_q_a(2);
po_asub_amem3_arom_rtl_0_aq_a_a3_a <= ww_po_asub_amem3_arom_rtl_0_q_a(3);
po_asub_amem3_arom_rtl_0_aq_a_a4_a <= ww_po_asub_amem3_arom_rtl_0_q_a(4);
po_asub_amem3_arom_rtl_0_aq_a_a5_a <= ww_po_asub_amem3_arom_rtl_0_q_a(5);
po_asub_amem3_arom_rtl_0_aq_a_a6_a <= ww_po_asub_amem3_arom_rtl_0_q_a(6);
po_asub_amem3_arom_rtl_0_aq_a_a7_a <= ww_po_asub_amem3_arom_rtl_0_q_a(7);

po_asub_amem3_arom_rtl_0_aq_b_a0_a <= ww_po_asub_amem3_arom_rtl_0_q_b(0);
po_asub_amem3_arom_rtl_0_aq_b_a1_a <= ww_po_asub_amem3_arom_rtl_0_q_b(1);
po_asub_amem3_arom_rtl_0_aq_b_a2_a <= ww_po_asub_amem3_arom_rtl_0_q_b(2);
po_asub_amem3_arom_rtl_0_aq_b_a3_a <= ww_po_asub_amem3_arom_rtl_0_q_b(3);
po_asub_amem3_arom_rtl_0_aq_b_a4_a <= ww_po_asub_amem3_arom_rtl_0_q_b(4);
po_asub_amem3_arom_rtl_0_aq_b_a5_a <= ww_po_asub_amem3_arom_rtl_0_q_b(5);
po_asub_amem3_arom_rtl_0_aq_b_a6_a <= ww_po_asub_amem3_arom_rtl_0_q_b(6);
po_asub_amem3_arom_rtl_0_aq_b_a7_a <= ww_po_asub_amem3_arom_rtl_0_q_b(7);

po_asub_amem3_arom_rtl_0_aeccstatus_a0_a <= ww_po_asub_amem3_arom_rtl_0_eccstatus(0);
po_asub_amem3_arom_rtl_0_aeccstatus_a1_a <= ww_po_asub_amem3_arom_rtl_0_eccstatus(1);
po_asub_amem3_arom_rtl_0_aeccstatus_a2_a <= ww_po_asub_amem3_arom_rtl_0_eccstatus(2);

ww_po_asub_amem3_arom_rtl_0_address_b <= (po_areg_add_aq(71) & po_areg_add_aq(70) & po_areg_add_aq(69) & po_areg_add_aq(68) & po_areg_add_aq(67) & po_areg_add_aq(66) & po_areg_add_aq(65) & po_areg_add_aq(64));

ww_po_asub_amem3_arom_rtl_0_address_a <= (po_areg_add_aq(79) & po_areg_add_aq(78) & po_areg_add_aq(77) & po_areg_add_aq(76) & po_areg_add_aq(75) & po_areg_add_aq(74) & po_areg_add_aq(73) & po_areg_add_aq(72));

po_akeyGen_amem1_arom_rtl_0_aq_a_a0_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_a(0);
po_akeyGen_amem1_arom_rtl_0_aq_a_a1_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_a(1);
po_akeyGen_amem1_arom_rtl_0_aq_a_a2_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_a(2);
po_akeyGen_amem1_arom_rtl_0_aq_a_a3_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_a(3);
po_akeyGen_amem1_arom_rtl_0_aq_a_a4_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_a(4);
po_akeyGen_amem1_arom_rtl_0_aq_a_a5_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_a(5);
po_akeyGen_amem1_arom_rtl_0_aq_a_a6_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_a(6);
po_akeyGen_amem1_arom_rtl_0_aq_a_a7_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_a(7);

po_akeyGen_amem1_arom_rtl_0_aq_b_a0_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_b(0);
po_akeyGen_amem1_arom_rtl_0_aq_b_a1_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_b(1);
po_akeyGen_amem1_arom_rtl_0_aq_b_a2_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_b(2);
po_akeyGen_amem1_arom_rtl_0_aq_b_a3_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_b(3);
po_akeyGen_amem1_arom_rtl_0_aq_b_a4_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_b(4);
po_akeyGen_amem1_arom_rtl_0_aq_b_a5_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_b(5);
po_akeyGen_amem1_arom_rtl_0_aq_b_a6_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_b(6);
po_akeyGen_amem1_arom_rtl_0_aq_b_a7_a <= ww_po_akeyGen_amem1_arom_rtl_0_q_b(7);

po_akeyGen_amem1_arom_rtl_0_aeccstatus_a0_a <= ww_po_akeyGen_amem1_arom_rtl_0_eccstatus(0);
po_akeyGen_amem1_arom_rtl_0_aeccstatus_a1_a <= ww_po_akeyGen_amem1_arom_rtl_0_eccstatus(1);
po_akeyGen_amem1_arom_rtl_0_aeccstatus_a2_a <= ww_po_akeyGen_amem1_arom_rtl_0_eccstatus(2);

ww_po_akeyGen_amem1_arom_rtl_0_address_a <= (po_areg_key_aq(7) & po_areg_key_aq(6) & po_areg_key_aq(5) & po_areg_key_aq(4) & po_areg_key_aq(3) & po_areg_key_aq(2) & po_areg_key_aq(1) & po_areg_key_aq(0));

ww_po_akeyGen_amem1_arom_rtl_0_address_b <= (po_areg_key_aq(31) & po_areg_key_aq(30) & po_areg_key_aq(29) & po_areg_key_aq(28) & po_areg_key_aq(27) & po_areg_key_aq(26) & po_areg_key_aq(25) & po_areg_key_aq(24));

po_asub_amem2_arom_rtl_0_aq_a_a0_a <= ww_po_asub_amem2_arom_rtl_0_q_a(0);
po_asub_amem2_arom_rtl_0_aq_a_a1_a <= ww_po_asub_amem2_arom_rtl_0_q_a(1);
po_asub_amem2_arom_rtl_0_aq_a_a2_a <= ww_po_asub_amem2_arom_rtl_0_q_a(2);
po_asub_amem2_arom_rtl_0_aq_a_a3_a <= ww_po_asub_amem2_arom_rtl_0_q_a(3);
po_asub_amem2_arom_rtl_0_aq_a_a4_a <= ww_po_asub_amem2_arom_rtl_0_q_a(4);
po_asub_amem2_arom_rtl_0_aq_a_a5_a <= ww_po_asub_amem2_arom_rtl_0_q_a(5);
po_asub_amem2_arom_rtl_0_aq_a_a6_a <= ww_po_asub_amem2_arom_rtl_0_q_a(6);
po_asub_amem2_arom_rtl_0_aq_a_a7_a <= ww_po_asub_amem2_arom_rtl_0_q_a(7);

po_asub_amem2_arom_rtl_0_aq_b_a0_a <= ww_po_asub_amem2_arom_rtl_0_q_b(0);
po_asub_amem2_arom_rtl_0_aq_b_a1_a <= ww_po_asub_amem2_arom_rtl_0_q_b(1);
po_asub_amem2_arom_rtl_0_aq_b_a2_a <= ww_po_asub_amem2_arom_rtl_0_q_b(2);
po_asub_amem2_arom_rtl_0_aq_b_a3_a <= ww_po_asub_amem2_arom_rtl_0_q_b(3);
po_asub_amem2_arom_rtl_0_aq_b_a4_a <= ww_po_asub_amem2_arom_rtl_0_q_b(4);
po_asub_amem2_arom_rtl_0_aq_b_a5_a <= ww_po_asub_amem2_arom_rtl_0_q_b(5);
po_asub_amem2_arom_rtl_0_aq_b_a6_a <= ww_po_asub_amem2_arom_rtl_0_q_b(6);
po_asub_amem2_arom_rtl_0_aq_b_a7_a <= ww_po_asub_amem2_arom_rtl_0_q_b(7);

po_asub_amem2_arom_rtl_0_aeccstatus_a0_a <= ww_po_asub_amem2_arom_rtl_0_eccstatus(0);
po_asub_amem2_arom_rtl_0_aeccstatus_a1_a <= ww_po_asub_amem2_arom_rtl_0_eccstatus(1);
po_asub_amem2_arom_rtl_0_aeccstatus_a2_a <= ww_po_asub_amem2_arom_rtl_0_eccstatus(2);

ww_po_asub_amem2_arom_rtl_0_address_b <= (po_areg_add_aq(87) & po_areg_add_aq(86) & po_areg_add_aq(85) & po_areg_add_aq(84) & po_areg_add_aq(83) & po_areg_add_aq(82) & po_areg_add_aq(81) & po_areg_add_aq(80));

ww_po_asub_amem2_arom_rtl_0_address_a <= (po_areg_add_aq(95) & po_areg_add_aq(94) & po_areg_add_aq(93) & po_areg_add_aq(92) & po_areg_add_aq(91) & po_areg_add_aq(90) & po_areg_add_aq(89) & po_areg_add_aq(88));

osc_clk_ainputclkctrl_INCLK_bus <= (vcc & vcc & vcc & osc_clk_ainput_o);
ALT_INV_pc_aWideOr8_acombout <= NOT pc_aWideOr8_acombout;
ALT_INV_pc_aWideOr9_acombout <= NOT pc_aWideOr9_acombout;
ALT_INV_pc_aWideOr10_a0_combout <= NOT pc_aWideOr10_a0_combout;
ALT_INV_pc_aSelector4_a2_combout <= NOT pc_aSelector4_a2_combout;
po_asub_amem5_arom_rtl_0 : altsyncram_8
PORT MAP (
	q_a => ww_po_asub_amem5_arom_rtl_0_q_a,
	q_b => ww_po_asub_amem5_arom_rtl_0_q_b,
	eccstatus => ww_po_asub_amem5_arom_rtl_0_eccstatus,
	address_b => ww_po_asub_amem5_arom_rtl_0_address_b,
	address_a => ww_po_asub_amem5_arom_rtl_0_address_a,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_asub_amem7_arom_rtl_0 : altsyncram_10
PORT MAP (
	q_a => ww_po_asub_amem7_arom_rtl_0_q_a,
	q_b => ww_po_asub_amem7_arom_rtl_0_q_b,
	eccstatus => ww_po_asub_amem7_arom_rtl_0_eccstatus,
	address_b => ww_po_asub_amem7_arom_rtl_0_address_b,
	address_a => ww_po_asub_amem7_arom_rtl_0_address_a,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_asub_amem4_arom_rtl_0 : altsyncram_7
PORT MAP (
	q_a => ww_po_asub_amem4_arom_rtl_0_q_a,
	q_b => ww_po_asub_amem4_arom_rtl_0_q_b,
	eccstatus => ww_po_asub_amem4_arom_rtl_0_eccstatus,
	address_b => ww_po_asub_amem4_arom_rtl_0_address_b,
	address_a => ww_po_asub_amem4_arom_rtl_0_address_a,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_asub_amem1_arom_rtl_0 : altsyncram_4
PORT MAP (
	q_a => ww_po_asub_amem1_arom_rtl_0_q_a,
	q_b => ww_po_asub_amem1_arom_rtl_0_q_b,
	eccstatus => ww_po_asub_amem1_arom_rtl_0_eccstatus,
	address_b => ww_po_asub_amem1_arom_rtl_0_address_b,
	address_a => ww_po_asub_amem1_arom_rtl_0_address_a,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_asub_amem6_arom_rtl_0 : altsyncram_9
PORT MAP (
	q_a => ww_po_asub_amem6_arom_rtl_0_q_a,
	q_b => ww_po_asub_amem6_arom_rtl_0_q_b,
	eccstatus => ww_po_asub_amem6_arom_rtl_0_eccstatus,
	address_b => ww_po_asub_amem6_arom_rtl_0_address_b,
	address_a => ww_po_asub_amem6_arom_rtl_0_address_a,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_akeyGen_amem0_arom_rtl_0 : altsyncram_1
PORT MAP (
	q_a => ww_po_akeyGen_amem0_arom_rtl_0_q_a,
	q_b => ww_po_akeyGen_amem0_arom_rtl_0_q_b,
	eccstatus => ww_po_akeyGen_amem0_arom_rtl_0_eccstatus,
	address_a => ww_po_akeyGen_amem0_arom_rtl_0_address_a,
	address_b => ww_po_akeyGen_amem0_arom_rtl_0_address_b,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_asub_amem0_arom_rtl_0 : altsyncram_3
PORT MAP (
	q_a => ww_po_asub_amem0_arom_rtl_0_q_a,
	q_b => ww_po_asub_amem0_arom_rtl_0_q_b,
	eccstatus => ww_po_asub_amem0_arom_rtl_0_eccstatus,
	address_b => ww_po_asub_amem0_arom_rtl_0_address_b,
	address_a => ww_po_asub_amem0_arom_rtl_0_address_a,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_asub_amem3_arom_rtl_0 : altsyncram_6
PORT MAP (
	q_a => ww_po_asub_amem3_arom_rtl_0_q_a,
	q_b => ww_po_asub_amem3_arom_rtl_0_q_b,
	eccstatus => ww_po_asub_amem3_arom_rtl_0_eccstatus,
	address_b => ww_po_asub_amem3_arom_rtl_0_address_b,
	address_a => ww_po_asub_amem3_arom_rtl_0_address_a,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_akeyGen_amem1_arom_rtl_0 : altsyncram_2
PORT MAP (
	q_a => ww_po_akeyGen_amem1_arom_rtl_0_q_a,
	q_b => ww_po_akeyGen_amem1_arom_rtl_0_q_b,
	eccstatus => ww_po_akeyGen_amem1_arom_rtl_0_eccstatus,
	address_a => ww_po_akeyGen_amem1_arom_rtl_0_address_a,
	address_b => ww_po_akeyGen_amem1_arom_rtl_0_address_b,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
po_asub_amem2_arom_rtl_0 : altsyncram_5
PORT MAP (
	q_a => ww_po_asub_amem2_arom_rtl_0_q_a,
	q_b => ww_po_asub_amem2_arom_rtl_0_q_b,
	eccstatus => ww_po_asub_amem2_arom_rtl_0_eccstatus,
	address_b => ww_po_asub_amem2_arom_rtl_0_address_b,
	address_a => ww_po_asub_amem2_arom_rtl_0_address_a,
	clock0 => osc_clk_ainput_o,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: FF_X35_Y29_N23
po_areg_key_aq_a19_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(19),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(19));

-- Location: FF_X31_Y29_N27
po_areg_key_aq_a22_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(22),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(22));

-- Location: FF_X34_Y27_N23
po_areg_key_aq_a9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(9),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(9));

-- Location: FF_X31_Y27_N27
po_areg_key_aq_a11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(11),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(11));

-- Location: FF_X35_Y26_N13
po_areg_key_aq_a25_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(25),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(25));

-- Location: FF_X34_Y22_N3
po_areg_mix_aq_a20_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a20_a_afeeder_combout,
	asdata => po_areg_sub_aq(116),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(20));

-- Location: FF_X31_Y22_N3
po_areg_mix_aq_a27_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a27_a_afeeder_combout,
	asdata => po_areg_sub_aq(27),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(27));

-- Location: FF_X30_Y24_N1
po_areg_mix_aq_a31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a31_a_afeeder_combout,
	asdata => po_areg_sub_aq(31),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(31));

-- Location: FF_X36_Y24_N5
po_areg_mix_aq_a49_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a49_a_afeeder_combout,
	asdata => po_areg_sub_aq(17),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(49));

-- Location: FF_X37_Y24_N13
po_areg_mix_aq_a50_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(18),
	asdata => po_areg_sub_aq(18),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(50));

-- Location: FF_X32_Y24_N17
po_areg_mix_aq_a55_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a55_a_afeeder_combout,
	asdata => po_areg_sub_aq(23),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(55));

-- Location: FF_X36_Y24_N9
po_areg_mix_aq_a57_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a57_a_afeeder_combout,
	asdata => po_areg_sub_aq(57),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(57));

-- Location: FF_X32_Y24_N1
po_areg_mix_aq_a59_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a59_a_afeeder_combout,
	asdata => po_areg_sub_aq(59),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(59));

-- Location: FF_X36_Y24_N3
po_areg_mix_aq_a60_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a60_a_afeeder_combout,
	asdata => po_areg_sub_aq(60),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(60));

-- Location: FF_X34_Y25_N25
po_areg_mix_aq_a63_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a63_a_afeeder_combout,
	asdata => po_areg_sub_aq(63),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(63));

-- Location: FF_X35_Y23_N19
po_areg_mix_aq_a75_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a75_a_afeeder_combout,
	asdata => po_areg_sub_aq(11),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(75));

-- Location: FF_X35_Y23_N29
po_areg_mix_aq_a77_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(13),
	asdata => po_areg_sub_aq(13),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(77));

-- Location: FF_X34_Y24_N9
po_areg_mix_aq_a78_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(14),
	asdata => po_areg_sub_aq(14),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(78));

-- Location: FF_X34_Y25_N15
po_areg_mix_aq_a81_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a81_a_afeeder_combout,
	asdata => po_areg_sub_aq(49),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(81));

-- Location: FF_X34_Y24_N25
po_areg_mix_aq_a82_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(18),
	asdata => po_areg_sub_aq(50),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(82));

-- Location: FF_X36_Y23_N31
po_areg_mix_aq_a84_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a84_a_afeeder_combout,
	asdata => po_areg_sub_aq(52),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(84));

-- Location: FF_X34_Y21_N21
po_areg_mix_aq_a86_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(22),
	asdata => po_areg_sub_aq(54),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(86));

-- Location: FF_X35_Y23_N15
po_areg_mix_aq_a87_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a87_a_afeeder_combout,
	asdata => po_areg_sub_aq(55),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(87));

-- Location: FF_X34_Y20_N3
po_areg_mix_aq_a97_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a97_a_afeeder_combout,
	asdata => po_areg_sub_aq(1),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(97));

-- Location: FF_X34_Y22_N5
po_areg_mix_aq_a101_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(5),
	asdata => po_areg_sub_aq(5),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(101));

-- Location: FF_X36_Y21_N13
po_areg_mix_aq_a111_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a111_a_afeeder_combout,
	asdata => po_areg_sub_aq(47),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(111));

-- Location: FF_X31_Y20_N23
po_areg_mix_aq_a112_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(16),
	asdata => po_areg_sub_aq(80),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(112));

-- Location: FF_X34_Y19_N1
po_areg_mix_aq_a116_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a116_a_afeeder_combout,
	asdata => po_areg_sub_aq(84),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(116));

-- Location: FF_X32_Y21_N1
po_areg_mix_aq_a118_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(22),
	asdata => po_areg_sub_aq(86),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(118));

-- Location: FF_X34_Y23_N21
po_areg_mix_aq_a120_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a120_a_afeeder_combout,
	asdata => po_areg_sub_aq(120),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(120));

-- Location: FF_X31_Y20_N5
po_areg_mix_aq_a124_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a124_a_afeeder_combout,
	asdata => po_areg_sub_aq(124),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(124));

-- Location: FF_X35_Y27_N29
po_areg_key_aq_a35_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a35_a_a3_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(35));

-- Location: FF_X31_Y27_N15
po_areg_key_aq_a43_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a43_a_a11_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(43));

-- Location: FF_X31_Y29_N9
po_areg_key_aq_a69_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a69_a_a37_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(69));

-- Location: FF_X37_Y28_N17
po_areg_key_aq_a114_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a114_a_a82_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(114));

-- Location: FF_X35_Y28_N3
po_areg_key_aq_a117_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a117_a_a85_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(117));

-- Location: FF_X36_Y26_N15
po_areg_key_aq_a121_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a121_a_a89_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(121));

-- Location: FF_X32_Y28_N11
po_akeyGen_areg_aq_a17_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(17),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(17));

-- Location: LCCOMB_X35_Y29_N22
po_akeyGen_aroundkey_out_a19_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(19) = po_akeyGen_areg_aq(19) $ (po_areg_key_aq(83) $ (po_areg_key_aq(19) $ (po_areg_key_aq(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(19),
	datab => po_areg_key_aq(83),
	datac => po_areg_key_aq(19),
	datad => po_areg_key_aq(51),
	combout => po_akeyGen_aroundkey_out(19));

-- Location: LCCOMB_X31_Y29_N26
po_akeyGen_aroundkey_out_a22_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(22) = po_areg_key_aq(86) $ (po_areg_key_aq(54) $ (po_areg_key_aq(22) $ (po_akeyGen_areg_aq(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(86),
	datab => po_areg_key_aq(54),
	datac => po_areg_key_aq(22),
	datad => po_akeyGen_areg_aq(22),
	combout => po_akeyGen_aroundkey_out(22));

-- Location: LCCOMB_X34_Y27_N22
po_akeyGen_aroundkey_out_a9_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(9) = po_akeyGen_areg_aq(9) $ (po_areg_key_aq(41) $ (po_areg_key_aq(9) $ (po_areg_key_aq(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(9),
	datab => po_areg_key_aq(41),
	datac => po_areg_key_aq(9),
	datad => po_areg_key_aq(73),
	combout => po_akeyGen_aroundkey_out(9));

-- Location: LCCOMB_X31_Y27_N26
po_akeyGen_aroundkey_out_a11_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(11) = po_areg_key_aq(75) $ (po_areg_key_aq(43) $ (po_areg_key_aq(11) $ (po_akeyGen_areg_aq(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(75),
	datab => po_areg_key_aq(43),
	datac => po_areg_key_aq(11),
	datad => po_akeyGen_areg_aq(11),
	combout => po_akeyGen_aroundkey_out(11));

-- Location: LCCOMB_X35_Y26_N12
po_akeyGen_aroundkey_out_a25_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(25) = po_areg_key_aq(57) $ (po_akeyGen_areg_aq(25) $ (po_areg_key_aq(25) $ (po_areg_key_aq(89))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(57),
	datab => po_akeyGen_areg_aq(25),
	datac => po_areg_key_aq(25),
	datad => po_areg_key_aq(89),
	combout => po_akeyGen_aroundkey_out(25));

-- Location: LCCOMB_X31_Y23_N10
po_amix3_aword_state_out_a2_a_a10 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a2_a_a10_combout = po_areg_shift_aq(26) $ (po_areg_shift_aq(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_shift_aq(26),
	datad => po_areg_shift_aq(1),
	combout => po_amix3_aword_state_out_a2_a_a10_combout);

-- Location: LCCOMB_X31_Y23_N20
po_amix3_aword_state_out_a3_a_a12 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a3_a_a12_combout = po_areg_shift_aq(2) $ (po_areg_shift_aq(27) $ (po_areg_shift_aq(31) $ (po_areg_shift_aq(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(2),
	datab => po_areg_shift_aq(27),
	datac => po_areg_shift_aq(31),
	datad => po_areg_shift_aq(7),
	combout => po_amix3_aword_state_out_a3_a_a12_combout);

-- Location: LCCOMB_X30_Y22_N18
po_amix3_aword_state_out_a4_a_a13 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a4_a_a13_combout = po_areg_shift_aq(31) $ (po_areg_shift_aq(27) $ (po_areg_shift_aq(12) $ (!po_areg_shift_aq(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(31),
	datab => po_areg_shift_aq(27),
	datac => po_areg_shift_aq(12),
	datad => po_areg_shift_aq(7),
	combout => po_amix3_aword_state_out_a4_a_a13_combout);

-- Location: LCCOMB_X30_Y22_N20
po_amix3_aword_state_out_a4_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(4) = po_areg_shift_aq(28) $ (po_amix3_aword_state_out_a4_a_a13_combout $ (po_areg_shift_aq(20) $ (!po_areg_shift_aq(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(28),
	datab => po_amix3_aword_state_out_a4_a_a13_combout,
	datac => po_areg_shift_aq(20),
	datad => po_areg_shift_aq(3),
	combout => po_amix3_aword_state_out(4));

-- Location: FF_X31_Y24_N19
po_areg_shift_aq_a30_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a30_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(30));

-- Location: LCCOMB_X30_Y22_N16
po_amix3_aword_state_out_a20_a_a25 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a20_a_a25_combout = po_areg_shift_aq(4) $ (po_areg_shift_aq(19) $ (po_areg_shift_aq(12) $ (po_areg_shift_aq(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(4),
	datab => po_areg_shift_aq(19),
	datac => po_areg_shift_aq(12),
	datad => po_areg_shift_aq(11),
	combout => po_amix3_aword_state_out_a20_a_a25_combout);

-- Location: LCCOMB_X30_Y22_N6
po_amix3_aword_state_out_a20_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(20) = po_areg_shift_aq(28) $ (po_areg_shift_aq(15) $ (po_areg_shift_aq(23) $ (po_amix3_aword_state_out_a20_a_a25_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(28),
	datab => po_areg_shift_aq(15),
	datac => po_areg_shift_aq(23),
	datad => po_amix3_aword_state_out_a20_a_a25_combout,
	combout => po_amix3_aword_state_out(20));

-- Location: LCCOMB_X34_Y22_N20
po_amix3_aword_state_out_a29_a_a26 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a29_a_a26_combout = po_areg_shift_aq(13) $ (po_areg_shift_aq(5) $ (po_areg_shift_aq(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(13),
	datac => po_areg_shift_aq(5),
	datad => po_areg_shift_aq(20),
	combout => po_amix3_aword_state_out_a29_a_a26_combout);

-- Location: LCCOMB_X32_Y22_N2
po_amix3_aword_state_out_a27_a_a28 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a27_a_a28_combout = po_areg_shift_aq(23) $ (po_areg_shift_aq(11) $ (po_areg_shift_aq(3) $ (!po_areg_shift_aq(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(23),
	datab => po_areg_shift_aq(11),
	datac => po_areg_shift_aq(3),
	datad => po_areg_shift_aq(18),
	combout => po_amix3_aword_state_out_a27_a_a28_combout);

-- Location: LCCOMB_X31_Y22_N26
po_amix3_aword_state_out_a27_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(27) = po_amix3_aword_state_out_a27_a_a28_combout $ (po_areg_shift_aq(26) $ (po_areg_shift_aq(31) $ (!po_areg_shift_aq(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out_a27_a_a28_combout,
	datab => po_areg_shift_aq(26),
	datac => po_areg_shift_aq(31),
	datad => po_areg_shift_aq(19),
	combout => po_amix3_aword_state_out(27));

-- Location: LCCOMB_X31_Y24_N12
po_amix3_aword_state_out_a31_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(31) = po_areg_shift_aq(23) $ (po_amix3_aword_state_out_a31_a_a20_combout $ (po_areg_shift_aq(22) $ (po_areg_shift_aq(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(23),
	datab => po_amix3_aword_state_out_a31_a_a20_combout,
	datac => po_areg_shift_aq(22),
	datad => po_areg_shift_aq(30),
	combout => po_amix3_aword_state_out(31));

-- Location: LCCOMB_X35_Y24_N0
po_amix2_aword_state_out_a0_a_a8 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a0_a_a8_combout = po_areg_shift_aq(39) $ (po_areg_shift_aq(56) $ (po_areg_shift_aq(63) $ (po_areg_shift_aq(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(39),
	datab => po_areg_shift_aq(56),
	datac => po_areg_shift_aq(63),
	datad => po_areg_shift_aq(40),
	combout => po_amix2_aword_state_out_a0_a_a8_combout);

-- Location: FF_X35_Y24_N23
po_areg_shift_aq_a49_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(17),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(49));

-- Location: LCCOMB_X35_Y27_N10
po_akeyGen_aroundkey_out_a35_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(35) = po_areg_key_aq(35) $ (po_akeyGen_areg_aq(3) $ (po_areg_key_aq(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(35),
	datac => po_akeyGen_areg_aq(3),
	datad => po_areg_key_aq(67),
	combout => po_akeyGen_aroundkey_out(35));

-- Location: LCCOMB_X35_Y27_N28
po_amux2_aresult_a35_a_a3 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a35_a_a3_combout = (po_akeyGen_aroundkey_out(35)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_aroundkey_out(35),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => pc_aSelector4_a1_combout,
	combout => po_amux2_aresult_a35_a_a3_combout);

-- Location: FF_X31_Y25_N27
po_areg_shift_aq_a54_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(22),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(54));

-- Location: LCCOMB_X35_Y29_N10
po_akeyGen_aroundkey_out_a40_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(40) = po_areg_key_aq(40) $ (po_akeyGen_areg_aq(8) $ (po_areg_key_aq(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(40),
	datab => po_akeyGen_areg_aq(8),
	datac => po_areg_key_aq(72),
	combout => po_akeyGen_aroundkey_out(40));

-- Location: LCCOMB_X31_Y27_N20
po_akeyGen_aroundkey_out_a43_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(43) = po_areg_key_aq(75) $ (po_areg_key_aq(43) $ (po_akeyGen_areg_aq(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(75),
	datac => po_areg_key_aq(43),
	datad => po_akeyGen_areg_aq(11),
	combout => po_akeyGen_aroundkey_out(43));

-- Location: LCCOMB_X31_Y27_N14
po_amux2_aresult_a43_a_a11 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a43_a_a11_combout = (po_akeyGen_aroundkey_out(43) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(43),
	combout => po_amux2_aresult_a43_a_a11_combout);

-- Location: LCCOMB_X36_Y24_N0
po_amix2_aword_state_out_a17_a_a22 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a17_a_a22_combout = po_areg_shift_aq(47) $ (po_areg_shift_aq(55) $ (po_areg_shift_aq(33) $ (!po_areg_shift_aq(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(47),
	datab => po_areg_shift_aq(55),
	datac => po_areg_shift_aq(33),
	datad => po_areg_shift_aq(48),
	combout => po_amix2_aword_state_out_a17_a_a22_combout);

-- Location: LCCOMB_X36_Y24_N22
po_amix2_aword_state_out_a17_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(17) = po_areg_shift_aq(40) $ (po_areg_shift_aq(41) $ (po_areg_shift_aq(57) $ (!po_amix2_aword_state_out_a17_a_a22_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(40),
	datab => po_areg_shift_aq(41),
	datac => po_areg_shift_aq(57),
	datad => po_amix2_aword_state_out_a17_a_a22_combout,
	combout => po_amix2_aword_state_out(17));

-- Location: FF_X34_Y24_N7
po_areg_sub_aq_a17_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a17_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(17));

-- Location: LCCOMB_X35_Y24_N22
po_amix2_aword_state_out_a18_a_a23 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a18_a_a23_combout = po_areg_shift_aq(42) $ (po_areg_shift_aq(41) $ (po_areg_shift_aq(49) $ (po_areg_shift_aq(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(42),
	datab => po_areg_shift_aq(41),
	datac => po_areg_shift_aq(49),
	datad => po_areg_shift_aq(34),
	combout => po_amix2_aword_state_out_a18_a_a23_combout);

-- Location: LCCOMB_X37_Y24_N12
po_amix2_aword_state_out_a18_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(18) = po_areg_shift_aq(58) $ (po_amix2_aword_state_out_a18_a_a23_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(58),
	datad => po_amix2_aword_state_out_a18_a_a23_combout,
	combout => po_amix2_aword_state_out(18));

-- Location: LCCOMB_X31_Y25_N26
po_amix2_aword_state_out_a23_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(23) = po_amix2_aword_state_out_a31_a_a20_combout $ (po_areg_shift_aq(46) $ (po_areg_shift_aq(54) $ (po_areg_shift_aq(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix2_aword_state_out_a31_a_a20_combout,
	datab => po_areg_shift_aq(46),
	datac => po_areg_shift_aq(54),
	datad => po_areg_shift_aq(63),
	combout => po_amix2_aword_state_out(23));

-- Location: LCCOMB_X35_Y24_N12
po_amix2_aword_state_out_a27_a_a28 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a27_a_a28_combout = po_areg_shift_aq(35) $ (po_areg_shift_aq(43) $ (po_areg_shift_aq(50) $ (!po_areg_shift_aq(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(35),
	datab => po_areg_shift_aq(43),
	datac => po_areg_shift_aq(50),
	datad => po_areg_shift_aq(55),
	combout => po_amix2_aword_state_out_a27_a_a28_combout);

-- Location: LCCOMB_X32_Y24_N20
po_amix2_aword_state_out_a27_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(27) = po_areg_shift_aq(63) $ (po_areg_shift_aq(51) $ (po_amix2_aword_state_out_a27_a_a28_combout $ (!po_areg_shift_aq(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(63),
	datab => po_areg_shift_aq(51),
	datac => po_amix2_aword_state_out_a27_a_a28_combout,
	datad => po_areg_shift_aq(58),
	combout => po_amix2_aword_state_out(27));

-- Location: LCCOMB_X31_Y24_N22
po_amix2_aword_state_out_a28_a_a29 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a28_a_a29_combout = po_areg_shift_aq(44) $ (po_areg_shift_aq(51) $ (po_areg_shift_aq(36) $ (!po_areg_shift_aq(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(44),
	datab => po_areg_shift_aq(51),
	datac => po_areg_shift_aq(36),
	datad => po_areg_shift_aq(52),
	combout => po_amix2_aword_state_out_a28_a_a29_combout);

-- Location: LCCOMB_X34_Y24_N16
po_amix2_aword_state_out_a28_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(28) = po_areg_shift_aq(59) $ (po_areg_shift_aq(63) $ (po_areg_shift_aq(55) $ (!po_amix2_aword_state_out_a28_a_a29_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(59),
	datab => po_areg_shift_aq(63),
	datac => po_areg_shift_aq(55),
	datad => po_amix2_aword_state_out_a28_a_a29_combout,
	combout => po_amix2_aword_state_out(28));

-- Location: LCCOMB_X31_Y28_N22
po_akeyGen_aroundkey_out_a62_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(62) = po_areg_key_aq(62) $ (po_areg_key_aq(94) $ (po_akeyGen_areg_aq(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(62),
	datac => po_areg_key_aq(94),
	datad => po_akeyGen_areg_aq(30),
	combout => po_akeyGen_aroundkey_out(62));

-- Location: LCCOMB_X31_Y25_N10
po_amix2_aword_state_out_a31_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(31) = po_areg_shift_aq(55) $ (po_areg_shift_aq(62) $ (po_areg_shift_aq(54) $ (po_amix2_aword_state_out_a31_a_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(55),
	datab => po_areg_shift_aq(62),
	datac => po_areg_shift_aq(54),
	datad => po_amix2_aword_state_out_a31_a_a20_combout,
	combout => po_amix2_aword_state_out(31));

-- Location: LCCOMB_X34_Y27_N14
po_akeyGen_aroundkey_out_a65_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(65) = po_akeyGen_areg_aq(1) $ (po_areg_key_aq(65))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(1),
	datad => po_areg_key_aq(65),
	combout => po_akeyGen_aroundkey_out(65));

-- Location: LCCOMB_X31_Y29_N30
po_akeyGen_aroundkey_out_a66_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(66) = po_areg_key_aq(66) $ (po_akeyGen_areg_aq(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(66),
	datad => po_akeyGen_areg_aq(2),
	combout => po_akeyGen_aroundkey_out(66));

-- Location: FF_X35_Y22_N27
po_areg_shift_aq_a74_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(10),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(74));

-- Location: FF_X35_Y23_N23
po_areg_shift_aq_a84_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a84_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(84));

-- Location: LCCOMB_X31_Y29_N12
po_akeyGen_aroundkey_out_a69_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(69) = po_akeyGen_areg_aq(5) $ (po_areg_key_aq(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(5),
	datac => po_areg_key_aq(69),
	combout => po_akeyGen_aroundkey_out(69));

-- Location: LCCOMB_X31_Y29_N8
po_amux2_aresult_a69_a_a37 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a69_a_a37_combout = (po_akeyGen_aroundkey_out(69)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_aroundkey_out(69),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a69_a_a37_combout);

-- Location: FF_X35_Y20_N7
po_areg_shift_aq_a77_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a77_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(77));

-- Location: FF_X35_Y21_N19
po_areg_shift_aq_a78_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(14),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(78));

-- Location: LCCOMB_X35_Y21_N26
po_amix1_aword_state_out_a11_a_a25 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a11_a_a25_combout = po_areg_shift_aq(66) $ (po_areg_shift_aq(71) $ (po_areg_shift_aq(79) $ (po_areg_shift_aq(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(66),
	datab => po_areg_shift_aq(71),
	datac => po_areg_shift_aq(79),
	datad => po_areg_shift_aq(74),
	combout => po_amix1_aword_state_out_a11_a_a25_combout);

-- Location: LCCOMB_X35_Y21_N24
po_amix1_aword_state_out_a11_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(11) = po_amix1_aword_state_out_a11_a_a25_combout $ (po_areg_shift_aq(91) $ (po_areg_shift_aq(83) $ (po_areg_shift_aq(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix1_aword_state_out_a11_a_a25_combout,
	datab => po_areg_shift_aq(91),
	datac => po_areg_shift_aq(83),
	datad => po_areg_shift_aq(67),
	combout => po_amix1_aword_state_out(11));

-- Location: LCCOMB_X35_Y23_N28
po_amix1_aword_state_out_a13_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(13) = po_areg_shift_aq(76) $ (po_areg_shift_aq(69) $ (po_amix1_aword_state_out_a13_a_a21_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(76),
	datab => po_areg_shift_aq(69),
	datad => po_amix1_aword_state_out_a13_a_a21_combout,
	combout => po_amix1_aword_state_out(13));

-- Location: FF_X34_Y20_N11
po_areg_sub_aq_a13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a13_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(13));

-- Location: LCCOMB_X34_Y24_N8
po_amix1_aword_state_out_a14_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(14) = po_areg_shift_aq(70) $ (po_areg_shift_aq(77) $ (po_amix1_aword_state_out_a6_a_a22_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(70),
	datab => po_areg_shift_aq(77),
	datad => po_amix1_aword_state_out_a6_a_a22_combout,
	combout => po_amix1_aword_state_out(14));

-- Location: FF_X34_Y20_N15
po_areg_sub_aq_a14_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a14_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(14));

-- Location: LCCOMB_X36_Y22_N20
po_amix1_aword_state_out_a17_a_a28 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a17_a_a28_combout = po_areg_shift_aq(79) $ (po_areg_shift_aq(89) $ (po_areg_shift_aq(65) $ (po_areg_shift_aq(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(79),
	datab => po_areg_shift_aq(89),
	datac => po_areg_shift_aq(65),
	datad => po_areg_shift_aq(72),
	combout => po_amix1_aword_state_out_a17_a_a28_combout);

-- Location: LCCOMB_X35_Y22_N26
po_amix1_aword_state_out_a18_a_a29 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a18_a_a29_combout = po_areg_shift_aq(73) $ (po_areg_shift_aq(81) $ (po_areg_shift_aq(74) $ (po_areg_shift_aq(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(73),
	datab => po_areg_shift_aq(81),
	datac => po_areg_shift_aq(74),
	datad => po_areg_shift_aq(66),
	combout => po_amix1_aword_state_out_a18_a_a29_combout);

-- Location: LCCOMB_X34_Y24_N24
po_amix1_aword_state_out_a18_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(18) = po_areg_shift_aq(90) $ (po_amix1_aword_state_out_a18_a_a29_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(90),
	datad => po_amix1_aword_state_out_a18_a_a29_combout,
	combout => po_amix1_aword_state_out(18));

-- Location: LCCOMB_X35_Y22_N20
po_amix1_aword_state_out_a19_a_a30 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a19_a_a30_combout = po_areg_shift_aq(74) $ (po_areg_shift_aq(82) $ (po_areg_shift_aq(75) $ (po_areg_shift_aq(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(74),
	datab => po_areg_shift_aq(82),
	datac => po_areg_shift_aq(75),
	datad => po_areg_shift_aq(67),
	combout => po_amix1_aword_state_out_a19_a_a30_combout);

-- Location: LCCOMB_X34_Y22_N28
po_amix1_aword_state_out_a19_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(19) = po_areg_shift_aq(91) $ (po_areg_shift_aq(87) $ (po_areg_shift_aq(79) $ (po_amix1_aword_state_out_a19_a_a30_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(91),
	datab => po_areg_shift_aq(87),
	datac => po_areg_shift_aq(79),
	datad => po_amix1_aword_state_out_a19_a_a30_combout,
	combout => po_amix1_aword_state_out(19));

-- Location: LCCOMB_X35_Y21_N2
po_amix1_aword_state_out_a20_a_a31 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a20_a_a31_combout = po_areg_shift_aq(76) $ (po_areg_shift_aq(68) $ (po_areg_shift_aq(83) $ (po_areg_shift_aq(75))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(76),
	datab => po_areg_shift_aq(68),
	datac => po_areg_shift_aq(83),
	datad => po_areg_shift_aq(75),
	combout => po_amix1_aword_state_out_a20_a_a31_combout);

-- Location: LCCOMB_X36_Y23_N12
po_amix1_aword_state_out_a20_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(20) = po_areg_shift_aq(87) $ (po_areg_shift_aq(92) $ (po_areg_shift_aq(79) $ (po_amix1_aword_state_out_a20_a_a31_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(87),
	datab => po_areg_shift_aq(92),
	datac => po_areg_shift_aq(79),
	datad => po_amix1_aword_state_out_a20_a_a31_combout,
	combout => po_amix1_aword_state_out(20));

-- Location: FF_X34_Y23_N15
po_areg_sub_aq_a52_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a52_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(52));

-- Location: LCCOMB_X35_Y21_N0
po_amix1_aword_state_out_a29_a_a32 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a29_a_a32_combout = po_areg_shift_aq(84) $ (po_areg_shift_aq(69) $ (po_areg_shift_aq(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(84),
	datab => po_areg_shift_aq(69),
	datad => po_areg_shift_aq(77),
	combout => po_amix1_aword_state_out_a29_a_a32_combout);

-- Location: LCCOMB_X31_Y29_N22
po_akeyGen_aroundkey_out_a86_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(86) = po_areg_key_aq(86) $ (po_akeyGen_areg_aq(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(86),
	datad => po_akeyGen_areg_aq(22),
	combout => po_akeyGen_aroundkey_out(86));

-- Location: LCCOMB_X35_Y21_N20
po_amix1_aword_state_out_a30_a_a33 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a30_a_a33_combout = po_areg_shift_aq(70) $ (po_areg_shift_aq(78) $ (po_areg_shift_aq(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(70),
	datab => po_areg_shift_aq(78),
	datad => po_areg_shift_aq(85),
	combout => po_amix1_aword_state_out_a30_a_a33_combout);

-- Location: LCCOMB_X34_Y21_N20
po_amix1_aword_state_out_a22_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(22) = po_amix1_aword_state_out_a30_a_a33_combout $ (po_areg_shift_aq(77) $ (po_areg_shift_aq(94)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix1_aword_state_out_a30_a_a33_combout,
	datab => po_areg_shift_aq(77),
	datad => po_areg_shift_aq(94),
	combout => po_amix1_aword_state_out(22));

-- Location: LCCOMB_X35_Y21_N18
po_amix1_aword_state_out_a23_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(23) = po_areg_shift_aq(95) $ (po_areg_shift_aq(86) $ (po_areg_shift_aq(78) $ (po_amix1_aword_state_out_a31_a_a26_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(95),
	datab => po_areg_shift_aq(86),
	datac => po_areg_shift_aq(78),
	datad => po_amix1_aword_state_out_a31_a_a26_combout,
	combout => po_amix1_aword_state_out(23));

-- Location: FF_X31_Y19_N31
po_areg_shift_aq_a121_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(121),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(121));

-- Location: LCCOMB_X31_Y19_N8
po_amix0_aword_state_out_a3_a_a18 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a3_a_a18_combout = po_areg_shift_aq(98) $ (po_areg_shift_aq(123) $ (po_areg_shift_aq(127) $ (po_areg_shift_aq(103))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(98),
	datab => po_areg_shift_aq(123),
	datac => po_areg_shift_aq(127),
	datad => po_areg_shift_aq(103),
	combout => po_amix0_aword_state_out_a3_a_a18_combout);

-- Location: FF_X31_Y22_N31
po_areg_shift_aq_a109_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a109_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(109));

-- Location: FF_X31_Y21_N29
po_areg_shift_aq_a100_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(4),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(100));

-- Location: FF_X31_Y21_N27
po_areg_shift_aq_a125_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(125),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(125));

-- Location: LCCOMB_X31_Y21_N26
po_amix0_aword_state_out_a13_a_a21 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a13_a_a21_combout = po_areg_shift_aq(100) $ (po_areg_shift_aq(125) $ (po_areg_shift_aq(117)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(100),
	datac => po_areg_shift_aq(125),
	datad => po_areg_shift_aq(117),
	combout => po_amix0_aword_state_out_a13_a_a21_combout);

-- Location: LCCOMB_X34_Y22_N4
po_amix0_aword_state_out_a5_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(5) = po_areg_shift_aq(124) $ (po_areg_shift_aq(109) $ (po_amix0_aword_state_out_a13_a_a21_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(124),
	datab => po_areg_shift_aq(109),
	datad => po_amix0_aword_state_out_a13_a_a21_combout,
	combout => po_amix0_aword_state_out(5));

-- Location: LCCOMB_X31_Y21_N16
po_amix0_aword_state_out_a15_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(15) = po_areg_shift_aq(110) $ (po_areg_shift_aq(102) $ (po_areg_shift_aq(103) $ (po_amix0_aword_state_out_a28_a_a23_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(110),
	datab => po_areg_shift_aq(102),
	datac => po_areg_shift_aq(103),
	datad => po_amix0_aword_state_out_a28_a_a23_combout,
	combout => po_amix0_aword_state_out(15));

-- Location: LCCOMB_X31_Y20_N8
po_amix0_aword_state_out_a16_a_a27 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a16_a_a27_combout = po_areg_shift_aq(119) $ (po_areg_shift_aq(111) $ (po_areg_shift_aq(96) $ (po_areg_shift_aq(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(119),
	datab => po_areg_shift_aq(111),
	datac => po_areg_shift_aq(96),
	datad => po_areg_shift_aq(104),
	combout => po_amix0_aword_state_out_a16_a_a27_combout);

-- Location: LCCOMB_X31_Y20_N22
po_amix0_aword_state_out_a16_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(16) = po_areg_shift_aq(120) $ (po_amix0_aword_state_out_a16_a_a27_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(120),
	datab => po_amix0_aword_state_out_a16_a_a27_combout,
	combout => po_amix0_aword_state_out(16));

-- Location: LCCOMB_X31_Y19_N30
po_amix0_aword_state_out_a17_a_a28 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a17_a_a28_combout = po_areg_shift_aq(104) $ (po_areg_shift_aq(97) $ (po_areg_shift_aq(121) $ (po_areg_shift_aq(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(104),
	datab => po_areg_shift_aq(97),
	datac => po_areg_shift_aq(121),
	datad => po_areg_shift_aq(111),
	combout => po_amix0_aword_state_out_a17_a_a28_combout);

-- Location: LCCOMB_X31_Y19_N22
po_amix0_am1_ab_out_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_am1_ab_out_a0_combout = po_areg_shift_aq(112) $ (po_areg_shift_aq(119))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(112),
	datad => po_areg_shift_aq(119),
	combout => po_amix0_am1_ab_out_a0_combout);

-- Location: LCCOMB_X37_Y28_N16
po_amux2_aresult_a114_a_a82 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a114_a_a82_combout = (po_akeyGen_areg_aq(18)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_areg_aq(18),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a114_a_a82_combout);

-- Location: LCCOMB_X31_Y19_N4
po_amix0_aword_state_out_a18_a_a29 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a18_a_a29_combout = po_areg_shift_aq(98) $ (po_areg_shift_aq(105) $ (po_areg_shift_aq(113) $ (po_areg_shift_aq(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(98),
	datab => po_areg_shift_aq(105),
	datac => po_areg_shift_aq(113),
	datad => po_areg_shift_aq(106),
	combout => po_amix0_aword_state_out_a18_a_a29_combout);

-- Location: LCCOMB_X31_Y21_N6
po_amix0_aword_state_out_a20_a_a31 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a20_a_a31_combout = po_areg_shift_aq(107) $ (po_areg_shift_aq(100) $ (po_areg_shift_aq(108) $ (po_areg_shift_aq(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(107),
	datab => po_areg_shift_aq(100),
	datac => po_areg_shift_aq(108),
	datad => po_areg_shift_aq(115),
	combout => po_amix0_aword_state_out_a20_a_a31_combout);

-- Location: LCCOMB_X34_Y19_N24
po_amix0_aword_state_out_a20_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(20) = po_areg_shift_aq(124) $ (po_areg_shift_aq(111) $ (po_areg_shift_aq(119) $ (po_amix0_aword_state_out_a20_a_a31_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(124),
	datab => po_areg_shift_aq(111),
	datac => po_areg_shift_aq(119),
	datad => po_amix0_aword_state_out_a20_a_a31_combout,
	combout => po_amix0_aword_state_out(20));

-- Location: LCCOMB_X35_Y28_N2
po_amux2_aresult_a117_a_a85 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a117_a_a85_combout = (po_akeyGen_areg_aq(21)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_areg_aq(21),
	combout => po_amux2_aresult_a117_a_a85_combout);

-- Location: LCCOMB_X32_Y21_N0
po_amix0_aword_state_out_a22_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(22) = po_areg_shift_aq(109) $ (po_areg_shift_aq(126) $ (po_amix0_aword_state_out_a30_a_a33_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(109),
	datab => po_areg_shift_aq(126),
	datad => po_amix0_aword_state_out_a30_a_a33_combout,
	combout => po_amix0_aword_state_out(22));

-- Location: LCCOMB_X34_Y23_N2
po_amix0_aword_state_out_a24_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(24) = po_amix0_am1_ab_out_a0_combout $ (po_areg_shift_aq(127) $ (po_areg_shift_aq(104) $ (po_areg_shift_aq(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix0_am1_ab_out_a0_combout,
	datab => po_areg_shift_aq(127),
	datac => po_areg_shift_aq(104),
	datad => po_areg_shift_aq(96),
	combout => po_amix0_aword_state_out(24));

-- Location: LCCOMB_X36_Y26_N14
po_amux2_aresult_a121_a_a89 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a121_a_a89_combout = (po_akeyGen_areg_aq(25)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_areg_aq(25),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a121_a_a89_combout);

-- Location: LCCOMB_X31_Y21_N28
po_amix0_aword_state_out_a28_a_a35 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a28_a_a35_combout = po_areg_shift_aq(116) $ (po_areg_shift_aq(108) $ (po_areg_shift_aq(100) $ (po_areg_shift_aq(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(116),
	datab => po_areg_shift_aq(108),
	datac => po_areg_shift_aq(100),
	datad => po_areg_shift_aq(115),
	combout => po_amix0_aword_state_out_a28_a_a35_combout);

-- Location: LCCOMB_X32_Y28_N10
po_akeyGen_ax_a17_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(17) = po_areg_key_aq(113) $ (auto_generated_aram_block1a1_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(113),
	datac => po_akeyGen_amem0_arom_rtl_0_aq_b_a1_a,
	combout => po_akeyGen_ax(17));

-- Location: LCCOMB_X34_Y30_N18
po_akeyGen_amux_aMux5_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_amux_aMux5_a0_combout = (po_acount_acnt(1) & (!po_acount_acnt(2) & (po_acount_acnt(3) $ (po_acount_acnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(1),
	datab => po_acount_acnt(2),
	datac => po_acount_acnt(3),
	datad => po_acount_acnt(0),
	combout => po_akeyGen_amux_aMux5_a0_combout);

-- Location: LCCOMB_X35_Y28_N6
po_akeyGen_amux_aMux2_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_amux_aMux2_a0_combout = (po_acount_acnt(1) & (!po_acount_acnt(0) & (po_acount_acnt(3) $ (po_acount_acnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(3),
	datab => po_acount_acnt(2),
	datac => po_acount_acnt(1),
	datad => po_acount_acnt(0),
	combout => po_akeyGen_amux_aMux2_a0_combout);

-- Location: LCCOMB_X36_Y24_N28
po_amix2_aword_state_out_a25_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(25) = po_amix2_aword_state_out_a25_a_a9_combout $ (po_areg_shift_aq(48) $ (po_areg_shift_aq(33) $ (po_areg_shift_aq(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix2_aword_state_out_a25_a_a9_combout,
	datab => po_areg_shift_aq(48),
	datac => po_areg_shift_aq(33),
	datad => po_areg_shift_aq(55),
	combout => po_amix2_aword_state_out(25));

-- Location: LCCOMB_X36_Y22_N24
po_amix1_aword_state_out_a17_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(17) = po_areg_shift_aq(73) $ (po_areg_shift_aq(87) $ (po_areg_shift_aq(80) $ (po_amix1_aword_state_out_a17_a_a28_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(73),
	datab => po_areg_shift_aq(87),
	datac => po_areg_shift_aq(80),
	datad => po_amix1_aword_state_out_a17_a_a28_combout,
	combout => po_amix1_aword_state_out(17));

-- Location: LCCOMB_X31_Y19_N28
po_amix0_aword_state_out_a1_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(1) = po_areg_shift_aq(121) $ (po_areg_shift_aq(103) $ (po_areg_shift_aq(96) $ (po_amix0_aword_state_out_a25_a_a15_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(121),
	datab => po_areg_shift_aq(103),
	datac => po_areg_shift_aq(96),
	datad => po_amix0_aword_state_out_a25_a_a15_combout,
	combout => po_amix0_aword_state_out(1));

-- Location: LCCOMB_X31_Y20_N30
po_amix0_aword_state_out_a17_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(17) = po_areg_shift_aq(105) $ (po_areg_shift_aq(112) $ (po_areg_shift_aq(119) $ (po_amix0_aword_state_out_a17_a_a28_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(105),
	datab => po_areg_shift_aq(112),
	datac => po_areg_shift_aq(119),
	datad => po_amix0_aword_state_out_a17_a_a28_combout,
	combout => po_amix0_aword_state_out(17));

-- Location: LCCOMB_X31_Y20_N10
po_amix0_aword_state_out_a28_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(28) = po_areg_shift_aq(123) $ (po_areg_shift_aq(127) $ (po_areg_shift_aq(119) $ (po_amix0_aword_state_out_a28_a_a35_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(123),
	datab => po_areg_shift_aq(127),
	datac => po_areg_shift_aq(119),
	datad => po_amix0_aword_state_out_a28_a_a35_combout,
	combout => po_amix0_aword_state_out(28));

-- Location: LCCOMB_X34_Y22_N2
po_areg_mix_aq_a20_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a20_a_afeeder_combout = po_amix3_aword_state_out(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(20),
	combout => po_areg_mix_aq_a20_a_afeeder_combout);

-- Location: LCCOMB_X31_Y22_N2
po_areg_mix_aq_a27_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a27_a_afeeder_combout = po_amix3_aword_state_out(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out(27),
	combout => po_areg_mix_aq_a27_a_afeeder_combout);

-- Location: LCCOMB_X31_Y24_N18
po_areg_shift_aq_a30_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a30_a_afeeder_combout = po_areg_sub_aq(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(30),
	combout => po_areg_shift_aq_a30_a_afeeder_combout);

-- Location: LCCOMB_X30_Y24_N0
po_areg_mix_aq_a31_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a31_a_afeeder_combout = po_amix3_aword_state_out(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_amix3_aword_state_out(31),
	combout => po_areg_mix_aq_a31_a_afeeder_combout);

-- Location: LCCOMB_X36_Y24_N4
po_areg_mix_aq_a49_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a49_a_afeeder_combout = po_amix2_aword_state_out(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix2_aword_state_out(17),
	combout => po_areg_mix_aq_a49_a_afeeder_combout);

-- Location: LCCOMB_X32_Y24_N16
po_areg_mix_aq_a55_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a55_a_afeeder_combout = po_amix2_aword_state_out(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(23),
	combout => po_areg_mix_aq_a55_a_afeeder_combout);

-- Location: LCCOMB_X32_Y24_N0
po_areg_mix_aq_a59_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a59_a_afeeder_combout = po_amix2_aword_state_out(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(27),
	combout => po_areg_mix_aq_a59_a_afeeder_combout);

-- Location: LCCOMB_X36_Y24_N2
po_areg_mix_aq_a60_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a60_a_afeeder_combout = po_amix2_aword_state_out(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(28),
	combout => po_areg_mix_aq_a60_a_afeeder_combout);

-- Location: LCCOMB_X34_Y25_N24
po_areg_mix_aq_a63_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a63_a_afeeder_combout = po_amix2_aword_state_out(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(31),
	combout => po_areg_mix_aq_a63_a_afeeder_combout);

-- Location: LCCOMB_X35_Y23_N18
po_areg_mix_aq_a75_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a75_a_afeeder_combout = po_amix1_aword_state_out(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(11),
	combout => po_areg_mix_aq_a75_a_afeeder_combout);

-- Location: LCCOMB_X35_Y20_N6
po_areg_shift_aq_a77_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a77_a_afeeder_combout = po_areg_sub_aq(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(13),
	combout => po_areg_shift_aq_a77_a_afeeder_combout);

-- Location: LCCOMB_X36_Y23_N30
po_areg_mix_aq_a84_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a84_a_afeeder_combout = po_amix1_aword_state_out(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(20),
	combout => po_areg_mix_aq_a84_a_afeeder_combout);

-- Location: LCCOMB_X35_Y23_N22
po_areg_shift_aq_a84_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a84_a_afeeder_combout = po_areg_sub_aq(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(52),
	combout => po_areg_shift_aq_a84_a_afeeder_combout);

-- Location: LCCOMB_X35_Y23_N14
po_areg_mix_aq_a87_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a87_a_afeeder_combout = po_amix1_aword_state_out(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(23),
	combout => po_areg_mix_aq_a87_a_afeeder_combout);

-- Location: LCCOMB_X31_Y22_N30
po_areg_shift_aq_a109_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a109_a_afeeder_combout = po_areg_sub_aq(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(45),
	combout => po_areg_shift_aq_a109_a_afeeder_combout);

-- Location: LCCOMB_X36_Y21_N12
po_areg_mix_aq_a111_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a111_a_afeeder_combout = po_amix0_aword_state_out(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(15),
	combout => po_areg_mix_aq_a111_a_afeeder_combout);

-- Location: LCCOMB_X34_Y19_N0
po_areg_mix_aq_a116_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a116_a_afeeder_combout = po_amix0_aword_state_out(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(20),
	combout => po_areg_mix_aq_a116_a_afeeder_combout);

-- Location: LCCOMB_X34_Y23_N20
po_areg_mix_aq_a120_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a120_a_afeeder_combout = po_amix0_aword_state_out(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(24),
	combout => po_areg_mix_aq_a120_a_afeeder_combout);

-- Location: LCCOMB_X36_Y24_N8
po_areg_mix_aq_a57_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a57_a_afeeder_combout = po_amix2_aword_state_out(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(25),
	combout => po_areg_mix_aq_a57_a_afeeder_combout);

-- Location: LCCOMB_X34_Y25_N14
po_areg_mix_aq_a81_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a81_a_afeeder_combout = po_amix1_aword_state_out(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(17),
	combout => po_areg_mix_aq_a81_a_afeeder_combout);

-- Location: LCCOMB_X34_Y20_N2
po_areg_mix_aq_a97_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a97_a_afeeder_combout = po_amix0_aword_state_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(1),
	combout => po_areg_mix_aq_a97_a_afeeder_combout);

-- Location: LCCOMB_X31_Y20_N4
po_areg_mix_aq_a124_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a124_a_afeeder_combout = po_amix0_aword_state_out(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(28),
	combout => po_areg_mix_aq_a124_a_afeeder_combout);

-- Location: LCCOMB_X34_Y24_N6
po_areg_sub_aq_a17_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a17_a_afeeder_combout = auto_generated_aram_block1a1_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem6_arom_rtl_0_aq_b_a1_a,
	combout => po_areg_sub_aq_a17_a_afeeder_combout);

-- Location: LCCOMB_X34_Y23_N14
po_areg_sub_aq_a52_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a52_a_afeeder_combout = auto_generated_aram_block1a4_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_b_a4_a,
	combout => po_areg_sub_aq_a52_a_afeeder_combout);

-- Location: LCCOMB_X34_Y20_N10
po_areg_sub_aq_a13_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a13_a_afeeder_combout = auto_generated_aram_block1a5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem7_arom_rtl_0_aq_a_a5_a,
	combout => po_areg_sub_aq_a13_a_afeeder_combout);

-- Location: LCCOMB_X34_Y20_N14
po_areg_sub_aq_a14_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a14_a_afeeder_combout = auto_generated_aram_block1a6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_a_a6_a,
	combout => po_areg_sub_aq_a14_a_afeeder_combout);

-- Location: IOOBUF_X53_Y6_N16
chipher_a0_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(0),
	devoe => ww_devoe,
	o => chipher_a0_a_aoutput_o);

-- Location: IOOBUF_X20_Y0_N2
chipher_a1_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(1),
	devoe => ww_devoe,
	o => chipher_a1_a_aoutput_o);

-- Location: IOOBUF_X11_Y34_N2
chipher_a2_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(2),
	devoe => ww_devoe,
	o => chipher_a2_a_aoutput_o);

-- Location: IOOBUF_X53_Y20_N23
chipher_a3_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(3),
	devoe => ww_devoe,
	o => chipher_a3_a_aoutput_o);

-- Location: IOOBUF_X53_Y15_N2
chipher_a4_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(4),
	devoe => ww_devoe,
	o => chipher_a4_a_aoutput_o);

-- Location: IOOBUF_X49_Y34_N9
chipher_a5_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(5),
	devoe => ww_devoe,
	o => chipher_a5_a_aoutput_o);

-- Location: IOOBUF_X29_Y0_N2
chipher_a6_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(6),
	devoe => ww_devoe,
	o => chipher_a6_a_aoutput_o);

-- Location: IOOBUF_X53_Y11_N2
chipher_a7_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(7),
	devoe => ww_devoe,
	o => chipher_a7_a_aoutput_o);

-- Location: IOOBUF_X0_Y15_N9
chipher_a8_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(8),
	devoe => ww_devoe,
	o => chipher_a8_a_aoutput_o);

-- Location: IOOBUF_X25_Y0_N16
chipher_a9_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(9),
	devoe => ww_devoe,
	o => chipher_a9_a_aoutput_o);

-- Location: IOOBUF_X18_Y0_N9
chipher_a10_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(10),
	devoe => ww_devoe,
	o => chipher_a10_a_aoutput_o);

-- Location: IOOBUF_X53_Y20_N16
chipher_a11_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(11),
	devoe => ww_devoe,
	o => chipher_a11_a_aoutput_o);

-- Location: IOOBUF_X40_Y0_N9
chipher_a12_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(12),
	devoe => ww_devoe,
	o => chipher_a12_a_aoutput_o);

-- Location: IOOBUF_X20_Y0_N9
chipher_a13_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(13),
	devoe => ww_devoe,
	o => chipher_a13_a_aoutput_o);

-- Location: IOOBUF_X0_Y15_N2
chipher_a14_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(14),
	devoe => ww_devoe,
	o => chipher_a14_a_aoutput_o);

-- Location: IOOBUF_X53_Y10_N23
chipher_a15_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(15),
	devoe => ww_devoe,
	o => chipher_a15_a_aoutput_o);

-- Location: IOOBUF_X0_Y24_N23
chipher_a16_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(16),
	devoe => ww_devoe,
	o => chipher_a16_a_aoutput_o);

-- Location: IOOBUF_X0_Y24_N16
chipher_a17_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(17),
	devoe => ww_devoe,
	o => chipher_a17_a_aoutput_o);

-- Location: IOOBUF_X53_Y25_N2
chipher_a18_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(18),
	devoe => ww_devoe,
	o => chipher_a18_a_aoutput_o);

-- Location: IOOBUF_X0_Y28_N9
chipher_a19_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(19),
	devoe => ww_devoe,
	o => chipher_a19_a_aoutput_o);

-- Location: IOOBUF_X0_Y28_N2
chipher_a20_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(20),
	devoe => ww_devoe,
	o => chipher_a20_a_aoutput_o);

-- Location: IOOBUF_X23_Y34_N2
chipher_a21_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(21),
	devoe => ww_devoe,
	o => chipher_a21_a_aoutput_o);

-- Location: IOOBUF_X18_Y34_N2
chipher_a22_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(22),
	devoe => ww_devoe,
	o => chipher_a22_a_aoutput_o);

-- Location: IOOBUF_X3_Y34_N2
chipher_a23_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(23),
	devoe => ww_devoe,
	o => chipher_a23_a_aoutput_o);

-- Location: IOOBUF_X16_Y34_N2
chipher_a24_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(24),
	devoe => ww_devoe,
	o => chipher_a24_a_aoutput_o);

-- Location: IOOBUF_X53_Y25_N9
chipher_a25_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(25),
	devoe => ww_devoe,
	o => chipher_a25_a_aoutput_o);

-- Location: IOOBUF_X51_Y34_N2
chipher_a26_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(26),
	devoe => ww_devoe,
	o => chipher_a26_a_aoutput_o);

-- Location: IOOBUF_X0_Y27_N2
chipher_a27_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(27),
	devoe => ww_devoe,
	o => chipher_a27_a_aoutput_o);

-- Location: IOOBUF_X53_Y6_N23
chipher_a28_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(28),
	devoe => ww_devoe,
	o => chipher_a28_a_aoutput_o);

-- Location: IOOBUF_X16_Y34_N9
chipher_a29_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(29),
	devoe => ww_devoe,
	o => chipher_a29_a_aoutput_o);

-- Location: IOOBUF_X0_Y26_N16
chipher_a30_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(30),
	devoe => ww_devoe,
	o => chipher_a30_a_aoutput_o);

-- Location: IOOBUF_X0_Y25_N9
chipher_a31_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(31),
	devoe => ww_devoe,
	o => chipher_a31_a_aoutput_o);

-- Location: IOOBUF_X9_Y34_N23
chipher_a32_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(32),
	devoe => ww_devoe,
	o => chipher_a32_a_aoutput_o);

-- Location: IOOBUF_X53_Y19_N9
chipher_a33_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(33),
	devoe => ww_devoe,
	o => chipher_a33_a_aoutput_o);

-- Location: IOOBUF_X18_Y34_N9
chipher_a34_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(34),
	devoe => ww_devoe,
	o => chipher_a34_a_aoutput_o);

-- Location: IOOBUF_X23_Y34_N9
chipher_a35_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(35),
	devoe => ww_devoe,
	o => chipher_a35_a_aoutput_o);

-- Location: IOOBUF_X45_Y34_N2
chipher_a36_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(36),
	devoe => ww_devoe,
	o => chipher_a36_a_aoutput_o);

-- Location: IOOBUF_X29_Y34_N23
chipher_a37_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(37),
	devoe => ww_devoe,
	o => chipher_a37_a_aoutput_o);

-- Location: IOOBUF_X18_Y34_N16
chipher_a38_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(38),
	devoe => ww_devoe,
	o => chipher_a38_a_aoutput_o);

-- Location: IOOBUF_X34_Y0_N2
chipher_a39_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(39),
	devoe => ww_devoe,
	o => chipher_a39_a_aoutput_o);

-- Location: IOOBUF_X53_Y14_N9
chipher_a40_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(40),
	devoe => ww_devoe,
	o => chipher_a40_a_aoutput_o);

-- Location: IOOBUF_X40_Y0_N16
chipher_a41_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(41),
	devoe => ww_devoe,
	o => chipher_a41_a_aoutput_o);

-- Location: IOOBUF_X18_Y34_N23
chipher_a42_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(42),
	devoe => ww_devoe,
	o => chipher_a42_a_aoutput_o);

-- Location: IOOBUF_X53_Y11_N9
chipher_a43_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(43),
	devoe => ww_devoe,
	o => chipher_a43_a_aoutput_o);

-- Location: IOOBUF_X0_Y23_N23
chipher_a44_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(44),
	devoe => ww_devoe,
	o => chipher_a44_a_aoutput_o);

-- Location: IOOBUF_X36_Y0_N16
chipher_a45_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(45),
	devoe => ww_devoe,
	o => chipher_a45_a_aoutput_o);

-- Location: IOOBUF_X0_Y23_N2
chipher_a46_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(46),
	devoe => ww_devoe,
	o => chipher_a46_a_aoutput_o);

-- Location: IOOBUF_X53_Y22_N9
chipher_a47_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(47),
	devoe => ww_devoe,
	o => chipher_a47_a_aoutput_o);

-- Location: IOOBUF_X38_Y0_N2
chipher_a48_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(48),
	devoe => ww_devoe,
	o => chipher_a48_a_aoutput_o);

-- Location: IOOBUF_X38_Y34_N2
chipher_a49_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(49),
	devoe => ww_devoe,
	o => chipher_a49_a_aoutput_o);

-- Location: IOOBUF_X53_Y30_N2
chipher_a50_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(50),
	devoe => ww_devoe,
	o => chipher_a50_a_aoutput_o);

-- Location: IOOBUF_X38_Y0_N9
chipher_a51_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(51),
	devoe => ww_devoe,
	o => chipher_a51_a_aoutput_o);

-- Location: IOOBUF_X53_Y23_N16
chipher_a52_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(52),
	devoe => ww_devoe,
	o => chipher_a52_a_aoutput_o);

-- Location: IOOBUF_X40_Y0_N23
chipher_a53_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(53),
	devoe => ww_devoe,
	o => chipher_a53_a_aoutput_o);

-- Location: IOOBUF_X0_Y30_N9
chipher_a54_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(54),
	devoe => ww_devoe,
	o => chipher_a54_a_aoutput_o);

-- Location: IOOBUF_X53_Y24_N23
chipher_a55_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(55),
	devoe => ww_devoe,
	o => chipher_a55_a_aoutput_o);

-- Location: IOOBUF_X9_Y34_N16
chipher_a56_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(56),
	devoe => ww_devoe,
	o => chipher_a56_a_aoutput_o);

-- Location: IOOBUF_X53_Y22_N2
chipher_a57_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(57),
	devoe => ww_devoe,
	o => chipher_a57_a_aoutput_o);

-- Location: IOOBUF_X53_Y30_N9
chipher_a58_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(58),
	devoe => ww_devoe,
	o => chipher_a58_a_aoutput_o);

-- Location: IOOBUF_X38_Y0_N23
chipher_a59_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(59),
	devoe => ww_devoe,
	o => chipher_a59_a_aoutput_o);

-- Location: IOOBUF_X53_Y23_N23
chipher_a60_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(60),
	devoe => ww_devoe,
	o => chipher_a60_a_aoutput_o);

-- Location: IOOBUF_X16_Y34_N16
chipher_a61_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(61),
	devoe => ww_devoe,
	o => chipher_a61_a_aoutput_o);

-- Location: IOOBUF_X0_Y30_N2
chipher_a62_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(62),
	devoe => ww_devoe,
	o => chipher_a62_a_aoutput_o);

-- Location: IOOBUF_X53_Y9_N9
chipher_a63_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(63),
	devoe => ww_devoe,
	o => chipher_a63_a_aoutput_o);

-- Location: IOOBUF_X49_Y34_N2
chipher_a64_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(64),
	devoe => ww_devoe,
	o => chipher_a64_a_aoutput_o);

-- Location: IOOBUF_X9_Y34_N9
chipher_a65_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(65),
	devoe => ww_devoe,
	o => chipher_a65_a_aoutput_o);

-- Location: IOOBUF_X53_Y26_N16
chipher_a66_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(66),
	devoe => ww_devoe,
	o => chipher_a66_a_aoutput_o);

-- Location: IOOBUF_X51_Y34_N9
chipher_a67_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(67),
	devoe => ww_devoe,
	o => chipher_a67_a_aoutput_o);

-- Location: IOOBUF_X51_Y34_N23
chipher_a68_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(68),
	devoe => ww_devoe,
	o => chipher_a68_a_aoutput_o);

-- Location: IOOBUF_X34_Y34_N16
chipher_a69_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(69),
	devoe => ww_devoe,
	o => chipher_a69_a_aoutput_o);

-- Location: IOOBUF_X29_Y34_N16
chipher_a70_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(70),
	devoe => ww_devoe,
	o => chipher_a70_a_aoutput_o);

-- Location: IOOBUF_X45_Y34_N16
chipher_a71_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(71),
	devoe => ww_devoe,
	o => chipher_a71_a_aoutput_o);

-- Location: IOOBUF_X38_Y34_N23
chipher_a72_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(72),
	devoe => ww_devoe,
	o => chipher_a72_a_aoutput_o);

-- Location: IOOBUF_X23_Y34_N23
chipher_a73_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(73),
	devoe => ww_devoe,
	o => chipher_a73_a_aoutput_o);

-- Location: IOOBUF_X51_Y34_N16
chipher_a74_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(74),
	devoe => ww_devoe,
	o => chipher_a74_a_aoutput_o);

-- Location: IOOBUF_X16_Y34_N23
chipher_a75_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(75),
	devoe => ww_devoe,
	o => chipher_a75_a_aoutput_o);

-- Location: IOOBUF_X53_Y26_N23
chipher_a76_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(76),
	devoe => ww_devoe,
	o => chipher_a76_a_aoutput_o);

-- Location: IOOBUF_X20_Y34_N9
chipher_a77_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(77),
	devoe => ww_devoe,
	o => chipher_a77_a_aoutput_o);

-- Location: IOOBUF_X5_Y34_N16
chipher_a78_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(78),
	devoe => ww_devoe,
	o => chipher_a78_a_aoutput_o);

-- Location: IOOBUF_X40_Y34_N9
chipher_a79_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(79),
	devoe => ww_devoe,
	o => chipher_a79_a_aoutput_o);

-- Location: IOOBUF_X36_Y0_N9
chipher_a80_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(80),
	devoe => ww_devoe,
	o => chipher_a80_a_aoutput_o);

-- Location: IOOBUF_X43_Y0_N2
chipher_a81_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(81),
	devoe => ww_devoe,
	o => chipher_a81_a_aoutput_o);

-- Location: IOOBUF_X53_Y9_N23
chipher_a82_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(82),
	devoe => ww_devoe,
	o => chipher_a82_a_aoutput_o);

-- Location: IOOBUF_X0_Y23_N16
chipher_a83_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(83),
	devoe => ww_devoe,
	o => chipher_a83_a_aoutput_o);

-- Location: IOOBUF_X53_Y14_N2
chipher_a84_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(84),
	devoe => ww_devoe,
	o => chipher_a84_a_aoutput_o);

-- Location: IOOBUF_X38_Y0_N16
chipher_a85_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(85),
	devoe => ww_devoe,
	o => chipher_a85_a_aoutput_o);

-- Location: IOOBUF_X36_Y0_N23
chipher_a86_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(86),
	devoe => ww_devoe,
	o => chipher_a86_a_aoutput_o);

-- Location: IOOBUF_X53_Y8_N9
chipher_a87_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(87),
	devoe => ww_devoe,
	o => chipher_a87_a_aoutput_o);

-- Location: IOOBUF_X36_Y0_N2
chipher_a88_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(88),
	devoe => ww_devoe,
	o => chipher_a88_a_aoutput_o);

-- Location: IOOBUF_X53_Y15_N9
chipher_a89_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(89),
	devoe => ww_devoe,
	o => chipher_a89_a_aoutput_o);

-- Location: IOOBUF_X53_Y16_N9
chipher_a90_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(90),
	devoe => ww_devoe,
	o => chipher_a90_a_aoutput_o);

-- Location: IOOBUF_X53_Y21_N23
chipher_a91_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(91),
	devoe => ww_devoe,
	o => chipher_a91_a_aoutput_o);

-- Location: IOOBUF_X53_Y10_N16
chipher_a92_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(92),
	devoe => ww_devoe,
	o => chipher_a92_a_aoutput_o);

-- Location: IOOBUF_X40_Y0_N2
chipher_a93_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(93),
	devoe => ww_devoe,
	o => chipher_a93_a_aoutput_o);

-- Location: IOOBUF_X1_Y34_N23
chipher_a94_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(94),
	devoe => ww_devoe,
	o => chipher_a94_a_aoutput_o);

-- Location: IOOBUF_X53_Y13_N9
chipher_a95_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(95),
	devoe => ww_devoe,
	o => chipher_a95_a_aoutput_o);

-- Location: IOOBUF_X23_Y34_N16
chipher_a96_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(96),
	devoe => ww_devoe,
	o => chipher_a96_a_aoutput_o);

-- Location: IOOBUF_X27_Y34_N9
chipher_a97_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(97),
	devoe => ww_devoe,
	o => chipher_a97_a_aoutput_o);

-- Location: IOOBUF_X36_Y34_N2
chipher_a98_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(98),
	devoe => ww_devoe,
	o => chipher_a98_a_aoutput_o);

-- Location: IOOBUF_X14_Y34_N23
chipher_a99_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(99),
	devoe => ww_devoe,
	o => chipher_a99_a_aoutput_o);

-- Location: IOOBUF_X7_Y34_N2
chipher_a100_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(100),
	devoe => ww_devoe,
	o => chipher_a100_a_aoutput_o);

-- Location: IOOBUF_X14_Y34_N16
chipher_a101_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(101),
	devoe => ww_devoe,
	o => chipher_a101_a_aoutput_o);

-- Location: IOOBUF_X31_Y34_N2
chipher_a102_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(102),
	devoe => ww_devoe,
	o => chipher_a102_a_aoutput_o);

-- Location: IOOBUF_X20_Y34_N16
chipher_a103_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(103),
	devoe => ww_devoe,
	o => chipher_a103_a_aoutput_o);

-- Location: IOOBUF_X7_Y34_N9
chipher_a104_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(104),
	devoe => ww_devoe,
	o => chipher_a104_a_aoutput_o);

-- Location: IOOBUF_X1_Y34_N2
chipher_a105_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(105),
	devoe => ww_devoe,
	o => chipher_a105_a_aoutput_o);

-- Location: IOOBUF_X7_Y34_N16
chipher_a106_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(106),
	devoe => ww_devoe,
	o => chipher_a106_a_aoutput_o);

-- Location: IOOBUF_X0_Y29_N9
chipher_a107_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(107),
	devoe => ww_devoe,
	o => chipher_a107_a_aoutput_o);

-- Location: IOOBUF_X0_Y29_N2
chipher_a108_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(108),
	devoe => ww_devoe,
	o => chipher_a108_a_aoutput_o);

-- Location: IOOBUF_X1_Y34_N9
chipher_a109_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(109),
	devoe => ww_devoe,
	o => chipher_a109_a_aoutput_o);

-- Location: IOOBUF_X47_Y34_N23
chipher_a110_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(110),
	devoe => ww_devoe,
	o => chipher_a110_a_aoutput_o);

-- Location: IOOBUF_X20_Y34_N23
chipher_a111_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(111),
	devoe => ww_devoe,
	o => chipher_a111_a_aoutput_o);

-- Location: IOOBUF_X53_Y12_N2
chipher_a112_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(112),
	devoe => ww_devoe,
	o => chipher_a112_a_aoutput_o);

-- Location: IOOBUF_X31_Y34_N9
chipher_a113_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(113),
	devoe => ww_devoe,
	o => chipher_a113_a_aoutput_o);

-- Location: IOOBUF_X43_Y0_N16
chipher_a114_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(114),
	devoe => ww_devoe,
	o => chipher_a114_a_aoutput_o);

-- Location: IOOBUF_X34_Y0_N23
chipher_a115_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(115),
	devoe => ww_devoe,
	o => chipher_a115_a_aoutput_o);

-- Location: IOOBUF_X34_Y0_N16
chipher_a116_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(116),
	devoe => ww_devoe,
	o => chipher_a116_a_aoutput_o);

-- Location: IOOBUF_X53_Y9_N16
chipher_a117_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(117),
	devoe => ww_devoe,
	o => chipher_a117_a_aoutput_o);

-- Location: IOOBUF_X29_Y0_N9
chipher_a118_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(118),
	devoe => ww_devoe,
	o => chipher_a118_a_aoutput_o);

-- Location: IOOBUF_X29_Y0_N16
chipher_a119_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(119),
	devoe => ww_devoe,
	o => chipher_a119_a_aoutput_o);

-- Location: IOOBUF_X53_Y7_N9
chipher_a120_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(120),
	devoe => ww_devoe,
	o => chipher_a120_a_aoutput_o);

-- Location: IOOBUF_X29_Y0_N23
chipher_a121_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(121),
	devoe => ww_devoe,
	o => chipher_a121_a_aoutput_o);

-- Location: IOOBUF_X23_Y0_N2
chipher_a122_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(122),
	devoe => ww_devoe,
	o => chipher_a122_a_aoutput_o);

-- Location: IOOBUF_X43_Y0_N23
chipher_a123_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(123),
	devoe => ww_devoe,
	o => chipher_a123_a_aoutput_o);

-- Location: IOOBUF_X53_Y8_N23
chipher_a124_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(124),
	devoe => ww_devoe,
	o => chipher_a124_a_aoutput_o);

-- Location: IOOBUF_X23_Y0_N9
chipher_a125_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(125),
	devoe => ww_devoe,
	o => chipher_a125_a_aoutput_o);

-- Location: IOOBUF_X53_Y8_N16
chipher_a126_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(126),
	devoe => ww_devoe,
	o => chipher_a126_a_aoutput_o);

-- Location: IOOBUF_X53_Y19_N2
chipher_a127_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_areg_add_aq(127),
	devoe => ww_devoe,
	o => chipher_a127_a_aoutput_o);

-- Location: IOOBUF_X27_Y34_N2
round_m_a0_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_acount_acnt(0),
	devoe => ww_devoe,
	o => round_m_a0_a_aoutput_o);

-- Location: IOOBUF_X34_Y34_N9
round_m_a1_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_acount_acnt(1),
	devoe => ww_devoe,
	o => round_m_a1_a_aoutput_o);

-- Location: IOOBUF_X34_Y34_N2
round_m_a2_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_acount_acnt(2),
	devoe => ww_devoe,
	o => round_m_a2_a_aoutput_o);

-- Location: IOOBUF_X14_Y34_N9
round_m_a3_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => po_acount_acnt(3),
	devoe => ww_devoe,
	o => round_m_a3_a_aoutput_o);

-- Location: IOOBUF_X29_Y34_N2
en_t_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc_aenable_top_a0_combout,
	devoe => ww_devoe,
	o => en_t_aoutput_o);

-- Location: IOOBUF_X38_Y34_N16
en_r_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc_aWideOr3_a0_combout,
	devoe => ww_devoe,
	o => en_r_aoutput_o);

-- Location: IOOBUF_X36_Y34_N23
en_c_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc_astate_as2_aq,
	devoe => ww_devoe,
	o => en_c_aoutput_o);

-- Location: IOOBUF_X36_Y34_N9
en_ra_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc_aSelector3_a0_combout,
	devoe => ww_devoe,
	o => en_ra_aoutput_o);

-- Location: IOOBUF_X36_Y34_N16
en_rk2_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc_astate_as3_aq,
	devoe => ww_devoe,
	o => en_rk2_aoutput_o);

-- Location: IOOBUF_X31_Y34_N23
sel_m_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_pc_aSelector4_a2_combout,
	devoe => ww_devoe,
	o => sel_m_aoutput_o);

-- Location: IOOBUF_X29_Y34_N9
sel_m3_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc_aSelector5_a1_combout,
	devoe => ww_devoe,
	o => sel_m3_aoutput_o);

-- Location: IOOBUF_X53_Y28_N23
state_a0_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_pc_aWideOr10_a0_combout,
	devoe => ww_devoe,
	o => state_a0_a_aoutput_o);

-- Location: IOOBUF_X43_Y34_N23
state_a1_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_pc_aWideOr9_acombout,
	devoe => ww_devoe,
	o => state_a1_a_aoutput_o);

-- Location: IOOBUF_X45_Y34_N9
state_a2_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_pc_aWideOr8_acombout,
	devoe => ww_devoe,
	o => state_a2_a_aoutput_o);

-- Location: IOIBUF_X27_Y0_N15
osc_clk_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_osc_clk,
	o => osc_clk_ainput_o);

-- Location: CLKCTRL_G19
osc_clk_ainputclkctrl : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => osc_clk_ainputclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => osc_clk_ainputclkctrl_outclk);

-- Location: IOIBUF_X0_Y16_N15
reset_n_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => reset_n_ainput_o);

-- Location: LCCOMB_X36_Y28_N12
pc_astate_as0_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_astate_as0_a0_combout = !reset_n_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reset_n_ainput_o,
	combout => pc_astate_as0_a0_combout);

-- Location: FF_X36_Y28_N13
pc_astate_as0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => pc_astate_as0_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_astate_as0_aq);

-- Location: LCCOMB_X35_Y28_N24
po_acount_acnt_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_acount_acnt_a0_combout = (pc_astate_as0_aq & !po_acount_acnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_astate_as0_aq,
	datac => po_acount_acnt(0),
	combout => po_acount_acnt_a0_combout);

-- Location: LCCOMB_X36_Y28_N2
pc_astate_a12 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_astate_a12_combout = (!reset_n_ainput_o & !pc_astate_as0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reset_n_ainput_o,
	datad => pc_astate_as0_aq,
	combout => pc_astate_a12_combout);

-- Location: FF_X36_Y28_N3
pc_astate_as1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => pc_astate_a12_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_astate_as1_aq);

-- Location: LCCOMB_X35_Y28_N26
po_acount_acnt_a2 : cycloneiii_lcell_comb
-- Equation(s):
-- po_acount_acnt_a2_combout = (pc_astate_as0_aq & (po_acount_acnt(1) $ (po_acount_acnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_astate_as0_aq,
	datac => po_acount_acnt(1),
	datad => po_acount_acnt(0),
	combout => po_acount_acnt_a2_combout);

-- Location: FF_X35_Y28_N27
po_acount_acnt_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_acount_acnt_a2_combout,
	ena => po_acount_acnt_a3_a_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_acount_acnt(1));

-- Location: LCCOMB_X35_Y28_N4
pc_aEqual0_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aEqual0_a0_combout = (po_acount_acnt(3)) # ((po_acount_acnt(2)) # ((po_acount_acnt(1)) # (!po_acount_acnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(3),
	datab => po_acount_acnt(2),
	datac => po_acount_acnt(1),
	datad => po_acount_acnt(0),
	combout => pc_aEqual0_a0_combout);

-- Location: LCCOMB_X36_Y28_N6
pc_astate_a15 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_astate_a15_combout = (!reset_n_ainput_o & pc_astate_as2_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reset_n_ainput_o,
	datad => pc_astate_as2_aq,
	combout => pc_astate_a15_combout);

-- Location: FF_X36_Y28_N7
pc_astate_as3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => pc_astate_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_astate_as3_aq);

-- Location: LCCOMB_X36_Y28_N0
pc_astate_a11 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_astate_a11_combout = (!reset_n_ainput_o & pc_astate_as3_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reset_n_ainput_o,
	datad => pc_astate_as3_aq,
	combout => pc_astate_a11_combout);

-- Location: FF_X36_Y28_N1
pc_astate_as4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => pc_astate_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_astate_as4_aq);

-- Location: LCCOMB_X36_Y28_N4
pc_astate_a16 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_astate_a16_combout = (pc_aEqual0_a0_combout & (!reset_n_ainput_o & pc_astate_as4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_aEqual0_a0_combout,
	datac => reset_n_ainput_o,
	datad => pc_astate_as4_aq,
	combout => pc_astate_a16_combout);

-- Location: FF_X36_Y28_N5
pc_astate_as5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => pc_astate_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_astate_as5_aq);

-- Location: LCCOMB_X36_Y28_N24
pc_astate_a14 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_astate_a14_combout = (!reset_n_ainput_o & ((pc_astate_as5_aq) # ((!pc_aEqual0_a0_combout & pc_astate_as4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => pc_aEqual0_a0_combout,
	datac => pc_astate_as5_aq,
	datad => pc_astate_as4_aq,
	combout => pc_astate_a14_combout);

-- Location: FF_X36_Y28_N25
pc_astate_as6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => pc_astate_a14_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_astate_as6_aq);

-- Location: LCCOMB_X36_Y28_N18
pc_astate_a13 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_astate_a13_combout = (!reset_n_ainput_o & ((pc_astate_as1_aq) # ((!pc_aEqual2_a0_combout & pc_astate_as6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aEqual2_a0_combout,
	datab => pc_astate_as1_aq,
	datac => reset_n_ainput_o,
	datad => pc_astate_as6_aq,
	combout => pc_astate_a13_combout);

-- Location: FF_X36_Y28_N19
pc_astate_as2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => pc_astate_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_astate_as2_aq);

-- Location: LCCOMB_X36_Y28_N26
po_acount_acnt_a3_a_a1 : cycloneiii_lcell_comb
-- Equation(s):
-- po_acount_acnt_a3_a_a1_combout = pc_astate_as2_aq $ (!pc_astate_as0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_astate_as2_aq,
	datad => pc_astate_as0_aq,
	combout => po_acount_acnt_a3_a_a1_combout);

-- Location: FF_X35_Y28_N25
po_acount_acnt_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_acount_acnt_a0_combout,
	ena => po_acount_acnt_a3_a_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_acount_acnt(0));

-- Location: LCCOMB_X35_Y28_N20
po_acount_acnt_a3 : cycloneiii_lcell_comb
-- Equation(s):
-- po_acount_acnt_a3_combout = (pc_astate_as0_aq & (po_acount_acnt(2) $ (((po_acount_acnt(1) & po_acount_acnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(1),
	datab => pc_astate_as0_aq,
	datac => po_acount_acnt(2),
	datad => po_acount_acnt(0),
	combout => po_acount_acnt_a3_combout);

-- Location: FF_X35_Y28_N21
po_acount_acnt_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_acount_acnt_a3_combout,
	ena => po_acount_acnt_a3_a_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_acount_acnt(2));

-- Location: LCCOMB_X35_Y28_N14
po_akeyGen_amux_aMux1_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_amux_aMux1_a0_combout = (po_acount_acnt(2) & (po_acount_acnt(1) & po_acount_acnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_acount_acnt(2),
	datac => po_acount_acnt(1),
	datad => po_acount_acnt(0),
	combout => po_akeyGen_amux_aMux1_a0_combout);

-- Location: LCCOMB_X35_Y28_N22
po_acount_acnt_a4 : cycloneiii_lcell_comb
-- Equation(s):
-- po_acount_acnt_a4_combout = (pc_astate_as0_aq & (po_acount_acnt(3) $ (po_akeyGen_amux_aMux1_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_astate_as0_aq,
	datac => po_acount_acnt(3),
	datad => po_akeyGen_amux_aMux1_a0_combout,
	combout => po_acount_acnt_a4_combout);

-- Location: FF_X35_Y28_N23
po_acount_acnt_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_acount_acnt_a4_combout,
	ena => po_acount_acnt_a3_a_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_acount_acnt(3));

-- Location: LCCOMB_X35_Y28_N12
pc_aSelector4_a1 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aSelector4_a1_combout = (po_acount_acnt(1)) # ((po_acount_acnt(2)) # ((po_acount_acnt(3)) # (po_acount_acnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(1),
	datab => po_acount_acnt(2),
	datac => po_acount_acnt(3),
	datad => po_acount_acnt(0),
	combout => pc_aSelector4_a1_combout);

-- Location: LCCOMB_X36_Y28_N10
pc_aSelector4_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aSelector4_a0_combout = (pc_astate_as3_aq) # ((pc_astate_as4_aq) # ((pc_astate_as5_aq) # (pc_astate_as6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as3_aq,
	datab => pc_astate_as4_aq,
	datac => pc_astate_as5_aq,
	datad => pc_astate_as6_aq,
	combout => pc_aSelector4_a0_combout);

-- Location: LCCOMB_X32_Y30_N20
po_amux2_aresult_a96_a_a64 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a96_a_a64_combout = (po_akeyGen_areg_aq(0) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => po_akeyGen_areg_aq(0),
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a96_a_a64_combout);

-- Location: LCCOMB_X36_Y28_N16
pc_aWideOr3_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aWideOr3_a0_combout = ((pc_astate_as4_aq) # (pc_astate_as1_aq)) # (!pc_astate_as0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as0_aq,
	datab => pc_astate_as4_aq,
	datac => pc_astate_as1_aq,
	combout => pc_aWideOr3_a0_combout);

-- Location: FF_X32_Y30_N21
po_areg_key_aq_a96_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a96_a_a64_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(96));

-- Location: LCCOMB_X32_Y29_N14
po_akeyGen_ax_a0_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(0) = po_areg_key_aq(96) $ (auto_generated_aram_block1a0_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(96),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_b_a0_a,
	combout => po_akeyGen_ax(0));

-- Location: FF_X32_Y29_N15
po_akeyGen_areg_aq_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(0),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(0));

-- Location: LCCOMB_X32_Y30_N14
po_akeyGen_aroundkey_out_a64_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(64) = po_areg_key_aq(64) $ (po_akeyGen_areg_aq(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(64),
	datad => po_akeyGen_areg_aq(0),
	combout => po_akeyGen_aroundkey_out(64));

-- Location: LCCOMB_X32_Y30_N6
po_amux2_aresult_a64_a_a32 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a64_a_a32_combout = (po_akeyGen_aroundkey_out(64) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => po_akeyGen_aroundkey_out(64),
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a64_a_a32_combout);

-- Location: FF_X32_Y30_N7
po_areg_key_aq_a64_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a64_a_a32_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(64));

-- Location: LCCOMB_X35_Y30_N2
po_akeyGen_aroundkey_out_a32_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(32) = po_areg_key_aq(32) $ (po_akeyGen_areg_aq(0) $ (po_areg_key_aq(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(32),
	datac => po_akeyGen_areg_aq(0),
	datad => po_areg_key_aq(64),
	combout => po_akeyGen_aroundkey_out(32));

-- Location: LCCOMB_X35_Y30_N14
po_amux2_aresult_a32_a_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a32_a_a0_combout = (po_akeyGen_aroundkey_out(32) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => pc_astate_as2_aq,
	datad => po_akeyGen_aroundkey_out(32),
	combout => po_amux2_aresult_a32_a_a0_combout);

-- Location: FF_X35_Y30_N15
po_areg_key_aq_a32_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a32_a_a0_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(32));

-- Location: LCCOMB_X35_Y30_N26
po_akeyGen_aroundkey_out_a0_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(0) = po_akeyGen_areg_aq(0) $ (po_areg_key_aq(32) $ (po_areg_key_aq(0) $ (po_areg_key_aq(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(0),
	datab => po_areg_key_aq(32),
	datac => po_areg_key_aq(0),
	datad => po_areg_key_aq(64),
	combout => po_akeyGen_aroundkey_out(0));

-- Location: LCCOMB_X35_Y28_N30
pc_aSelector4_a2 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aSelector4_a2_combout = (!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => pc_aSelector4_a1_combout,
	combout => pc_aSelector4_a2_combout);

-- Location: FF_X35_Y30_N27
po_areg_key_aq_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(0),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(0));

-- Location: LCCOMB_X34_Y19_N22
po_areg_sub_aq_a112_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a112_a_afeeder_combout = auto_generated_aram_block1a0_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_b_a0_a,
	combout => po_areg_sub_aq_a112_a_afeeder_combout);

-- Location: LCCOMB_X36_Y28_N22
pc_astate_a10 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_astate_a10_combout = (!reset_n_ainput_o & ((pc_astate_as7_aq) # ((pc_aEqual2_a0_combout & pc_astate_as6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aEqual2_a0_combout,
	datab => reset_n_ainput_o,
	datac => pc_astate_as7_aq,
	datad => pc_astate_as6_aq,
	combout => pc_astate_a10_combout);

-- Location: FF_X36_Y28_N23
pc_astate_as7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => pc_astate_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_astate_as7_aq);

-- Location: LCCOMB_X36_Y28_N14
pc_aenable_top_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aenable_top_a0_combout = (!pc_astate_as7_aq & pc_astate_as0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc_astate_as7_aq,
	datad => pc_astate_as0_aq,
	combout => pc_aenable_top_a0_combout);

-- Location: FF_X34_Y19_N23
po_areg_sub_aq_a112_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a112_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(112));

-- Location: FF_X31_Y23_N1
po_areg_shift_aq_a16_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(112),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(16));

-- Location: LCCOMB_X32_Y22_N16
po_areg_sub_aq_a39_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a39_a_afeeder_combout = auto_generated_aram_block1a7_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_b_a7_a,
	combout => po_areg_sub_aq_a39_a_afeeder_combout);

-- Location: FF_X32_Y22_N17
po_areg_sub_aq_a39_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a39_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(39));

-- Location: FF_X31_Y23_N19
po_areg_shift_aq_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(39),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(7));

-- Location: LCCOMB_X32_Y24_N2
po_areg_sub_aq_a31_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a31_a_afeeder_combout = auto_generated_aram_block1a7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem6_arom_rtl_0_aq_a_a7_a,
	combout => po_areg_sub_aq_a31_a_afeeder_combout);

-- Location: FF_X32_Y24_N3
po_areg_sub_aq_a31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a31_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(31));

-- Location: FF_X31_Y23_N21
po_areg_shift_aq_a31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(31),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(31));

-- Location: LCCOMB_X32_Y26_N22
po_areg_sub_aq_a72_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a72_a_afeeder_combout = auto_generated_aram_block1a0_aportadataout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_a_a0_a,
	combout => po_areg_sub_aq_a72_a_afeeder_combout);

-- Location: FF_X32_Y26_N23
po_areg_sub_aq_a72_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a72_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(72));

-- Location: FF_X31_Y23_N9
po_areg_shift_aq_a8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(72),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(8));

-- Location: LCCOMB_X30_Y23_N16
po_amix3_aword_state_out_a0_a_a8 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a0_a_a8_combout = po_areg_shift_aq(24) $ (po_areg_shift_aq(7) $ (po_areg_shift_aq(31) $ (po_areg_shift_aq(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(24),
	datab => po_areg_shift_aq(7),
	datac => po_areg_shift_aq(31),
	datad => po_areg_shift_aq(8),
	combout => po_amix3_aword_state_out_a0_a_a8_combout);

-- Location: LCCOMB_X36_Y23_N16
po_amix3_aword_state_out_a0_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(0) = po_areg_shift_aq(16) $ (po_amix3_aword_state_out_a0_a_a8_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(16),
	datad => po_amix3_aword_state_out_a0_a_a8_combout,
	combout => po_amix3_aword_state_out(0));

-- Location: LCCOMB_X34_Y22_N6
po_areg_sub_aq_a32_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a32_a_afeeder_combout = auto_generated_aram_block1a0_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_b_a0_a,
	combout => po_areg_sub_aq_a32_a_afeeder_combout);

-- Location: FF_X34_Y22_N7
po_areg_sub_aq_a32_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a32_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(32));

-- Location: LCCOMB_X36_Y28_N20
pc_aSelector5_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aSelector5_a0_combout = (pc_astate_as0_aq & (!pc_astate_as2_aq & (!pc_astate_as7_aq & !pc_astate_as1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as0_aq,
	datab => pc_astate_as2_aq,
	datac => pc_astate_as7_aq,
	datad => pc_astate_as1_aq,
	combout => pc_aSelector5_a0_combout);

-- Location: LCCOMB_X35_Y28_N0
pc_aEqual2_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aEqual2_a0_combout = (po_acount_acnt(1) & (!po_acount_acnt(2) & (po_acount_acnt(3) & !po_acount_acnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(1),
	datab => po_acount_acnt(2),
	datac => po_acount_acnt(3),
	datad => po_acount_acnt(0),
	combout => pc_aEqual2_a0_combout);

-- Location: LCCOMB_X35_Y28_N8
pc_aSelector5_a1 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aSelector5_a1_combout = (pc_aSelector5_a0_combout & pc_aEqual2_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc_aSelector5_a0_combout,
	datad => pc_aEqual2_a0_combout,
	combout => pc_aSelector5_a1_combout);

-- Location: FF_X36_Y23_N17
po_areg_mix_aq_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(0),
	asdata => po_areg_sub_aq(32),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(0));

-- Location: LCCOMB_X35_Y26_N4
po_aadd1_astate_out_a0_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(0) = po_areg_key_aq(0) $ (po_areg_mix_aq(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(0),
	datad => po_areg_mix_aq(0),
	combout => po_aadd1_astate_out(0));

-- Location: LCCOMB_X35_Y28_N18
pc_aSelector3_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aSelector3_a0_combout = (pc_astate_as1_aq) # ((pc_astate_as2_aq) # ((pc_astate_as6_aq & pc_aEqual2_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as1_aq,
	datab => pc_astate_as6_aq,
	datac => pc_aEqual2_a0_combout,
	datad => pc_astate_as2_aq,
	combout => pc_aSelector3_a0_combout);

-- Location: FF_X35_Y26_N5
po_areg_add_aq_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(0),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(0));

-- Location: LCCOMB_X32_Y24_N30
po_areg_sub_aq_a24_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a24_a_afeeder_combout = auto_generated_aram_block1a0_aportadataout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_a_a0_a,
	combout => po_areg_sub_aq_a24_a_afeeder_combout);

-- Location: FF_X32_Y24_N31
po_areg_sub_aq_a24_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a24_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(24));

-- Location: FF_X31_Y23_N31
po_areg_shift_aq_a24_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(24),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(24));

-- Location: LCCOMB_X34_Y19_N4
po_areg_sub_aq_a113_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a113_a_afeeder_combout = auto_generated_aram_block1a1_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem0_arom_rtl_0_aq_b_a1_a,
	combout => po_areg_sub_aq_a113_a_afeeder_combout);

-- Location: FF_X34_Y19_N5
po_areg_sub_aq_a113_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a113_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(113));

-- Location: FF_X31_Y23_N13
po_areg_shift_aq_a17_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(113),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(17));

-- Location: LCCOMB_X31_Y23_N30
po_amix3_aword_state_out_a25_a_a9 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a25_a_a9_combout = po_areg_shift_aq(9) $ (po_areg_shift_aq(31) $ (po_areg_shift_aq(24) $ (po_areg_shift_aq(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(9),
	datab => po_areg_shift_aq(31),
	datac => po_areg_shift_aq(24),
	datad => po_areg_shift_aq(17),
	combout => po_amix3_aword_state_out_a25_a_a9_combout);

-- Location: LCCOMB_X34_Y24_N30
po_areg_sub_aq_a25_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a25_a_afeeder_combout = auto_generated_aram_block1a1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_a_a1_a,
	combout => po_areg_sub_aq_a25_a_afeeder_combout);

-- Location: FF_X34_Y24_N31
po_areg_sub_aq_a25_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a25_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(25));

-- Location: LCCOMB_X31_Y20_N6
po_areg_shift_aq_a25_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a25_a_afeeder_combout = po_areg_sub_aq(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(25),
	combout => po_areg_shift_aq_a25_a_afeeder_combout);

-- Location: FF_X31_Y20_N7
po_areg_shift_aq_a25_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a25_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(25));

-- Location: LCCOMB_X31_Y23_N22
po_amix3_aword_state_out_a1_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(1) = po_areg_shift_aq(0) $ (po_areg_shift_aq(7) $ (po_amix3_aword_state_out_a25_a_a9_combout $ (po_areg_shift_aq(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(0),
	datab => po_areg_shift_aq(7),
	datac => po_amix3_aword_state_out_a25_a_a9_combout,
	datad => po_areg_shift_aq(25),
	combout => po_amix3_aword_state_out(1));

-- Location: LCCOMB_X32_Y26_N10
po_areg_mix_aq_a1_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a1_a_afeeder_combout = po_amix3_aword_state_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(1),
	combout => po_areg_mix_aq_a1_a_afeeder_combout);

-- Location: FF_X32_Y22_N29
po_areg_sub_aq_a33_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_asub_amem5_arom_rtl_0_aq_b_a1_a,
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(33));

-- Location: FF_X32_Y26_N11
po_areg_mix_aq_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a1_a_afeeder_combout,
	asdata => po_areg_sub_aq(33),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(1));

-- Location: LCCOMB_X34_Y27_N2
po_amux2_aresult_a97_a_a65 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a97_a_a65_combout = (po_akeyGen_areg_aq(1)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => po_akeyGen_areg_aq(1),
	datac => pc_astate_as2_aq,
	datad => pc_aSelector4_a1_combout,
	combout => po_amux2_aresult_a97_a_a65_combout);

-- Location: FF_X34_Y27_N3
po_areg_key_aq_a97_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a97_a_a65_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(97));

-- Location: LCCOMB_X34_Y29_N28
po_akeyGen_ax_a1_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(1) = auto_generated_aram_block1a1_aPORTBDATAOUT0 $ (po_areg_key_aq(97))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_amem1_arom_rtl_0_aq_b_a1_a,
	datad => po_areg_key_aq(97),
	combout => po_akeyGen_ax(1));

-- Location: FF_X34_Y29_N29
po_akeyGen_areg_aq_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(1),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(1));

-- Location: LCCOMB_X35_Y27_N16
po_amux2_aresult_a65_a_a33 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a65_a_a33_combout = (po_akeyGen_aroundkey_out(65)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_aroundkey_out(65),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => pc_aSelector4_a1_combout,
	combout => po_amux2_aresult_a65_a_a33_combout);

-- Location: FF_X35_Y27_N17
po_areg_key_aq_a65_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a65_a_a33_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(65));

-- Location: LCCOMB_X35_Y30_N0
po_akeyGen_aroundkey_out_a33_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(33) = po_akeyGen_areg_aq(1) $ (po_areg_key_aq(65) $ (po_areg_key_aq(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_akeyGen_areg_aq(1),
	datac => po_areg_key_aq(65),
	datad => po_areg_key_aq(33),
	combout => po_akeyGen_aroundkey_out(33));

-- Location: LCCOMB_X35_Y30_N12
po_amux2_aresult_a33_a_a1 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a33_a_a1_combout = (po_akeyGen_aroundkey_out(33) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => pc_astate_as2_aq,
	datad => po_akeyGen_aroundkey_out(33),
	combout => po_amux2_aresult_a33_a_a1_combout);

-- Location: FF_X35_Y30_N13
po_areg_key_aq_a33_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a33_a_a1_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(33));

-- Location: LCCOMB_X35_Y30_N28
po_akeyGen_aroundkey_out_a1_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(1) = po_areg_key_aq(65) $ (po_akeyGen_areg_aq(1) $ (po_areg_key_aq(1) $ (po_areg_key_aq(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(65),
	datab => po_akeyGen_areg_aq(1),
	datac => po_areg_key_aq(1),
	datad => po_areg_key_aq(33),
	combout => po_akeyGen_aroundkey_out(1));

-- Location: FF_X35_Y30_N29
po_areg_key_aq_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(1),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(1));

-- Location: LCCOMB_X31_Y26_N4
po_aadd1_astate_out_a1_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(1) = po_areg_mix_aq(1) $ (po_areg_key_aq(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(1),
	datac => po_areg_key_aq(1),
	combout => po_aadd1_astate_out(1));

-- Location: FF_X31_Y26_N5
po_areg_add_aq_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(1),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(1));

-- Location: LCCOMB_X31_Y29_N16
po_amux2_aresult_a98_a_a66 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a98_a_a66_combout = (po_akeyGen_areg_aq(2)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_areg_aq(2),
	combout => po_amux2_aresult_a98_a_a66_combout);

-- Location: FF_X31_Y29_N17
po_areg_key_aq_a98_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a98_a_a66_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(98));

-- Location: LCCOMB_X32_Y29_N24
po_akeyGen_ax_a2_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(2) = po_areg_key_aq(98) $ (auto_generated_aram_block1a2_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(98),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_b_a2_a,
	combout => po_akeyGen_ax(2));

-- Location: FF_X32_Y29_N25
po_akeyGen_areg_aq_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(2),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(2));

-- Location: LCCOMB_X31_Y29_N18
po_amux2_aresult_a66_a_a34 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a66_a_a34_combout = (po_akeyGen_aroundkey_out(66)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_aroundkey_out(66),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a66_a_a34_combout);

-- Location: FF_X31_Y29_N19
po_areg_key_aq_a66_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a66_a_a34_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(66));

-- Location: LCCOMB_X31_Y29_N4
po_akeyGen_aroundkey_out_a2_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(2) = po_areg_key_aq(34) $ (po_akeyGen_areg_aq(2) $ (po_areg_key_aq(2) $ (po_areg_key_aq(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(34),
	datab => po_akeyGen_areg_aq(2),
	datac => po_areg_key_aq(2),
	datad => po_areg_key_aq(66),
	combout => po_akeyGen_aroundkey_out(2));

-- Location: FF_X31_Y29_N5
po_areg_key_aq_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(2),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(2));

-- Location: LCCOMB_X32_Y24_N18
po_areg_sub_aq_a26_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a26_a_afeeder_combout = auto_generated_aram_block1a2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem6_arom_rtl_0_aq_a_a2_a,
	combout => po_areg_sub_aq_a26_a_afeeder_combout);

-- Location: FF_X32_Y24_N19
po_areg_sub_aq_a26_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a26_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(26));

-- Location: FF_X31_Y23_N5
po_areg_shift_aq_a26_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(26),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(26));

-- Location: LCCOMB_X34_Y19_N26
po_areg_sub_aq_a114_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a114_a_afeeder_combout = auto_generated_aram_block1a2_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem0_arom_rtl_0_aq_b_a2_a,
	combout => po_areg_sub_aq_a114_a_afeeder_combout);

-- Location: FF_X34_Y19_N27
po_areg_sub_aq_a114_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a114_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(114));

-- Location: LCCOMB_X32_Y22_N6
po_areg_shift_aq_a18_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a18_a_afeeder_combout = po_areg_sub_aq(114)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(114),
	combout => po_areg_shift_aq_a18_a_afeeder_combout);

-- Location: FF_X32_Y22_N7
po_areg_shift_aq_a18_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a18_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(18));

-- Location: LCCOMB_X34_Y26_N2
po_areg_sub_aq_a74_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a74_a_afeeder_combout = auto_generated_aram_block1a2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_a_a2_a,
	combout => po_areg_sub_aq_a74_a_afeeder_combout);

-- Location: FF_X34_Y26_N3
po_areg_sub_aq_a74_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a74_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(74));

-- Location: LCCOMB_X30_Y22_N28
po_areg_shift_aq_a10_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a10_a_afeeder_combout = po_areg_sub_aq(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(74),
	combout => po_areg_shift_aq_a10_a_afeeder_combout);

-- Location: FF_X30_Y22_N29
po_areg_shift_aq_a10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a10_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(10));

-- Location: LCCOMB_X31_Y23_N28
po_amix3_aword_state_out_a26_a_a11 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a26_a_a11_combout = po_areg_shift_aq(25) $ (po_areg_shift_aq(18) $ (po_areg_shift_aq(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(25),
	datab => po_areg_shift_aq(18),
	datad => po_areg_shift_aq(10),
	combout => po_amix3_aword_state_out_a26_a_a11_combout);

-- Location: LCCOMB_X31_Y22_N8
po_amix3_aword_state_out_a2_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(2) = po_areg_shift_aq(1) $ (po_areg_shift_aq(26) $ (po_amix3_aword_state_out_a26_a_a11_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(1),
	datab => po_areg_shift_aq(26),
	datad => po_amix3_aword_state_out_a26_a_a11_combout,
	combout => po_amix3_aword_state_out(2));

-- Location: FF_X32_Y22_N25
po_areg_sub_aq_a34_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_asub_amem5_arom_rtl_0_aq_b_a2_a,
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(34));

-- Location: FF_X31_Y22_N9
po_areg_mix_aq_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(2),
	asdata => po_areg_sub_aq(34),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(2));

-- Location: LCCOMB_X32_Y29_N8
po_aadd1_astate_out_a2_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(2) = po_areg_key_aq(2) $ (po_areg_mix_aq(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(2),
	datad => po_areg_mix_aq(2),
	combout => po_aadd1_astate_out(2));

-- Location: FF_X32_Y29_N9
po_areg_add_aq_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(2),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(2));

-- Location: LCCOMB_X35_Y27_N12
po_amux2_aresult_a99_a_a67 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a99_a_a67_combout = (po_akeyGen_areg_aq(3) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => po_akeyGen_areg_aq(3),
	datad => pc_aSelector4_a1_combout,
	combout => po_amux2_aresult_a99_a_a67_combout);

-- Location: FF_X35_Y27_N13
po_areg_key_aq_a99_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a99_a_a67_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(99));

-- Location: LCCOMB_X34_Y29_N22
po_akeyGen_ax_a3_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(3) = po_areg_key_aq(99) $ (auto_generated_aram_block1a3_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(99),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_b_a3_a,
	combout => po_akeyGen_ax(3));

-- Location: FF_X34_Y29_N23
po_akeyGen_areg_aq_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(3),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(3));

-- Location: LCCOMB_X35_Y27_N18
po_akeyGen_aroundkey_out_a67_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(67) = po_akeyGen_areg_aq(3) $ (po_areg_key_aq(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(3),
	datad => po_areg_key_aq(67),
	combout => po_akeyGen_aroundkey_out(67));

-- Location: LCCOMB_X35_Y27_N6
po_amux2_aresult_a67_a_a35 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a67_a_a35_combout = (po_akeyGen_aroundkey_out(67) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => pc_astate_as2_aq,
	datad => po_akeyGen_aroundkey_out(67),
	combout => po_amux2_aresult_a67_a_a35_combout);

-- Location: FF_X35_Y27_N7
po_areg_key_aq_a67_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a67_a_a35_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(67));

-- Location: LCCOMB_X34_Y27_N8
po_akeyGen_aroundkey_out_a3_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(3) = po_areg_key_aq(35) $ (po_akeyGen_areg_aq(3) $ (po_areg_key_aq(3) $ (po_areg_key_aq(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(35),
	datab => po_akeyGen_areg_aq(3),
	datac => po_areg_key_aq(3),
	datad => po_areg_key_aq(67),
	combout => po_akeyGen_aroundkey_out(3));

-- Location: FF_X34_Y27_N9
po_areg_key_aq_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(3),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(3));

-- Location: LCCOMB_X32_Y26_N0
po_areg_sub_aq_a75_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a75_a_afeeder_combout = auto_generated_aram_block1a3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_a_a3_a,
	combout => po_areg_sub_aq_a75_a_afeeder_combout);

-- Location: FF_X32_Y26_N1
po_areg_sub_aq_a75_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a75_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(75));

-- Location: LCCOMB_X31_Y22_N24
po_areg_shift_aq_a11_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a11_a_afeeder_combout = po_areg_sub_aq(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(75),
	combout => po_areg_shift_aq_a11_a_afeeder_combout);

-- Location: FF_X31_Y22_N25
po_areg_shift_aq_a11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a11_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(11));

-- Location: LCCOMB_X34_Y19_N20
po_areg_sub_aq_a115_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a115_a_afeeder_combout = auto_generated_aram_block1a3_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_b_a3_a,
	combout => po_areg_sub_aq_a115_a_afeeder_combout);

-- Location: FF_X34_Y19_N21
po_areg_sub_aq_a115_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a115_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(115));

-- Location: LCCOMB_X31_Y22_N18
po_areg_shift_aq_a19_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a19_a_afeeder_combout = po_areg_sub_aq(115)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(115),
	combout => po_areg_shift_aq_a19_a_afeeder_combout);

-- Location: FF_X31_Y22_N19
po_areg_shift_aq_a19_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a19_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(19));

-- Location: LCCOMB_X31_Y22_N20
po_amix3_aword_state_out_a3_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(3) = po_amix3_aword_state_out_a3_a_a12_combout $ (po_areg_shift_aq(11) $ (po_areg_shift_aq(19) $ (po_areg_shift_aq(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out_a3_a_a12_combout,
	datab => po_areg_shift_aq(11),
	datac => po_areg_shift_aq(19),
	datad => po_areg_shift_aq(26),
	combout => po_amix3_aword_state_out(3));

-- Location: LCCOMB_X31_Y22_N6
po_areg_mix_aq_a3_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a3_a_afeeder_combout = po_amix3_aword_state_out(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(3),
	combout => po_areg_mix_aq_a3_a_afeeder_combout);

-- Location: LCCOMB_X32_Y22_N10
po_areg_sub_aq_a35_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a35_a_afeeder_combout = auto_generated_aram_block1a3_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_b_a3_a,
	combout => po_areg_sub_aq_a35_a_afeeder_combout);

-- Location: FF_X32_Y22_N11
po_areg_sub_aq_a35_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a35_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(35));

-- Location: FF_X31_Y22_N7
po_areg_mix_aq_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a3_a_afeeder_combout,
	asdata => po_areg_sub_aq(35),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(3));

-- Location: LCCOMB_X34_Y27_N28
po_aadd1_astate_out_a3_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(3) = po_areg_key_aq(3) $ (po_areg_mix_aq(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(3),
	datad => po_areg_mix_aq(3),
	combout => po_aadd1_astate_out(3));

-- Location: FF_X34_Y27_N29
po_areg_add_aq_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(3),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(3));

-- Location: LCCOMB_X34_Y30_N30
po_amux2_aresult_a100_a_a68 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a100_a_a68_combout = (po_akeyGen_areg_aq(4)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_areg_aq(4),
	combout => po_amux2_aresult_a100_a_a68_combout);

-- Location: FF_X34_Y30_N31
po_areg_key_aq_a100_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a100_a_a68_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(100));

-- Location: LCCOMB_X34_Y29_N16
po_akeyGen_ax_a4_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(4) = po_areg_key_aq(100) $ (auto_generated_aram_block1a4_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(100),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_b_a4_a,
	combout => po_akeyGen_ax(4));

-- Location: FF_X34_Y29_N17
po_akeyGen_areg_aq_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(4),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(4));

-- Location: LCCOMB_X35_Y30_N16
po_akeyGen_aroundkey_out_a68_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(68) = po_areg_key_aq(68) $ (po_akeyGen_areg_aq(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(68),
	datac => po_akeyGen_areg_aq(4),
	combout => po_akeyGen_aroundkey_out(68));

-- Location: LCCOMB_X35_Y30_N4
po_amux2_aresult_a68_a_a36 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a68_a_a36_combout = (po_akeyGen_aroundkey_out(68) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => pc_astate_as2_aq,
	datad => po_akeyGen_aroundkey_out(68),
	combout => po_amux2_aresult_a68_a_a36_combout);

-- Location: FF_X35_Y30_N5
po_areg_key_aq_a68_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a68_a_a36_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(68));

-- Location: LCCOMB_X35_Y30_N22
po_akeyGen_aroundkey_out_a36_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(36) = po_areg_key_aq(68) $ (po_akeyGen_areg_aq(4) $ (po_areg_key_aq(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(68),
	datac => po_akeyGen_areg_aq(4),
	datad => po_areg_key_aq(36),
	combout => po_akeyGen_aroundkey_out(36));

-- Location: LCCOMB_X35_Y30_N6
po_amux2_aresult_a36_a_a4 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a36_a_a4_combout = (po_akeyGen_aroundkey_out(36) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(36),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a36_a_a4_combout);

-- Location: FF_X35_Y30_N7
po_areg_key_aq_a36_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a36_a_a4_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(36));

-- Location: LCCOMB_X34_Y30_N14
po_akeyGen_aroundkey_out_a4_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(4) = po_areg_key_aq(68) $ (po_akeyGen_areg_aq(4) $ (po_areg_key_aq(4) $ (po_areg_key_aq(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(68),
	datab => po_akeyGen_areg_aq(4),
	datac => po_areg_key_aq(4),
	datad => po_areg_key_aq(36),
	combout => po_akeyGen_aroundkey_out(4));

-- Location: FF_X34_Y30_N15
po_areg_key_aq_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(4),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(4));

-- Location: LCCOMB_X34_Y22_N22
po_areg_mix_aq_a4_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a4_a_afeeder_combout = po_amix3_aword_state_out(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out(4),
	combout => po_areg_mix_aq_a4_a_afeeder_combout);

-- Location: LCCOMB_X34_Y22_N8
po_areg_sub_aq_a36_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a36_a_afeeder_combout = auto_generated_aram_block1a4_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_b_a4_a,
	combout => po_areg_sub_aq_a36_a_afeeder_combout);

-- Location: FF_X34_Y22_N9
po_areg_sub_aq_a36_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a36_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(36));

-- Location: FF_X34_Y22_N23
po_areg_mix_aq_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a4_a_afeeder_combout,
	asdata => po_areg_sub_aq(36),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(4));

-- Location: LCCOMB_X35_Y26_N6
po_aadd1_astate_out_a4_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(4) = po_areg_key_aq(4) $ (po_areg_mix_aq(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(4),
	datad => po_areg_mix_aq(4),
	combout => po_aadd1_astate_out(4));

-- Location: FF_X35_Y26_N7
po_areg_add_aq_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(4),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(4));

-- Location: LCCOMB_X31_Y24_N0
po_areg_shift_aq_a4_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a4_a_afeeder_combout = po_areg_sub_aq(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(36),
	combout => po_areg_shift_aq_a4_a_afeeder_combout);

-- Location: FF_X31_Y24_N1
po_areg_shift_aq_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a4_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(4));

-- Location: LCCOMB_X32_Y19_N26
po_areg_sub_aq_a117_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a117_a_afeeder_combout = auto_generated_aram_block1a5_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem0_arom_rtl_0_aq_b_a5_a,
	combout => po_areg_sub_aq_a117_a_afeeder_combout);

-- Location: FF_X32_Y19_N27
po_areg_sub_aq_a117_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a117_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(117));

-- Location: FF_X31_Y24_N21
po_areg_shift_aq_a21_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(117),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(21));

-- Location: LCCOMB_X31_Y24_N26
po_amix3_aword_state_out_a13_a_a14 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a13_a_a14_combout = po_areg_shift_aq(29) $ (po_areg_shift_aq(4) $ (po_areg_shift_aq(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(29),
	datab => po_areg_shift_aq(4),
	datad => po_areg_shift_aq(21),
	combout => po_amix3_aword_state_out_a13_a_a14_combout);

-- Location: LCCOMB_X34_Y26_N12
po_areg_sub_aq_a77_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a77_a_afeeder_combout = auto_generated_aram_block1a5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_a_a5_a,
	combout => po_areg_sub_aq_a77_a_afeeder_combout);

-- Location: FF_X34_Y26_N13
po_areg_sub_aq_a77_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a77_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(77));

-- Location: LCCOMB_X34_Y22_N16
po_areg_shift_aq_a13_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a13_a_afeeder_combout = po_areg_sub_aq(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(77),
	combout => po_areg_shift_aq_a13_a_afeeder_combout);

-- Location: FF_X34_Y22_N17
po_areg_shift_aq_a13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a13_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(13));

-- Location: LCCOMB_X34_Y22_N12
po_amix3_aword_state_out_a5_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(5) = po_areg_shift_aq(28) $ (po_amix3_aword_state_out_a13_a_a14_combout $ (po_areg_shift_aq(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(28),
	datab => po_amix3_aword_state_out_a13_a_a14_combout,
	datad => po_areg_shift_aq(13),
	combout => po_amix3_aword_state_out(5));

-- Location: LCCOMB_X34_Y22_N26
po_areg_sub_aq_a37_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a37_a_afeeder_combout = auto_generated_aram_block1a5_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_b_a5_a,
	combout => po_areg_sub_aq_a37_a_afeeder_combout);

-- Location: FF_X34_Y22_N27
po_areg_sub_aq_a37_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a37_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(37));

-- Location: FF_X34_Y22_N13
po_areg_mix_aq_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(5),
	asdata => po_areg_sub_aq(37),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(5));

-- Location: LCCOMB_X31_Y29_N14
po_amux2_aresult_a101_a_a69 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a101_a_a69_combout = (po_akeyGen_areg_aq(5) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(5),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a101_a_a69_combout);

-- Location: FF_X31_Y29_N15
po_areg_key_aq_a101_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a101_a_a69_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(101));

-- Location: LCCOMB_X32_Y29_N30
po_akeyGen_ax_a5_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(5) = auto_generated_aram_block1a5_aPORTBDATAOUT0 $ (po_areg_key_aq(101))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_amem1_arom_rtl_0_aq_b_a5_a,
	datad => po_areg_key_aq(101),
	combout => po_akeyGen_ax(5));

-- Location: FF_X32_Y29_N31
po_akeyGen_areg_aq_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(5),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(5));

-- Location: LCCOMB_X34_Y27_N12
po_akeyGen_aroundkey_out_a37_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(37) = po_areg_key_aq(69) $ (po_areg_key_aq(37) $ (po_akeyGen_areg_aq(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(69),
	datab => po_areg_key_aq(37),
	datac => po_akeyGen_areg_aq(5),
	combout => po_akeyGen_aroundkey_out(37));

-- Location: LCCOMB_X34_Y27_N16
po_amux2_aresult_a37_a_a5 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a37_a_a5_combout = (po_akeyGen_aroundkey_out(37) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => pc_astate_as2_aq,
	datad => po_akeyGen_aroundkey_out(37),
	combout => po_amux2_aresult_a37_a_a5_combout);

-- Location: FF_X34_Y27_N17
po_areg_key_aq_a37_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a37_a_a5_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(37));

-- Location: LCCOMB_X34_Y27_N26
po_akeyGen_aroundkey_out_a5_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(5) = po_areg_key_aq(69) $ (po_akeyGen_areg_aq(5) $ (po_areg_key_aq(5) $ (po_areg_key_aq(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(69),
	datab => po_akeyGen_areg_aq(5),
	datac => po_areg_key_aq(5),
	datad => po_areg_key_aq(37),
	combout => po_akeyGen_aroundkey_out(5));

-- Location: FF_X34_Y27_N27
po_areg_key_aq_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(5),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(5));

-- Location: LCCOMB_X35_Y26_N24
po_aadd1_astate_out_a5_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(5) = po_areg_mix_aq(5) $ (po_areg_key_aq(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(5),
	datac => po_areg_key_aq(5),
	combout => po_aadd1_astate_out(5));

-- Location: FF_X35_Y26_N25
po_areg_add_aq_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(5),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(5));

-- Location: LCCOMB_X31_Y28_N10
po_amux2_aresult_a102_a_a70 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a102_a_a70_combout = (po_akeyGen_areg_aq(6) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_areg_aq(6),
	combout => po_amux2_aresult_a102_a_a70_combout);

-- Location: FF_X31_Y28_N11
po_areg_key_aq_a102_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a102_a_a70_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(102));

-- Location: LCCOMB_X32_Y29_N0
po_akeyGen_ax_a6_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(6) = po_areg_key_aq(102) $ (auto_generated_aram_block1a6_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(102),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_b_a6_a,
	combout => po_akeyGen_ax(6));

-- Location: FF_X32_Y29_N1
po_akeyGen_areg_aq_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(6),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(6));

-- Location: LCCOMB_X31_Y28_N28
po_akeyGen_aroundkey_out_a70_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(70) = po_areg_key_aq(70) $ (po_akeyGen_areg_aq(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(70),
	datad => po_akeyGen_areg_aq(6),
	combout => po_akeyGen_aroundkey_out(70));

-- Location: LCCOMB_X31_Y28_N2
po_amux2_aresult_a70_a_a38 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a70_a_a38_combout = (po_akeyGen_aroundkey_out(70) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(70),
	combout => po_amux2_aresult_a70_a_a38_combout);

-- Location: FF_X31_Y28_N3
po_areg_key_aq_a70_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a70_a_a38_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(70));

-- Location: LCCOMB_X31_Y28_N18
po_akeyGen_aroundkey_out_a6_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(6) = po_areg_key_aq(38) $ (po_akeyGen_areg_aq(6) $ (po_areg_key_aq(6) $ (po_areg_key_aq(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(38),
	datab => po_akeyGen_areg_aq(6),
	datac => po_areg_key_aq(6),
	datad => po_areg_key_aq(70),
	combout => po_akeyGen_aroundkey_out(6));

-- Location: FF_X31_Y28_N19
po_areg_key_aq_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(6),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(6));

-- Location: LCCOMB_X34_Y22_N30
po_areg_shift_aq_a5_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a5_a_afeeder_combout = po_areg_sub_aq(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(37),
	combout => po_areg_shift_aq_a5_a_afeeder_combout);

-- Location: FF_X34_Y22_N31
po_areg_shift_aq_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a5_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(5));

-- Location: LCCOMB_X32_Y19_N18
po_areg_sub_aq_a118_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a118_a_afeeder_combout = auto_generated_aram_block1a6_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_b_a6_a,
	combout => po_areg_sub_aq_a118_a_afeeder_combout);

-- Location: FF_X32_Y19_N19
po_areg_sub_aq_a118_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a118_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(118));

-- Location: FF_X31_Y24_N13
po_areg_shift_aq_a22_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(118),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(22));

-- Location: LCCOMB_X32_Y23_N8
po_amix3_aword_state_out_a6_a_a15 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a6_a_a15_combout = po_areg_shift_aq(30) $ (po_areg_shift_aq(5) $ (po_areg_shift_aq(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(30),
	datac => po_areg_shift_aq(5),
	datad => po_areg_shift_aq(22),
	combout => po_amix3_aword_state_out_a6_a_a15_combout);

-- Location: LCCOMB_X31_Y24_N30
po_areg_sub_aq_a29_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a29_a_afeeder_combout = auto_generated_aram_block1a5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_a_a5_a,
	combout => po_areg_sub_aq_a29_a_afeeder_combout);

-- Location: FF_X31_Y24_N31
po_areg_sub_aq_a29_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a29_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(29));

-- Location: FF_X31_Y24_N3
po_areg_shift_aq_a29_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(29),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(29));

-- Location: LCCOMB_X32_Y23_N12
po_amix3_aword_state_out_a6_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(6) = po_areg_shift_aq(14) $ (po_amix3_aword_state_out_a6_a_a15_combout $ (po_areg_shift_aq(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(14),
	datab => po_amix3_aword_state_out_a6_a_a15_combout,
	datad => po_areg_shift_aq(29),
	combout => po_amix3_aword_state_out(6));

-- Location: LCCOMB_X32_Y22_N22
po_areg_sub_aq_a38_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a38_a_afeeder_combout = auto_generated_aram_block1a6_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem5_arom_rtl_0_aq_b_a6_a,
	combout => po_areg_sub_aq_a38_a_afeeder_combout);

-- Location: FF_X32_Y22_N23
po_areg_sub_aq_a38_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a38_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(38));

-- Location: FF_X32_Y23_N13
po_areg_mix_aq_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(6),
	asdata => po_areg_sub_aq(38),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(6));

-- Location: LCCOMB_X31_Y26_N6
po_aadd1_astate_out_a6_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(6) = po_areg_key_aq(6) $ (po_areg_mix_aq(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(6),
	datad => po_areg_mix_aq(6),
	combout => po_aadd1_astate_out(6));

-- Location: FF_X31_Y26_N7
po_areg_add_aq_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(6),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(6));

-- Location: LCCOMB_X35_Y29_N30
po_amux2_aresult_a103_a_a71 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a103_a_a71_combout = (po_akeyGen_areg_aq(7) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => po_akeyGen_areg_aq(7),
	datac => pc_astate_as2_aq,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a103_a_a71_combout);

-- Location: FF_X35_Y29_N31
po_areg_key_aq_a103_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a103_a_a71_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(103));

-- Location: LCCOMB_X34_Y29_N30
po_akeyGen_ax_a7_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(7) = po_areg_key_aq(103) $ (auto_generated_aram_block1a7_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(103),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_b_a7_a,
	combout => po_akeyGen_ax(7));

-- Location: FF_X34_Y29_N31
po_akeyGen_areg_aq_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(7),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(7));

-- Location: LCCOMB_X35_Y27_N24
po_akeyGen_aroundkey_out_a39_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(39) = po_areg_key_aq(71) $ (po_areg_key_aq(39) $ (po_akeyGen_areg_aq(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(71),
	datac => po_areg_key_aq(39),
	datad => po_akeyGen_areg_aq(7),
	combout => po_akeyGen_aroundkey_out(39));

-- Location: LCCOMB_X35_Y27_N30
po_amux2_aresult_a39_a_a7 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a39_a_a7_combout = (po_akeyGen_aroundkey_out(39)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => pc_astate_as2_aq,
	datad => po_akeyGen_aroundkey_out(39),
	combout => po_amux2_aresult_a39_a_a7_combout);

-- Location: FF_X35_Y27_N31
po_areg_key_aq_a39_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a39_a_a7_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(39));

-- Location: LCCOMB_X36_Y27_N10
po_akeyGen_aroundkey_out_a71_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(71) = po_akeyGen_areg_aq(7) $ (po_areg_key_aq(71))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(7),
	datad => po_areg_key_aq(71),
	combout => po_akeyGen_aroundkey_out(71));

-- Location: LCCOMB_X36_Y27_N2
po_amux2_aresult_a71_a_a39 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a71_a_a39_combout = (po_akeyGen_aroundkey_out(71)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a0_combout,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(71),
	combout => po_amux2_aresult_a71_a_a39_combout);

-- Location: FF_X36_Y27_N3
po_areg_key_aq_a71_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a71_a_a39_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(71));

-- Location: LCCOMB_X35_Y27_N26
po_akeyGen_aroundkey_out_a7_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(7) = po_akeyGen_areg_aq(7) $ (po_areg_key_aq(39) $ (po_areg_key_aq(7) $ (po_areg_key_aq(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(7),
	datab => po_areg_key_aq(39),
	datac => po_areg_key_aq(7),
	datad => po_areg_key_aq(71),
	combout => po_akeyGen_aroundkey_out(7));

-- Location: FF_X35_Y27_N27
po_areg_key_aq_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(7),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(7));

-- Location: LCCOMB_X32_Y26_N30
po_areg_sub_aq_a79_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a79_a_afeeder_combout = auto_generated_aram_block1a7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem3_arom_rtl_0_aq_a_a7_a,
	combout => po_areg_sub_aq_a79_a_afeeder_combout);

-- Location: FF_X32_Y26_N31
po_areg_sub_aq_a79_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a79_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(79));

-- Location: FF_X31_Y23_N17
po_areg_shift_aq_a15_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(79),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(15));

-- Location: LCCOMB_X32_Y19_N22
po_areg_sub_aq_a119_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a119_a_afeeder_combout = auto_generated_aram_block1a7_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_b_a7_a,
	combout => po_areg_sub_aq_a119_a_afeeder_combout);

-- Location: FF_X32_Y19_N23
po_areg_sub_aq_a119_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a119_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(119));

-- Location: LCCOMB_X32_Y23_N30
po_areg_shift_aq_a23_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a23_a_afeeder_combout = po_areg_sub_aq(119)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(119),
	combout => po_areg_shift_aq_a23_a_afeeder_combout);

-- Location: FF_X32_Y23_N31
po_areg_shift_aq_a23_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a23_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(23));

-- Location: LCCOMB_X31_Y23_N4
po_amix3_aword_state_out_a28_a_a16 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a28_a_a16_combout = po_areg_shift_aq(23) $ (po_areg_shift_aq(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(23),
	datad => po_areg_shift_aq(31),
	combout => po_amix3_aword_state_out_a28_a_a16_combout);

-- Location: FF_X31_Y25_N5
po_areg_shift_aq_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(38),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(6));

-- Location: LCCOMB_X31_Y20_N20
po_amix3_aword_state_out_a7_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(7) = po_areg_shift_aq(30) $ (po_areg_shift_aq(15) $ (po_amix3_aword_state_out_a28_a_a16_combout $ (po_areg_shift_aq(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(30),
	datab => po_areg_shift_aq(15),
	datac => po_amix3_aword_state_out_a28_a_a16_combout,
	datad => po_areg_shift_aq(6),
	combout => po_amix3_aword_state_out(7));

-- Location: LCCOMB_X35_Y20_N24
po_areg_mix_aq_a7_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a7_a_afeeder_combout = po_amix3_aword_state_out(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(7),
	combout => po_areg_mix_aq_a7_a_afeeder_combout);

-- Location: FF_X35_Y20_N25
po_areg_mix_aq_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a7_a_afeeder_combout,
	asdata => po_areg_sub_aq(39),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(7));

-- Location: LCCOMB_X35_Y27_N4
po_aadd1_astate_out_a7_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(7) = po_areg_key_aq(7) $ (po_areg_mix_aq(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(7),
	datad => po_areg_mix_aq(7),
	combout => po_aadd1_astate_out(7));

-- Location: FF_X35_Y27_N5
po_areg_add_aq_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(7),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(7));

-- Location: LCCOMB_X35_Y29_N24
po_amux2_aresult_a104_a_a72 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a104_a_a72_combout = (po_akeyGen_areg_aq(8)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => po_akeyGen_areg_aq(8),
	datac => pc_astate_as2_aq,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a104_a_a72_combout);

-- Location: FF_X35_Y29_N25
po_areg_key_aq_a104_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a104_a_a72_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(104));

-- Location: LCCOMB_X34_Y29_N18
po_akeyGen_ax_a8_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(8) = po_areg_key_aq(104) $ (auto_generated_aram_block1a0_aportadataout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(104),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_a_a0_a,
	combout => po_akeyGen_ax(8));

-- Location: FF_X34_Y29_N19
po_akeyGen_areg_aq_a8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(8),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(8));

-- Location: LCCOMB_X35_Y29_N6
po_amux2_aresult_a40_a_a8 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a40_a_a8_combout = (po_akeyGen_aroundkey_out(40)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_aroundkey_out(40),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a40_a_a8_combout);

-- Location: FF_X35_Y29_N7
po_areg_key_aq_a40_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a40_a_a8_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(40));

-- Location: LCCOMB_X35_Y29_N12
po_akeyGen_aroundkey_out_a8_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(8) = po_areg_key_aq(72) $ (po_akeyGen_areg_aq(8) $ (po_areg_key_aq(8) $ (po_areg_key_aq(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(72),
	datab => po_akeyGen_areg_aq(8),
	datac => po_areg_key_aq(8),
	datad => po_areg_key_aq(40),
	combout => po_akeyGen_aroundkey_out(8));

-- Location: FF_X35_Y29_N13
po_areg_key_aq_a8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(8),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(8));

-- Location: LCCOMB_X30_Y23_N14
po_areg_shift_aq_a0_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a0_a_afeeder_combout = po_areg_sub_aq(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(32),
	combout => po_areg_shift_aq_a0_a_afeeder_combout);

-- Location: FF_X30_Y23_N15
po_areg_shift_aq_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a0_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(0));

-- Location: LCCOMB_X30_Y23_N0
po_amix3_am5_ab_out_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_am5_ab_out_a0_combout = po_areg_shift_aq(0) $ (po_areg_shift_aq(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_shift_aq(0),
	datad => po_areg_shift_aq(7),
	combout => po_amix3_am5_ab_out_a0_combout);

-- Location: LCCOMB_X30_Y23_N10
po_amix3_aword_state_out_a8_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(8) = po_areg_shift_aq(24) $ (po_amix3_am5_ab_out_a0_combout $ (po_areg_shift_aq(16) $ (po_areg_shift_aq(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(24),
	datab => po_amix3_am5_ab_out_a0_combout,
	datac => po_areg_shift_aq(16),
	datad => po_areg_shift_aq(15),
	combout => po_amix3_aword_state_out(8));

-- Location: LCCOMB_X32_Y26_N18
po_areg_mix_aq_a8_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a8_a_afeeder_combout = po_amix3_aword_state_out(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(8),
	combout => po_areg_mix_aq_a8_a_afeeder_combout);

-- Location: FF_X32_Y26_N19
po_areg_mix_aq_a8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a8_a_afeeder_combout,
	asdata => po_areg_sub_aq(72),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(8));

-- Location: LCCOMB_X31_Y26_N12
po_aadd1_astate_out_a8_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(8) = po_areg_key_aq(8) $ (po_areg_mix_aq(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(8),
	datad => po_areg_mix_aq(8),
	combout => po_aadd1_astate_out(8));

-- Location: FF_X31_Y26_N13
po_areg_add_aq_a8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(8),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(8));

-- Location: LCCOMB_X31_Y23_N18
po_amix3_aword_state_out_a9_a_a17 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a9_a_a17_combout = po_areg_shift_aq(0) $ (po_areg_shift_aq(8) $ (po_areg_shift_aq(7) $ (po_areg_shift_aq(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(0),
	datab => po_areg_shift_aq(8),
	datac => po_areg_shift_aq(7),
	datad => po_areg_shift_aq(15),
	combout => po_amix3_aword_state_out_a9_a_a17_combout);

-- Location: LCCOMB_X31_Y23_N12
po_amix3_aword_state_out_a9_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(9) = po_areg_shift_aq(1) $ (po_amix3_aword_state_out_a9_a_a17_combout $ (po_areg_shift_aq(17) $ (po_areg_shift_aq(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(1),
	datab => po_amix3_aword_state_out_a9_a_a17_combout,
	datac => po_areg_shift_aq(17),
	datad => po_areg_shift_aq(25),
	combout => po_amix3_aword_state_out(9));

-- Location: LCCOMB_X32_Y26_N28
po_areg_mix_aq_a9_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a9_a_afeeder_combout = po_amix3_aword_state_out(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(9),
	combout => po_areg_mix_aq_a9_a_afeeder_combout);

-- Location: LCCOMB_X32_Y26_N14
po_areg_sub_aq_a73_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a73_a_afeeder_combout = auto_generated_aram_block1a1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_a_a1_a,
	combout => po_areg_sub_aq_a73_a_afeeder_combout);

-- Location: FF_X32_Y26_N15
po_areg_sub_aq_a73_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a73_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(73));

-- Location: FF_X32_Y26_N29
po_areg_mix_aq_a9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a9_a_afeeder_combout,
	asdata => po_areg_sub_aq(73),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(9));

-- Location: LCCOMB_X31_Y26_N14
po_aadd1_astate_out_a9_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(9) = po_areg_key_aq(9) $ (po_areg_mix_aq(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(9),
	datad => po_areg_mix_aq(9),
	combout => po_aadd1_astate_out(9));

-- Location: FF_X31_Y26_N15
po_areg_add_aq_a9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(9),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(9));

-- Location: LCCOMB_X31_Y28_N24
po_amux2_aresult_a106_a_a74 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a106_a_a74_combout = (po_akeyGen_areg_aq(10)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => po_akeyGen_areg_aq(10),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a106_a_a74_combout);

-- Location: FF_X31_Y28_N25
po_areg_key_aq_a106_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a106_a_a74_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(106));

-- Location: LCCOMB_X32_Y29_N20
po_akeyGen_ax_a10_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(10) = auto_generated_aram_block1a2 $ (po_areg_key_aq(106))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_amem1_arom_rtl_0_aq_a_a2_a,
	datad => po_areg_key_aq(106),
	combout => po_akeyGen_ax(10));

-- Location: FF_X32_Y29_N21
po_akeyGen_areg_aq_a10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(10),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(10));

-- Location: LCCOMB_X31_Y27_N18
po_akeyGen_aroundkey_out_a42_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(42) = po_areg_key_aq(74) $ (po_areg_key_aq(42) $ (po_akeyGen_areg_aq(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(74),
	datab => po_areg_key_aq(42),
	datad => po_akeyGen_areg_aq(10),
	combout => po_akeyGen_aroundkey_out(42));

-- Location: LCCOMB_X31_Y27_N0
po_amux2_aresult_a42_a_a10 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a42_a_a10_combout = (po_akeyGen_aroundkey_out(42)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(42),
	combout => po_amux2_aresult_a42_a_a10_combout);

-- Location: FF_X31_Y27_N1
po_areg_key_aq_a42_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a42_a_a10_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(42));

-- Location: LCCOMB_X31_Y27_N24
po_akeyGen_aroundkey_out_a10_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(10) = po_areg_key_aq(74) $ (po_areg_key_aq(42) $ (po_areg_key_aq(10) $ (po_akeyGen_areg_aq(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(74),
	datab => po_areg_key_aq(42),
	datac => po_areg_key_aq(10),
	datad => po_akeyGen_areg_aq(10),
	combout => po_akeyGen_aroundkey_out(10));

-- Location: FF_X31_Y27_N25
po_areg_key_aq_a10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(10),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(10));

-- Location: FF_X31_Y23_N15
po_areg_shift_aq_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(34),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(2));

-- Location: FF_X31_Y23_N27
po_areg_shift_aq_a9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(73),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(9));

-- Location: LCCOMB_X31_Y23_N26
po_amix3_aword_state_out_a10_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(10) = po_amix3_aword_state_out_a2_a_a10_combout $ (po_areg_shift_aq(2) $ (po_areg_shift_aq(9) $ (po_areg_shift_aq(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out_a2_a_a10_combout,
	datab => po_areg_shift_aq(2),
	datac => po_areg_shift_aq(9),
	datad => po_areg_shift_aq(18),
	combout => po_amix3_aword_state_out(10));

-- Location: LCCOMB_X34_Y26_N18
po_areg_mix_aq_a10_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a10_a_afeeder_combout = po_amix3_aword_state_out(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(10),
	combout => po_areg_mix_aq_a10_a_afeeder_combout);

-- Location: FF_X34_Y26_N19
po_areg_mix_aq_a10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a10_a_afeeder_combout,
	asdata => po_areg_sub_aq(74),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(10));

-- Location: LCCOMB_X31_Y26_N24
po_aadd1_astate_out_a10_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(10) = po_areg_key_aq(10) $ (po_areg_mix_aq(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(10),
	datad => po_areg_mix_aq(10),
	combout => po_aadd1_astate_out(10));

-- Location: FF_X31_Y26_N25
po_areg_add_aq_a10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(10),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(10));

-- Location: LCCOMB_X32_Y24_N4
po_areg_sub_aq_a27_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a27_a_afeeder_combout = auto_generated_aram_block1a3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_a_a3_a,
	combout => po_areg_sub_aq_a27_a_afeeder_combout);

-- Location: FF_X32_Y24_N5
po_areg_sub_aq_a27_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a27_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(27));

-- Location: FF_X31_Y23_N29
po_areg_shift_aq_a27_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(27),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(27));

-- Location: LCCOMB_X31_Y22_N14
po_amix3_aword_state_out_a11_a_a18 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a11_a_a18_combout = po_areg_shift_aq(15) $ (po_areg_shift_aq(10) $ (po_areg_shift_aq(2) $ (po_areg_shift_aq(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(15),
	datab => po_areg_shift_aq(10),
	datac => po_areg_shift_aq(2),
	datad => po_areg_shift_aq(7),
	combout => po_amix3_aword_state_out_a11_a_a18_combout);

-- Location: LCCOMB_X30_Y22_N14
po_amix3_aword_state_out_a11_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(11) = po_areg_shift_aq(3) $ (po_areg_shift_aq(27) $ (po_amix3_aword_state_out_a11_a_a18_combout $ (po_areg_shift_aq(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(3),
	datab => po_areg_shift_aq(27),
	datac => po_amix3_aword_state_out_a11_a_a18_combout,
	datad => po_areg_shift_aq(19),
	combout => po_amix3_aword_state_out(11));

-- Location: LCCOMB_X31_Y22_N0
po_areg_mix_aq_a11_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a11_a_afeeder_combout = po_amix3_aword_state_out(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(11),
	combout => po_areg_mix_aq_a11_a_afeeder_combout);

-- Location: FF_X31_Y22_N1
po_areg_mix_aq_a11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a11_a_afeeder_combout,
	asdata => po_areg_sub_aq(75),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(11));

-- Location: LCCOMB_X31_Y27_N28
po_aadd1_astate_out_a11_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(11) = po_areg_key_aq(11) $ (po_areg_mix_aq(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(11),
	datad => po_areg_mix_aq(11),
	combout => po_aadd1_astate_out(11));

-- Location: FF_X31_Y27_N29
po_areg_add_aq_a11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(11),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(11));

-- Location: LCCOMB_X32_Y22_N8
po_areg_shift_aq_a3_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a3_a_afeeder_combout = po_areg_sub_aq(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(35),
	combout => po_areg_shift_aq_a3_a_afeeder_combout);

-- Location: FF_X32_Y22_N9
po_areg_shift_aq_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a3_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(3));

-- Location: LCCOMB_X34_Y19_N2
po_areg_sub_aq_a116_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a116_a_afeeder_combout = auto_generated_aram_block1a4_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_b_a4_a,
	combout => po_areg_sub_aq_a116_a_afeeder_combout);

-- Location: FF_X34_Y19_N3
po_areg_sub_aq_a116_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a116_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(116));

-- Location: LCCOMB_X34_Y22_N10
po_areg_shift_aq_a20_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a20_a_afeeder_combout = po_areg_sub_aq(116)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(116),
	combout => po_areg_shift_aq_a20_a_afeeder_combout);

-- Location: FF_X34_Y22_N11
po_areg_shift_aq_a20_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a20_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(20));

-- Location: LCCOMB_X32_Y22_N24
po_amix3_aword_state_out_a12_a_a19 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a12_a_a19_combout = po_areg_shift_aq(28) $ (po_areg_shift_aq(3) $ (po_areg_shift_aq(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(28),
	datab => po_areg_shift_aq(3),
	datad => po_areg_shift_aq(20),
	combout => po_amix3_aword_state_out_a12_a_a19_combout);

-- Location: LCCOMB_X32_Y26_N12
po_amix3_aword_state_out_a12_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(12) = po_amix3_aword_state_out_a31_a_a20_combout $ (po_areg_shift_aq(4) $ (po_areg_shift_aq(11) $ (po_amix3_aword_state_out_a12_a_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out_a31_a_a20_combout,
	datab => po_areg_shift_aq(4),
	datac => po_areg_shift_aq(11),
	datad => po_amix3_aword_state_out_a12_a_a19_combout,
	combout => po_amix3_aword_state_out(12));

-- Location: LCCOMB_X32_Y26_N16
po_areg_mix_aq_a12_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a12_a_afeeder_combout = po_amix3_aword_state_out(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(12),
	combout => po_areg_mix_aq_a12_a_afeeder_combout);

-- Location: LCCOMB_X32_Y26_N8
po_areg_sub_aq_a76_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a76_a_afeeder_combout = auto_generated_aram_block1a4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_a_a4_a,
	combout => po_areg_sub_aq_a76_a_afeeder_combout);

-- Location: FF_X32_Y26_N9
po_areg_sub_aq_a76_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a76_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(76));

-- Location: FF_X32_Y26_N17
po_areg_mix_aq_a12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a12_a_afeeder_combout,
	asdata => po_areg_sub_aq(76),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(12));

-- Location: LCCOMB_X35_Y29_N14
po_amux2_aresult_a108_a_a76 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a108_a_a76_combout = (po_akeyGen_areg_aq(12)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => po_akeyGen_areg_aq(12),
	datac => pc_astate_as2_aq,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a108_a_a76_combout);

-- Location: FF_X35_Y29_N15
po_areg_key_aq_a108_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a108_a_a76_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(108));

-- Location: LCCOMB_X32_Y29_N28
po_akeyGen_ax_a12_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(12) = po_areg_key_aq(108) $ (auto_generated_aram_block1a4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(108),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_a_a4_a,
	combout => po_akeyGen_ax(12));

-- Location: FF_X32_Y29_N29
po_akeyGen_areg_aq_a12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(12),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(12));

-- Location: LCCOMB_X37_Y26_N28
po_akeyGen_aroundkey_out_a76_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(76) = po_areg_key_aq(76) $ (po_akeyGen_areg_aq(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(76),
	datad => po_akeyGen_areg_aq(12),
	combout => po_akeyGen_aroundkey_out(76));

-- Location: LCCOMB_X37_Y26_N22
po_amux2_aresult_a76_a_a44 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a76_a_a44_combout = (po_akeyGen_aroundkey_out(76)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(76),
	combout => po_amux2_aresult_a76_a_a44_combout);

-- Location: FF_X37_Y26_N23
po_areg_key_aq_a76_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a76_a_a44_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(76));

-- Location: LCCOMB_X37_Y26_N12
po_akeyGen_aroundkey_out_a44_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(44) = po_areg_key_aq(44) $ (po_areg_key_aq(76) $ (po_akeyGen_areg_aq(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(44),
	datac => po_areg_key_aq(76),
	datad => po_akeyGen_areg_aq(12),
	combout => po_akeyGen_aroundkey_out(44));

-- Location: LCCOMB_X37_Y26_N14
po_amux2_aresult_a44_a_a12 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a44_a_a12_combout = (po_akeyGen_aroundkey_out(44)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(44),
	combout => po_amux2_aresult_a44_a_a12_combout);

-- Location: FF_X37_Y26_N15
po_areg_key_aq_a44_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a44_a_a12_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(44));

-- Location: LCCOMB_X37_Y26_N18
po_akeyGen_aroundkey_out_a12_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(12) = po_areg_key_aq(76) $ (po_areg_key_aq(44) $ (po_areg_key_aq(12) $ (po_akeyGen_areg_aq(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(76),
	datab => po_areg_key_aq(44),
	datac => po_areg_key_aq(12),
	datad => po_akeyGen_areg_aq(12),
	combout => po_akeyGen_aroundkey_out(12));

-- Location: FF_X37_Y26_N19
po_areg_key_aq_a12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(12),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(12));

-- Location: LCCOMB_X37_Y26_N4
po_aadd1_astate_out_a12_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(12) = po_areg_mix_aq(12) $ (po_areg_key_aq(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(12),
	datad => po_areg_key_aq(12),
	combout => po_aadd1_astate_out(12));

-- Location: FF_X37_Y26_N5
po_areg_add_aq_a12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(12),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(12));

-- Location: LCCOMB_X32_Y30_N30
po_amux2_aresult_a109_a_a77 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a109_a_a77_combout = (po_akeyGen_areg_aq(13) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => po_akeyGen_areg_aq(13),
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a109_a_a77_combout);

-- Location: FF_X32_Y30_N31
po_areg_key_aq_a109_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a109_a_a77_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(109));

-- Location: LCCOMB_X32_Y29_N6
po_akeyGen_ax_a13_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(13) = po_areg_key_aq(109) $ (auto_generated_aram_block1a5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(109),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_a_a5_a,
	combout => po_akeyGen_ax(13));

-- Location: FF_X32_Y29_N7
po_akeyGen_areg_aq_a13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(13),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(13));

-- Location: LCCOMB_X32_Y30_N16
po_akeyGen_aroundkey_out_a77_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(77) = po_areg_key_aq(77) $ (po_akeyGen_areg_aq(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(77),
	datad => po_akeyGen_areg_aq(13),
	combout => po_akeyGen_aroundkey_out(77));

-- Location: LCCOMB_X32_Y30_N0
po_amux2_aresult_a77_a_a45 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a77_a_a45_combout = (po_akeyGen_aroundkey_out(77) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => po_akeyGen_aroundkey_out(77),
	datac => pc_aSelector4_a1_combout,
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a77_a_a45_combout);

-- Location: FF_X32_Y30_N1
po_areg_key_aq_a77_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a77_a_a45_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(77));

-- Location: LCCOMB_X32_Y30_N22
po_akeyGen_aroundkey_out_a13_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(13) = po_areg_key_aq(45) $ (po_areg_key_aq(77) $ (po_areg_key_aq(13) $ (po_akeyGen_areg_aq(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(45),
	datab => po_areg_key_aq(77),
	datac => po_areg_key_aq(13),
	datad => po_akeyGen_areg_aq(13),
	combout => po_akeyGen_aroundkey_out(13));

-- Location: FF_X32_Y30_N23
po_areg_key_aq_a13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(13),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(13));

-- Location: FF_X30_Y22_N17
po_areg_shift_aq_a12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(76),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(12));

-- Location: LCCOMB_X34_Y22_N18
po_amix3_aword_state_out_a13_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(13) = po_areg_shift_aq(5) $ (po_amix3_aword_state_out_a13_a_a14_combout $ (po_areg_shift_aq(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(5),
	datab => po_amix3_aword_state_out_a13_a_a14_combout,
	datad => po_areg_shift_aq(12),
	combout => po_amix3_aword_state_out(13));

-- Location: FF_X34_Y22_N19
po_areg_mix_aq_a13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(13),
	asdata => po_areg_sub_aq(77),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(13));

-- Location: LCCOMB_X31_Y26_N22
po_aadd1_astate_out_a13_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(13) = po_areg_key_aq(13) $ (po_areg_mix_aq(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(13),
	datad => po_areg_mix_aq(13),
	combout => po_aadd1_astate_out(13));

-- Location: FF_X31_Y26_N23
po_areg_add_aq_a13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(13),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(13));

-- Location: LCCOMB_X34_Y30_N8
po_amux2_aresult_a110_a_a78 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a110_a_a78_combout = (po_akeyGen_areg_aq(14) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_areg_aq(14),
	combout => po_amux2_aresult_a110_a_a78_combout);

-- Location: FF_X34_Y30_N9
po_areg_key_aq_a110_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a110_a_a78_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(110));

-- Location: LCCOMB_X34_Y29_N6
po_akeyGen_ax_a14_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(14) = po_areg_key_aq(110) $ (auto_generated_aram_block1a6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(110),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_a_a6_a,
	combout => po_akeyGen_ax(14));

-- Location: FF_X34_Y29_N7
po_akeyGen_areg_aq_a14_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(14),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(14));

-- Location: LCCOMB_X34_Y30_N16
po_akeyGen_aroundkey_out_a78_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(78) = po_areg_key_aq(78) $ (po_akeyGen_areg_aq(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(78),
	datad => po_akeyGen_areg_aq(14),
	combout => po_akeyGen_aroundkey_out(78));

-- Location: LCCOMB_X34_Y30_N6
po_amux2_aresult_a78_a_a46 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a78_a_a46_combout = (po_akeyGen_aroundkey_out(78)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(78),
	combout => po_amux2_aresult_a78_a_a46_combout);

-- Location: FF_X34_Y30_N7
po_areg_key_aq_a78_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a78_a_a46_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(78));

-- Location: LCCOMB_X34_Y30_N12
po_akeyGen_aroundkey_out_a14_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(14) = po_areg_key_aq(46) $ (po_akeyGen_areg_aq(14) $ (po_areg_key_aq(14) $ (po_areg_key_aq(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(46),
	datab => po_akeyGen_areg_aq(14),
	datac => po_areg_key_aq(14),
	datad => po_areg_key_aq(78),
	combout => po_akeyGen_aroundkey_out(14));

-- Location: FF_X34_Y30_N13
po_areg_key_aq_a14_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(14),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(14));

-- Location: LCCOMB_X32_Y23_N22
po_amix3_aword_state_out_a14_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(14) = po_areg_shift_aq(6) $ (po_amix3_aword_state_out_a6_a_a15_combout $ (po_areg_shift_aq(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(6),
	datab => po_amix3_aword_state_out_a6_a_a15_combout,
	datad => po_areg_shift_aq(13),
	combout => po_amix3_aword_state_out(14));

-- Location: LCCOMB_X32_Y26_N2
po_areg_sub_aq_a78_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a78_a_afeeder_combout = auto_generated_aram_block1a6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem3_arom_rtl_0_aq_a_a6_a,
	combout => po_areg_sub_aq_a78_a_afeeder_combout);

-- Location: FF_X32_Y26_N3
po_areg_sub_aq_a78_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a78_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(78));

-- Location: FF_X32_Y23_N23
po_areg_mix_aq_a14_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(14),
	asdata => po_areg_sub_aq(78),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(14));

-- Location: LCCOMB_X32_Y27_N20
po_aadd1_astate_out_a14_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(14) = po_areg_key_aq(14) $ (po_areg_mix_aq(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(14),
	datad => po_areg_mix_aq(14),
	combout => po_aadd1_astate_out(14));

-- Location: FF_X32_Y27_N21
po_areg_add_aq_a14_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(14),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(14));

-- Location: LCCOMB_X36_Y29_N20
po_amux2_aresult_a111_a_a79 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a111_a_a79_combout = (po_akeyGen_areg_aq(15) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_areg_aq(15),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a111_a_a79_combout);

-- Location: FF_X36_Y29_N21
po_areg_key_aq_a111_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a111_a_a79_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(111));

-- Location: LCCOMB_X32_Y29_N16
po_akeyGen_ax_a15_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(15) = auto_generated_aram_block1a7 $ (po_areg_key_aq(111))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_amem1_arom_rtl_0_aq_a_a7_a,
	datad => po_areg_key_aq(111),
	combout => po_akeyGen_ax(15));

-- Location: FF_X32_Y29_N17
po_akeyGen_areg_aq_a15_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(15),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(15));

-- Location: LCCOMB_X36_Y29_N8
po_akeyGen_aroundkey_out_a79_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(79) = po_akeyGen_areg_aq(15) $ (po_areg_key_aq(79))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(15),
	datad => po_areg_key_aq(79),
	combout => po_akeyGen_aroundkey_out(79));

-- Location: LCCOMB_X36_Y29_N0
po_amux2_aresult_a79_a_a47 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a79_a_a47_combout = (po_akeyGen_aroundkey_out(79)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(79),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a79_a_a47_combout);

-- Location: FF_X36_Y29_N1
po_areg_key_aq_a79_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a79_a_a47_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(79));

-- Location: LCCOMB_X36_Y29_N4
po_akeyGen_aroundkey_out_a47_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(47) = po_areg_key_aq(47) $ (po_akeyGen_areg_aq(15) $ (po_areg_key_aq(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(47),
	datac => po_akeyGen_areg_aq(15),
	datad => po_areg_key_aq(79),
	combout => po_akeyGen_aroundkey_out(47));

-- Location: LCCOMB_X36_Y29_N16
po_amux2_aresult_a47_a_a15 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a47_a_a15_combout = (po_akeyGen_aroundkey_out(47) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(47),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a47_a_a15_combout);

-- Location: FF_X36_Y29_N17
po_areg_key_aq_a47_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a47_a_a15_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(47));

-- Location: LCCOMB_X36_Y29_N14
po_akeyGen_aroundkey_out_a15_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(15) = po_akeyGen_areg_aq(15) $ (po_areg_key_aq(47) $ (po_areg_key_aq(15) $ (po_areg_key_aq(79))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(15),
	datab => po_areg_key_aq(47),
	datac => po_areg_key_aq(15),
	datad => po_areg_key_aq(79),
	combout => po_akeyGen_aroundkey_out(15));

-- Location: FF_X36_Y29_N15
po_areg_key_aq_a15_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(15),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(15));

-- Location: FF_X31_Y24_N11
po_areg_shift_aq_a14_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(78),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(14));

-- Location: LCCOMB_X31_Y24_N10
po_amix3_aword_state_out_a15_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(15) = po_areg_shift_aq(7) $ (po_areg_shift_aq(6) $ (po_areg_shift_aq(14) $ (po_amix3_aword_state_out_a28_a_a16_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(7),
	datab => po_areg_shift_aq(6),
	datac => po_areg_shift_aq(14),
	datad => po_amix3_aword_state_out_a28_a_a16_combout,
	combout => po_amix3_aword_state_out(15));

-- Location: LCCOMB_X32_Y26_N6
po_areg_mix_aq_a15_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a15_a_afeeder_combout = po_amix3_aword_state_out(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_amix3_aword_state_out(15),
	combout => po_areg_mix_aq_a15_a_afeeder_combout);

-- Location: FF_X32_Y26_N7
po_areg_mix_aq_a15_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a15_a_afeeder_combout,
	asdata => po_areg_sub_aq(79),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(15));

-- Location: LCCOMB_X35_Y26_N22
po_aadd1_astate_out_a15_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(15) = po_areg_key_aq(15) $ (po_areg_mix_aq(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(15),
	datad => po_areg_mix_aq(15),
	combout => po_aadd1_astate_out(15));

-- Location: FF_X35_Y26_N23
po_areg_add_aq_a15_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(15),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(15));

-- Location: LCCOMB_X34_Y28_N14
po_akeyGen_ax_a16_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(16) = po_areg_key_aq(112) $ (auto_generated_aram_block1a0_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(112),
	datad => po_akeyGen_amem0_arom_rtl_0_aq_b_a0_a,
	combout => po_akeyGen_ax(16));

-- Location: FF_X34_Y28_N15
po_akeyGen_areg_aq_a16_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(16),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(16));

-- Location: LCCOMB_X35_Y29_N8
po_akeyGen_aroundkey_out_a80_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(80) = po_areg_key_aq(80) $ (po_akeyGen_areg_aq(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(80),
	datad => po_akeyGen_areg_aq(16),
	combout => po_akeyGen_aroundkey_out(80));

-- Location: LCCOMB_X35_Y29_N28
po_amux2_aresult_a80_a_a48 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a80_a_a48_combout = (po_akeyGen_aroundkey_out(80) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => po_akeyGen_aroundkey_out(80),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a80_a_a48_combout);

-- Location: FF_X35_Y29_N29
po_areg_key_aq_a80_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a80_a_a48_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(80));

-- Location: LCCOMB_X35_Y29_N0
po_akeyGen_aroundkey_out_a48_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(48) = po_akeyGen_areg_aq(16) $ (po_areg_key_aq(48) $ (po_areg_key_aq(80)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(16),
	datac => po_areg_key_aq(48),
	datad => po_areg_key_aq(80),
	combout => po_akeyGen_aroundkey_out(48));

-- Location: LCCOMB_X35_Y29_N4
po_amux2_aresult_a48_a_a16 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a48_a_a16_combout = (po_akeyGen_aroundkey_out(48)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => po_akeyGen_aroundkey_out(48),
	datac => pc_astate_as2_aq,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a48_a_a16_combout);

-- Location: FF_X35_Y29_N5
po_areg_key_aq_a48_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a48_a_a16_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(48));

-- Location: LCCOMB_X35_Y29_N20
po_akeyGen_aroundkey_out_a16_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(16) = po_akeyGen_areg_aq(16) $ (po_areg_key_aq(48) $ (po_areg_key_aq(16) $ (po_areg_key_aq(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(16),
	datab => po_areg_key_aq(48),
	datac => po_areg_key_aq(16),
	datad => po_areg_key_aq(80),
	combout => po_akeyGen_aroundkey_out(16));

-- Location: FF_X35_Y29_N21
po_areg_key_aq_a16_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(16),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(16));

-- Location: LCCOMB_X31_Y23_N16
po_amix3_aword_state_out_a16_a_a21 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a16_a_a21_combout = po_areg_shift_aq(0) $ (po_areg_shift_aq(8) $ (po_areg_shift_aq(15) $ (po_areg_shift_aq(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(0),
	datab => po_areg_shift_aq(8),
	datac => po_areg_shift_aq(15),
	datad => po_areg_shift_aq(23),
	combout => po_amix3_aword_state_out_a16_a_a21_combout);

-- Location: LCCOMB_X32_Y23_N16
po_amix3_aword_state_out_a16_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(16) = po_areg_shift_aq(24) $ (po_amix3_aword_state_out_a16_a_a21_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(24),
	datad => po_amix3_aword_state_out_a16_a_a21_combout,
	combout => po_amix3_aword_state_out(16));

-- Location: FF_X32_Y23_N17
po_areg_mix_aq_a16_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(16),
	asdata => po_areg_sub_aq(112),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(16));

-- Location: LCCOMB_X31_Y26_N28
po_aadd1_astate_out_a16_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(16) = po_areg_key_aq(16) $ (po_areg_mix_aq(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(16),
	datad => po_areg_mix_aq(16),
	combout => po_aadd1_astate_out(16));

-- Location: FF_X31_Y26_N29
po_areg_add_aq_a16_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(16),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(16));

-- Location: LCCOMB_X36_Y26_N0
po_akeyGen_aroundkey_out_a81_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(81) = po_akeyGen_areg_aq(17) $ (po_areg_key_aq(81))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(17),
	datad => po_areg_key_aq(81),
	combout => po_akeyGen_aroundkey_out(81));

-- Location: LCCOMB_X36_Y26_N28
po_amux2_aresult_a81_a_a49 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a81_a_a49_combout = (po_akeyGen_aroundkey_out(81)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => po_akeyGen_aroundkey_out(81),
	datac => pc_aSelector4_a0_combout,
	datad => pc_aSelector4_a1_combout,
	combout => po_amux2_aresult_a81_a_a49_combout);

-- Location: FF_X36_Y26_N29
po_areg_key_aq_a81_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a81_a_a49_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(81));

-- Location: LCCOMB_X36_Y26_N8
po_akeyGen_aroundkey_out_a49_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(49) = po_akeyGen_areg_aq(17) $ (po_areg_key_aq(49) $ (po_areg_key_aq(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(17),
	datab => po_areg_key_aq(49),
	datad => po_areg_key_aq(81),
	combout => po_akeyGen_aroundkey_out(49));

-- Location: LCCOMB_X36_Y26_N16
po_amux2_aresult_a49_a_a17 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a49_a_a17_combout = (po_akeyGen_aroundkey_out(49)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(49),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a49_a_a17_combout);

-- Location: FF_X36_Y26_N17
po_areg_key_aq_a49_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a49_a_a17_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(49));

-- Location: LCCOMB_X36_Y26_N2
po_akeyGen_aroundkey_out_a17_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(17) = po_akeyGen_areg_aq(17) $ (po_areg_key_aq(49) $ (po_areg_key_aq(17) $ (po_areg_key_aq(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(17),
	datab => po_areg_key_aq(49),
	datac => po_areg_key_aq(17),
	datad => po_areg_key_aq(81),
	combout => po_akeyGen_aroundkey_out(17));

-- Location: FF_X36_Y26_N3
po_areg_key_aq_a17_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(17),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(17));

-- Location: LCCOMB_X31_Y23_N2
po_amix3_aword_state_out_a17_a_a22 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a17_a_a22_combout = po_areg_shift_aq(1) $ (po_areg_shift_aq(23) $ (po_areg_shift_aq(16) $ (!po_areg_shift_aq(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(1),
	datab => po_areg_shift_aq(23),
	datac => po_areg_shift_aq(16),
	datad => po_areg_shift_aq(15),
	combout => po_amix3_aword_state_out_a17_a_a22_combout);

-- Location: LCCOMB_X31_Y23_N8
po_amix3_aword_state_out_a17_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(17) = po_areg_shift_aq(9) $ (po_amix3_aword_state_out_a17_a_a22_combout $ (po_areg_shift_aq(8) $ (!po_areg_shift_aq(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(9),
	datab => po_amix3_aword_state_out_a17_a_a22_combout,
	datac => po_areg_shift_aq(8),
	datad => po_areg_shift_aq(25),
	combout => po_amix3_aword_state_out(17));

-- Location: LCCOMB_X31_Y22_N10
po_areg_mix_aq_a17_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a17_a_afeeder_combout = po_amix3_aword_state_out(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(17),
	combout => po_areg_mix_aq_a17_a_afeeder_combout);

-- Location: FF_X31_Y22_N11
po_areg_mix_aq_a17_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a17_a_afeeder_combout,
	asdata => po_areg_sub_aq(113),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(17));

-- Location: LCCOMB_X31_Y26_N18
po_aadd1_astate_out_a17_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(17) = po_areg_key_aq(17) $ (po_areg_mix_aq(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(17),
	datad => po_areg_mix_aq(17),
	combout => po_aadd1_astate_out(17));

-- Location: FF_X31_Y26_N19
po_areg_add_aq_a17_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(17),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(17));

-- Location: LCCOMB_X34_Y28_N12
po_akeyGen_ax_a18_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(18) = po_areg_key_aq(114) $ (auto_generated_aram_block1a2_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(114),
	datac => po_akeyGen_amem0_arom_rtl_0_aq_b_a2_a,
	combout => po_akeyGen_ax(18));

-- Location: FF_X34_Y28_N13
po_akeyGen_areg_aq_a18_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(18),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(18));

-- Location: LCCOMB_X37_Y28_N6
po_akeyGen_aroundkey_out_a82_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(82) = po_areg_key_aq(82) $ (po_akeyGen_areg_aq(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(82),
	datac => po_akeyGen_areg_aq(18),
	combout => po_akeyGen_aroundkey_out(82));

-- Location: LCCOMB_X37_Y28_N4
po_amux2_aresult_a82_a_a50 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a82_a_a50_combout = (po_akeyGen_aroundkey_out(82)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(82),
	combout => po_amux2_aresult_a82_a_a50_combout);

-- Location: FF_X37_Y28_N5
po_areg_key_aq_a82_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a82_a_a50_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(82));

-- Location: LCCOMB_X37_Y28_N18
po_akeyGen_aroundkey_out_a50_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(50) = po_areg_key_aq(82) $ (po_akeyGen_areg_aq(18) $ (po_areg_key_aq(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(82),
	datac => po_akeyGen_areg_aq(18),
	datad => po_areg_key_aq(50),
	combout => po_akeyGen_aroundkey_out(50));

-- Location: LCCOMB_X37_Y28_N24
po_amux2_aresult_a50_a_a18 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a50_a_a18_combout = (po_akeyGen_aroundkey_out(50)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(50),
	combout => po_amux2_aresult_a50_a_a18_combout);

-- Location: FF_X37_Y28_N25
po_areg_key_aq_a50_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a50_a_a18_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(50));

-- Location: LCCOMB_X37_Y28_N30
po_akeyGen_aroundkey_out_a18_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(18) = po_akeyGen_areg_aq(18) $ (po_areg_key_aq(82) $ (po_areg_key_aq(18) $ (po_areg_key_aq(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(18),
	datab => po_areg_key_aq(82),
	datac => po_areg_key_aq(18),
	datad => po_areg_key_aq(50),
	combout => po_akeyGen_aroundkey_out(18));

-- Location: FF_X37_Y28_N31
po_areg_key_aq_a18_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(18),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(18));

-- Location: LCCOMB_X31_Y23_N14
po_amix3_aword_state_out_a18_a_a23 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a18_a_a23_combout = po_areg_shift_aq(9) $ (po_areg_shift_aq(17) $ (po_areg_shift_aq(2) $ (po_areg_shift_aq(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(9),
	datab => po_areg_shift_aq(17),
	datac => po_areg_shift_aq(2),
	datad => po_areg_shift_aq(10),
	combout => po_amix3_aword_state_out_a18_a_a23_combout);

-- Location: LCCOMB_X34_Y23_N8
po_amix3_aword_state_out_a18_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(18) = po_areg_shift_aq(26) $ (po_amix3_aword_state_out_a18_a_a23_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(26),
	datad => po_amix3_aword_state_out_a18_a_a23_combout,
	combout => po_amix3_aword_state_out(18));

-- Location: FF_X34_Y23_N9
po_areg_mix_aq_a18_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(18),
	asdata => po_areg_sub_aq(114),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(18));

-- Location: LCCOMB_X35_Y27_N2
po_aadd1_astate_out_a18_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(18) = po_areg_key_aq(18) $ (po_areg_mix_aq(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(18),
	datad => po_areg_mix_aq(18),
	combout => po_aadd1_astate_out(18));

-- Location: FF_X35_Y27_N3
po_areg_add_aq_a18_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(18),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(18));

-- Location: LCCOMB_X30_Y22_N12
po_amix3_aword_state_out_a19_a_a24 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a19_a_a24_combout = po_areg_shift_aq(3) $ (po_areg_shift_aq(11) $ (po_areg_shift_aq(10) $ (po_areg_shift_aq(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(3),
	datab => po_areg_shift_aq(11),
	datac => po_areg_shift_aq(10),
	datad => po_areg_shift_aq(18),
	combout => po_amix3_aword_state_out_a19_a_a24_combout);

-- Location: LCCOMB_X31_Y22_N16
po_amix3_aword_state_out_a19_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(19) = po_areg_shift_aq(15) $ (po_areg_shift_aq(23) $ (po_areg_shift_aq(27) $ (po_amix3_aword_state_out_a19_a_a24_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(15),
	datab => po_areg_shift_aq(23),
	datac => po_areg_shift_aq(27),
	datad => po_amix3_aword_state_out_a19_a_a24_combout,
	combout => po_amix3_aword_state_out(19));

-- Location: LCCOMB_X31_Y22_N12
po_areg_mix_aq_a19_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a19_a_afeeder_combout = po_amix3_aword_state_out(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(19),
	combout => po_areg_mix_aq_a19_a_afeeder_combout);

-- Location: FF_X31_Y22_N13
po_areg_mix_aq_a19_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a19_a_afeeder_combout,
	asdata => po_areg_sub_aq(115),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(19));

-- Location: LCCOMB_X32_Y27_N6
po_aadd1_astate_out_a19_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(19) = po_areg_key_aq(19) $ (po_areg_mix_aq(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(19),
	datad => po_areg_mix_aq(19),
	combout => po_aadd1_astate_out(19));

-- Location: FF_X32_Y27_N7
po_areg_add_aq_a19_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(19),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(19));

-- Location: LCCOMB_X37_Y28_N26
po_amux2_aresult_a116_a_a84 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a116_a_a84_combout = (po_akeyGen_areg_aq(20)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_areg_aq(20),
	combout => po_amux2_aresult_a116_a_a84_combout);

-- Location: FF_X37_Y28_N27
po_areg_key_aq_a116_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a116_a_a84_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(116));

-- Location: LCCOMB_X34_Y28_N0
po_akeyGen_ax_a20_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(20) = po_areg_key_aq(116) $ (auto_generated_aram_block1a4_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(116),
	datad => po_akeyGen_amem0_arom_rtl_0_aq_b_a4_a,
	combout => po_akeyGen_ax(20));

-- Location: FF_X34_Y28_N1
po_akeyGen_areg_aq_a20_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(20),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(20));

-- Location: LCCOMB_X36_Y29_N26
po_akeyGen_aroundkey_out_a84_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(84) = po_akeyGen_areg_aq(20) $ (po_areg_key_aq(84))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(20),
	datad => po_areg_key_aq(84),
	combout => po_akeyGen_aroundkey_out(84));

-- Location: LCCOMB_X36_Y29_N6
po_amux2_aresult_a84_a_a52 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a84_a_a52_combout = (po_akeyGen_aroundkey_out(84) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(84),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a84_a_a52_combout);

-- Location: FF_X36_Y29_N7
po_areg_key_aq_a84_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a84_a_a52_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(84));

-- Location: LCCOMB_X36_Y29_N22
po_akeyGen_aroundkey_out_a52_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(52) = po_areg_key_aq(52) $ (po_akeyGen_areg_aq(20) $ (po_areg_key_aq(84)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(52),
	datac => po_akeyGen_areg_aq(20),
	datad => po_areg_key_aq(84),
	combout => po_akeyGen_aroundkey_out(52));

-- Location: LCCOMB_X36_Y29_N10
po_amux2_aresult_a52_a_a20 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a52_a_a20_combout = (po_akeyGen_aroundkey_out(52)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(52),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a52_a_a20_combout);

-- Location: FF_X36_Y29_N11
po_areg_key_aq_a52_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a52_a_a20_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(52));

-- Location: LCCOMB_X36_Y29_N12
po_akeyGen_aroundkey_out_a20_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(20) = po_areg_key_aq(84) $ (po_akeyGen_areg_aq(20) $ (po_areg_key_aq(20) $ (po_areg_key_aq(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(84),
	datab => po_akeyGen_areg_aq(20),
	datac => po_areg_key_aq(20),
	datad => po_areg_key_aq(52),
	combout => po_akeyGen_aroundkey_out(20));

-- Location: FF_X36_Y29_N13
po_areg_key_aq_a20_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(20),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(20));

-- Location: LCCOMB_X34_Y27_N6
po_aadd1_astate_out_a20_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(20) = po_areg_mix_aq(20) $ (po_areg_key_aq(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(20),
	datad => po_areg_key_aq(20),
	combout => po_aadd1_astate_out(20));

-- Location: FF_X34_Y27_N7
po_areg_add_aq_a20_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(20),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(20));

-- Location: LCCOMB_X34_Y28_N26
po_akeyGen_ax_a21_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(21) = po_areg_key_aq(117) $ (auto_generated_aram_block1a5_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(117),
	datad => po_akeyGen_amem0_arom_rtl_0_aq_b_a5_a,
	combout => po_akeyGen_ax(21));

-- Location: FF_X34_Y28_N27
po_akeyGen_areg_aq_a21_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(21),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(21));

-- Location: LCCOMB_X36_Y25_N20
po_akeyGen_aroundkey_out_a85_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(85) = po_akeyGen_areg_aq(21) $ (po_areg_key_aq(85))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(21),
	datad => po_areg_key_aq(85),
	combout => po_akeyGen_aroundkey_out(85));

-- Location: LCCOMB_X36_Y25_N28
po_amux2_aresult_a85_a_a53 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a85_a_a53_combout = (po_akeyGen_aroundkey_out(85)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(85),
	combout => po_amux2_aresult_a85_a_a53_combout);

-- Location: FF_X36_Y25_N29
po_areg_key_aq_a85_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a85_a_a53_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(85));

-- Location: LCCOMB_X36_Y25_N0
po_akeyGen_aroundkey_out_a53_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(53) = po_areg_key_aq(85) $ (po_akeyGen_areg_aq(21) $ (po_areg_key_aq(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(85),
	datac => po_akeyGen_areg_aq(21),
	datad => po_areg_key_aq(53),
	combout => po_akeyGen_aroundkey_out(53));

-- Location: LCCOMB_X36_Y25_N24
po_amux2_aresult_a53_a_a21 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a53_a_a21_combout = (po_akeyGen_aroundkey_out(53)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(53),
	combout => po_amux2_aresult_a53_a_a21_combout);

-- Location: FF_X36_Y25_N25
po_areg_key_aq_a53_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a53_a_a21_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(53));

-- Location: LCCOMB_X35_Y25_N20
po_akeyGen_aroundkey_out_a21_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(21) = po_akeyGen_areg_aq(21) $ (po_areg_key_aq(53) $ (po_areg_key_aq(21) $ (po_areg_key_aq(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(21),
	datab => po_areg_key_aq(53),
	datac => po_areg_key_aq(21),
	datad => po_areg_key_aq(85),
	combout => po_akeyGen_aroundkey_out(21));

-- Location: FF_X35_Y25_N21
po_areg_key_aq_a21_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(21),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(21));

-- Location: LCCOMB_X32_Y23_N18
po_amix3_aword_state_out_a21_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(21) = po_amix3_aword_state_out_a29_a_a26_combout $ (po_areg_shift_aq(12) $ (po_areg_shift_aq(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out_a29_a_a26_combout,
	datab => po_areg_shift_aq(12),
	datad => po_areg_shift_aq(29),
	combout => po_amix3_aword_state_out(21));

-- Location: FF_X32_Y23_N19
po_areg_mix_aq_a21_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(21),
	asdata => po_areg_sub_aq(117),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(21));

-- Location: LCCOMB_X32_Y27_N16
po_aadd1_astate_out_a21_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(21) = po_areg_key_aq(21) $ (po_areg_mix_aq(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(21),
	datad => po_areg_mix_aq(21),
	combout => po_aadd1_astate_out(21));

-- Location: FF_X32_Y27_N17
po_areg_add_aq_a21_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(21),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(21));

-- Location: LCCOMB_X32_Y23_N28
po_amix3_aword_state_out_a30_a_a27 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a30_a_a27_combout = po_areg_shift_aq(21) $ (po_areg_shift_aq(6) $ (po_areg_shift_aq(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(21),
	datac => po_areg_shift_aq(6),
	datad => po_areg_shift_aq(14),
	combout => po_amix3_aword_state_out_a30_a_a27_combout);

-- Location: LCCOMB_X32_Y23_N20
po_amix3_aword_state_out_a22_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(22) = po_areg_shift_aq(30) $ (po_amix3_aword_state_out_a30_a_a27_combout $ (po_areg_shift_aq(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(30),
	datab => po_amix3_aword_state_out_a30_a_a27_combout,
	datad => po_areg_shift_aq(13),
	combout => po_amix3_aword_state_out(22));

-- Location: FF_X32_Y23_N21
po_areg_mix_aq_a22_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(22),
	asdata => po_areg_sub_aq(118),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(22));

-- Location: LCCOMB_X32_Y27_N26
po_aadd1_astate_out_a22_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(22) = po_areg_key_aq(22) $ (po_areg_mix_aq(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(22),
	datad => po_areg_mix_aq(22),
	combout => po_aadd1_astate_out(22));

-- Location: FF_X32_Y27_N27
po_areg_add_aq_a22_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(22),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(22));

-- Location: LCCOMB_X36_Y27_N12
po_amux2_aresult_a119_a_a87 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a119_a_a87_combout = (po_akeyGen_areg_aq(23) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a0_combout,
	datac => po_akeyGen_areg_aq(23),
	datad => pc_aSelector4_a1_combout,
	combout => po_amux2_aresult_a119_a_a87_combout);

-- Location: FF_X36_Y27_N13
po_areg_key_aq_a119_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a119_a_a87_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(119));

-- Location: LCCOMB_X32_Y28_N30
po_akeyGen_ax_a23_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(23) = po_areg_key_aq(119) $ (auto_generated_aram_block1a7_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(119),
	datad => po_akeyGen_amem0_arom_rtl_0_aq_b_a7_a,
	combout => po_akeyGen_ax(23));

-- Location: FF_X32_Y28_N31
po_akeyGen_areg_aq_a23_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(23),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(23));

-- Location: LCCOMB_X36_Y27_N8
po_akeyGen_aroundkey_out_a87_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(87) = po_akeyGen_areg_aq(23) $ (po_areg_key_aq(87))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(23),
	datad => po_areg_key_aq(87),
	combout => po_akeyGen_aroundkey_out(87));

-- Location: LCCOMB_X36_Y27_N28
po_amux2_aresult_a87_a_a55 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a87_a_a55_combout = (po_akeyGen_aroundkey_out(87)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a0_combout,
	datac => po_akeyGen_aroundkey_out(87),
	datad => pc_aSelector4_a1_combout,
	combout => po_amux2_aresult_a87_a_a55_combout);

-- Location: FF_X36_Y27_N29
po_areg_key_aq_a87_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a87_a_a55_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(87));

-- Location: LCCOMB_X36_Y27_N22
po_akeyGen_aroundkey_out_a23_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(23) = po_areg_key_aq(55) $ (po_akeyGen_areg_aq(23) $ (po_areg_key_aq(23) $ (po_areg_key_aq(87))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(55),
	datab => po_akeyGen_areg_aq(23),
	datac => po_areg_key_aq(23),
	datad => po_areg_key_aq(87),
	combout => po_akeyGen_aroundkey_out(23));

-- Location: FF_X36_Y27_N23
po_areg_key_aq_a23_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(23),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(23));

-- Location: LCCOMB_X31_Y23_N0
po_amix3_aword_state_out_a31_a_a20 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a31_a_a20_combout = po_areg_shift_aq(7) $ (po_areg_shift_aq(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(7),
	datad => po_areg_shift_aq(15),
	combout => po_amix3_aword_state_out_a31_a_a20_combout);

-- Location: LCCOMB_X31_Y24_N16
po_amix3_aword_state_out_a23_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(23) = po_areg_shift_aq(22) $ (po_amix3_aword_state_out_a31_a_a20_combout $ (po_areg_shift_aq(31) $ (po_areg_shift_aq(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(22),
	datab => po_amix3_aword_state_out_a31_a_a20_combout,
	datac => po_areg_shift_aq(31),
	datad => po_areg_shift_aq(14),
	combout => po_amix3_aword_state_out(23));

-- Location: LCCOMB_X32_Y26_N24
po_areg_mix_aq_a23_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a23_a_afeeder_combout = po_amix3_aword_state_out(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(23),
	combout => po_areg_mix_aq_a23_a_afeeder_combout);

-- Location: FF_X32_Y26_N25
po_areg_mix_aq_a23_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a23_a_afeeder_combout,
	asdata => po_areg_sub_aq(119),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(23));

-- Location: LCCOMB_X32_Y27_N24
po_aadd1_astate_out_a23_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(23) = po_areg_key_aq(23) $ (po_areg_mix_aq(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(23),
	datad => po_areg_mix_aq(23),
	combout => po_aadd1_astate_out(23));

-- Location: FF_X32_Y27_N25
po_areg_add_aq_a23_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(23),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(23));

-- Location: LCCOMB_X31_Y23_N24
po_amix3_am1_ab_out_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_am1_ab_out_a0_combout = po_areg_shift_aq(23) $ (po_areg_shift_aq(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(23),
	datad => po_areg_shift_aq(16),
	combout => po_amix3_am1_ab_out_a0_combout);

-- Location: LCCOMB_X30_Y23_N12
po_amix3_aword_state_out_a24_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(24) = po_areg_shift_aq(8) $ (po_areg_shift_aq(0) $ (po_areg_shift_aq(31) $ (po_amix3_am1_ab_out_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(8),
	datab => po_areg_shift_aq(0),
	datac => po_areg_shift_aq(31),
	datad => po_amix3_am1_ab_out_a0_combout,
	combout => po_amix3_aword_state_out(24));

-- Location: LCCOMB_X32_Y23_N10
po_areg_mix_aq_a24_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a24_a_afeeder_combout = po_amix3_aword_state_out(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(24),
	combout => po_areg_mix_aq_a24_a_afeeder_combout);

-- Location: FF_X32_Y23_N11
po_areg_mix_aq_a24_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a24_a_afeeder_combout,
	asdata => po_areg_sub_aq(24),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(24));

-- Location: LCCOMB_X34_Y30_N26
po_amux2_aresult_a120_a_a88 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a120_a_a88_combout = (po_akeyGen_areg_aq(24)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(24),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a120_a_a88_combout);

-- Location: FF_X34_Y30_N27
po_areg_key_aq_a120_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a120_a_a88_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(120));

-- Location: LCCOMB_X34_Y30_N4
po_akeyGen_ax_a24_a_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax_a24_a_a0_combout = po_areg_key_aq(120) $ (((!po_acount_acnt(1) & (!po_acount_acnt(2) & po_acount_acnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(1),
	datab => po_acount_acnt(2),
	datac => po_areg_key_aq(120),
	datad => po_acount_acnt(0),
	combout => po_akeyGen_ax_a24_a_a0_combout);

-- Location: LCCOMB_X34_Y28_N24
po_akeyGen_ax_a24_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(24) = po_akeyGen_ax_a24_a_a0_combout $ (auto_generated_aram_block1a0_aportadataout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_akeyGen_ax_a24_a_a0_combout,
	datad => po_akeyGen_amem0_arom_rtl_0_aq_a_a0_a,
	combout => po_akeyGen_ax(24));

-- Location: FF_X34_Y28_N25
po_akeyGen_areg_aq_a24_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(24),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(24));

-- Location: LCCOMB_X34_Y30_N2
po_akeyGen_aroundkey_out_a88_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(88) = po_akeyGen_areg_aq(24) $ (po_areg_key_aq(88))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(24),
	datad => po_areg_key_aq(88),
	combout => po_akeyGen_aroundkey_out(88));

-- Location: LCCOMB_X34_Y30_N0
po_amux2_aresult_a88_a_a56 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a88_a_a56_combout = (po_akeyGen_aroundkey_out(88) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(88),
	combout => po_amux2_aresult_a88_a_a56_combout);

-- Location: FF_X34_Y30_N1
po_areg_key_aq_a88_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a88_a_a56_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(88));

-- Location: LCCOMB_X34_Y30_N10
po_akeyGen_aroundkey_out_a56_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(56) = po_areg_key_aq(88) $ (po_akeyGen_areg_aq(24) $ (po_areg_key_aq(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(88),
	datac => po_akeyGen_areg_aq(24),
	datad => po_areg_key_aq(56),
	combout => po_akeyGen_aroundkey_out(56));

-- Location: LCCOMB_X34_Y30_N24
po_amux2_aresult_a56_a_a24 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a56_a_a24_combout = (po_akeyGen_aroundkey_out(56)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(56),
	combout => po_amux2_aresult_a56_a_a24_combout);

-- Location: FF_X34_Y30_N25
po_areg_key_aq_a56_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a56_a_a24_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(56));

-- Location: LCCOMB_X34_Y30_N28
po_akeyGen_aroundkey_out_a24_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(24) = po_akeyGen_areg_aq(24) $ (po_areg_key_aq(88) $ (po_areg_key_aq(24) $ (po_areg_key_aq(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(24),
	datab => po_areg_key_aq(88),
	datac => po_areg_key_aq(24),
	datad => po_areg_key_aq(56),
	combout => po_akeyGen_aroundkey_out(24));

-- Location: FF_X34_Y30_N29
po_areg_key_aq_a24_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(24),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(24));

-- Location: LCCOMB_X32_Y27_N18
po_aadd1_astate_out_a24_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(24) = po_areg_mix_aq(24) $ (po_areg_key_aq(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(24),
	datad => po_areg_key_aq(24),
	combout => po_aadd1_astate_out(24));

-- Location: FF_X32_Y27_N19
po_areg_add_aq_a24_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(24),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(24));

-- Location: FF_X31_Y23_N7
po_areg_shift_aq_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(33),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(1));

-- Location: LCCOMB_X31_Y23_N6
po_amix3_aword_state_out_a25_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(25) = po_amix3_aword_state_out_a25_a_a9_combout $ (po_areg_shift_aq(23) $ (po_areg_shift_aq(1) $ (po_areg_shift_aq(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out_a25_a_a9_combout,
	datab => po_areg_shift_aq(23),
	datac => po_areg_shift_aq(1),
	datad => po_areg_shift_aq(16),
	combout => po_amix3_aword_state_out(25));

-- Location: LCCOMB_X34_Y23_N18
po_areg_mix_aq_a25_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a25_a_afeeder_combout = po_amix3_aword_state_out(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_amix3_aword_state_out(25),
	combout => po_areg_mix_aq_a25_a_afeeder_combout);

-- Location: FF_X34_Y23_N19
po_areg_mix_aq_a25_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a25_a_afeeder_combout,
	asdata => po_areg_sub_aq(25),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(25));

-- Location: LCCOMB_X35_Y26_N20
po_aadd1_astate_out_a25_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(25) = po_areg_key_aq(25) $ (po_areg_mix_aq(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(25),
	datad => po_areg_mix_aq(25),
	combout => po_aadd1_astate_out(25));

-- Location: FF_X35_Y26_N21
po_areg_add_aq_a25_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(25),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(25));

-- Location: LCCOMB_X37_Y28_N8
po_amux2_aresult_a122_a_a90 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a122_a_a90_combout = (po_akeyGen_areg_aq(26) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_areg_aq(26),
	combout => po_amux2_aresult_a122_a_a90_combout);

-- Location: FF_X37_Y28_N9
po_areg_key_aq_a122_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a122_a_a90_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(122));

-- Location: LCCOMB_X34_Y28_N2
po_akeyGen_ax_a26_a_a2 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax_a26_a_a2_combout = po_akeyGen_amux_aMux5_a0_combout $ (po_areg_key_aq(122) $ (auto_generated_aram_block1a2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_amux_aMux5_a0_combout,
	datac => po_areg_key_aq(122),
	datad => po_akeyGen_amem0_arom_rtl_0_aq_a_a2_a,
	combout => po_akeyGen_ax_a26_a_a2_combout);

-- Location: FF_X34_Y28_N3
po_akeyGen_areg_aq_a26_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax_a26_a_a2_combout,
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(26));

-- Location: LCCOMB_X37_Y28_N12
po_akeyGen_aroundkey_out_a58_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(58) = po_areg_key_aq(90) $ (po_areg_key_aq(58) $ (po_akeyGen_areg_aq(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(90),
	datab => po_areg_key_aq(58),
	datad => po_akeyGen_areg_aq(26),
	combout => po_akeyGen_aroundkey_out(58));

-- Location: LCCOMB_X37_Y28_N2
po_amux2_aresult_a58_a_a26 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a58_a_a26_combout = (po_akeyGen_aroundkey_out(58) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(58),
	combout => po_amux2_aresult_a58_a_a26_combout);

-- Location: FF_X37_Y28_N3
po_areg_key_aq_a58_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a58_a_a26_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(58));

-- Location: LCCOMB_X36_Y28_N28
po_akeyGen_aroundkey_out_a26_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(26) = po_areg_key_aq(90) $ (po_akeyGen_areg_aq(26) $ (po_areg_key_aq(26) $ (po_areg_key_aq(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(90),
	datab => po_akeyGen_areg_aq(26),
	datac => po_areg_key_aq(26),
	datad => po_areg_key_aq(58),
	combout => po_akeyGen_aroundkey_out(26));

-- Location: FF_X36_Y28_N29
po_areg_key_aq_a26_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(26),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(26));

-- Location: LCCOMB_X32_Y24_N28
po_amix3_aword_state_out_a26_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(26) = po_areg_shift_aq(2) $ (po_amix3_aword_state_out_a26_a_a11_combout $ (po_areg_shift_aq(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(2),
	datab => po_amix3_aword_state_out_a26_a_a11_combout,
	datad => po_areg_shift_aq(17),
	combout => po_amix3_aword_state_out(26));

-- Location: FF_X32_Y24_N29
po_areg_mix_aq_a26_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(26),
	asdata => po_areg_sub_aq(26),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(26));

-- Location: LCCOMB_X36_Y29_N24
po_aadd1_astate_out_a26_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(26) = po_areg_key_aq(26) $ (po_areg_mix_aq(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(26),
	datad => po_areg_mix_aq(26),
	combout => po_aadd1_astate_out(26));

-- Location: FF_X36_Y29_N25
po_areg_add_aq_a26_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(26),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(26));

-- Location: LCCOMB_X35_Y28_N16
po_amux2_aresult_a123_a_a91 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a123_a_a91_combout = (po_akeyGen_areg_aq(27)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_aSelector4_a0_combout,
	datac => po_akeyGen_areg_aq(27),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a123_a_a91_combout);

-- Location: FF_X35_Y28_N17
po_areg_key_aq_a123_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a123_a_a91_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(123));

-- Location: LCCOMB_X35_Y28_N10
po_akeyGen_amux_aMux4_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_amux_aMux4_a0_combout = (!po_acount_acnt(1) & ((po_acount_acnt(3) & (!po_acount_acnt(2) & po_acount_acnt(0))) # (!po_acount_acnt(3) & (po_acount_acnt(2) & !po_acount_acnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(3),
	datab => po_acount_acnt(2),
	datac => po_acount_acnt(1),
	datad => po_acount_acnt(0),
	combout => po_akeyGen_amux_aMux4_a0_combout);

-- Location: LCCOMB_X34_Y28_N4
po_akeyGen_ax_a27_a_a3 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax_a27_a_a3_combout = po_areg_key_aq(123) $ (po_akeyGen_amux_aMux4_a0_combout $ (auto_generated_aram_block1a3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(123),
	datac => po_akeyGen_amux_aMux4_a0_combout,
	datad => po_akeyGen_amem0_arom_rtl_0_aq_a_a3_a,
	combout => po_akeyGen_ax_a27_a_a3_combout);

-- Location: FF_X34_Y28_N5
po_akeyGen_areg_aq_a27_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax_a27_a_a3_combout,
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(27));

-- Location: LCCOMB_X36_Y27_N6
po_akeyGen_aroundkey_out_a91_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(91) = po_areg_key_aq(91) $ (po_akeyGen_areg_aq(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(91),
	datad => po_akeyGen_areg_aq(27),
	combout => po_akeyGen_aroundkey_out(91));

-- Location: LCCOMB_X36_Y27_N26
po_amux2_aresult_a91_a_a59 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a91_a_a59_combout = (po_akeyGen_aroundkey_out(91)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a0_combout,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(91),
	combout => po_amux2_aresult_a91_a_a59_combout);

-- Location: FF_X36_Y27_N27
po_areg_key_aq_a91_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a91_a_a59_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(91));

-- Location: LCCOMB_X36_Y27_N0
po_akeyGen_aroundkey_out_a59_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(59) = po_akeyGen_areg_aq(27) $ (po_areg_key_aq(91) $ (po_areg_key_aq(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_akeyGen_areg_aq(27),
	datac => po_areg_key_aq(91),
	datad => po_areg_key_aq(59),
	combout => po_akeyGen_aroundkey_out(59));

-- Location: LCCOMB_X36_Y27_N20
po_amux2_aresult_a59_a_a27 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a59_a_a27_combout = (po_akeyGen_aroundkey_out(59)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a0_combout,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(59),
	combout => po_amux2_aresult_a59_a_a27_combout);

-- Location: FF_X36_Y27_N21
po_areg_key_aq_a59_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a59_a_a27_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(59));

-- Location: LCCOMB_X36_Y27_N24
po_akeyGen_aroundkey_out_a27_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(27) = po_areg_key_aq(91) $ (po_akeyGen_areg_aq(27) $ (po_areg_key_aq(27) $ (po_areg_key_aq(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(91),
	datab => po_akeyGen_areg_aq(27),
	datac => po_areg_key_aq(27),
	datad => po_areg_key_aq(59),
	combout => po_akeyGen_aroundkey_out(27));

-- Location: FF_X36_Y27_N25
po_areg_key_aq_a27_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(27),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(27));

-- Location: LCCOMB_X32_Y27_N28
po_aadd1_astate_out_a27_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(27) = po_areg_mix_aq(27) $ (po_areg_key_aq(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(27),
	datad => po_areg_key_aq(27),
	combout => po_aadd1_astate_out(27));

-- Location: FF_X32_Y27_N29
po_areg_add_aq_a27_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(27),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(27));

-- Location: LCCOMB_X30_Y22_N24
po_amix3_aword_state_out_a28_a_a29 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out_a28_a_a29_combout = po_areg_shift_aq(4) $ (po_areg_shift_aq(19) $ (po_areg_shift_aq(12) $ (!po_areg_shift_aq(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(4),
	datab => po_areg_shift_aq(19),
	datac => po_areg_shift_aq(12),
	datad => po_areg_shift_aq(20),
	combout => po_amix3_aword_state_out_a28_a_a29_combout);

-- Location: LCCOMB_X31_Y22_N28
po_amix3_aword_state_out_a28_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(28) = po_areg_shift_aq(27) $ (po_amix3_aword_state_out_a28_a_a29_combout $ (po_areg_shift_aq(31) $ (!po_areg_shift_aq(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(27),
	datab => po_amix3_aword_state_out_a28_a_a29_combout,
	datac => po_areg_shift_aq(31),
	datad => po_areg_shift_aq(23),
	combout => po_amix3_aword_state_out(28));

-- Location: LCCOMB_X31_Y22_N4
po_areg_mix_aq_a28_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a28_a_afeeder_combout = po_amix3_aword_state_out(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix3_aword_state_out(28),
	combout => po_areg_mix_aq_a28_a_afeeder_combout);

-- Location: LCCOMB_X32_Y24_N14
po_areg_sub_aq_a28_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a28_a_afeeder_combout = auto_generated_aram_block1a4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_a_a4_a,
	combout => po_areg_sub_aq_a28_a_afeeder_combout);

-- Location: FF_X32_Y24_N15
po_areg_sub_aq_a28_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a28_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(28));

-- Location: FF_X31_Y22_N5
po_areg_mix_aq_a28_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a28_a_afeeder_combout,
	asdata => po_areg_sub_aq(28),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(28));

-- Location: LCCOMB_X35_Y28_N28
po_akeyGen_amux_aMux3_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_amux_aMux3_a0_combout = (po_acount_acnt(3) & (!po_acount_acnt(2) & (po_acount_acnt(1) $ (po_acount_acnt(0))))) # (!po_acount_acnt(3) & (po_acount_acnt(2) & (!po_acount_acnt(1) & po_acount_acnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(3),
	datab => po_acount_acnt(2),
	datac => po_acount_acnt(1),
	datad => po_acount_acnt(0),
	combout => po_akeyGen_amux_aMux3_a0_combout);

-- Location: LCCOMB_X37_Y26_N26
po_amux2_aresult_a124_a_a92 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a124_a_a92_combout = (po_akeyGen_areg_aq(28) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_areg_aq(28),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a124_a_a92_combout);

-- Location: FF_X37_Y26_N27
po_areg_key_aq_a124_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a124_a_a92_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(124));

-- Location: LCCOMB_X34_Y28_N18
po_akeyGen_ax_a28_a_a4 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax_a28_a_a4_combout = po_akeyGen_amux_aMux3_a0_combout $ (auto_generated_aram_block1a4 $ (po_areg_key_aq(124)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_akeyGen_amux_aMux3_a0_combout,
	datac => po_akeyGen_amem0_arom_rtl_0_aq_a_a4_a,
	datad => po_areg_key_aq(124),
	combout => po_akeyGen_ax_a28_a_a4_combout);

-- Location: FF_X34_Y28_N19
po_akeyGen_areg_aq_a28_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax_a28_a_a4_combout,
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(28));

-- Location: LCCOMB_X37_Y26_N2
po_akeyGen_aroundkey_out_a92_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(92) = po_areg_key_aq(92) $ (po_akeyGen_areg_aq(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(92),
	datac => po_akeyGen_areg_aq(28),
	combout => po_akeyGen_aroundkey_out(92));

-- Location: LCCOMB_X37_Y26_N8
po_amux2_aresult_a92_a_a60 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a92_a_a60_combout = (po_akeyGen_aroundkey_out(92) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(92),
	combout => po_amux2_aresult_a92_a_a60_combout);

-- Location: FF_X37_Y26_N9
po_areg_key_aq_a92_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a92_a_a60_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(92));

-- Location: LCCOMB_X37_Y26_N10
po_akeyGen_aroundkey_out_a60_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(60) = po_areg_key_aq(92) $ (po_akeyGen_areg_aq(28) $ (po_areg_key_aq(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(92),
	datac => po_akeyGen_areg_aq(28),
	datad => po_areg_key_aq(60),
	combout => po_akeyGen_aroundkey_out(60));

-- Location: LCCOMB_X37_Y26_N24
po_amux2_aresult_a60_a_a28 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a60_a_a28_combout = (po_akeyGen_aroundkey_out(60) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(60),
	combout => po_amux2_aresult_a60_a_a28_combout);

-- Location: FF_X37_Y26_N25
po_areg_key_aq_a60_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a60_a_a28_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(60));

-- Location: LCCOMB_X37_Y26_N20
po_akeyGen_aroundkey_out_a28_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(28) = po_akeyGen_areg_aq(28) $ (po_areg_key_aq(92) $ (po_areg_key_aq(28) $ (po_areg_key_aq(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(28),
	datab => po_areg_key_aq(92),
	datac => po_areg_key_aq(28),
	datad => po_areg_key_aq(60),
	combout => po_akeyGen_aroundkey_out(28));

-- Location: FF_X37_Y26_N21
po_areg_key_aq_a28_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(28),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(28));

-- Location: LCCOMB_X35_Y26_N30
po_aadd1_astate_out_a28_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(28) = po_areg_mix_aq(28) $ (po_areg_key_aq(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(28),
	datad => po_areg_key_aq(28),
	combout => po_aadd1_astate_out(28));

-- Location: FF_X35_Y26_N31
po_areg_add_aq_a28_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(28),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(28));

-- Location: LCCOMB_X30_Y22_N10
po_areg_shift_aq_a28_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a28_a_afeeder_combout = po_areg_sub_aq(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(28),
	combout => po_areg_shift_aq_a28_a_afeeder_combout);

-- Location: FF_X30_Y22_N11
po_areg_shift_aq_a28_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a28_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(28));

-- Location: LCCOMB_X32_Y23_N4
po_amix3_aword_state_out_a29_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(29) = po_amix3_aword_state_out_a29_a_a26_combout $ (po_areg_shift_aq(21) $ (po_areg_shift_aq(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix3_aword_state_out_a29_a_a26_combout,
	datab => po_areg_shift_aq(21),
	datad => po_areg_shift_aq(28),
	combout => po_amix3_aword_state_out(29));

-- Location: FF_X32_Y23_N5
po_areg_mix_aq_a29_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(29),
	asdata => po_areg_sub_aq(29),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(29));

-- Location: LCCOMB_X32_Y30_N4
po_amux2_aresult_a125_a_a93 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a125_a_a93_combout = (po_akeyGen_areg_aq(29)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => po_akeyGen_areg_aq(29),
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a125_a_a93_combout);

-- Location: FF_X32_Y30_N5
po_areg_key_aq_a125_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a125_a_a93_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(125));

-- Location: LCCOMB_X32_Y28_N26
po_akeyGen_ax_a29_a_a5 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax_a29_a_a5_combout = po_akeyGen_amux_aMux2_a0_combout $ (po_areg_key_aq(125) $ (auto_generated_aram_block1a5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_amux_aMux2_a0_combout,
	datab => po_areg_key_aq(125),
	datad => po_akeyGen_amem0_arom_rtl_0_aq_a_a5_a,
	combout => po_akeyGen_ax_a29_a_a5_combout);

-- Location: FF_X32_Y28_N27
po_akeyGen_areg_aq_a29_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax_a29_a_a5_combout,
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(29));

-- Location: LCCOMB_X32_Y30_N24
po_akeyGen_aroundkey_out_a61_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(61) = po_areg_key_aq(93) $ (po_akeyGen_areg_aq(29) $ (po_areg_key_aq(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(93),
	datac => po_akeyGen_areg_aq(29),
	datad => po_areg_key_aq(61),
	combout => po_akeyGen_aroundkey_out(61));

-- Location: LCCOMB_X32_Y30_N28
po_amux2_aresult_a61_a_a29 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a61_a_a29_combout = (po_akeyGen_aroundkey_out(61)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => po_akeyGen_aroundkey_out(61),
	datac => pc_aSelector4_a1_combout,
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a61_a_a29_combout);

-- Location: FF_X32_Y30_N29
po_areg_key_aq_a61_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a61_a_a29_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(61));

-- Location: LCCOMB_X32_Y30_N12
po_akeyGen_aroundkey_out_a29_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(29) = po_areg_key_aq(93) $ (po_akeyGen_areg_aq(29) $ (po_areg_key_aq(29) $ (po_areg_key_aq(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(93),
	datab => po_akeyGen_areg_aq(29),
	datac => po_areg_key_aq(29),
	datad => po_areg_key_aq(61),
	combout => po_akeyGen_aroundkey_out(29));

-- Location: FF_X32_Y30_N13
po_areg_key_aq_a29_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(29),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(29));

-- Location: LCCOMB_X32_Y27_N10
po_aadd1_astate_out_a29_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(29) = po_areg_mix_aq(29) $ (po_areg_key_aq(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(29),
	datad => po_areg_key_aq(29),
	combout => po_aadd1_astate_out(29));

-- Location: FF_X32_Y27_N11
po_areg_add_aq_a29_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(29),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(29));

-- Location: LCCOMB_X31_Y28_N0
po_amux2_aresult_a62_a_a30 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a62_a_a30_combout = (po_akeyGen_aroundkey_out(62) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_aroundkey_out(62),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a62_a_a30_combout);

-- Location: FF_X31_Y28_N1
po_areg_key_aq_a62_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a62_a_a30_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(62));

-- Location: LCCOMB_X32_Y28_N16
po_akeyGen_ax_a30_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(30) = po_areg_key_aq(126) $ (auto_generated_aram_block1a6 $ (((!po_acount_acnt(3) & po_akeyGen_amux_aMux1_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(126),
	datab => po_acount_acnt(3),
	datac => po_akeyGen_amem0_arom_rtl_0_aq_a_a6_a,
	datad => po_akeyGen_amux_aMux1_a0_combout,
	combout => po_akeyGen_ax(30));

-- Location: FF_X32_Y28_N17
po_akeyGen_areg_aq_a30_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(30),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(30));

-- Location: LCCOMB_X31_Y28_N4
po_akeyGen_aroundkey_out_a30_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(30) = po_areg_key_aq(94) $ (po_areg_key_aq(62) $ (po_areg_key_aq(30) $ (po_akeyGen_areg_aq(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(94),
	datab => po_areg_key_aq(62),
	datac => po_areg_key_aq(30),
	datad => po_akeyGen_areg_aq(30),
	combout => po_akeyGen_aroundkey_out(30));

-- Location: FF_X31_Y28_N5
po_areg_key_aq_a30_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(30),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(30));

-- Location: LCCOMB_X32_Y23_N14
po_amix3_aword_state_out_a30_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix3_aword_state_out(30) = po_areg_shift_aq(22) $ (po_areg_shift_aq(29) $ (po_amix3_aword_state_out_a30_a_a27_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(22),
	datab => po_areg_shift_aq(29),
	datad => po_amix3_aword_state_out_a30_a_a27_combout,
	combout => po_amix3_aword_state_out(30));

-- Location: LCCOMB_X32_Y24_N6
po_areg_sub_aq_a30_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a30_a_afeeder_combout = auto_generated_aram_block1a6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem6_arom_rtl_0_aq_a_a6_a,
	combout => po_areg_sub_aq_a30_a_afeeder_combout);

-- Location: FF_X32_Y24_N7
po_areg_sub_aq_a30_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a30_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(30));

-- Location: FF_X32_Y23_N15
po_areg_mix_aq_a30_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix3_aword_state_out(30),
	asdata => po_areg_sub_aq(30),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(30));

-- Location: LCCOMB_X32_Y27_N0
po_aadd1_astate_out_a30_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(30) = po_areg_key_aq(30) $ (po_areg_mix_aq(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(30),
	datad => po_areg_mix_aq(30),
	combout => po_aadd1_astate_out(30));

-- Location: FF_X32_Y27_N1
po_areg_add_aq_a30_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(30),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(30));

-- Location: LCCOMB_X32_Y28_N2
po_akeyGen_amux_aMux0_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_amux_aMux0_a0_combout = (!po_acount_acnt(2) & (po_acount_acnt(3) & (!po_acount_acnt(1) & !po_acount_acnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(2),
	datab => po_acount_acnt(3),
	datac => po_acount_acnt(1),
	datad => po_acount_acnt(0),
	combout => po_akeyGen_amux_aMux0_a0_combout);

-- Location: LCCOMB_X32_Y28_N6
po_akeyGen_ax_a31_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(31) = po_areg_key_aq(127) $ (auto_generated_aram_block1a7 $ (po_akeyGen_amux_aMux0_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(127),
	datac => po_akeyGen_amem0_arom_rtl_0_aq_a_a7_a,
	datad => po_akeyGen_amux_aMux0_a0_combout,
	combout => po_akeyGen_ax(31));

-- Location: FF_X32_Y28_N7
po_akeyGen_areg_aq_a31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(31),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(31));

-- Location: LCCOMB_X36_Y25_N18
po_akeyGen_aroundkey_out_a95_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(95) = po_areg_key_aq(95) $ (po_akeyGen_areg_aq(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(95),
	datac => po_akeyGen_areg_aq(31),
	combout => po_akeyGen_aroundkey_out(95));

-- Location: LCCOMB_X36_Y25_N30
po_amux2_aresult_a95_a_a63 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a95_a_a63_combout = (po_akeyGen_aroundkey_out(95) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(95),
	combout => po_amux2_aresult_a95_a_a63_combout);

-- Location: FF_X36_Y25_N31
po_areg_key_aq_a95_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a95_a_a63_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(95));

-- Location: LCCOMB_X36_Y25_N10
po_akeyGen_aroundkey_out_a63_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(63) = po_areg_key_aq(95) $ (po_akeyGen_areg_aq(31) $ (po_areg_key_aq(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(95),
	datac => po_akeyGen_areg_aq(31),
	datad => po_areg_key_aq(63),
	combout => po_akeyGen_aroundkey_out(63));

-- Location: LCCOMB_X36_Y25_N2
po_amux2_aresult_a63_a_a31 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a63_a_a31_combout = (po_akeyGen_aroundkey_out(63)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(63),
	combout => po_amux2_aresult_a63_a_a31_combout);

-- Location: FF_X36_Y25_N3
po_areg_key_aq_a63_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a63_a_a31_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(63));

-- Location: LCCOMB_X36_Y29_N28
po_akeyGen_aroundkey_out_a31_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(31) = po_akeyGen_areg_aq(31) $ (po_areg_key_aq(95) $ (po_areg_key_aq(31) $ (po_areg_key_aq(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(31),
	datab => po_areg_key_aq(95),
	datac => po_areg_key_aq(31),
	datad => po_areg_key_aq(63),
	combout => po_akeyGen_aroundkey_out(31));

-- Location: FF_X36_Y29_N29
po_areg_key_aq_a31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_aroundkey_out(31),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(31));

-- Location: LCCOMB_X32_Y27_N2
po_aadd1_astate_out_a31_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(31) = po_areg_mix_aq(31) $ (po_areg_key_aq(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(31),
	datad => po_areg_key_aq(31),
	combout => po_aadd1_astate_out(31));

-- Location: FF_X32_Y27_N3
po_areg_add_aq_a31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(31),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(31));

-- Location: LCCOMB_X34_Y24_N4
po_areg_sub_aq_a16_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a16_a_afeeder_combout = auto_generated_aram_block1a0_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_b_a0_a,
	combout => po_areg_sub_aq_a16_a_afeeder_combout);

-- Location: FF_X34_Y24_N5
po_areg_sub_aq_a16_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a16_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(16));

-- Location: FF_X35_Y24_N25
po_areg_shift_aq_a48_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(16),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(48));

-- Location: LCCOMB_X36_Y24_N16
po_amix2_aword_state_out_a0_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(0) = po_amix2_aword_state_out_a0_a_a8_combout $ (po_areg_shift_aq(48))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix2_aword_state_out_a0_a_a8_combout,
	datad => po_areg_shift_aq(48),
	combout => po_amix2_aword_state_out(0));

-- Location: LCCOMB_X34_Y26_N24
po_areg_sub_aq_a64_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a64_a_afeeder_combout = auto_generated_aram_block1a0_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_b_a0_a,
	combout => po_areg_sub_aq_a64_a_afeeder_combout);

-- Location: FF_X34_Y26_N25
po_areg_sub_aq_a64_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a64_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(64));

-- Location: FF_X36_Y24_N17
po_areg_mix_aq_a32_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(0),
	asdata => po_areg_sub_aq(64),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(32));

-- Location: LCCOMB_X35_Y27_N20
po_aadd1_astate_out_a32_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(32) = po_areg_key_aq(32) $ (po_areg_mix_aq(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(32),
	datad => po_areg_mix_aq(32),
	combout => po_aadd1_astate_out(32));

-- Location: FF_X35_Y27_N21
po_areg_add_aq_a32_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(32),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(32));

-- Location: LCCOMB_X34_Y23_N0
po_areg_sub_aq_a57_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a57_a_afeeder_combout = auto_generated_aram_block1a1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_a_a1_a,
	combout => po_areg_sub_aq_a57_a_afeeder_combout);

-- Location: FF_X34_Y23_N1
po_areg_sub_aq_a57_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a57_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(57));

-- Location: FF_X35_Y24_N9
po_areg_shift_aq_a57_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(57),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(57));

-- Location: FF_X35_Y24_N3
po_areg_shift_aq_a32_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(64),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(32));

-- Location: LCCOMB_X32_Y25_N28
po_areg_sub_aq_a105_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a105_a_afeeder_combout = auto_generated_aram_block1a1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_a_a1_a,
	combout => po_areg_sub_aq_a105_a_afeeder_combout);

-- Location: FF_X32_Y25_N29
po_areg_sub_aq_a105_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a105_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(105));

-- Location: FF_X35_Y24_N29
po_areg_shift_aq_a41_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(105),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(41));

-- Location: LCCOMB_X34_Y23_N10
po_areg_sub_aq_a56_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a56_a_afeeder_combout = auto_generated_aram_block1a0_aportadataout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_a_a0_a,
	combout => po_areg_sub_aq_a56_a_afeeder_combout);

-- Location: FF_X34_Y23_N11
po_areg_sub_aq_a56_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a56_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(56));

-- Location: FF_X35_Y24_N19
po_areg_shift_aq_a56_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(56),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(56));

-- Location: LCCOMB_X34_Y23_N26
po_areg_sub_aq_a63_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a63_a_afeeder_combout = auto_generated_aram_block1a7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem4_arom_rtl_0_aq_a_a7_a,
	combout => po_areg_sub_aq_a63_a_afeeder_combout);

-- Location: FF_X34_Y23_N27
po_areg_sub_aq_a63_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a63_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(63));

-- Location: FF_X35_Y24_N1
po_areg_shift_aq_a63_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(63),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(63));

-- Location: LCCOMB_X35_Y24_N18
po_amix2_aword_state_out_a25_a_a9 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a25_a_a9_combout = po_areg_shift_aq(49) $ (po_areg_shift_aq(41) $ (po_areg_shift_aq(56) $ (po_areg_shift_aq(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(49),
	datab => po_areg_shift_aq(41),
	datac => po_areg_shift_aq(56),
	datad => po_areg_shift_aq(63),
	combout => po_amix2_aword_state_out_a25_a_a9_combout);

-- Location: LCCOMB_X35_Y24_N2
po_amix2_aword_state_out_a1_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(1) = po_areg_shift_aq(39) $ (po_areg_shift_aq(57) $ (po_areg_shift_aq(32) $ (po_amix2_aword_state_out_a25_a_a9_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(39),
	datab => po_areg_shift_aq(57),
	datac => po_areg_shift_aq(32),
	datad => po_amix2_aword_state_out_a25_a_a9_combout,
	combout => po_amix2_aword_state_out(1));

-- Location: LCCOMB_X34_Y26_N6
po_areg_mix_aq_a33_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a33_a_afeeder_combout = po_amix2_aword_state_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_amix2_aword_state_out(1),
	combout => po_areg_mix_aq_a33_a_afeeder_combout);

-- Location: LCCOMB_X34_Y26_N20
po_areg_sub_aq_a65_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a65_a_afeeder_combout = auto_generated_aram_block1a1_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem3_arom_rtl_0_aq_b_a1_a,
	combout => po_areg_sub_aq_a65_a_afeeder_combout);

-- Location: FF_X34_Y26_N21
po_areg_sub_aq_a65_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a65_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(65));

-- Location: FF_X34_Y26_N7
po_areg_mix_aq_a33_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a33_a_afeeder_combout,
	asdata => po_areg_sub_aq(65),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(33));

-- Location: LCCOMB_X36_Y26_N20
po_aadd1_astate_out_a33_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(33) = po_areg_mix_aq(33) $ (po_areg_key_aq(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(33),
	datad => po_areg_key_aq(33),
	combout => po_aadd1_astate_out(33));

-- Location: FF_X36_Y26_N21
po_areg_add_aq_a33_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(33),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(33));

-- Location: LCCOMB_X34_Y24_N20
po_areg_sub_aq_a18_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a18_a_afeeder_combout = auto_generated_aram_block1a2_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem6_arom_rtl_0_aq_b_a2_a,
	combout => po_areg_sub_aq_a18_a_afeeder_combout);

-- Location: FF_X34_Y24_N21
po_areg_sub_aq_a18_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a18_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(18));

-- Location: FF_X35_Y24_N13
po_areg_shift_aq_a50_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(18),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(50));

-- Location: LCCOMB_X35_Y24_N6
po_amix2_aword_state_out_a26_a_a11 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a26_a_a11_combout = po_areg_shift_aq(42) $ (po_areg_shift_aq(57) $ (po_areg_shift_aq(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(42),
	datab => po_areg_shift_aq(57),
	datad => po_areg_shift_aq(50),
	combout => po_amix2_aword_state_out_a26_a_a11_combout);

-- Location: LCCOMB_X34_Y23_N30
po_areg_sub_aq_a58_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a58_a_afeeder_combout = auto_generated_aram_block1a2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_a_a2_a,
	combout => po_areg_sub_aq_a58_a_afeeder_combout);

-- Location: FF_X34_Y23_N31
po_areg_sub_aq_a58_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a58_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(58));

-- Location: FF_X35_Y24_N17
po_areg_shift_aq_a58_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(58),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(58));

-- Location: LCCOMB_X34_Y26_N16
po_amix2_aword_state_out_a2_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(2) = po_areg_shift_aq(33) $ (po_amix2_aword_state_out_a26_a_a11_combout $ (po_areg_shift_aq(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(33),
	datab => po_amix2_aword_state_out_a26_a_a11_combout,
	datad => po_areg_shift_aq(58),
	combout => po_amix2_aword_state_out(2));

-- Location: LCCOMB_X34_Y26_N26
po_areg_sub_aq_a66_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a66_a_afeeder_combout = auto_generated_aram_block1a2_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem3_arom_rtl_0_aq_b_a2_a,
	combout => po_areg_sub_aq_a66_a_afeeder_combout);

-- Location: FF_X34_Y26_N27
po_areg_sub_aq_a66_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a66_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(66));

-- Location: FF_X34_Y26_N17
po_areg_mix_aq_a34_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(2),
	asdata => po_areg_sub_aq(66),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(34));

-- Location: LCCOMB_X31_Y29_N2
po_akeyGen_aroundkey_out_a34_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(34) = po_areg_key_aq(34) $ (po_areg_key_aq(66) $ (po_akeyGen_areg_aq(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(34),
	datab => po_areg_key_aq(66),
	datad => po_akeyGen_areg_aq(2),
	combout => po_akeyGen_aroundkey_out(34));

-- Location: LCCOMB_X31_Y29_N6
po_amux2_aresult_a34_a_a2 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a34_a_a2_combout = (po_akeyGen_aroundkey_out(34) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(34),
	combout => po_amux2_aresult_a34_a_a2_combout);

-- Location: FF_X31_Y29_N7
po_areg_key_aq_a34_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a34_a_a2_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(34));

-- Location: LCCOMB_X32_Y29_N18
po_aadd1_astate_out_a34_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(34) = po_areg_mix_aq(34) $ (po_areg_key_aq(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(34),
	datad => po_areg_key_aq(34),
	combout => po_aadd1_astate_out(34));

-- Location: FF_X32_Y29_N19
po_areg_add_aq_a34_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(34),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(34));

-- Location: FF_X31_Y25_N13
po_areg_sub_aq_a107_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_asub_amem1_arom_rtl_0_aq_a_a3_a,
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(107));

-- Location: FF_X35_Y24_N5
po_areg_shift_aq_a43_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(107),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(43));

-- Location: LCCOMB_X34_Y24_N22
po_areg_sub_aq_a19_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a19_a_afeeder_combout = auto_generated_aram_block1a3_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_b_a3_a,
	combout => po_areg_sub_aq_a19_a_afeeder_combout);

-- Location: FF_X34_Y24_N23
po_areg_sub_aq_a19_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a19_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(19));

-- Location: FF_X31_Y24_N9
po_areg_shift_aq_a51_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(19),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(51));

-- Location: LCCOMB_X32_Y23_N6
po_areg_sub_aq_a59_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a59_a_afeeder_combout = auto_generated_aram_block1a3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_a_a3_a,
	combout => po_areg_sub_aq_a59_a_afeeder_combout);

-- Location: FF_X32_Y23_N7
po_areg_sub_aq_a59_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a59_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(59));

-- Location: FF_X31_Y24_N27
po_areg_shift_aq_a59_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(59),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(59));

-- Location: LCCOMB_X34_Y26_N8
po_areg_sub_aq_a71_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a71_a_afeeder_combout = auto_generated_aram_block1a7_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_b_a7_a,
	combout => po_areg_sub_aq_a71_a_afeeder_combout);

-- Location: FF_X34_Y26_N9
po_areg_sub_aq_a71_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a71_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(71));

-- Location: LCCOMB_X31_Y24_N6
po_areg_shift_aq_a39_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a39_a_afeeder_combout = po_areg_sub_aq(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(71),
	combout => po_areg_shift_aq_a39_a_afeeder_combout);

-- Location: FF_X31_Y24_N7
po_areg_shift_aq_a39_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a39_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(39));

-- Location: LCCOMB_X34_Y26_N28
po_areg_shift_aq_a34_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a34_a_afeeder_combout = po_areg_sub_aq(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(66),
	combout => po_areg_shift_aq_a34_a_afeeder_combout);

-- Location: FF_X34_Y26_N29
po_areg_shift_aq_a34_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a34_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(34));

-- Location: LCCOMB_X35_Y24_N10
po_amix2_aword_state_out_a3_a_a12 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a3_a_a12_combout = po_areg_shift_aq(63) $ (po_areg_shift_aq(59) $ (po_areg_shift_aq(39) $ (po_areg_shift_aq(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(63),
	datab => po_areg_shift_aq(59),
	datac => po_areg_shift_aq(39),
	datad => po_areg_shift_aq(34),
	combout => po_amix2_aword_state_out_a3_a_a12_combout);

-- Location: LCCOMB_X32_Y24_N12
po_amix2_aword_state_out_a3_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(3) = po_areg_shift_aq(58) $ (po_areg_shift_aq(43) $ (po_areg_shift_aq(51) $ (po_amix2_aword_state_out_a3_a_a12_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(58),
	datab => po_areg_shift_aq(43),
	datac => po_areg_shift_aq(51),
	datad => po_amix2_aword_state_out_a3_a_a12_combout,
	combout => po_amix2_aword_state_out(3));

-- Location: LCCOMB_X32_Y24_N8
po_areg_mix_aq_a35_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a35_a_afeeder_combout = po_amix2_aword_state_out(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(3),
	combout => po_areg_mix_aq_a35_a_afeeder_combout);

-- Location: LCCOMB_X34_Y26_N10
po_areg_sub_aq_a67_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a67_a_afeeder_combout = auto_generated_aram_block1a3_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_b_a3_a,
	combout => po_areg_sub_aq_a67_a_afeeder_combout);

-- Location: FF_X34_Y26_N11
po_areg_sub_aq_a67_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a67_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(67));

-- Location: FF_X32_Y24_N9
po_areg_mix_aq_a35_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a35_a_afeeder_combout,
	asdata => po_areg_sub_aq(67),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(35));

-- Location: LCCOMB_X32_Y27_N4
po_aadd1_astate_out_a35_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(35) = po_areg_key_aq(35) $ (po_areg_mix_aq(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(35),
	datad => po_areg_mix_aq(35),
	combout => po_aadd1_astate_out(35));

-- Location: FF_X32_Y27_N5
po_areg_add_aq_a35_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(35),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(35));

-- Location: FF_X35_Y24_N21
po_areg_shift_aq_a35_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(67),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(35));

-- Location: LCCOMB_X34_Y24_N26
po_areg_sub_aq_a20_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a20_a_afeeder_combout = auto_generated_aram_block1a4_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_b_a4_a,
	combout => po_areg_sub_aq_a20_a_afeeder_combout);

-- Location: FF_X34_Y24_N27
po_areg_sub_aq_a20_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a20_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(20));

-- Location: FF_X31_Y24_N29
po_areg_shift_aq_a52_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(20),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(52));

-- Location: LCCOMB_X32_Y25_N10
po_areg_sub_aq_a108_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a108_a_afeeder_combout = auto_generated_aram_block1a4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_a_a4_a,
	combout => po_areg_sub_aq_a108_a_afeeder_combout);

-- Location: FF_X32_Y25_N11
po_areg_sub_aq_a108_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a108_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(108));

-- Location: FF_X31_Y24_N25
po_areg_shift_aq_a44_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(108),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(44));

-- Location: LCCOMB_X31_Y24_N24
po_amix2_aword_state_out_a4_a_a13 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a4_a_a13_combout = po_areg_shift_aq(59) $ (po_areg_shift_aq(63) $ (po_areg_shift_aq(44) $ (!po_areg_shift_aq(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(59),
	datab => po_areg_shift_aq(63),
	datac => po_areg_shift_aq(44),
	datad => po_areg_shift_aq(39),
	combout => po_amix2_aword_state_out_a4_a_a13_combout);

-- Location: LCCOMB_X31_Y24_N28
po_amix2_aword_state_out_a4_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(4) = po_areg_shift_aq(60) $ (po_areg_shift_aq(35) $ (po_areg_shift_aq(52) $ (!po_amix2_aword_state_out_a4_a_a13_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(60),
	datab => po_areg_shift_aq(35),
	datac => po_areg_shift_aq(52),
	datad => po_amix2_aword_state_out_a4_a_a13_combout,
	combout => po_amix2_aword_state_out(4));

-- Location: LCCOMB_X34_Y24_N10
po_areg_mix_aq_a36_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a36_a_afeeder_combout = po_amix2_aword_state_out(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(4),
	combout => po_areg_mix_aq_a36_a_afeeder_combout);

-- Location: LCCOMB_X34_Y26_N22
po_areg_sub_aq_a68_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a68_a_afeeder_combout = auto_generated_aram_block1a4_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_b_a4_a,
	combout => po_areg_sub_aq_a68_a_afeeder_combout);

-- Location: FF_X34_Y26_N23
po_areg_sub_aq_a68_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a68_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(68));

-- Location: FF_X34_Y24_N11
po_areg_mix_aq_a36_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a36_a_afeeder_combout,
	asdata => po_areg_sub_aq(68),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(36));

-- Location: LCCOMB_X35_Y30_N24
po_aadd1_astate_out_a36_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(36) = po_areg_mix_aq(36) $ (po_areg_key_aq(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(36),
	datad => po_areg_key_aq(36),
	combout => po_aadd1_astate_out(36));

-- Location: FF_X35_Y30_N25
po_areg_add_aq_a36_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(36),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(36));

-- Location: LCCOMB_X34_Y23_N4
po_areg_sub_aq_a60_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a60_a_afeeder_combout = auto_generated_aram_block1a4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_a_a4_a,
	combout => po_areg_sub_aq_a60_a_afeeder_combout);

-- Location: FF_X34_Y23_N5
po_areg_sub_aq_a60_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a60_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(60));

-- Location: LCCOMB_X36_Y24_N10
po_areg_shift_aq_a60_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a60_a_afeeder_combout = po_areg_sub_aq(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(60),
	combout => po_areg_shift_aq_a60_a_afeeder_combout);

-- Location: FF_X36_Y24_N11
po_areg_shift_aq_a60_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a60_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(60));

-- Location: LCCOMB_X32_Y24_N26
po_areg_sub_aq_a21_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a21_a_afeeder_combout = auto_generated_aram_block1a5_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem6_arom_rtl_0_aq_b_a5_a,
	combout => po_areg_sub_aq_a21_a_afeeder_combout);

-- Location: FF_X32_Y24_N27
po_areg_sub_aq_a21_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a21_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(21));

-- Location: FF_X31_Y25_N9
po_areg_shift_aq_a53_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(21),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(53));

-- Location: LCCOMB_X32_Y23_N0
po_areg_sub_aq_a61_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a61_a_afeeder_combout = auto_generated_aram_block1a5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_a_a5_a,
	combout => po_areg_sub_aq_a61_a_afeeder_combout);

-- Location: FF_X32_Y23_N1
po_areg_sub_aq_a61_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a61_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(61));

-- Location: LCCOMB_X31_Y25_N18
po_areg_shift_aq_a61_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a61_a_afeeder_combout = po_areg_sub_aq(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(61),
	combout => po_areg_shift_aq_a61_a_afeeder_combout);

-- Location: FF_X31_Y25_N19
po_areg_shift_aq_a61_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a61_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(61));

-- Location: LCCOMB_X31_Y25_N24
po_amix2_aword_state_out_a13_a_a14 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a13_a_a14_combout = po_areg_shift_aq(36) $ (po_areg_shift_aq(53) $ (po_areg_shift_aq(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(36),
	datac => po_areg_shift_aq(53),
	datad => po_areg_shift_aq(61),
	combout => po_amix2_aword_state_out_a13_a_a14_combout);

-- Location: LCCOMB_X32_Y25_N12
po_amix2_aword_state_out_a5_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(5) = po_areg_shift_aq(45) $ (po_areg_shift_aq(60) $ (po_amix2_aword_state_out_a13_a_a14_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(45),
	datab => po_areg_shift_aq(60),
	datad => po_amix2_aword_state_out_a13_a_a14_combout,
	combout => po_amix2_aword_state_out(5));

-- Location: LCCOMB_X34_Y26_N30
po_areg_sub_aq_a69_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a69_a_afeeder_combout = auto_generated_aram_block1a5_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem3_arom_rtl_0_aq_b_a5_a,
	combout => po_areg_sub_aq_a69_a_afeeder_combout);

-- Location: FF_X34_Y26_N31
po_areg_sub_aq_a69_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a69_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(69));

-- Location: FF_X32_Y25_N13
po_areg_mix_aq_a37_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(5),
	asdata => po_areg_sub_aq(69),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(37));

-- Location: LCCOMB_X32_Y27_N30
po_aadd1_astate_out_a37_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(37) = po_areg_key_aq(37) $ (po_areg_mix_aq(37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(37),
	datad => po_areg_mix_aq(37),
	combout => po_aadd1_astate_out(37));

-- Location: FF_X32_Y27_N31
po_areg_add_aq_a37_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(37),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(37));

-- Location: LCCOMB_X31_Y28_N12
po_akeyGen_aroundkey_out_a38_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(38) = po_areg_key_aq(38) $ (po_areg_key_aq(70) $ (po_akeyGen_areg_aq(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(38),
	datab => po_areg_key_aq(70),
	datad => po_akeyGen_areg_aq(6),
	combout => po_akeyGen_aroundkey_out(38));

-- Location: LCCOMB_X31_Y28_N6
po_amux2_aresult_a38_a_a6 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a38_a_a6_combout = (po_akeyGen_aroundkey_out(38) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(38),
	combout => po_amux2_aresult_a38_a_a6_combout);

-- Location: FF_X31_Y28_N7
po_areg_key_aq_a38_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a38_a_a6_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(38));

-- Location: LCCOMB_X32_Y25_N26
po_areg_sub_aq_a110_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a110_a_afeeder_combout = auto_generated_aram_block1a6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem1_arom_rtl_0_aq_a_a6_a,
	combout => po_areg_sub_aq_a110_a_afeeder_combout);

-- Location: FF_X32_Y25_N27
po_areg_sub_aq_a110_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a110_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(110));

-- Location: LCCOMB_X31_Y25_N2
po_areg_shift_aq_a46_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a46_a_afeeder_combout = po_areg_sub_aq(110)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(110),
	combout => po_areg_shift_aq_a46_a_afeeder_combout);

-- Location: FF_X31_Y25_N3
po_areg_shift_aq_a46_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a46_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(46));

-- Location: LCCOMB_X32_Y25_N6
po_amix2_aword_state_out_a6_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(6) = po_amix2_aword_state_out_a6_a_a15_combout $ (po_areg_shift_aq(61) $ (po_areg_shift_aq(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix2_aword_state_out_a6_a_a15_combout,
	datab => po_areg_shift_aq(61),
	datad => po_areg_shift_aq(46),
	combout => po_amix2_aword_state_out(6));

-- Location: LCCOMB_X32_Y26_N20
po_areg_sub_aq_a70_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a70_a_afeeder_combout = auto_generated_aram_block1a6_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem3_arom_rtl_0_aq_b_a6_a,
	combout => po_areg_sub_aq_a70_a_afeeder_combout);

-- Location: FF_X32_Y26_N21
po_areg_sub_aq_a70_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a70_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(70));

-- Location: FF_X32_Y25_N7
po_areg_mix_aq_a38_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(6),
	asdata => po_areg_sub_aq(70),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(38));

-- Location: LCCOMB_X32_Y28_N8
po_aadd1_astate_out_a38_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(38) = po_areg_key_aq(38) $ (po_areg_mix_aq(38))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(38),
	datad => po_areg_mix_aq(38),
	combout => po_aadd1_astate_out(38));

-- Location: FF_X32_Y28_N9
po_areg_add_aq_a38_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(38),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(38));

-- Location: LCCOMB_X32_Y23_N26
po_areg_sub_aq_a62_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a62_a_afeeder_combout = auto_generated_aram_block1a6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem4_arom_rtl_0_aq_a_a6_a,
	combout => po_areg_sub_aq_a62_a_afeeder_combout);

-- Location: FF_X32_Y23_N27
po_areg_sub_aq_a62_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a62_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(62));

-- Location: LCCOMB_X31_Y25_N20
po_areg_shift_aq_a62_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a62_a_afeeder_combout = po_areg_sub_aq(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(62),
	combout => po_areg_shift_aq_a62_a_afeeder_combout);

-- Location: FF_X31_Y25_N21
po_areg_shift_aq_a62_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a62_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(62));

-- Location: LCCOMB_X31_Y25_N22
po_amix2_aword_state_out_a28_a_a16 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a28_a_a16_combout = po_areg_shift_aq(55) $ (po_areg_shift_aq(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(55),
	datad => po_areg_shift_aq(63),
	combout => po_amix2_aword_state_out_a28_a_a16_combout);

-- Location: LCCOMB_X31_Y25_N0
po_areg_shift_aq_a38_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a38_a_afeeder_combout = po_areg_sub_aq(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(70),
	combout => po_areg_shift_aq_a38_a_afeeder_combout);

-- Location: FF_X31_Y25_N1
po_areg_shift_aq_a38_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a38_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(38));

-- Location: LCCOMB_X31_Y25_N14
po_amix2_aword_state_out_a7_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(7) = po_areg_shift_aq(47) $ (po_areg_shift_aq(62) $ (po_amix2_aword_state_out_a28_a_a16_combout $ (po_areg_shift_aq(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(47),
	datab => po_areg_shift_aq(62),
	datac => po_amix2_aword_state_out_a28_a_a16_combout,
	datad => po_areg_shift_aq(38),
	combout => po_amix2_aword_state_out(7));

-- Location: LCCOMB_X32_Y25_N14
po_areg_mix_aq_a39_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a39_a_afeeder_combout = po_amix2_aword_state_out(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(7),
	combout => po_areg_mix_aq_a39_a_afeeder_combout);

-- Location: FF_X32_Y25_N15
po_areg_mix_aq_a39_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a39_a_afeeder_combout,
	asdata => po_areg_sub_aq(71),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(39));

-- Location: LCCOMB_X32_Y29_N4
po_aadd1_astate_out_a39_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(39) = po_areg_key_aq(39) $ (po_areg_mix_aq(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(39),
	datad => po_areg_mix_aq(39),
	combout => po_aadd1_astate_out(39));

-- Location: FF_X32_Y29_N5
po_areg_add_aq_a39_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(39),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(39));

-- Location: LCCOMB_X35_Y24_N20
po_amix2_am5_ab_out_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_am5_ab_out_a0_combout = po_areg_shift_aq(39) $ (po_areg_shift_aq(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(39),
	datad => po_areg_shift_aq(32),
	combout => po_amix2_am5_ab_out_a0_combout);

-- Location: LCCOMB_X35_Y24_N24
po_amix2_aword_state_out_a8_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(8) = po_areg_shift_aq(47) $ (po_areg_shift_aq(56) $ (po_areg_shift_aq(48) $ (po_amix2_am5_ab_out_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(47),
	datab => po_areg_shift_aq(56),
	datac => po_areg_shift_aq(48),
	datad => po_amix2_am5_ab_out_a0_combout,
	combout => po_amix2_aword_state_out(8));

-- Location: LCCOMB_X36_Y24_N6
po_areg_mix_aq_a40_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a40_a_afeeder_combout = po_amix2_aword_state_out(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(8),
	combout => po_areg_mix_aq_a40_a_afeeder_combout);

-- Location: LCCOMB_X32_Y25_N18
po_areg_sub_aq_a104_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a104_a_afeeder_combout = auto_generated_aram_block1a0_aportadataout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_a_a0_a,
	combout => po_areg_sub_aq_a104_a_afeeder_combout);

-- Location: FF_X32_Y25_N19
po_areg_sub_aq_a104_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a104_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(104));

-- Location: FF_X36_Y24_N7
po_areg_mix_aq_a40_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a40_a_afeeder_combout,
	asdata => po_areg_sub_aq(104),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(40));

-- Location: LCCOMB_X36_Y25_N8
po_aadd1_astate_out_a40_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(40) = po_areg_key_aq(40) $ (po_areg_mix_aq(40))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(40),
	datad => po_areg_mix_aq(40),
	combout => po_aadd1_astate_out(40));

-- Location: FF_X36_Y25_N9
po_areg_add_aq_a40_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(40),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(40));

-- Location: LCCOMB_X35_Y26_N10
po_amux2_aresult_a105_a_a73 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a105_a_a73_combout = (po_akeyGen_areg_aq(9) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_areg_aq(9),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a105_a_a73_combout);

-- Location: FF_X35_Y26_N11
po_areg_key_aq_a105_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a105_a_a73_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(105));

-- Location: LCCOMB_X34_Y29_N4
po_akeyGen_ax_a9_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(9) = po_areg_key_aq(105) $ (auto_generated_aram_block1a1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(105),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_a_a1_a,
	combout => po_akeyGen_ax(9));

-- Location: FF_X34_Y29_N5
po_akeyGen_areg_aq_a9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(9),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(9));

-- Location: LCCOMB_X35_Y26_N26
po_akeyGen_aroundkey_out_a73_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(73) = po_akeyGen_areg_aq(9) $ (po_areg_key_aq(73))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(9),
	datad => po_areg_key_aq(73),
	combout => po_akeyGen_aroundkey_out(73));

-- Location: LCCOMB_X35_Y26_N0
po_amux2_aresult_a73_a_a41 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a73_a_a41_combout = (po_akeyGen_aroundkey_out(73)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(73),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a73_a_a41_combout);

-- Location: FF_X35_Y26_N1
po_areg_key_aq_a73_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a73_a_a41_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(73));

-- Location: LCCOMB_X35_Y26_N16
po_akeyGen_aroundkey_out_a41_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(41) = po_areg_key_aq(73) $ (po_akeyGen_areg_aq(9) $ (po_areg_key_aq(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(73),
	datac => po_akeyGen_areg_aq(9),
	datad => po_areg_key_aq(41),
	combout => po_akeyGen_aroundkey_out(41));

-- Location: LCCOMB_X35_Y26_N18
po_amux2_aresult_a41_a_a9 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a41_a_a9_combout = (po_akeyGen_aroundkey_out(41) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(41),
	combout => po_amux2_aresult_a41_a_a9_combout);

-- Location: FF_X35_Y26_N19
po_areg_key_aq_a41_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a41_a_a9_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(41));

-- Location: FF_X35_Y24_N15
po_areg_shift_aq_a40_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(104),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(40));

-- Location: LCCOMB_X32_Y25_N30
po_areg_sub_aq_a111_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a111_a_afeeder_combout = auto_generated_aram_block1a7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem1_arom_rtl_0_aq_a_a7_a,
	combout => po_areg_sub_aq_a111_a_afeeder_combout);

-- Location: FF_X32_Y25_N31
po_areg_sub_aq_a111_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a111_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(111));

-- Location: LCCOMB_X31_Y24_N14
po_areg_shift_aq_a47_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a47_a_afeeder_combout = po_areg_sub_aq(111)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(111),
	combout => po_areg_shift_aq_a47_a_afeeder_combout);

-- Location: FF_X31_Y24_N15
po_areg_shift_aq_a47_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a47_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(47));

-- Location: LCCOMB_X35_Y24_N14
po_amix2_aword_state_out_a9_a_a17 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a9_a_a17_combout = po_areg_shift_aq(39) $ (po_areg_shift_aq(32) $ (po_areg_shift_aq(40) $ (po_areg_shift_aq(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(39),
	datab => po_areg_shift_aq(32),
	datac => po_areg_shift_aq(40),
	datad => po_areg_shift_aq(47),
	combout => po_amix2_aword_state_out_a9_a_a17_combout);

-- Location: FF_X35_Y24_N7
po_areg_shift_aq_a33_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(65),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(33));

-- Location: LCCOMB_X35_Y24_N8
po_amix2_aword_state_out_a9_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(9) = po_areg_shift_aq(49) $ (po_amix2_aword_state_out_a9_a_a17_combout $ (po_areg_shift_aq(57) $ (po_areg_shift_aq(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(49),
	datab => po_amix2_aword_state_out_a9_a_a17_combout,
	datac => po_areg_shift_aq(57),
	datad => po_areg_shift_aq(33),
	combout => po_amix2_aword_state_out(9));

-- Location: LCCOMB_X36_Y24_N12
po_areg_mix_aq_a41_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a41_a_afeeder_combout = po_amix2_aword_state_out(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(9),
	combout => po_areg_mix_aq_a41_a_afeeder_combout);

-- Location: FF_X36_Y24_N13
po_areg_mix_aq_a41_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a41_a_afeeder_combout,
	asdata => po_areg_sub_aq(105),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(41));

-- Location: LCCOMB_X35_Y26_N28
po_aadd1_astate_out_a41_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(41) = po_areg_key_aq(41) $ (po_areg_mix_aq(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(41),
	datad => po_areg_mix_aq(41),
	combout => po_aadd1_astate_out(41));

-- Location: FF_X35_Y26_N29
po_areg_add_aq_a41_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(41),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(41));

-- Location: LCCOMB_X35_Y24_N16
po_amix2_aword_state_out_a2_a_a10 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a2_a_a10_combout = po_areg_shift_aq(58) $ (po_areg_shift_aq(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_shift_aq(58),
	datad => po_areg_shift_aq(33),
	combout => po_amix2_aword_state_out_a2_a_a10_combout);

-- Location: LCCOMB_X35_Y24_N28
po_amix2_aword_state_out_a10_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(10) = po_areg_shift_aq(50) $ (po_areg_shift_aq(34) $ (po_areg_shift_aq(41) $ (po_amix2_aword_state_out_a2_a_a10_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(50),
	datab => po_areg_shift_aq(34),
	datac => po_areg_shift_aq(41),
	datad => po_amix2_aword_state_out_a2_a_a10_combout,
	combout => po_amix2_aword_state_out(10));

-- Location: LCCOMB_X34_Y25_N10
po_areg_mix_aq_a42_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a42_a_afeeder_combout = po_amix2_aword_state_out(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_amix2_aword_state_out(10),
	combout => po_areg_mix_aq_a42_a_afeeder_combout);

-- Location: LCCOMB_X34_Y25_N30
po_areg_sub_aq_a106_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a106_a_afeeder_combout = auto_generated_aram_block1a2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_a_a2_a,
	combout => po_areg_sub_aq_a106_a_afeeder_combout);

-- Location: FF_X34_Y25_N31
po_areg_sub_aq_a106_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a106_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(106));

-- Location: FF_X34_Y25_N11
po_areg_mix_aq_a42_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a42_a_afeeder_combout,
	asdata => po_areg_sub_aq(106),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(42));

-- Location: LCCOMB_X31_Y27_N6
po_aadd1_astate_out_a42_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(42) = po_areg_mix_aq(42) $ (po_areg_key_aq(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(42),
	datad => po_areg_key_aq(42),
	combout => po_aadd1_astate_out(42));

-- Location: FF_X31_Y27_N7
po_areg_add_aq_a42_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(42),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(42));

-- Location: FF_X35_Y24_N27
po_areg_shift_aq_a42_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(106),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(42));

-- Location: LCCOMB_X35_Y24_N26
po_amix2_aword_state_out_a11_a_a18 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a11_a_a18_combout = po_areg_shift_aq(39) $ (po_areg_shift_aq(34) $ (po_areg_shift_aq(42) $ (po_areg_shift_aq(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(39),
	datab => po_areg_shift_aq(34),
	datac => po_areg_shift_aq(42),
	datad => po_areg_shift_aq(47),
	combout => po_amix2_aword_state_out_a11_a_a18_combout);

-- Location: LCCOMB_X35_Y24_N30
po_amix2_aword_state_out_a11_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(11) = po_areg_shift_aq(51) $ (po_areg_shift_aq(59) $ (po_areg_shift_aq(35) $ (po_amix2_aword_state_out_a11_a_a18_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(51),
	datab => po_areg_shift_aq(59),
	datac => po_areg_shift_aq(35),
	datad => po_amix2_aword_state_out_a11_a_a18_combout,
	combout => po_amix2_aword_state_out(11));

-- Location: LCCOMB_X36_Y24_N18
po_areg_mix_aq_a43_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a43_a_afeeder_combout = po_amix2_aword_state_out(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(11),
	combout => po_areg_mix_aq_a43_a_afeeder_combout);

-- Location: FF_X36_Y24_N19
po_areg_mix_aq_a43_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a43_a_afeeder_combout,
	asdata => po_areg_sub_aq(107),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(43));

-- Location: LCCOMB_X32_Y27_N12
po_aadd1_astate_out_a43_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(43) = po_areg_key_aq(43) $ (po_areg_mix_aq(43))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(43),
	datad => po_areg_mix_aq(43),
	combout => po_aadd1_astate_out(43));

-- Location: FF_X32_Y27_N13
po_areg_add_aq_a43_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(43),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(43));

-- Location: LCCOMB_X31_Y24_N20
po_amix2_aword_state_out_a31_a_a20 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a31_a_a20_combout = po_areg_shift_aq(47) $ (po_areg_shift_aq(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(47),
	datad => po_areg_shift_aq(39),
	combout => po_amix2_aword_state_out_a31_a_a20_combout);

-- Location: FF_X31_Y24_N5
po_areg_shift_aq_a36_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(68),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(36));

-- Location: LCCOMB_X31_Y24_N2
po_amix2_aword_state_out_a12_a_a19 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a12_a_a19_combout = po_areg_shift_aq(60) $ (po_areg_shift_aq(35) $ (po_areg_shift_aq(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(60),
	datab => po_areg_shift_aq(35),
	datad => po_areg_shift_aq(52),
	combout => po_amix2_aword_state_out_a12_a_a19_combout);

-- Location: LCCOMB_X31_Y24_N4
po_amix2_aword_state_out_a12_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(12) = po_areg_shift_aq(43) $ (po_amix2_aword_state_out_a31_a_a20_combout $ (po_areg_shift_aq(36) $ (po_amix2_aword_state_out_a12_a_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(43),
	datab => po_amix2_aword_state_out_a31_a_a20_combout,
	datac => po_areg_shift_aq(36),
	datad => po_amix2_aword_state_out_a12_a_a19_combout,
	combout => po_amix2_aword_state_out(12));

-- Location: LCCOMB_X32_Y24_N22
po_areg_mix_aq_a44_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a44_a_afeeder_combout = po_amix2_aword_state_out(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_amix2_aword_state_out(12),
	combout => po_areg_mix_aq_a44_a_afeeder_combout);

-- Location: FF_X32_Y24_N23
po_areg_mix_aq_a44_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a44_a_afeeder_combout,
	asdata => po_areg_sub_aq(108),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(44));

-- Location: LCCOMB_X31_Y26_N16
po_aadd1_astate_out_a44_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(44) = po_areg_mix_aq(44) $ (po_areg_key_aq(44))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(44),
	datac => po_areg_key_aq(44),
	combout => po_aadd1_astate_out(44));

-- Location: FF_X31_Y26_N17
po_areg_add_aq_a44_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(44),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(44));

-- Location: LCCOMB_X32_Y25_N8
po_amix2_aword_state_out_a13_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(13) = po_areg_shift_aq(37) $ (po_amix2_aword_state_out_a13_a_a14_combout $ (po_areg_shift_aq(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(37),
	datab => po_amix2_aword_state_out_a13_a_a14_combout,
	datad => po_areg_shift_aq(44),
	combout => po_amix2_aword_state_out(13));

-- Location: LCCOMB_X32_Y25_N20
po_areg_sub_aq_a109_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a109_a_afeeder_combout = auto_generated_aram_block1a5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_a_a5_a,
	combout => po_areg_sub_aq_a109_a_afeeder_combout);

-- Location: FF_X32_Y25_N21
po_areg_sub_aq_a109_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a109_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(109));

-- Location: FF_X32_Y25_N9
po_areg_mix_aq_a45_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(13),
	asdata => po_areg_sub_aq(109),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(45));

-- Location: LCCOMB_X32_Y30_N18
po_akeyGen_aroundkey_out_a45_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(45) = po_areg_key_aq(77) $ (po_areg_key_aq(45) $ (po_akeyGen_areg_aq(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(77),
	datac => po_areg_key_aq(45),
	datad => po_akeyGen_areg_aq(13),
	combout => po_akeyGen_aroundkey_out(45));

-- Location: LCCOMB_X32_Y30_N26
po_amux2_aresult_a45_a_a13 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a45_a_a13_combout = (po_akeyGen_aroundkey_out(45) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => po_akeyGen_aroundkey_out(45),
	datac => pc_aSelector4_a1_combout,
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a45_a_a13_combout);

-- Location: FF_X32_Y30_N27
po_areg_key_aq_a45_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a45_a_a13_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(45));

-- Location: LCCOMB_X35_Y25_N12
po_aadd1_astate_out_a45_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(45) = po_areg_mix_aq(45) $ (po_areg_key_aq(45))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(45),
	datad => po_areg_key_aq(45),
	combout => po_aadd1_astate_out(45));

-- Location: FF_X35_Y25_N13
po_areg_add_aq_a45_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(45),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(45));

-- Location: LCCOMB_X34_Y30_N20
po_akeyGen_aroundkey_out_a46_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(46) = po_areg_key_aq(78) $ (po_areg_key_aq(46) $ (po_akeyGen_areg_aq(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(78),
	datac => po_areg_key_aq(46),
	datad => po_akeyGen_areg_aq(14),
	combout => po_akeyGen_aroundkey_out(46));

-- Location: LCCOMB_X34_Y30_N22
po_amux2_aresult_a46_a_a14 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a46_a_a14_combout = (po_akeyGen_aroundkey_out(46) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(46),
	combout => po_amux2_aresult_a46_a_a14_combout);

-- Location: FF_X34_Y30_N23
po_areg_key_aq_a46_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a46_a_a14_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(46));

-- Location: FF_X31_Y25_N23
po_areg_shift_aq_a45_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(109),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(45));

-- Location: LCCOMB_X31_Y25_N16
po_areg_shift_aq_a37_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a37_a_afeeder_combout = po_areg_sub_aq(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(69),
	combout => po_areg_shift_aq_a37_a_afeeder_combout);

-- Location: FF_X31_Y25_N17
po_areg_shift_aq_a37_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a37_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(37));

-- Location: LCCOMB_X31_Y25_N4
po_amix2_aword_state_out_a6_a_a15 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a6_a_a15_combout = po_areg_shift_aq(54) $ (po_areg_shift_aq(37) $ (po_areg_shift_aq(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(54),
	datab => po_areg_shift_aq(37),
	datad => po_areg_shift_aq(62),
	combout => po_amix2_aword_state_out_a6_a_a15_combout);

-- Location: LCCOMB_X32_Y25_N0
po_amix2_aword_state_out_a14_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(14) = po_areg_shift_aq(38) $ (po_areg_shift_aq(45) $ (po_amix2_aword_state_out_a6_a_a15_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(38),
	datab => po_areg_shift_aq(45),
	datad => po_amix2_aword_state_out_a6_a_a15_combout,
	combout => po_amix2_aword_state_out(14));

-- Location: FF_X32_Y25_N1
po_areg_mix_aq_a46_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(14),
	asdata => po_areg_sub_aq(110),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(46));

-- Location: LCCOMB_X31_Y26_N10
po_aadd1_astate_out_a46_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(46) = po_areg_key_aq(46) $ (po_areg_mix_aq(46))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(46),
	datad => po_areg_mix_aq(46),
	combout => po_aadd1_astate_out(46));

-- Location: FF_X31_Y26_N11
po_areg_add_aq_a46_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(46),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(46));

-- Location: LCCOMB_X31_Y25_N30
po_amix2_aword_state_out_a15_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(15) = po_areg_shift_aq(39) $ (po_areg_shift_aq(46) $ (po_amix2_aword_state_out_a28_a_a16_combout $ (po_areg_shift_aq(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(39),
	datab => po_areg_shift_aq(46),
	datac => po_amix2_aword_state_out_a28_a_a16_combout,
	datad => po_areg_shift_aq(38),
	combout => po_amix2_aword_state_out(15));

-- Location: LCCOMB_X32_Y26_N26
po_areg_mix_aq_a47_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a47_a_afeeder_combout = po_amix2_aword_state_out(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(15),
	combout => po_areg_mix_aq_a47_a_afeeder_combout);

-- Location: FF_X32_Y26_N27
po_areg_mix_aq_a47_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a47_a_afeeder_combout,
	asdata => po_areg_sub_aq(111),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(47));

-- Location: LCCOMB_X36_Y26_N30
po_aadd1_astate_out_a47_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(47) = po_areg_key_aq(47) $ (po_areg_mix_aq(47))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(47),
	datab => po_areg_mix_aq(47),
	combout => po_aadd1_astate_out(47));

-- Location: FF_X36_Y26_N31
po_areg_add_aq_a47_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(47),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(47));

-- Location: LCCOMB_X34_Y24_N12
po_amix2_aword_state_out_a16_a_a21 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a16_a_a21_combout = po_areg_shift_aq(55) $ (po_areg_shift_aq(40) $ (po_areg_shift_aq(32) $ (po_areg_shift_aq(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(55),
	datab => po_areg_shift_aq(40),
	datac => po_areg_shift_aq(32),
	datad => po_areg_shift_aq(47),
	combout => po_amix2_aword_state_out_a16_a_a21_combout);

-- Location: LCCOMB_X34_Y24_N0
po_amix2_aword_state_out_a16_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(16) = po_areg_shift_aq(56) $ (po_amix2_aword_state_out_a16_a_a21_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(56),
	datad => po_amix2_aword_state_out_a16_a_a21_combout,
	combout => po_amix2_aword_state_out(16));

-- Location: FF_X34_Y24_N1
po_areg_mix_aq_a48_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(16),
	asdata => po_areg_sub_aq(16),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(48));

-- Location: LCCOMB_X35_Y25_N30
po_aadd1_astate_out_a48_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(48) = po_areg_mix_aq(48) $ (po_areg_key_aq(48))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(48),
	datad => po_areg_key_aq(48),
	combout => po_aadd1_astate_out(48));

-- Location: FF_X35_Y25_N31
po_areg_add_aq_a48_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(48),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(48));

-- Location: LCCOMB_X36_Y26_N4
po_aadd1_astate_out_a49_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(49) = po_areg_mix_aq(49) $ (po_areg_key_aq(49))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(49),
	datad => po_areg_key_aq(49),
	combout => po_aadd1_astate_out(49));

-- Location: FF_X36_Y26_N5
po_areg_add_aq_a49_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(49),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(49));

-- Location: LCCOMB_X37_Y28_N20
po_aadd1_astate_out_a50_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(50) = po_areg_mix_aq(50) $ (po_areg_key_aq(50))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(50),
	datad => po_areg_key_aq(50),
	combout => po_aadd1_astate_out(50));

-- Location: FF_X37_Y28_N21
po_areg_add_aq_a50_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(50),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(50));

-- Location: LCCOMB_X35_Y25_N10
po_amux2_aresult_a115_a_a83 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a115_a_a83_combout = (po_akeyGen_areg_aq(19)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_aSelector4_a0_combout,
	datac => po_akeyGen_areg_aq(19),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a115_a_a83_combout);

-- Location: FF_X35_Y25_N11
po_areg_key_aq_a115_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a115_a_a83_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(115));

-- Location: LCCOMB_X34_Y28_N6
po_akeyGen_ax_a19_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(19) = po_areg_key_aq(115) $ (auto_generated_aram_block1a3_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(115),
	datad => po_akeyGen_amem0_arom_rtl_0_aq_b_a3_a,
	combout => po_akeyGen_ax(19));

-- Location: FF_X34_Y28_N7
po_akeyGen_areg_aq_a19_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(19),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(19));

-- Location: LCCOMB_X35_Y25_N18
po_akeyGen_aroundkey_out_a83_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(83) = po_akeyGen_areg_aq(19) $ (po_areg_key_aq(83))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(19),
	datad => po_areg_key_aq(83),
	combout => po_akeyGen_aroundkey_out(83));

-- Location: LCCOMB_X35_Y25_N24
po_amux2_aresult_a83_a_a51 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a83_a_a51_combout = (po_akeyGen_aroundkey_out(83)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(83),
	combout => po_amux2_aresult_a83_a_a51_combout);

-- Location: FF_X35_Y25_N25
po_areg_key_aq_a83_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a83_a_a51_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(83));

-- Location: LCCOMB_X35_Y25_N0
po_akeyGen_aroundkey_out_a51_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(51) = po_areg_key_aq(51) $ (po_areg_key_aq(83) $ (po_akeyGen_areg_aq(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(51),
	datab => po_areg_key_aq(83),
	datac => po_akeyGen_areg_aq(19),
	combout => po_akeyGen_aroundkey_out(51));

-- Location: LCCOMB_X35_Y25_N26
po_amux2_aresult_a51_a_a19 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a51_a_a19_combout = (po_akeyGen_aroundkey_out(51) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(51),
	combout => po_amux2_aresult_a51_a_a19_combout);

-- Location: FF_X35_Y25_N27
po_areg_key_aq_a51_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a51_a_a19_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(51));

-- Location: LCCOMB_X35_Y24_N4
po_amix2_aword_state_out_a19_a_a24 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a19_a_a24_combout = po_areg_shift_aq(42) $ (po_areg_shift_aq(35) $ (po_areg_shift_aq(43) $ (po_areg_shift_aq(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(42),
	datab => po_areg_shift_aq(35),
	datac => po_areg_shift_aq(43),
	datad => po_areg_shift_aq(50),
	combout => po_amix2_aword_state_out_a19_a_a24_combout);

-- Location: LCCOMB_X34_Y24_N2
po_amix2_aword_state_out_a19_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(19) = po_areg_shift_aq(55) $ (po_areg_shift_aq(47) $ (po_areg_shift_aq(59) $ (po_amix2_aword_state_out_a19_a_a24_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(55),
	datab => po_areg_shift_aq(47),
	datac => po_areg_shift_aq(59),
	datad => po_amix2_aword_state_out_a19_a_a24_combout,
	combout => po_amix2_aword_state_out(19));

-- Location: LCCOMB_X34_Y24_N14
po_areg_mix_aq_a51_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a51_a_afeeder_combout = po_amix2_aword_state_out(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(19),
	combout => po_areg_mix_aq_a51_a_afeeder_combout);

-- Location: FF_X34_Y24_N15
po_areg_mix_aq_a51_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a51_a_afeeder_combout,
	asdata => po_areg_sub_aq(19),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(51));

-- Location: LCCOMB_X35_Y25_N16
po_aadd1_astate_out_a51_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(51) = po_areg_key_aq(51) $ (po_areg_mix_aq(51))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(51),
	datad => po_areg_mix_aq(51),
	combout => po_aadd1_astate_out(51));

-- Location: FF_X35_Y25_N17
po_areg_add_aq_a51_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(51),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(51));

-- Location: LCCOMB_X32_Y24_N24
po_areg_sub_aq_a23_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a23_a_afeeder_combout = auto_generated_aram_block1a7_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_b_a7_a,
	combout => po_areg_sub_aq_a23_a_afeeder_combout);

-- Location: FF_X32_Y24_N25
po_areg_sub_aq_a23_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a23_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(23));

-- Location: LCCOMB_X31_Y25_N6
po_areg_shift_aq_a55_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a55_a_afeeder_combout = po_areg_sub_aq(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(23),
	combout => po_areg_shift_aq_a55_a_afeeder_combout);

-- Location: FF_X31_Y25_N7
po_areg_shift_aq_a55_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a55_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(55));

-- Location: LCCOMB_X31_Y24_N8
po_amix2_aword_state_out_a20_a_a25 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a20_a_a25_combout = po_areg_shift_aq(43) $ (po_areg_shift_aq(36) $ (po_areg_shift_aq(51) $ (po_areg_shift_aq(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(43),
	datab => po_areg_shift_aq(36),
	datac => po_areg_shift_aq(51),
	datad => po_areg_shift_aq(44),
	combout => po_amix2_aword_state_out_a20_a_a25_combout);

-- Location: LCCOMB_X36_Y24_N20
po_amix2_aword_state_out_a20_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(20) = po_areg_shift_aq(60) $ (po_areg_shift_aq(55) $ (po_amix2_aword_state_out_a20_a_a25_combout $ (po_areg_shift_aq(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(60),
	datab => po_areg_shift_aq(55),
	datac => po_amix2_aword_state_out_a20_a_a25_combout,
	datad => po_areg_shift_aq(47),
	combout => po_amix2_aword_state_out(20));

-- Location: LCCOMB_X36_Y24_N30
po_areg_mix_aq_a52_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a52_a_afeeder_combout = po_amix2_aword_state_out(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(20),
	combout => po_areg_mix_aq_a52_a_afeeder_combout);

-- Location: FF_X36_Y24_N31
po_areg_mix_aq_a52_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a52_a_afeeder_combout,
	asdata => po_areg_sub_aq(20),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(52));

-- Location: LCCOMB_X35_Y27_N14
po_aadd1_astate_out_a52_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(52) = po_areg_mix_aq(52) $ (po_areg_key_aq(52))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(52),
	datad => po_areg_key_aq(52),
	combout => po_aadd1_astate_out(52));

-- Location: FF_X35_Y27_N15
po_areg_add_aq_a52_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(52),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(52));

-- Location: LCCOMB_X31_Y25_N28
po_amix2_aword_state_out_a29_a_a26 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a29_a_a26_combout = po_areg_shift_aq(52) $ (po_areg_shift_aq(45) $ (po_areg_shift_aq(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(52),
	datab => po_areg_shift_aq(45),
	datad => po_areg_shift_aq(37),
	combout => po_amix2_aword_state_out_a29_a_a26_combout);

-- Location: LCCOMB_X32_Y25_N24
po_amix2_aword_state_out_a21_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(21) = po_areg_shift_aq(44) $ (po_areg_shift_aq(61) $ (po_amix2_aword_state_out_a29_a_a26_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(44),
	datab => po_areg_shift_aq(61),
	datad => po_amix2_aword_state_out_a29_a_a26_combout,
	combout => po_amix2_aword_state_out(21));

-- Location: FF_X32_Y25_N25
po_areg_mix_aq_a53_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(21),
	asdata => po_areg_sub_aq(21),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(53));

-- Location: LCCOMB_X35_Y25_N6
po_aadd1_astate_out_a53_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(53) = po_areg_mix_aq(53) $ (po_areg_key_aq(53))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(53),
	datad => po_areg_key_aq(53),
	combout => po_aadd1_astate_out(53));

-- Location: FF_X35_Y25_N7
po_areg_add_aq_a53_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(53),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(53));

-- Location: LCCOMB_X32_Y28_N0
po_akeyGen_ax_a22_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(22) = po_areg_key_aq(118) $ (auto_generated_aram_block1a6_aPORTBDATAOUT0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(118),
	datad => po_akeyGen_amem0_arom_rtl_0_aq_b_a6_a,
	combout => po_akeyGen_ax(22));

-- Location: FF_X32_Y28_N1
po_akeyGen_areg_aq_a22_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(22),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(22));

-- Location: LCCOMB_X31_Y29_N0
po_akeyGen_aroundkey_out_a54_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(54) = po_areg_key_aq(86) $ (po_areg_key_aq(54) $ (po_akeyGen_areg_aq(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(86),
	datab => po_areg_key_aq(54),
	datad => po_akeyGen_areg_aq(22),
	combout => po_akeyGen_aroundkey_out(54));

-- Location: LCCOMB_X31_Y29_N24
po_amux2_aresult_a54_a_a22 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a54_a_a22_combout = (po_akeyGen_aroundkey_out(54)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(54),
	combout => po_amux2_aresult_a54_a_a22_combout);

-- Location: FF_X31_Y29_N25
po_areg_key_aq_a54_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a54_a_a22_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(54));

-- Location: LCCOMB_X31_Y25_N12
po_amix2_aword_state_out_a30_a_a27 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out_a30_a_a27_combout = po_areg_shift_aq(53) $ (po_areg_shift_aq(38) $ (po_areg_shift_aq(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(53),
	datab => po_areg_shift_aq(38),
	datad => po_areg_shift_aq(46),
	combout => po_amix2_aword_state_out_a30_a_a27_combout);

-- Location: LCCOMB_X32_Y25_N16
po_amix2_aword_state_out_a22_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(22) = po_areg_shift_aq(45) $ (po_areg_shift_aq(62) $ (po_amix2_aword_state_out_a30_a_a27_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(45),
	datab => po_areg_shift_aq(62),
	datad => po_amix2_aword_state_out_a30_a_a27_combout,
	combout => po_amix2_aword_state_out(22));

-- Location: LCCOMB_X32_Y24_N10
po_areg_sub_aq_a22_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a22_a_afeeder_combout = auto_generated_aram_block1a6_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem6_arom_rtl_0_aq_b_a6_a,
	combout => po_areg_sub_aq_a22_a_afeeder_combout);

-- Location: FF_X32_Y24_N11
po_areg_sub_aq_a22_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a22_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(22));

-- Location: FF_X32_Y25_N17
po_areg_mix_aq_a54_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(22),
	asdata => po_areg_sub_aq(22),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(54));

-- Location: LCCOMB_X31_Y29_N20
po_aadd1_astate_out_a54_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(54) = po_areg_key_aq(54) $ (po_areg_mix_aq(54))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(54),
	datad => po_areg_mix_aq(54),
	combout => po_aadd1_astate_out(54));

-- Location: FF_X31_Y29_N21
po_areg_add_aq_a54_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(54),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(54));

-- Location: LCCOMB_X36_Y27_N14
po_akeyGen_aroundkey_out_a55_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(55) = po_areg_key_aq(87) $ (po_akeyGen_areg_aq(23) $ (po_areg_key_aq(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(87),
	datac => po_akeyGen_areg_aq(23),
	datad => po_areg_key_aq(55),
	combout => po_akeyGen_aroundkey_out(55));

-- Location: LCCOMB_X36_Y27_N18
po_amux2_aresult_a55_a_a23 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a55_a_a23_combout = (po_akeyGen_aroundkey_out(55)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a0_combout,
	datac => po_akeyGen_aroundkey_out(55),
	datad => pc_aSelector4_a1_combout,
	combout => po_amux2_aresult_a55_a_a23_combout);

-- Location: FF_X36_Y27_N19
po_areg_key_aq_a55_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a55_a_a23_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(55));

-- Location: LCCOMB_X36_Y27_N4
po_aadd1_astate_out_a55_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(55) = po_areg_mix_aq(55) $ (po_areg_key_aq(55))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(55),
	datad => po_areg_key_aq(55),
	combout => po_aadd1_astate_out(55));

-- Location: FF_X36_Y27_N5
po_areg_add_aq_a55_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(55),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(55));

-- Location: LCCOMB_X36_Y24_N26
po_amix2_am1_ab_out_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_am1_ab_out_a0_combout = po_areg_shift_aq(55) $ (po_areg_shift_aq(48))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(55),
	datad => po_areg_shift_aq(48),
	combout => po_amix2_am1_ab_out_a0_combout);

-- Location: LCCOMB_X34_Y24_N28
po_amix2_aword_state_out_a24_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(24) = po_areg_shift_aq(32) $ (po_areg_shift_aq(40) $ (po_areg_shift_aq(63) $ (po_amix2_am1_ab_out_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(32),
	datab => po_areg_shift_aq(40),
	datac => po_areg_shift_aq(63),
	datad => po_amix2_am1_ab_out_a0_combout,
	combout => po_amix2_aword_state_out(24));

-- Location: LCCOMB_X34_Y24_N18
po_areg_mix_aq_a56_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a56_a_afeeder_combout = po_amix2_aword_state_out(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix2_aword_state_out(24),
	combout => po_areg_mix_aq_a56_a_afeeder_combout);

-- Location: FF_X34_Y24_N19
po_areg_mix_aq_a56_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a56_a_afeeder_combout,
	asdata => po_areg_sub_aq(56),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(56));

-- Location: LCCOMB_X35_Y30_N10
po_aadd1_astate_out_a56_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(56) = po_areg_mix_aq(56) $ (po_areg_key_aq(56))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(56),
	datad => po_areg_key_aq(56),
	combout => po_aadd1_astate_out(56));

-- Location: FF_X35_Y30_N11
po_areg_add_aq_a56_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(56),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(56));

-- Location: LCCOMB_X32_Y28_N4
po_akeyGen_amux_aMux6_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_amux_aMux6_a0_combout = (!po_acount_acnt(2) & ((po_acount_acnt(1) & ((!po_acount_acnt(0)))) # (!po_acount_acnt(1) & (po_acount_acnt(3) & po_acount_acnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_acount_acnt(2),
	datab => po_acount_acnt(3),
	datac => po_acount_acnt(1),
	datad => po_acount_acnt(0),
	combout => po_akeyGen_amux_aMux6_a0_combout);

-- Location: LCCOMB_X32_Y28_N24
po_akeyGen_ax_a25_a_a1 : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax_a25_a_a1_combout = po_areg_key_aq(121) $ (po_akeyGen_amux_aMux6_a0_combout $ (auto_generated_aram_block1a1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(121),
	datac => po_akeyGen_amux_aMux6_a0_combout,
	datad => po_akeyGen_amem0_arom_rtl_0_aq_a_a1_a,
	combout => po_akeyGen_ax_a25_a_a1_combout);

-- Location: FF_X32_Y28_N25
po_akeyGen_areg_aq_a25_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax_a25_a_a1_combout,
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(25));

-- Location: LCCOMB_X36_Y26_N22
po_akeyGen_aroundkey_out_a89_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(89) = po_akeyGen_areg_aq(25) $ (po_areg_key_aq(89))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_akeyGen_areg_aq(25),
	datad => po_areg_key_aq(89),
	combout => po_akeyGen_aroundkey_out(89));

-- Location: LCCOMB_X36_Y26_N18
po_amux2_aresult_a89_a_a57 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a89_a_a57_combout = (po_akeyGen_aroundkey_out(89) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(89),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a89_a_a57_combout);

-- Location: FF_X36_Y26_N19
po_areg_key_aq_a89_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a89_a_a57_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(89));

-- Location: LCCOMB_X36_Y26_N26
po_akeyGen_aroundkey_out_a57_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(57) = po_areg_key_aq(57) $ (po_areg_key_aq(89) $ (po_akeyGen_areg_aq(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(57),
	datab => po_areg_key_aq(89),
	datac => po_akeyGen_areg_aq(25),
	combout => po_akeyGen_aroundkey_out(57));

-- Location: LCCOMB_X36_Y26_N10
po_amux2_aresult_a57_a_a25 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a57_a_a25_combout = (po_akeyGen_aroundkey_out(57)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_aroundkey_out(57),
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a57_a_a25_combout);

-- Location: FF_X36_Y26_N11
po_areg_key_aq_a57_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a57_a_a25_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(57));

-- Location: LCCOMB_X36_Y26_N6
po_aadd1_astate_out_a57_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(57) = po_areg_mix_aq(57) $ (po_areg_key_aq(57))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(57),
	datad => po_areg_key_aq(57),
	combout => po_aadd1_astate_out(57));

-- Location: FF_X36_Y26_N7
po_areg_add_aq_a57_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(57),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(57));

-- Location: LCCOMB_X34_Y26_N4
po_amix2_aword_state_out_a26_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(26) = po_areg_shift_aq(49) $ (po_amix2_aword_state_out_a26_a_a11_combout $ (po_areg_shift_aq(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(49),
	datab => po_amix2_aword_state_out_a26_a_a11_combout,
	datad => po_areg_shift_aq(34),
	combout => po_amix2_aword_state_out(26));

-- Location: FF_X34_Y26_N5
po_areg_mix_aq_a58_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(26),
	asdata => po_areg_sub_aq(58),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(58));

-- Location: LCCOMB_X36_Y29_N2
po_aadd1_astate_out_a58_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(58) = po_areg_mix_aq(58) $ (po_areg_key_aq(58))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(58),
	datad => po_areg_key_aq(58),
	combout => po_aadd1_astate_out(58));

-- Location: FF_X36_Y29_N3
po_areg_add_aq_a58_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(58),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(58));

-- Location: LCCOMB_X36_Y25_N26
po_aadd1_astate_out_a59_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(59) = po_areg_mix_aq(59) $ (po_areg_key_aq(59))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(59),
	datad => po_areg_key_aq(59),
	combout => po_aadd1_astate_out(59));

-- Location: FF_X36_Y25_N27
po_areg_add_aq_a59_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(59),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(59));

-- Location: LCCOMB_X36_Y26_N12
po_aadd1_astate_out_a60_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(60) = po_areg_mix_aq(60) $ (po_areg_key_aq(60))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(60),
	datad => po_areg_key_aq(60),
	combout => po_aadd1_astate_out(60));

-- Location: FF_X36_Y26_N13
po_areg_add_aq_a60_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(60),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(60));

-- Location: LCCOMB_X32_Y25_N4
po_amix2_aword_state_out_a29_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(29) = po_areg_shift_aq(53) $ (po_areg_shift_aq(60) $ (po_amix2_aword_state_out_a29_a_a26_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(53),
	datab => po_areg_shift_aq(60),
	datad => po_amix2_aword_state_out_a29_a_a26_combout,
	combout => po_amix2_aword_state_out(29));

-- Location: FF_X32_Y25_N5
po_areg_mix_aq_a61_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(29),
	asdata => po_areg_sub_aq(61),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(61));

-- Location: LCCOMB_X32_Y30_N8
po_aadd1_astate_out_a61_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(61) = po_areg_mix_aq(61) $ (po_areg_key_aq(61))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(61),
	datad => po_areg_key_aq(61),
	combout => po_aadd1_astate_out(61));

-- Location: FF_X32_Y30_N9
po_areg_add_aq_a61_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(61),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(61));

-- Location: LCCOMB_X32_Y25_N22
po_amix2_aword_state_out_a30_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix2_aword_state_out(30) = po_areg_shift_aq(54) $ (po_areg_shift_aq(61) $ (po_amix2_aword_state_out_a30_a_a27_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(54),
	datab => po_areg_shift_aq(61),
	datad => po_amix2_aword_state_out_a30_a_a27_combout,
	combout => po_amix2_aword_state_out(30));

-- Location: FF_X32_Y25_N23
po_areg_mix_aq_a62_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix2_aword_state_out(30),
	asdata => po_areg_sub_aq(62),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(62));

-- Location: LCCOMB_X31_Y28_N20
po_aadd1_astate_out_a62_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(62) = po_areg_key_aq(62) $ (po_areg_mix_aq(62))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(62),
	datad => po_areg_mix_aq(62),
	combout => po_aadd1_astate_out(62));

-- Location: FF_X31_Y28_N21
po_areg_add_aq_a62_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(62),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(62));

-- Location: LCCOMB_X36_Y25_N12
po_aadd1_astate_out_a63_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(63) = po_areg_mix_aq(63) $ (po_areg_key_aq(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(63),
	datad => po_areg_key_aq(63),
	combout => po_aadd1_astate_out(63));

-- Location: FF_X36_Y25_N13
po_areg_add_aq_a63_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(63),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(63));

-- Location: LCCOMB_X32_Y23_N24
po_areg_sub_aq_a48_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a48_a_afeeder_combout = auto_generated_aram_block1a0_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_b_a0_a,
	combout => po_areg_sub_aq_a48_a_afeeder_combout);

-- Location: FF_X32_Y23_N25
po_areg_sub_aq_a48_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a48_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(48));

-- Location: LCCOMB_X36_Y23_N4
po_areg_shift_aq_a80_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a80_a_afeeder_combout = po_areg_sub_aq(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(48),
	combout => po_areg_shift_aq_a80_a_afeeder_combout);

-- Location: FF_X36_Y23_N5
po_areg_shift_aq_a80_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a80_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(80));

-- Location: LCCOMB_X34_Y25_N4
po_areg_sub_aq_a103_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a103_a_afeeder_combout = auto_generated_aram_block1a7_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_b_a7_a,
	combout => po_areg_sub_aq_a103_a_afeeder_combout);

-- Location: FF_X34_Y25_N5
po_areg_sub_aq_a103_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a103_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(103));

-- Location: FF_X35_Y21_N1
po_areg_shift_aq_a71_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(103),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(71));

-- Location: LCCOMB_X34_Y21_N30
po_areg_sub_aq_a95_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a95_a_afeeder_combout = auto_generated_aram_block1a7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem2_arom_rtl_0_aq_a_a7_a,
	combout => po_areg_sub_aq_a95_a_afeeder_combout);

-- Location: FF_X34_Y21_N31
po_areg_sub_aq_a95_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a95_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(95));

-- Location: FF_X35_Y22_N15
po_areg_shift_aq_a95_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(95),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(95));

-- Location: LCCOMB_X34_Y20_N18
po_areg_sub_aq_a8_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a8_a_afeeder_combout = auto_generated_aram_block1a0_aportadataout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_a_a0_a,
	combout => po_areg_sub_aq_a8_a_afeeder_combout);

-- Location: FF_X34_Y20_N19
po_areg_sub_aq_a8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a8_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(8));

-- Location: FF_X35_Y22_N29
po_areg_shift_aq_a72_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(8),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(72));

-- Location: LCCOMB_X35_Y22_N14
po_amix1_aword_state_out_a0_a_a14 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a0_a_a14_combout = po_areg_shift_aq(88) $ (po_areg_shift_aq(71) $ (po_areg_shift_aq(95) $ (po_areg_shift_aq(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(88),
	datab => po_areg_shift_aq(71),
	datac => po_areg_shift_aq(95),
	datad => po_areg_shift_aq(72),
	combout => po_amix1_aword_state_out_a0_a_a14_combout);

-- Location: LCCOMB_X36_Y24_N24
po_amix1_aword_state_out_a0_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(0) = po_areg_shift_aq(80) $ (po_amix1_aword_state_out_a0_a_a14_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(80),
	datad => po_amix1_aword_state_out_a0_a_a14_combout,
	combout => po_amix1_aword_state_out(0));

-- Location: LCCOMB_X32_Y25_N2
po_areg_sub_aq_a96_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a96_a_afeeder_combout = auto_generated_aram_block1a0_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_b_a0_a,
	combout => po_areg_sub_aq_a96_a_afeeder_combout);

-- Location: FF_X32_Y25_N3
po_areg_sub_aq_a96_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a96_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(96));

-- Location: FF_X36_Y24_N25
po_areg_mix_aq_a64_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(0),
	asdata => po_areg_sub_aq(96),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(64));

-- Location: LCCOMB_X37_Y28_N14
po_aadd1_astate_out_a64_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(64) = po_areg_mix_aq(64) $ (po_areg_key_aq(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(64),
	datad => po_areg_key_aq(64),
	combout => po_aadd1_astate_out(64));

-- Location: FF_X37_Y28_N15
po_areg_add_aq_a64_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(64),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(64));

-- Location: LCCOMB_X34_Y21_N0
po_areg_sub_aq_a88_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a88_a_afeeder_combout = auto_generated_aram_block1a0_aportadataout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_a_a0_a,
	combout => po_areg_sub_aq_a88_a_afeeder_combout);

-- Location: FF_X34_Y21_N1
po_areg_sub_aq_a88_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a88_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(88));

-- Location: FF_X35_Y22_N13
po_areg_shift_aq_a88_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(88),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(88));

-- Location: LCCOMB_X34_Y20_N20
po_areg_sub_aq_a9_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a9_a_afeeder_combout = auto_generated_aram_block1a1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_a_a1_a,
	combout => po_areg_sub_aq_a9_a_afeeder_combout);

-- Location: FF_X34_Y20_N21
po_areg_sub_aq_a9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a9_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(9));

-- Location: FF_X35_Y22_N11
po_areg_shift_aq_a73_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(9),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(73));

-- Location: LCCOMB_X35_Y22_N12
po_amix1_aword_state_out_a25_a_a15 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a25_a_a15_combout = po_areg_shift_aq(81) $ (po_areg_shift_aq(95) $ (po_areg_shift_aq(88) $ (po_areg_shift_aq(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(81),
	datab => po_areg_shift_aq(95),
	datac => po_areg_shift_aq(88),
	datad => po_areg_shift_aq(73),
	combout => po_amix1_aword_state_out_a25_a_a15_combout);

-- Location: FF_X35_Y22_N19
po_areg_shift_aq_a64_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(96),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(64));

-- Location: LCCOMB_X35_Y22_N30
po_amix1_aword_state_out_a1_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(1) = po_areg_shift_aq(89) $ (po_areg_shift_aq(71) $ (po_amix1_aword_state_out_a25_a_a15_combout $ (po_areg_shift_aq(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(89),
	datab => po_areg_shift_aq(71),
	datac => po_amix1_aword_state_out_a25_a_a15_combout,
	datad => po_areg_shift_aq(64),
	combout => po_amix1_aword_state_out(1));

-- Location: LCCOMB_X34_Y26_N14
po_areg_mix_aq_a65_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a65_a_afeeder_combout = po_amix1_aword_state_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(1),
	combout => po_areg_mix_aq_a65_a_afeeder_combout);

-- Location: LCCOMB_X34_Y25_N18
po_areg_sub_aq_a97_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a97_a_afeeder_combout = auto_generated_aram_block1a1_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem1_arom_rtl_0_aq_b_a1_a,
	combout => po_areg_sub_aq_a97_a_afeeder_combout);

-- Location: FF_X34_Y25_N19
po_areg_sub_aq_a97_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a97_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(97));

-- Location: FF_X34_Y26_N15
po_areg_mix_aq_a65_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a65_a_afeeder_combout,
	asdata => po_areg_sub_aq(97),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(65));

-- Location: LCCOMB_X34_Y27_N0
po_aadd1_astate_out_a65_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(65) = po_areg_mix_aq(65) $ (po_areg_key_aq(65))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(65),
	datad => po_areg_key_aq(65),
	combout => po_aadd1_astate_out(65));

-- Location: FF_X34_Y27_N1
po_areg_add_aq_a65_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(65),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(65));

-- Location: LCCOMB_X34_Y21_N14
po_areg_sub_aq_a90_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a90_a_afeeder_combout = auto_generated_aram_block1a2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_a_a2_a,
	combout => po_areg_sub_aq_a90_a_afeeder_combout);

-- Location: FF_X34_Y21_N15
po_areg_sub_aq_a90_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a90_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(90));

-- Location: FF_X35_Y22_N7
po_areg_shift_aq_a90_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(90),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(90));

-- Location: LCCOMB_X34_Y23_N6
po_areg_sub_aq_a50_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a50_a_afeeder_combout = auto_generated_aram_block1a2_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem4_arom_rtl_0_aq_b_a2_a,
	combout => po_areg_sub_aq_a50_a_afeeder_combout);

-- Location: FF_X34_Y23_N7
po_areg_sub_aq_a50_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a50_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(50));

-- Location: FF_X35_Y22_N5
po_areg_shift_aq_a82_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(50),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(82));

-- Location: LCCOMB_X34_Y21_N8
po_areg_sub_aq_a89_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a89_a_afeeder_combout = auto_generated_aram_block1a1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_a_a1_a,
	combout => po_areg_sub_aq_a89_a_afeeder_combout);

-- Location: FF_X34_Y21_N9
po_areg_sub_aq_a89_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a89_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(89));

-- Location: LCCOMB_X36_Y22_N4
po_areg_shift_aq_a89_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a89_a_afeeder_combout = po_areg_sub_aq(89)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(89),
	combout => po_areg_shift_aq_a89_a_afeeder_combout);

-- Location: FF_X36_Y22_N5
po_areg_shift_aq_a89_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a89_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(89));

-- Location: LCCOMB_X35_Y22_N4
po_amix1_aword_state_out_a26_a_a17 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a26_a_a17_combout = po_areg_shift_aq(74) $ (po_areg_shift_aq(82) $ (po_areg_shift_aq(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(74),
	datac => po_areg_shift_aq(82),
	datad => po_areg_shift_aq(89),
	combout => po_amix1_aword_state_out_a26_a_a17_combout);

-- Location: LCCOMB_X34_Y25_N0
po_amix1_aword_state_out_a2_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(2) = po_areg_shift_aq(65) $ (po_areg_shift_aq(90) $ (po_amix1_aword_state_out_a26_a_a17_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(65),
	datab => po_areg_shift_aq(90),
	datad => po_amix1_aword_state_out_a26_a_a17_combout,
	combout => po_amix1_aword_state_out(2));

-- Location: LCCOMB_X34_Y25_N2
po_areg_sub_aq_a98_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a98_a_afeeder_combout = auto_generated_aram_block1a2_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem1_arom_rtl_0_aq_b_a2_a,
	combout => po_areg_sub_aq_a98_a_afeeder_combout);

-- Location: FF_X34_Y25_N3
po_areg_sub_aq_a98_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a98_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(98));

-- Location: FF_X34_Y25_N1
po_areg_mix_aq_a66_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(2),
	asdata => po_areg_sub_aq(98),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(66));

-- Location: LCCOMB_X35_Y26_N2
po_aadd1_astate_out_a66_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(66) = po_areg_mix_aq(66) $ (po_areg_key_aq(66))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(66),
	datad => po_areg_key_aq(66),
	combout => po_aadd1_astate_out(66));

-- Location: FF_X35_Y26_N3
po_areg_add_aq_a66_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(66),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(66));

-- Location: LCCOMB_X35_Y21_N6
po_areg_shift_aq_a66_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a66_a_afeeder_combout = po_areg_sub_aq(98)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(98),
	combout => po_areg_shift_aq_a66_a_afeeder_combout);

-- Location: FF_X35_Y21_N7
po_areg_shift_aq_a66_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a66_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(66));

-- Location: LCCOMB_X35_Y22_N2
po_amix1_aword_state_out_a3_a_a18 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a3_a_a18_combout = po_areg_shift_aq(91) $ (po_areg_shift_aq(66) $ (po_areg_shift_aq(95) $ (po_areg_shift_aq(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(91),
	datab => po_areg_shift_aq(66),
	datac => po_areg_shift_aq(95),
	datad => po_areg_shift_aq(71),
	combout => po_amix1_aword_state_out_a3_a_a18_combout);

-- Location: LCCOMB_X34_Y23_N12
po_areg_sub_aq_a51_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a51_a_afeeder_combout = auto_generated_aram_block1a3_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_b_a3_a,
	combout => po_areg_sub_aq_a51_a_afeeder_combout);

-- Location: FF_X34_Y23_N13
po_areg_sub_aq_a51_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a51_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(51));

-- Location: FF_X35_Y21_N3
po_areg_shift_aq_a83_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(51),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(83));

-- Location: LCCOMB_X35_Y22_N22
po_amix1_aword_state_out_a3_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(3) = po_areg_shift_aq(75) $ (po_amix1_aword_state_out_a3_a_a18_combout $ (po_areg_shift_aq(83) $ (po_areg_shift_aq(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(75),
	datab => po_amix1_aword_state_out_a3_a_a18_combout,
	datac => po_areg_shift_aq(83),
	datad => po_areg_shift_aq(90),
	combout => po_amix1_aword_state_out(3));

-- Location: LCCOMB_X34_Y25_N28
po_areg_mix_aq_a67_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a67_a_afeeder_combout = po_amix1_aword_state_out(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(3),
	combout => po_areg_mix_aq_a67_a_afeeder_combout);

-- Location: LCCOMB_X34_Y25_N20
po_areg_sub_aq_a99_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a99_a_afeeder_combout = auto_generated_aram_block1a3_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_b_a3_a,
	combout => po_areg_sub_aq_a99_a_afeeder_combout);

-- Location: FF_X34_Y25_N21
po_areg_sub_aq_a99_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a99_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(99));

-- Location: FF_X34_Y25_N29
po_areg_mix_aq_a67_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a67_a_afeeder_combout,
	asdata => po_areg_sub_aq(99),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(67));

-- Location: LCCOMB_X34_Y27_N30
po_aadd1_astate_out_a67_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(67) = po_areg_mix_aq(67) $ (po_areg_key_aq(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(67),
	datad => po_areg_key_aq(67),
	combout => po_aadd1_astate_out(67));

-- Location: FF_X34_Y27_N31
po_areg_add_aq_a67_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(67),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(67));

-- Location: FF_X35_Y22_N1
po_areg_shift_aq_a67_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(99),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(67));

-- Location: LCCOMB_X34_Y21_N18
po_areg_sub_aq_a91_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a91_a_afeeder_combout = auto_generated_aram_block1a3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_a_a3_a,
	combout => po_areg_sub_aq_a91_a_afeeder_combout);

-- Location: FF_X34_Y21_N19
po_areg_sub_aq_a91_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a91_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(91));

-- Location: FF_X35_Y21_N21
po_areg_shift_aq_a91_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(91),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(91));

-- Location: LCCOMB_X34_Y20_N26
po_areg_sub_aq_a12_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a12_a_afeeder_combout = auto_generated_aram_block1a4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem7_arom_rtl_0_aq_a_a4_a,
	combout => po_areg_sub_aq_a12_a_afeeder_combout);

-- Location: FF_X34_Y20_N27
po_areg_sub_aq_a12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a12_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(12));

-- Location: FF_X35_Y21_N23
po_areg_shift_aq_a76_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(12),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(76));

-- Location: LCCOMB_X35_Y21_N22
po_amix1_aword_state_out_a4_a_a20 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a4_a_a20_combout = po_areg_shift_aq(95) $ (po_areg_shift_aq(91) $ (po_areg_shift_aq(76) $ (po_areg_shift_aq(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(95),
	datab => po_areg_shift_aq(91),
	datac => po_areg_shift_aq(76),
	datad => po_areg_shift_aq(71),
	combout => po_amix1_aword_state_out_a4_a_a20_combout);

-- Location: LCCOMB_X34_Y21_N22
po_areg_sub_aq_a92_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a92_a_afeeder_combout = auto_generated_aram_block1a4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem2_arom_rtl_0_aq_a_a4_a,
	combout => po_areg_sub_aq_a92_a_afeeder_combout);

-- Location: FF_X34_Y21_N23
po_areg_sub_aq_a92_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a92_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(92));

-- Location: LCCOMB_X35_Y23_N8
po_areg_shift_aq_a92_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a92_a_afeeder_combout = po_areg_sub_aq(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(92),
	combout => po_areg_shift_aq_a92_a_afeeder_combout);

-- Location: FF_X35_Y23_N9
po_areg_shift_aq_a92_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a92_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(92));

-- Location: LCCOMB_X35_Y23_N10
po_amix1_aword_state_out_a4_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(4) = po_areg_shift_aq(84) $ (po_areg_shift_aq(67) $ (po_amix1_aword_state_out_a4_a_a20_combout $ (po_areg_shift_aq(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(84),
	datab => po_areg_shift_aq(67),
	datac => po_amix1_aword_state_out_a4_a_a20_combout,
	datad => po_areg_shift_aq(92),
	combout => po_amix1_aword_state_out(4));

-- Location: LCCOMB_X35_Y23_N0
po_areg_mix_aq_a68_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a68_a_afeeder_combout = po_amix1_aword_state_out(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(4),
	combout => po_areg_mix_aq_a68_a_afeeder_combout);

-- Location: LCCOMB_X34_Y25_N26
po_areg_sub_aq_a100_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a100_a_afeeder_combout = auto_generated_aram_block1a4_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_b_a4_a,
	combout => po_areg_sub_aq_a100_a_afeeder_combout);

-- Location: FF_X34_Y25_N27
po_areg_sub_aq_a100_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a100_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(100));

-- Location: FF_X35_Y23_N1
po_areg_mix_aq_a68_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a68_a_afeeder_combout,
	asdata => po_areg_sub_aq(100),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(68));

-- Location: LCCOMB_X35_Y30_N20
po_aadd1_astate_out_a68_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(68) = po_areg_key_aq(68) $ (po_areg_mix_aq(68))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(68),
	datac => po_areg_mix_aq(68),
	combout => po_aadd1_astate_out(68));

-- Location: FF_X35_Y30_N21
po_areg_add_aq_a68_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(68),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(68));

-- Location: LCCOMB_X34_Y21_N2
po_areg_sub_aq_a93_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a93_a_afeeder_combout = auto_generated_aram_block1a5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_a_a5_a,
	combout => po_areg_sub_aq_a93_a_afeeder_combout);

-- Location: FF_X34_Y21_N3
po_areg_sub_aq_a93_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a93_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(93));

-- Location: FF_X35_Y21_N9
po_areg_shift_aq_a93_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(93),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(93));

-- Location: FF_X35_Y21_N5
po_areg_shift_aq_a68_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(100),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(68));

-- Location: LCCOMB_X34_Y23_N28
po_areg_sub_aq_a53_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a53_a_afeeder_combout = auto_generated_aram_block1a5_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_b_a5_a,
	combout => po_areg_sub_aq_a53_a_afeeder_combout);

-- Location: FF_X34_Y23_N29
po_areg_sub_aq_a53_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a53_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(53));

-- Location: LCCOMB_X36_Y21_N2
po_areg_shift_aq_a85_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a85_a_afeeder_combout = po_areg_sub_aq(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(53),
	combout => po_areg_shift_aq_a85_a_afeeder_combout);

-- Location: FF_X36_Y21_N3
po_areg_shift_aq_a85_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a85_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(85));

-- Location: LCCOMB_X35_Y21_N4
po_amix1_aword_state_out_a13_a_a21 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a13_a_a21_combout = po_areg_shift_aq(93) $ (po_areg_shift_aq(68) $ (po_areg_shift_aq(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(93),
	datac => po_areg_shift_aq(68),
	datad => po_areg_shift_aq(85),
	combout => po_amix1_aword_state_out_a13_a_a21_combout);

-- Location: LCCOMB_X35_Y23_N6
po_amix1_aword_state_out_a5_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(5) = po_areg_shift_aq(77) $ (po_amix1_aword_state_out_a13_a_a21_combout $ (po_areg_shift_aq(92)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(77),
	datab => po_amix1_aword_state_out_a13_a_a21_combout,
	datad => po_areg_shift_aq(92),
	combout => po_amix1_aword_state_out(5));

-- Location: LCCOMB_X34_Y25_N8
po_areg_sub_aq_a101_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a101_a_afeeder_combout = auto_generated_aram_block1a5_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_b_a5_a,
	combout => po_areg_sub_aq_a101_a_afeeder_combout);

-- Location: FF_X34_Y25_N9
po_areg_sub_aq_a101_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a101_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(101));

-- Location: FF_X35_Y23_N7
po_areg_mix_aq_a69_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(5),
	asdata => po_areg_sub_aq(101),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(69));

-- Location: LCCOMB_X34_Y27_N24
po_aadd1_astate_out_a69_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(69) = po_areg_key_aq(69) $ (po_areg_mix_aq(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(69),
	datad => po_areg_mix_aq(69),
	combout => po_aadd1_astate_out(69));

-- Location: FF_X34_Y27_N25
po_areg_add_aq_a69_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(69),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(69));

-- Location: LCCOMB_X34_Y23_N22
po_areg_sub_aq_a54_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a54_a_afeeder_combout = auto_generated_aram_block1a6_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_b_a6_a,
	combout => po_areg_sub_aq_a54_a_afeeder_combout);

-- Location: FF_X34_Y23_N23
po_areg_sub_aq_a54_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a54_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(54));

-- Location: FF_X35_Y21_N29
po_areg_shift_aq_a86_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(54),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(86));

-- Location: LCCOMB_X35_Y23_N2
po_areg_shift_aq_a69_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a69_a_afeeder_combout = po_areg_sub_aq(101)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(101),
	combout => po_areg_shift_aq_a69_a_afeeder_combout);

-- Location: FF_X35_Y23_N3
po_areg_shift_aq_a69_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a69_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(69));

-- Location: LCCOMB_X35_Y21_N16
po_amix1_aword_state_out_a6_a_a22 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a6_a_a22_combout = po_areg_shift_aq(94) $ (po_areg_shift_aq(86) $ (po_areg_shift_aq(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(94),
	datab => po_areg_shift_aq(86),
	datad => po_areg_shift_aq(69),
	combout => po_amix1_aword_state_out_a6_a_a22_combout);

-- Location: LCCOMB_X34_Y21_N10
po_amix1_aword_state_out_a6_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(6) = po_areg_shift_aq(78) $ (po_amix1_aword_state_out_a6_a_a22_combout $ (po_areg_shift_aq(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(78),
	datab => po_amix1_aword_state_out_a6_a_a22_combout,
	datad => po_areg_shift_aq(93),
	combout => po_amix1_aword_state_out(6));

-- Location: LCCOMB_X34_Y25_N12
po_areg_sub_aq_a102_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a102_a_afeeder_combout = auto_generated_aram_block1a6_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem1_arom_rtl_0_aq_b_a6_a,
	combout => po_areg_sub_aq_a102_a_afeeder_combout);

-- Location: FF_X34_Y25_N13
po_areg_sub_aq_a102_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a102_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(102));

-- Location: FF_X34_Y21_N11
po_areg_mix_aq_a70_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(6),
	asdata => po_areg_sub_aq(102),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(70));

-- Location: LCCOMB_X31_Y28_N26
po_aadd1_astate_out_a70_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(70) = po_areg_key_aq(70) $ (po_areg_mix_aq(70))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(70),
	datad => po_areg_mix_aq(70),
	combout => po_aadd1_astate_out(70));

-- Location: FF_X31_Y28_N27
po_areg_add_aq_a70_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(70),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(70));

-- Location: LCCOMB_X34_Y20_N0
po_areg_sub_aq_a15_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a15_a_afeeder_combout = auto_generated_aram_block1a7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_a_a7_a,
	combout => po_areg_sub_aq_a15_a_afeeder_combout);

-- Location: FF_X34_Y20_N1
po_areg_sub_aq_a15_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a15_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(15));

-- Location: FF_X35_Y21_N13
po_areg_shift_aq_a79_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(15),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(79));

-- Location: LCCOMB_X34_Y21_N26
po_areg_sub_aq_a94_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a94_a_afeeder_combout = auto_generated_aram_block1a6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_a_a6_a,
	combout => po_areg_sub_aq_a94_a_afeeder_combout);

-- Location: FF_X34_Y21_N27
po_areg_sub_aq_a94_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a94_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(94));

-- Location: FF_X35_Y21_N11
po_areg_shift_aq_a94_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(94),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(94));

-- Location: LCCOMB_X34_Y23_N16
po_areg_sub_aq_a55_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a55_a_afeeder_combout = auto_generated_aram_block1a7_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem4_arom_rtl_0_aq_b_a7_a,
	combout => po_areg_sub_aq_a55_a_afeeder_combout);

-- Location: FF_X34_Y23_N17
po_areg_sub_aq_a55_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a55_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(55));

-- Location: FF_X35_Y22_N25
po_areg_shift_aq_a87_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(55),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(87));

-- Location: LCCOMB_X35_Y22_N6
po_amix1_aword_state_out_a28_a_a23 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a28_a_a23_combout = po_areg_shift_aq(95) $ (po_areg_shift_aq(87))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(95),
	datad => po_areg_shift_aq(87),
	combout => po_amix1_aword_state_out_a28_a_a23_combout);

-- Location: LCCOMB_X35_Y21_N10
po_amix1_aword_state_out_a7_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(7) = po_areg_shift_aq(70) $ (po_areg_shift_aq(79) $ (po_areg_shift_aq(94) $ (po_amix1_aword_state_out_a28_a_a23_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(70),
	datab => po_areg_shift_aq(79),
	datac => po_areg_shift_aq(94),
	datad => po_amix1_aword_state_out_a28_a_a23_combout,
	combout => po_amix1_aword_state_out(7));

-- Location: LCCOMB_X36_Y21_N20
po_areg_mix_aq_a71_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a71_a_afeeder_combout = po_amix1_aword_state_out(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(7),
	combout => po_areg_mix_aq_a71_a_afeeder_combout);

-- Location: FF_X36_Y21_N21
po_areg_mix_aq_a71_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a71_a_afeeder_combout,
	asdata => po_areg_sub_aq(103),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(71));

-- Location: LCCOMB_X35_Y27_N8
po_aadd1_astate_out_a71_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(71) = po_areg_mix_aq(71) $ (po_areg_key_aq(71))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(71),
	datad => po_areg_key_aq(71),
	combout => po_aadd1_astate_out(71));

-- Location: FF_X35_Y27_N9
po_areg_add_aq_a71_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(71),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(71));

-- Location: LCCOMB_X35_Y29_N18
po_akeyGen_aroundkey_out_a72_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(72) = po_akeyGen_areg_aq(8) $ (po_areg_key_aq(72))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_akeyGen_areg_aq(8),
	datac => po_areg_key_aq(72),
	combout => po_akeyGen_aroundkey_out(72));

-- Location: LCCOMB_X35_Y29_N26
po_amux2_aresult_a72_a_a40 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a72_a_a40_combout = (po_akeyGen_aroundkey_out(72) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => po_akeyGen_aroundkey_out(72),
	datac => pc_astate_as2_aq,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a72_a_a40_combout);

-- Location: FF_X35_Y29_N27
po_areg_key_aq_a72_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a72_a_a40_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(72));

-- Location: LCCOMB_X35_Y22_N8
po_amix1_am5_ab_out_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_am5_ab_out_a0_combout = po_areg_shift_aq(71) $ (po_areg_shift_aq(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(71),
	datad => po_areg_shift_aq(64),
	combout => po_amix1_am5_ab_out_a0_combout);

-- Location: LCCOMB_X36_Y23_N2
po_amix1_aword_state_out_a8_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(8) = po_areg_shift_aq(80) $ (po_areg_shift_aq(79) $ (po_amix1_am5_ab_out_a0_combout $ (po_areg_shift_aq(88))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(80),
	datab => po_areg_shift_aq(79),
	datac => po_amix1_am5_ab_out_a0_combout,
	datad => po_areg_shift_aq(88),
	combout => po_amix1_aword_state_out(8));

-- Location: LCCOMB_X36_Y23_N6
po_areg_mix_aq_a72_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a72_a_afeeder_combout = po_amix1_aword_state_out(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(8),
	combout => po_areg_mix_aq_a72_a_afeeder_combout);

-- Location: FF_X36_Y23_N7
po_areg_mix_aq_a72_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a72_a_afeeder_combout,
	asdata => po_areg_sub_aq(8),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(72));

-- Location: LCCOMB_X35_Y27_N22
po_aadd1_astate_out_a72_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(72) = po_areg_key_aq(72) $ (po_areg_mix_aq(72))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(72),
	datad => po_areg_mix_aq(72),
	combout => po_aadd1_astate_out(72));

-- Location: FF_X35_Y27_N23
po_areg_add_aq_a72_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(72),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(72));

-- Location: LCCOMB_X34_Y23_N24
po_areg_sub_aq_a49_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a49_a_afeeder_combout = auto_generated_aram_block1a1_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem4_arom_rtl_0_aq_b_a1_a,
	combout => po_areg_sub_aq_a49_a_afeeder_combout);

-- Location: FF_X34_Y23_N25
po_areg_sub_aq_a49_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a49_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(49));

-- Location: FF_X35_Y22_N9
po_areg_shift_aq_a81_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(49),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(81));

-- Location: FF_X35_Y22_N17
po_areg_shift_aq_a65_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(97),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(65));

-- Location: LCCOMB_X35_Y22_N28
po_amix1_aword_state_out_a9_a_a24 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a9_a_a24_combout = po_areg_shift_aq(79) $ (po_areg_shift_aq(71) $ (po_areg_shift_aq(72) $ (po_areg_shift_aq(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(79),
	datab => po_areg_shift_aq(71),
	datac => po_areg_shift_aq(72),
	datad => po_areg_shift_aq(64),
	combout => po_amix1_aword_state_out_a9_a_a24_combout);

-- Location: LCCOMB_X35_Y22_N16
po_amix1_aword_state_out_a9_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(9) = po_areg_shift_aq(89) $ (po_areg_shift_aq(81) $ (po_areg_shift_aq(65) $ (po_amix1_aword_state_out_a9_a_a24_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(89),
	datab => po_areg_shift_aq(81),
	datac => po_areg_shift_aq(65),
	datad => po_amix1_aword_state_out_a9_a_a24_combout,
	combout => po_amix1_aword_state_out(9));

-- Location: LCCOMB_X34_Y26_N0
po_areg_mix_aq_a73_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a73_a_afeeder_combout = po_amix1_aword_state_out(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(9),
	combout => po_areg_mix_aq_a73_a_afeeder_combout);

-- Location: FF_X34_Y26_N1
po_areg_mix_aq_a73_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a73_a_afeeder_combout,
	asdata => po_areg_sub_aq(9),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(73));

-- Location: LCCOMB_X34_Y27_N10
po_aadd1_astate_out_a73_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(73) = po_areg_key_aq(73) $ (po_areg_mix_aq(73))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(73),
	datad => po_areg_mix_aq(73),
	combout => po_aadd1_astate_out(73));

-- Location: FF_X34_Y27_N11
po_areg_add_aq_a73_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(73),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(73));

-- Location: LCCOMB_X31_Y27_N2
po_akeyGen_aroundkey_out_a74_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(74) = po_areg_key_aq(74) $ (po_akeyGen_areg_aq(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(74),
	datad => po_akeyGen_areg_aq(10),
	combout => po_akeyGen_aroundkey_out(74));

-- Location: LCCOMB_X31_Y27_N12
po_amux2_aresult_a74_a_a42 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a74_a_a42_combout = (po_akeyGen_aroundkey_out(74) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(74),
	combout => po_amux2_aresult_a74_a_a42_combout);

-- Location: FF_X31_Y27_N13
po_areg_key_aq_a74_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a74_a_a42_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(74));

-- Location: LCCOMB_X35_Y22_N24
po_amix1_aword_state_out_a2_a_a16 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a2_a_a16_combout = po_areg_shift_aq(65) $ (po_areg_shift_aq(90))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(65),
	datad => po_areg_shift_aq(90),
	combout => po_amix1_aword_state_out_a2_a_a16_combout);

-- Location: LCCOMB_X35_Y22_N10
po_amix1_aword_state_out_a10_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(10) = po_areg_shift_aq(66) $ (po_areg_shift_aq(82) $ (po_areg_shift_aq(73) $ (po_amix1_aword_state_out_a2_a_a16_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(66),
	datab => po_areg_shift_aq(82),
	datac => po_areg_shift_aq(73),
	datad => po_amix1_aword_state_out_a2_a_a16_combout,
	combout => po_amix1_aword_state_out(10));

-- Location: LCCOMB_X35_Y23_N4
po_areg_mix_aq_a74_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a74_a_afeeder_combout = po_amix1_aword_state_out(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(10),
	combout => po_areg_mix_aq_a74_a_afeeder_combout);

-- Location: LCCOMB_X34_Y20_N28
po_areg_sub_aq_a10_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a10_a_afeeder_combout = auto_generated_aram_block1a2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_a_a2_a,
	combout => po_areg_sub_aq_a10_a_afeeder_combout);

-- Location: FF_X34_Y20_N29
po_areg_sub_aq_a10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a10_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(10));

-- Location: FF_X35_Y23_N5
po_areg_mix_aq_a74_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a74_a_afeeder_combout,
	asdata => po_areg_sub_aq(10),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(74));

-- Location: LCCOMB_X35_Y27_N0
po_aadd1_astate_out_a74_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(74) = po_areg_key_aq(74) $ (po_areg_mix_aq(74))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(74),
	datad => po_areg_mix_aq(74),
	combout => po_aadd1_astate_out(74));

-- Location: FF_X35_Y27_N1
po_areg_add_aq_a74_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(74),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(74));

-- Location: LCCOMB_X31_Y27_N8
po_amux2_aresult_a107_a_a75 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a107_a_a75_combout = (po_akeyGen_areg_aq(11) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => po_akeyGen_areg_aq(11),
	datac => pc_aSelector4_a0_combout,
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a107_a_a75_combout);

-- Location: FF_X31_Y27_N9
po_areg_key_aq_a107_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a107_a_a75_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(107));

-- Location: LCCOMB_X32_Y29_N26
po_akeyGen_ax_a11_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_ax(11) = po_areg_key_aq(107) $ (auto_generated_aram_block1a3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(107),
	datad => po_akeyGen_amem1_arom_rtl_0_aq_a_a3_a,
	combout => po_akeyGen_ax(11));

-- Location: FF_X32_Y29_N27
po_akeyGen_areg_aq_a11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_akeyGen_ax(11),
	ena => pc_astate_as3_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_akeyGen_areg_aq(11));

-- Location: LCCOMB_X31_Y27_N16
po_akeyGen_aroundkey_out_a75_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(75) = po_areg_key_aq(75) $ (po_akeyGen_areg_aq(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(75),
	datad => po_akeyGen_areg_aq(11),
	combout => po_akeyGen_aroundkey_out(75));

-- Location: LCCOMB_X31_Y27_N30
po_amux2_aresult_a75_a_a43 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a75_a_a43_combout = (po_akeyGen_aroundkey_out(75) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a0_combout,
	datad => po_akeyGen_aroundkey_out(75),
	combout => po_amux2_aresult_a75_a_a43_combout);

-- Location: FF_X31_Y27_N31
po_areg_key_aq_a75_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a75_a_a43_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(75));

-- Location: LCCOMB_X31_Y26_N8
po_aadd1_astate_out_a75_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(75) = po_areg_mix_aq(75) $ (po_areg_key_aq(75))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(75),
	datac => po_areg_key_aq(75),
	combout => po_aadd1_astate_out(75));

-- Location: FF_X31_Y26_N9
po_areg_add_aq_a75_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(75),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(75));

-- Location: LCCOMB_X34_Y20_N16
po_areg_sub_aq_a11_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a11_a_afeeder_combout = auto_generated_aram_block1a3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem7_arom_rtl_0_aq_a_a3_a,
	combout => po_areg_sub_aq_a11_a_afeeder_combout);

-- Location: FF_X34_Y20_N17
po_areg_sub_aq_a11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a11_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(11));

-- Location: FF_X35_Y22_N21
po_areg_shift_aq_a75_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(11),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(75));

-- Location: LCCOMB_X35_Y21_N8
po_amix1_aword_state_out_a12_a_a19 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a12_a_a19_combout = po_areg_shift_aq(84) $ (po_areg_shift_aq(67) $ (po_areg_shift_aq(92)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(84),
	datab => po_areg_shift_aq(67),
	datad => po_areg_shift_aq(92),
	combout => po_amix1_aword_state_out_a12_a_a19_combout);

-- Location: LCCOMB_X35_Y21_N14
po_amix1_aword_state_out_a12_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(12) = po_amix1_aword_state_out_a31_a_a26_combout $ (po_areg_shift_aq(75) $ (po_areg_shift_aq(68) $ (po_amix1_aword_state_out_a12_a_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix1_aword_state_out_a31_a_a26_combout,
	datab => po_areg_shift_aq(75),
	datac => po_areg_shift_aq(68),
	datad => po_amix1_aword_state_out_a12_a_a19_combout,
	combout => po_amix1_aword_state_out(12));

-- Location: LCCOMB_X36_Y21_N6
po_areg_mix_aq_a76_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a76_a_afeeder_combout = po_amix1_aword_state_out(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(12),
	combout => po_areg_mix_aq_a76_a_afeeder_combout);

-- Location: FF_X36_Y21_N7
po_areg_mix_aq_a76_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a76_a_afeeder_combout,
	asdata => po_areg_sub_aq(12),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(76));

-- Location: LCCOMB_X37_Y26_N30
po_aadd1_astate_out_a76_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(76) = po_areg_key_aq(76) $ (po_areg_mix_aq(76))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(76),
	datac => po_areg_mix_aq(76),
	combout => po_aadd1_astate_out(76));

-- Location: FF_X37_Y26_N31
po_areg_add_aq_a76_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(76),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(76));

-- Location: LCCOMB_X32_Y27_N14
po_aadd1_astate_out_a77_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(77) = po_areg_mix_aq(77) $ (po_areg_key_aq(77))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(77),
	datab => po_areg_key_aq(77),
	combout => po_aadd1_astate_out(77));

-- Location: FF_X32_Y27_N15
po_areg_add_aq_a77_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(77),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(77));

-- Location: LCCOMB_X34_Y27_N20
po_aadd1_astate_out_a78_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(78) = po_areg_mix_aq(78) $ (po_areg_key_aq(78))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(78),
	datad => po_areg_key_aq(78),
	combout => po_aadd1_astate_out(78));

-- Location: FF_X34_Y27_N21
po_areg_add_aq_a78_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(78),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(78));

-- Location: FF_X35_Y21_N31
po_areg_shift_aq_a70_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(102),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(70));

-- Location: LCCOMB_X35_Y21_N30
po_amix1_aword_state_out_a15_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(15) = po_areg_shift_aq(78) $ (po_areg_shift_aq(71) $ (po_areg_shift_aq(70) $ (po_amix1_aword_state_out_a28_a_a23_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(78),
	datab => po_areg_shift_aq(71),
	datac => po_areg_shift_aq(70),
	datad => po_amix1_aword_state_out_a28_a_a23_combout,
	combout => po_amix1_aword_state_out(15));

-- Location: LCCOMB_X36_Y21_N16
po_areg_mix_aq_a79_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a79_a_afeeder_combout = po_amix1_aword_state_out(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(15),
	combout => po_areg_mix_aq_a79_a_afeeder_combout);

-- Location: FF_X36_Y21_N17
po_areg_mix_aq_a79_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a79_a_afeeder_combout,
	asdata => po_areg_sub_aq(15),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(79));

-- Location: LCCOMB_X36_Y27_N30
po_aadd1_astate_out_a79_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(79) = po_areg_key_aq(79) $ (po_areg_mix_aq(79))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(79),
	datad => po_areg_mix_aq(79),
	combout => po_aadd1_astate_out(79));

-- Location: FF_X36_Y27_N31
po_areg_add_aq_a79_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(79),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(79));

-- Location: LCCOMB_X36_Y22_N2
po_amix1_aword_state_out_a16_a_a27 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a16_a_a27_combout = po_areg_shift_aq(79) $ (po_areg_shift_aq(72) $ (po_areg_shift_aq(64) $ (po_areg_shift_aq(87))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(79),
	datab => po_areg_shift_aq(72),
	datac => po_areg_shift_aq(64),
	datad => po_areg_shift_aq(87),
	combout => po_amix1_aword_state_out_a16_a_a27_combout);

-- Location: LCCOMB_X36_Y23_N20
po_amix1_aword_state_out_a16_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(16) = po_areg_shift_aq(88) $ (po_amix1_aword_state_out_a16_a_a27_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(88),
	datab => po_amix1_aword_state_out_a16_a_a27_combout,
	combout => po_amix1_aword_state_out(16));

-- Location: FF_X36_Y23_N21
po_areg_mix_aq_a80_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(16),
	asdata => po_areg_sub_aq(48),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(80));

-- Location: LCCOMB_X35_Y25_N4
po_aadd1_astate_out_a80_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(80) = po_areg_key_aq(80) $ (po_areg_mix_aq(80))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(80),
	datad => po_areg_mix_aq(80),
	combout => po_aadd1_astate_out(80));

-- Location: FF_X35_Y25_N5
po_areg_add_aq_a80_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(80),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(80));

-- Location: LCCOMB_X35_Y25_N22
po_aadd1_astate_out_a81_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(81) = po_areg_mix_aq(81) $ (po_areg_key_aq(81))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(81),
	datad => po_areg_key_aq(81),
	combout => po_aadd1_astate_out(81));

-- Location: FF_X35_Y25_N23
po_areg_add_aq_a81_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(81),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(81));

-- Location: LCCOMB_X37_Y28_N0
po_aadd1_astate_out_a82_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(82) = po_areg_mix_aq(82) $ (po_areg_key_aq(82))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(82),
	datab => po_areg_key_aq(82),
	combout => po_aadd1_astate_out(82));

-- Location: FF_X37_Y28_N1
po_areg_add_aq_a82_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(82),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(82));

-- Location: LCCOMB_X34_Y25_N22
po_areg_mix_aq_a83_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a83_a_afeeder_combout = po_amix1_aword_state_out(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix1_aword_state_out(19),
	combout => po_areg_mix_aq_a83_a_afeeder_combout);

-- Location: FF_X34_Y25_N23
po_areg_mix_aq_a83_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a83_a_afeeder_combout,
	asdata => po_areg_sub_aq(51),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(83));

-- Location: LCCOMB_X35_Y25_N8
po_aadd1_astate_out_a83_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(83) = po_areg_mix_aq(83) $ (po_areg_key_aq(83))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(83),
	datad => po_areg_key_aq(83),
	combout => po_aadd1_astate_out(83));

-- Location: FF_X35_Y25_N9
po_areg_add_aq_a83_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(83),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(83));

-- Location: LCCOMB_X36_Y25_N22
po_aadd1_astate_out_a84_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(84) = po_areg_mix_aq(84) $ (po_areg_key_aq(84))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(84),
	datad => po_areg_key_aq(84),
	combout => po_aadd1_astate_out(84));

-- Location: FF_X36_Y25_N23
po_areg_add_aq_a84_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(84),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(84));

-- Location: LCCOMB_X36_Y21_N14
po_amix1_aword_state_out_a21_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(21) = po_amix1_aword_state_out_a29_a_a32_combout $ (po_areg_shift_aq(76) $ (po_areg_shift_aq(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix1_aword_state_out_a29_a_a32_combout,
	datab => po_areg_shift_aq(76),
	datad => po_areg_shift_aq(93),
	combout => po_amix1_aword_state_out(21));

-- Location: FF_X36_Y21_N15
po_areg_mix_aq_a85_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(21),
	asdata => po_areg_sub_aq(53),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(85));

-- Location: LCCOMB_X36_Y25_N16
po_aadd1_astate_out_a85_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(85) = po_areg_mix_aq(85) $ (po_areg_key_aq(85))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(85),
	datad => po_areg_key_aq(85),
	combout => po_aadd1_astate_out(85));

-- Location: FF_X36_Y25_N17
po_areg_add_aq_a85_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(85),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(85));

-- Location: LCCOMB_X31_Y29_N10
po_amux2_aresult_a86_a_a54 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a86_a_a54_combout = (po_akeyGen_aroundkey_out(86) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_aroundkey_out(86),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a86_a_a54_combout);

-- Location: FF_X31_Y29_N11
po_areg_key_aq_a86_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a86_a_a54_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(86));

-- Location: LCCOMB_X36_Y25_N6
po_aadd1_astate_out_a86_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(86) = po_areg_mix_aq(86) $ (po_areg_key_aq(86))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(86),
	datad => po_areg_key_aq(86),
	combout => po_aadd1_astate_out(86));

-- Location: FF_X36_Y25_N7
po_areg_add_aq_a86_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(86),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(86));

-- Location: LCCOMB_X36_Y27_N16
po_aadd1_astate_out_a87_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(87) = po_areg_mix_aq(87) $ (po_areg_key_aq(87))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(87),
	datad => po_areg_key_aq(87),
	combout => po_aadd1_astate_out(87));

-- Location: FF_X36_Y27_N17
po_areg_add_aq_a87_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(87),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(87));

-- Location: LCCOMB_X36_Y22_N6
po_amix1_am1_ab_out_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_am1_ab_out_a0_combout = po_areg_shift_aq(80) $ (po_areg_shift_aq(87))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_shift_aq(80),
	datad => po_areg_shift_aq(87),
	combout => po_amix1_am1_ab_out_a0_combout);

-- Location: LCCOMB_X35_Y22_N18
po_amix1_aword_state_out_a24_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(24) = po_areg_shift_aq(95) $ (po_areg_shift_aq(72) $ (po_areg_shift_aq(64) $ (po_amix1_am1_ab_out_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(95),
	datab => po_areg_shift_aq(72),
	datac => po_areg_shift_aq(64),
	datad => po_amix1_am1_ab_out_a0_combout,
	combout => po_amix1_aword_state_out(24));

-- Location: LCCOMB_X34_Y22_N0
po_areg_mix_aq_a88_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a88_a_afeeder_combout = po_amix1_aword_state_out(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(24),
	combout => po_areg_mix_aq_a88_a_afeeder_combout);

-- Location: FF_X34_Y22_N1
po_areg_mix_aq_a88_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a88_a_afeeder_combout,
	asdata => po_areg_sub_aq(88),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(88));

-- Location: LCCOMB_X35_Y25_N14
po_aadd1_astate_out_a88_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(88) = po_areg_mix_aq(88) $ (po_areg_key_aq(88))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(88),
	datad => po_areg_key_aq(88),
	combout => po_aadd1_astate_out(88));

-- Location: FF_X35_Y25_N15
po_areg_add_aq_a88_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(88),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(88));

-- Location: LCCOMB_X36_Y22_N10
po_amix1_aword_state_out_a25_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(25) = po_areg_shift_aq(80) $ (po_areg_shift_aq(87) $ (po_areg_shift_aq(65) $ (po_amix1_aword_state_out_a25_a_a15_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(80),
	datab => po_areg_shift_aq(87),
	datac => po_areg_shift_aq(65),
	datad => po_amix1_aword_state_out_a25_a_a15_combout,
	combout => po_amix1_aword_state_out(25));

-- Location: LCCOMB_X37_Y24_N2
po_areg_mix_aq_a89_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a89_a_afeeder_combout = po_amix1_aword_state_out(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(25),
	combout => po_areg_mix_aq_a89_a_afeeder_combout);

-- Location: FF_X37_Y24_N3
po_areg_mix_aq_a89_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a89_a_afeeder_combout,
	asdata => po_areg_sub_aq(89),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(89));

-- Location: LCCOMB_X35_Y26_N8
po_aadd1_astate_out_a89_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(89) = po_areg_key_aq(89) $ (po_areg_mix_aq(89))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(89),
	datad => po_areg_mix_aq(89),
	combout => po_aadd1_astate_out(89));

-- Location: FF_X35_Y26_N9
po_areg_add_aq_a89_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(89),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(89));

-- Location: LCCOMB_X35_Y23_N12
po_amix1_aword_state_out_a26_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(26) = po_amix1_aword_state_out_a26_a_a17_combout $ (po_areg_shift_aq(81) $ (po_areg_shift_aq(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix1_aword_state_out_a26_a_a17_combout,
	datab => po_areg_shift_aq(81),
	datad => po_areg_shift_aq(66),
	combout => po_amix1_aword_state_out(26));

-- Location: FF_X35_Y23_N13
po_areg_mix_aq_a90_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(26),
	asdata => po_areg_sub_aq(90),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(90));

-- Location: LCCOMB_X37_Y28_N28
po_akeyGen_aroundkey_out_a90_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(90) = po_areg_key_aq(90) $ (po_akeyGen_areg_aq(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(90),
	datad => po_akeyGen_areg_aq(26),
	combout => po_akeyGen_aroundkey_out(90));

-- Location: LCCOMB_X37_Y28_N22
po_amux2_aresult_a90_a_a58 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a90_a_a58_combout = (po_akeyGen_aroundkey_out(90) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_aroundkey_out(90),
	combout => po_amux2_aresult_a90_a_a58_combout);

-- Location: FF_X37_Y28_N23
po_areg_key_aq_a90_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a90_a_a58_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(90));

-- Location: LCCOMB_X35_Y25_N28
po_aadd1_astate_out_a90_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(90) = po_areg_mix_aq(90) $ (po_areg_key_aq(90))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(90),
	datad => po_areg_key_aq(90),
	combout => po_aadd1_astate_out(90));

-- Location: FF_X35_Y25_N29
po_areg_add_aq_a90_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(90),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(90));

-- Location: LCCOMB_X35_Y22_N0
po_amix1_aword_state_out_a27_a_a34 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a27_a_a34_combout = po_areg_shift_aq(75) $ (po_areg_shift_aq(82) $ (po_areg_shift_aq(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(75),
	datab => po_areg_shift_aq(82),
	datac => po_areg_shift_aq(67),
	combout => po_amix1_aword_state_out_a27_a_a34_combout);

-- Location: LCCOMB_X34_Y25_N6
po_amix1_aword_state_out_a27_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(27) = po_areg_shift_aq(83) $ (po_areg_shift_aq(90) $ (po_amix1_aword_state_out_a28_a_a23_combout $ (po_amix1_aword_state_out_a27_a_a34_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(83),
	datab => po_areg_shift_aq(90),
	datac => po_amix1_aword_state_out_a28_a_a23_combout,
	datad => po_amix1_aword_state_out_a27_a_a34_combout,
	combout => po_amix1_aword_state_out(27));

-- Location: LCCOMB_X34_Y25_N16
po_areg_mix_aq_a91_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a91_a_afeeder_combout = po_amix1_aword_state_out(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(27),
	combout => po_areg_mix_aq_a91_a_afeeder_combout);

-- Location: FF_X34_Y25_N17
po_areg_mix_aq_a91_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a91_a_afeeder_combout,
	asdata => po_areg_sub_aq(91),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(91));

-- Location: LCCOMB_X35_Y25_N2
po_aadd1_astate_out_a91_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(91) = po_areg_key_aq(91) $ (po_areg_mix_aq(91))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(91),
	datac => po_areg_mix_aq(91),
	combout => po_aadd1_astate_out(91));

-- Location: FF_X35_Y25_N3
po_areg_add_aq_a91_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(91),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(91));

-- Location: LCCOMB_X35_Y23_N24
po_amix1_aword_state_out_a28_a_a35 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a28_a_a35_combout = po_areg_shift_aq(84) $ (po_areg_shift_aq(68) $ (po_areg_shift_aq(83) $ (po_areg_shift_aq(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(84),
	datab => po_areg_shift_aq(68),
	datac => po_areg_shift_aq(83),
	datad => po_areg_shift_aq(76),
	combout => po_amix1_aword_state_out_a28_a_a35_combout);

-- Location: LCCOMB_X35_Y23_N20
po_amix1_aword_state_out_a28_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(28) = po_areg_shift_aq(95) $ (po_areg_shift_aq(91) $ (po_areg_shift_aq(87) $ (po_amix1_aword_state_out_a28_a_a35_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(95),
	datab => po_areg_shift_aq(91),
	datac => po_areg_shift_aq(87),
	datad => po_amix1_aword_state_out_a28_a_a35_combout,
	combout => po_amix1_aword_state_out(28));

-- Location: LCCOMB_X35_Y23_N30
po_areg_mix_aq_a92_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a92_a_afeeder_combout = po_amix1_aword_state_out(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(28),
	combout => po_areg_mix_aq_a92_a_afeeder_combout);

-- Location: FF_X35_Y23_N31
po_areg_mix_aq_a92_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a92_a_afeeder_combout,
	asdata => po_areg_sub_aq(92),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(92));

-- Location: LCCOMB_X37_Y26_N16
po_aadd1_astate_out_a92_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(92) = po_areg_key_aq(92) $ (po_areg_mix_aq(92))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(92),
	datac => po_areg_mix_aq(92),
	combout => po_aadd1_astate_out(92));

-- Location: FF_X37_Y26_N17
po_areg_add_aq_a92_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(92),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(92));

-- Location: LCCOMB_X36_Y21_N24
po_amix1_aword_state_out_a29_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(29) = po_amix1_aword_state_out_a29_a_a32_combout $ (po_areg_shift_aq(92) $ (po_areg_shift_aq(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix1_aword_state_out_a29_a_a32_combout,
	datab => po_areg_shift_aq(92),
	datad => po_areg_shift_aq(85),
	combout => po_amix1_aword_state_out(29));

-- Location: FF_X36_Y21_N25
po_areg_mix_aq_a93_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(29),
	asdata => po_areg_sub_aq(93),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(93));

-- Location: LCCOMB_X32_Y30_N2
po_akeyGen_aroundkey_out_a93_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(93) = po_areg_key_aq(93) $ (po_akeyGen_areg_aq(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(93),
	datac => po_akeyGen_areg_aq(29),
	combout => po_akeyGen_aroundkey_out(93));

-- Location: LCCOMB_X32_Y30_N10
po_amux2_aresult_a93_a_a61 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a93_a_a61_combout = (po_akeyGen_aroundkey_out(93)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => po_akeyGen_aroundkey_out(93),
	datac => pc_aSelector4_a1_combout,
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a93_a_a61_combout);

-- Location: FF_X32_Y30_N11
po_areg_key_aq_a93_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a93_a_a61_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(93));

-- Location: LCCOMB_X36_Y25_N4
po_aadd1_astate_out_a93_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(93) = po_areg_mix_aq(93) $ (po_areg_key_aq(93))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(93),
	datad => po_areg_key_aq(93),
	combout => po_aadd1_astate_out(93));

-- Location: FF_X36_Y25_N5
po_areg_add_aq_a93_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(93),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(93));

-- Location: LCCOMB_X31_Y28_N30
po_akeyGen_aroundkey_out_a94_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_akeyGen_aroundkey_out(94) = po_areg_key_aq(94) $ (po_akeyGen_areg_aq(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(94),
	datad => po_akeyGen_areg_aq(30),
	combout => po_akeyGen_aroundkey_out(94));

-- Location: LCCOMB_X31_Y28_N8
po_amux2_aresult_a94_a_a62 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a94_a_a62_combout = (po_akeyGen_aroundkey_out(94) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => pc_astate_as2_aq,
	datac => po_akeyGen_aroundkey_out(94),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a94_a_a62_combout);

-- Location: FF_X31_Y28_N9
po_areg_key_aq_a94_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a94_a_a62_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(94));

-- Location: LCCOMB_X34_Y21_N28
po_amix1_aword_state_out_a30_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(30) = po_amix1_aword_state_out_a30_a_a33_combout $ (po_areg_shift_aq(86) $ (po_areg_shift_aq(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix1_aword_state_out_a30_a_a33_combout,
	datab => po_areg_shift_aq(86),
	datad => po_areg_shift_aq(93),
	combout => po_amix1_aword_state_out(30));

-- Location: FF_X34_Y21_N29
po_areg_mix_aq_a94_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix1_aword_state_out(30),
	asdata => po_areg_sub_aq(94),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(94));

-- Location: LCCOMB_X31_Y28_N16
po_aadd1_astate_out_a94_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(94) = po_areg_key_aq(94) $ (po_areg_mix_aq(94))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(94),
	datad => po_areg_mix_aq(94),
	combout => po_aadd1_astate_out(94));

-- Location: FF_X31_Y28_N17
po_areg_add_aq_a94_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(94),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(94));

-- Location: LCCOMB_X35_Y21_N12
po_amix1_aword_state_out_a31_a_a26 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out_a31_a_a26_combout = po_areg_shift_aq(79) $ (po_areg_shift_aq(71))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_shift_aq(79),
	datad => po_areg_shift_aq(71),
	combout => po_amix1_aword_state_out_a31_a_a26_combout);

-- Location: LCCOMB_X35_Y21_N28
po_amix1_aword_state_out_a31_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix1_aword_state_out(31) = po_areg_shift_aq(94) $ (po_areg_shift_aq(87) $ (po_areg_shift_aq(86) $ (po_amix1_aword_state_out_a31_a_a26_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(94),
	datab => po_areg_shift_aq(87),
	datac => po_areg_shift_aq(86),
	datad => po_amix1_aword_state_out_a31_a_a26_combout,
	combout => po_amix1_aword_state_out(31));

-- Location: LCCOMB_X34_Y21_N6
po_areg_mix_aq_a95_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a95_a_afeeder_combout = po_amix1_aword_state_out(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix1_aword_state_out(31),
	combout => po_areg_mix_aq_a95_a_afeeder_combout);

-- Location: FF_X34_Y21_N7
po_areg_mix_aq_a95_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a95_a_afeeder_combout,
	asdata => po_areg_sub_aq(95),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(95));

-- Location: LCCOMB_X36_Y25_N14
po_aadd1_astate_out_a95_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(95) = po_areg_key_aq(95) $ (po_areg_mix_aq(95))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(95),
	datad => po_areg_mix_aq(95),
	combout => po_aadd1_astate_out(95));

-- Location: FF_X36_Y25_N15
po_areg_add_aq_a95_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(95),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(95));

-- Location: LCCOMB_X32_Y21_N24
po_areg_sub_aq_a80_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a80_a_afeeder_combout = auto_generated_aram_block1a0_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_b_a0_a,
	combout => po_areg_sub_aq_a80_a_afeeder_combout);

-- Location: FF_X32_Y21_N25
po_areg_sub_aq_a80_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a80_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(80));

-- Location: FF_X31_Y19_N21
po_areg_shift_aq_a112_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(80),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(112));

-- Location: LCCOMB_X34_Y19_N18
po_areg_sub_aq_a120_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a120_a_afeeder_combout = auto_generated_aram_block1a0_aportadataout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_a_a0_a,
	combout => po_areg_sub_aq_a120_a_afeeder_combout);

-- Location: FF_X34_Y19_N19
po_areg_sub_aq_a120_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a120_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(120));

-- Location: FF_X31_Y19_N15
po_areg_shift_aq_a120_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(120),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(120));

-- Location: LCCOMB_X34_Y20_N30
po_areg_sub_aq_a7_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a7_a_afeeder_combout = auto_generated_aram_block1a7_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_b_a7_a,
	combout => po_areg_sub_aq_a7_a_afeeder_combout);

-- Location: FF_X34_Y20_N31
po_areg_sub_aq_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a7_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(7));

-- Location: FF_X31_Y19_N27
po_areg_shift_aq_a103_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(7),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(103));

-- Location: LCCOMB_X34_Y19_N10
po_areg_sub_aq_a127_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a127_a_afeeder_combout = auto_generated_aram_block1a7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem0_arom_rtl_0_aq_a_a7_a,
	combout => po_areg_sub_aq_a127_a_afeeder_combout);

-- Location: FF_X34_Y19_N11
po_areg_sub_aq_a127_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a127_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(127));

-- Location: FF_X31_Y19_N9
po_areg_shift_aq_a127_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(127),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(127));

-- Location: LCCOMB_X31_Y19_N26
po_amix0_aword_state_out_a0_a_a14 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a0_a_a14_combout = po_areg_shift_aq(104) $ (po_areg_shift_aq(120) $ (po_areg_shift_aq(103) $ (po_areg_shift_aq(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(104),
	datab => po_areg_shift_aq(120),
	datac => po_areg_shift_aq(103),
	datad => po_areg_shift_aq(127),
	combout => po_amix0_aword_state_out_a0_a_a14_combout);

-- Location: LCCOMB_X31_Y20_N14
po_amix0_aword_state_out_a0_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(0) = po_areg_shift_aq(112) $ (po_amix0_aword_state_out_a0_a_a14_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(112),
	datad => po_amix0_aword_state_out_a0_a_a14_combout,
	combout => po_amix0_aword_state_out(0));

-- Location: LCCOMB_X32_Y20_N12
po_areg_mix_aq_a96_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a96_a_afeeder_combout = po_amix0_aword_state_out(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(0),
	combout => po_areg_mix_aq_a96_a_afeeder_combout);

-- Location: LCCOMB_X32_Y20_N30
po_areg_sub_aq_a0_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a0_a_afeeder_combout = auto_generated_aram_block1a0_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_b_a0_a,
	combout => po_areg_sub_aq_a0_a_afeeder_combout);

-- Location: FF_X32_Y20_N31
po_areg_sub_aq_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a0_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(0));

-- Location: FF_X32_Y20_N13
po_areg_mix_aq_a96_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a96_a_afeeder_combout,
	asdata => po_areg_sub_aq(0),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(96));

-- Location: LCCOMB_X32_Y29_N10
po_aadd1_astate_out_a96_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(96) = po_areg_mix_aq(96) $ (po_areg_key_aq(96))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(96),
	datad => po_areg_key_aq(96),
	combout => po_aadd1_astate_out(96));

-- Location: FF_X32_Y29_N11
po_areg_add_aq_a96_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(96),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(96));

-- Location: LCCOMB_X34_Y27_N18
po_aadd1_astate_out_a97_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(97) = po_areg_mix_aq(97) $ (po_areg_key_aq(97))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(97),
	datad => po_areg_key_aq(97),
	combout => po_aadd1_astate_out(97));

-- Location: FF_X34_Y27_N19
po_areg_add_aq_a97_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(97),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(97));

-- Location: LCCOMB_X32_Y19_N30
po_areg_sub_aq_a122_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a122_a_afeeder_combout = auto_generated_aram_block1a2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem0_arom_rtl_0_aq_a_a2_a,
	combout => po_areg_sub_aq_a122_a_afeeder_combout);

-- Location: FF_X32_Y19_N31
po_areg_sub_aq_a122_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a122_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(122));

-- Location: FF_X31_Y19_N25
po_areg_shift_aq_a122_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(122),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(122));

-- Location: LCCOMB_X34_Y21_N12
po_areg_sub_aq_a82_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a82_a_afeeder_combout = auto_generated_aram_block1a2_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem2_arom_rtl_0_aq_b_a2_a,
	combout => po_areg_sub_aq_a82_a_afeeder_combout);

-- Location: FF_X34_Y21_N13
po_areg_sub_aq_a82_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a82_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(82));

-- Location: FF_X31_Y19_N1
po_areg_shift_aq_a114_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(82),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(114));

-- Location: LCCOMB_X32_Y22_N14
po_areg_sub_aq_a42_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a42_a_afeeder_combout = auto_generated_aram_block1a2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem5_arom_rtl_0_aq_a_a2_a,
	combout => po_areg_sub_aq_a42_a_afeeder_combout);

-- Location: FF_X32_Y22_N15
po_areg_sub_aq_a42_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a42_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(42));

-- Location: FF_X31_Y19_N23
po_areg_shift_aq_a106_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(42),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(106));

-- Location: LCCOMB_X31_Y19_N24
po_amix0_aword_state_out_a26_a_a17 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a26_a_a17_combout = po_areg_shift_aq(121) $ (po_areg_shift_aq(114) $ (po_areg_shift_aq(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(121),
	datab => po_areg_shift_aq(114),
	datad => po_areg_shift_aq(106),
	combout => po_amix0_aword_state_out_a26_a_a17_combout);

-- Location: LCCOMB_X32_Y19_N10
po_amix0_aword_state_out_a2_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(2) = po_areg_shift_aq(97) $ (po_areg_shift_aq(122) $ (po_amix0_aword_state_out_a26_a_a17_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(97),
	datab => po_areg_shift_aq(122),
	datad => po_amix0_aword_state_out_a26_a_a17_combout,
	combout => po_amix0_aword_state_out(2));

-- Location: LCCOMB_X32_Y20_N28
po_areg_sub_aq_a2_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a2_a_afeeder_combout = auto_generated_aram_block1a2_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_b_a2_a,
	combout => po_areg_sub_aq_a2_a_afeeder_combout);

-- Location: FF_X32_Y20_N29
po_areg_sub_aq_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a2_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(2));

-- Location: FF_X32_Y19_N11
po_areg_mix_aq_a98_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(2),
	asdata => po_areg_sub_aq(2),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(98));

-- Location: LCCOMB_X34_Y29_N20
po_aadd1_astate_out_a98_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(98) = po_areg_key_aq(98) $ (po_areg_mix_aq(98))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(98),
	datad => po_areg_mix_aq(98),
	combout => po_aadd1_astate_out(98));

-- Location: FF_X34_Y29_N21
po_areg_add_aq_a98_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(98),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(98));

-- Location: LCCOMB_X32_Y21_N10
po_areg_sub_aq_a83_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a83_a_afeeder_combout = auto_generated_aram_block1a3_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_b_a3_a,
	combout => po_areg_sub_aq_a83_a_afeeder_combout);

-- Location: FF_X32_Y21_N11
po_areg_sub_aq_a83_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a83_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(83));

-- Location: FF_X31_Y21_N1
po_areg_shift_aq_a115_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(83),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(115));

-- Location: LCCOMB_X32_Y22_N12
po_areg_sub_aq_a43_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a43_a_afeeder_combout = auto_generated_aram_block1a3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_a_a3_a,
	combout => po_areg_sub_aq_a43_a_afeeder_combout);

-- Location: FF_X32_Y22_N13
po_areg_sub_aq_a43_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a43_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(43));

-- Location: LCCOMB_X32_Y19_N2
po_areg_shift_aq_a107_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a107_a_afeeder_combout = po_areg_sub_aq(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(43),
	combout => po_areg_shift_aq_a107_a_afeeder_combout);

-- Location: FF_X32_Y19_N3
po_areg_shift_aq_a107_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a107_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(107));

-- Location: LCCOMB_X32_Y19_N0
po_amix0_aword_state_out_a3_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(3) = po_amix0_aword_state_out_a3_a_a18_combout $ (po_areg_shift_aq(122) $ (po_areg_shift_aq(115) $ (po_areg_shift_aq(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix0_aword_state_out_a3_a_a18_combout,
	datab => po_areg_shift_aq(122),
	datac => po_areg_shift_aq(115),
	datad => po_areg_shift_aq(107),
	combout => po_amix0_aword_state_out(3));

-- Location: LCCOMB_X34_Y20_N12
po_areg_mix_aq_a99_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a99_a_afeeder_combout = po_amix0_aword_state_out(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(3),
	combout => po_areg_mix_aq_a99_a_afeeder_combout);

-- Location: LCCOMB_X34_Y20_N8
po_areg_sub_aq_a3_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a3_a_afeeder_combout = auto_generated_aram_block1a3_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_b_a3_a,
	combout => po_areg_sub_aq_a3_a_afeeder_combout);

-- Location: FF_X34_Y20_N9
po_areg_sub_aq_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a3_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(3));

-- Location: FF_X34_Y20_N13
po_areg_mix_aq_a99_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a99_a_afeeder_combout,
	asdata => po_areg_sub_aq(3),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(99));

-- Location: LCCOMB_X34_Y29_N14
po_aadd1_astate_out_a99_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(99) = po_areg_key_aq(99) $ (po_areg_mix_aq(99))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(99),
	datad => po_areg_mix_aq(99),
	combout => po_aadd1_astate_out(99));

-- Location: FF_X34_Y29_N15
po_areg_add_aq_a99_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(99),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(99));

-- Location: LCCOMB_X32_Y20_N14
po_areg_shift_aq_a99_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a99_a_afeeder_combout = po_areg_sub_aq(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_areg_sub_aq(3),
	combout => po_areg_shift_aq_a99_a_afeeder_combout);

-- Location: FF_X32_Y20_N15
po_areg_shift_aq_a99_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a99_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(99));

-- Location: LCCOMB_X32_Y22_N4
po_areg_sub_aq_a44_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a44_a_afeeder_combout = auto_generated_aram_block1a4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_a_a4_a,
	combout => po_areg_sub_aq_a44_a_afeeder_combout);

-- Location: FF_X32_Y22_N5
po_areg_sub_aq_a44_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a44_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(44));

-- Location: FF_X31_Y21_N5
po_areg_shift_aq_a108_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(44),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(108));

-- Location: LCCOMB_X31_Y21_N22
po_amix0_aword_state_out_a4_a_a20 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a4_a_a20_combout = po_areg_shift_aq(123) $ (po_areg_shift_aq(103) $ (po_areg_shift_aq(108) $ (po_areg_shift_aq(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(123),
	datab => po_areg_shift_aq(103),
	datac => po_areg_shift_aq(108),
	datad => po_areg_shift_aq(127),
	combout => po_amix0_aword_state_out_a4_a_a20_combout);

-- Location: LCCOMB_X34_Y21_N4
po_areg_sub_aq_a84_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a84_a_afeeder_combout = auto_generated_aram_block1a4_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_b_a4_a,
	combout => po_areg_sub_aq_a84_a_afeeder_combout);

-- Location: FF_X34_Y21_N5
po_areg_sub_aq_a84_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a84_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(84));

-- Location: FF_X31_Y21_N15
po_areg_shift_aq_a116_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(84),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(116));

-- Location: LCCOMB_X31_Y21_N2
po_amix0_aword_state_out_a4_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(4) = po_areg_shift_aq(124) $ (po_areg_shift_aq(99) $ (po_amix0_aword_state_out_a4_a_a20_combout $ (po_areg_shift_aq(116))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(124),
	datab => po_areg_shift_aq(99),
	datac => po_amix0_aword_state_out_a4_a_a20_combout,
	datad => po_areg_shift_aq(116),
	combout => po_amix0_aword_state_out(4));

-- Location: LCCOMB_X34_Y21_N24
po_areg_mix_aq_a100_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a100_a_afeeder_combout = po_amix0_aword_state_out(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(4),
	combout => po_areg_mix_aq_a100_a_afeeder_combout);

-- Location: LCCOMB_X34_Y20_N6
po_areg_sub_aq_a4_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a4_a_afeeder_combout = auto_generated_aram_block1a4_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_b_a4_a,
	combout => po_areg_sub_aq_a4_a_afeeder_combout);

-- Location: FF_X34_Y20_N7
po_areg_sub_aq_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a4_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(4));

-- Location: FF_X34_Y21_N25
po_areg_mix_aq_a100_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a100_a_afeeder_combout,
	asdata => po_areg_sub_aq(4),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(100));

-- Location: LCCOMB_X34_Y29_N8
po_aadd1_astate_out_a100_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(100) = po_areg_key_aq(100) $ (po_areg_mix_aq(100))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(100),
	datad => po_areg_mix_aq(100),
	combout => po_aadd1_astate_out(100));

-- Location: FF_X34_Y29_N9
po_areg_add_aq_a100_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(100),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(100));

-- Location: LCCOMB_X34_Y29_N2
po_aadd1_astate_out_a101_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(101) = po_areg_mix_aq(101) $ (po_areg_key_aq(101))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(101),
	datad => po_areg_key_aq(101),
	combout => po_aadd1_astate_out(101));

-- Location: FF_X34_Y29_N3
po_areg_add_aq_a101_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(101),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(101));

-- Location: LCCOMB_X34_Y20_N22
po_areg_sub_aq_a5_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a5_a_afeeder_combout = auto_generated_aram_block1a5_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_b_a5_a,
	combout => po_areg_sub_aq_a5_a_afeeder_combout);

-- Location: FF_X34_Y20_N23
po_areg_sub_aq_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a5_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(5));

-- Location: FF_X31_Y21_N13
po_areg_shift_aq_a101_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(5),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(101));

-- Location: LCCOMB_X32_Y19_N14
po_areg_sub_aq_a126_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a126_a_afeeder_combout = auto_generated_aram_block1a6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem0_arom_rtl_0_aq_a_a6_a,
	combout => po_areg_sub_aq_a126_a_afeeder_combout);

-- Location: FF_X32_Y19_N15
po_areg_sub_aq_a126_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a126_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(126));

-- Location: LCCOMB_X32_Y21_N4
po_areg_shift_aq_a126_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a126_a_afeeder_combout = po_areg_sub_aq(126)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(126),
	combout => po_areg_shift_aq_a126_a_afeeder_combout);

-- Location: FF_X32_Y21_N5
po_areg_shift_aq_a126_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a126_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(126));

-- Location: LCCOMB_X31_Y21_N4
po_amix0_aword_state_out_a6_a_a22 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a6_a_a22_combout = po_areg_shift_aq(118) $ (po_areg_shift_aq(101) $ (po_areg_shift_aq(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(118),
	datab => po_areg_shift_aq(101),
	datad => po_areg_shift_aq(126),
	combout => po_amix0_aword_state_out_a6_a_a22_combout);

-- Location: LCCOMB_X32_Y22_N20
po_areg_sub_aq_a46_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a46_a_afeeder_combout = auto_generated_aram_block1a6

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem5_arom_rtl_0_aq_a_a6_a,
	combout => po_areg_sub_aq_a46_a_afeeder_combout);

-- Location: FF_X32_Y22_N21
po_areg_sub_aq_a46_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a46_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(46));

-- Location: LCCOMB_X32_Y21_N6
po_areg_shift_aq_a110_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a110_a_afeeder_combout = po_areg_sub_aq(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(46),
	combout => po_areg_shift_aq_a110_a_afeeder_combout);

-- Location: FF_X32_Y21_N7
po_areg_shift_aq_a110_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a110_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(110));

-- Location: LCCOMB_X32_Y21_N16
po_amix0_aword_state_out_a6_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(6) = po_areg_shift_aq(125) $ (po_amix0_aword_state_out_a6_a_a22_combout $ (po_areg_shift_aq(110)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(125),
	datab => po_amix0_aword_state_out_a6_a_a22_combout,
	datad => po_areg_shift_aq(110),
	combout => po_amix0_aword_state_out(6));

-- Location: LCCOMB_X32_Y20_N0
po_areg_sub_aq_a6_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a6_a_afeeder_combout = auto_generated_aram_block1a6_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem7_arom_rtl_0_aq_b_a6_a,
	combout => po_areg_sub_aq_a6_a_afeeder_combout);

-- Location: FF_X32_Y20_N1
po_areg_sub_aq_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a6_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(6));

-- Location: FF_X32_Y21_N17
po_areg_mix_aq_a102_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(6),
	asdata => po_areg_sub_aq(6),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(102));

-- Location: LCCOMB_X32_Y29_N12
po_aadd1_astate_out_a102_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(102) = po_areg_key_aq(102) $ (po_areg_mix_aq(102))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(102),
	datad => po_areg_mix_aq(102),
	combout => po_aadd1_astate_out(102));

-- Location: FF_X32_Y29_N13
po_areg_add_aq_a102_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(102),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(102));

-- Location: LCCOMB_X32_Y21_N28
po_areg_shift_aq_a102_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a102_a_afeeder_combout = po_areg_sub_aq(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(6),
	combout => po_areg_shift_aq_a102_a_afeeder_combout);

-- Location: FF_X32_Y21_N29
po_areg_shift_aq_a102_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a102_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(102));

-- Location: LCCOMB_X32_Y22_N26
po_areg_sub_aq_a47_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a47_a_afeeder_combout = auto_generated_aram_block1a7

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem5_arom_rtl_0_aq_a_a7_a,
	combout => po_areg_sub_aq_a47_a_afeeder_combout);

-- Location: FF_X32_Y22_N27
po_areg_sub_aq_a47_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a47_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(47));

-- Location: LCCOMB_X31_Y21_N20
po_areg_shift_aq_a111_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a111_a_afeeder_combout = po_areg_sub_aq(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(47),
	combout => po_areg_shift_aq_a111_a_afeeder_combout);

-- Location: FF_X31_Y21_N21
po_areg_shift_aq_a111_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a111_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(111));

-- Location: LCCOMB_X32_Y21_N20
po_areg_sub_aq_a87_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a87_a_afeeder_combout = auto_generated_aram_block1a7_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem2_arom_rtl_0_aq_b_a7_a,
	combout => po_areg_sub_aq_a87_a_afeeder_combout);

-- Location: FF_X32_Y21_N21
po_areg_sub_aq_a87_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a87_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(87));

-- Location: FF_X31_Y21_N9
po_areg_shift_aq_a119_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(87),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(119));

-- Location: LCCOMB_X31_Y21_N18
po_amix0_aword_state_out_a28_a_a23 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a28_a_a23_combout = po_areg_shift_aq(119) $ (po_areg_shift_aq(127))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_shift_aq(119),
	datad => po_areg_shift_aq(127),
	combout => po_amix0_aword_state_out_a28_a_a23_combout);

-- Location: LCCOMB_X31_Y21_N10
po_amix0_aword_state_out_a7_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(7) = po_areg_shift_aq(126) $ (po_areg_shift_aq(102) $ (po_areg_shift_aq(111) $ (po_amix0_aword_state_out_a28_a_a23_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(126),
	datab => po_areg_shift_aq(102),
	datac => po_areg_shift_aq(111),
	datad => po_amix0_aword_state_out_a28_a_a23_combout,
	combout => po_amix0_aword_state_out(7));

-- Location: LCCOMB_X36_Y21_N22
po_areg_mix_aq_a103_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a103_a_afeeder_combout = po_amix0_aword_state_out(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(7),
	combout => po_areg_mix_aq_a103_a_afeeder_combout);

-- Location: FF_X36_Y21_N23
po_areg_mix_aq_a103_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a103_a_afeeder_combout,
	asdata => po_areg_sub_aq(7),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(103));

-- Location: LCCOMB_X34_Y29_N0
po_aadd1_astate_out_a103_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(103) = po_areg_key_aq(103) $ (po_areg_mix_aq(103))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(103),
	datad => po_areg_mix_aq(103),
	combout => po_aadd1_astate_out(103));

-- Location: FF_X34_Y29_N1
po_areg_add_aq_a103_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(103),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(103));

-- Location: FF_X31_Y19_N29
po_areg_shift_aq_a96_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(0),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(96));

-- Location: LCCOMB_X31_Y19_N18
po_amix0_am5_ab_out_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_am5_ab_out_a0_combout = po_areg_shift_aq(103) $ (po_areg_shift_aq(96))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(103),
	datad => po_areg_shift_aq(96),
	combout => po_amix0_am5_ab_out_a0_combout);

-- Location: LCCOMB_X31_Y20_N18
po_amix0_aword_state_out_a8_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(8) = po_areg_shift_aq(120) $ (po_areg_shift_aq(112) $ (po_areg_shift_aq(111) $ (po_amix0_am5_ab_out_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(120),
	datab => po_areg_shift_aq(112),
	datac => po_areg_shift_aq(111),
	datad => po_amix0_am5_ab_out_a0_combout,
	combout => po_amix0_aword_state_out(8));

-- Location: LCCOMB_X35_Y23_N16
po_areg_mix_aq_a104_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a104_a_afeeder_combout = po_amix0_aword_state_out(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(8),
	combout => po_areg_mix_aq_a104_a_afeeder_combout);

-- Location: LCCOMB_X34_Y22_N24
po_areg_sub_aq_a40_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a40_a_afeeder_combout = auto_generated_aram_block1a0_aportadataout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_a_a0_a,
	combout => po_areg_sub_aq_a40_a_afeeder_combout);

-- Location: FF_X34_Y22_N25
po_areg_sub_aq_a40_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a40_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(40));

-- Location: FF_X35_Y23_N17
po_areg_mix_aq_a104_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a104_a_afeeder_combout,
	asdata => po_areg_sub_aq(40),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(104));

-- Location: LCCOMB_X34_Y29_N10
po_aadd1_astate_out_a104_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(104) = po_areg_key_aq(104) $ (po_areg_mix_aq(104))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(104),
	datad => po_areg_mix_aq(104),
	combout => po_aadd1_astate_out(104));

-- Location: FF_X34_Y29_N11
po_areg_add_aq_a104_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(104),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(104));

-- Location: LCCOMB_X34_Y20_N4
po_areg_sub_aq_a1_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a1_a_afeeder_combout = auto_generated_aram_block1a1_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem7_arom_rtl_0_aq_b_a1_a,
	combout => po_areg_sub_aq_a1_a_afeeder_combout);

-- Location: FF_X34_Y20_N5
po_areg_sub_aq_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a1_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(1));

-- Location: FF_X31_Y19_N19
po_areg_shift_aq_a97_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(1),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(97));

-- Location: LCCOMB_X32_Y21_N30
po_areg_sub_aq_a81_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a81_a_afeeder_combout = auto_generated_aram_block1a1_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_b_a1_a,
	combout => po_areg_sub_aq_a81_a_afeeder_combout);

-- Location: FF_X32_Y21_N31
po_areg_sub_aq_a81_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a81_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(81));

-- Location: FF_X31_Y19_N5
po_areg_shift_aq_a113_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(81),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(113));

-- Location: FF_X31_Y19_N13
po_areg_shift_aq_a104_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(40),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(104));

-- Location: LCCOMB_X31_Y19_N12
po_amix0_aword_state_out_a9_a_a24 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a9_a_a24_combout = po_areg_shift_aq(103) $ (po_areg_shift_aq(96) $ (po_areg_shift_aq(104) $ (po_areg_shift_aq(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(103),
	datab => po_areg_shift_aq(96),
	datac => po_areg_shift_aq(104),
	datad => po_areg_shift_aq(111),
	combout => po_amix0_aword_state_out_a9_a_a24_combout);

-- Location: LCCOMB_X31_Y19_N6
po_amix0_aword_state_out_a9_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(9) = po_areg_shift_aq(121) $ (po_areg_shift_aq(97) $ (po_areg_shift_aq(113) $ (po_amix0_aword_state_out_a9_a_a24_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(121),
	datab => po_areg_shift_aq(97),
	datac => po_areg_shift_aq(113),
	datad => po_amix0_aword_state_out_a9_a_a24_combout,
	combout => po_amix0_aword_state_out(9));

-- Location: LCCOMB_X31_Y20_N12
po_areg_mix_aq_a105_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a105_a_afeeder_combout = po_amix0_aword_state_out(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(9),
	combout => po_areg_mix_aq_a105_a_afeeder_combout);

-- Location: LCCOMB_X32_Y22_N0
po_areg_sub_aq_a41_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a41_a_afeeder_combout = auto_generated_aram_block1a1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_a_a1_a,
	combout => po_areg_sub_aq_a41_a_afeeder_combout);

-- Location: FF_X32_Y22_N1
po_areg_sub_aq_a41_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a41_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(41));

-- Location: FF_X31_Y20_N13
po_areg_mix_aq_a105_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a105_a_afeeder_combout,
	asdata => po_areg_sub_aq(41),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(105));

-- Location: LCCOMB_X34_Y29_N24
po_aadd1_astate_out_a105_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(105) = po_areg_key_aq(105) $ (po_areg_mix_aq(105))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(105),
	datad => po_areg_mix_aq(105),
	combout => po_aadd1_astate_out(105));

-- Location: FF_X34_Y29_N25
po_areg_add_aq_a105_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(105),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(105));

-- Location: LCCOMB_X31_Y19_N20
po_amix0_aword_state_out_a2_a_a16 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a2_a_a16_combout = po_areg_shift_aq(122) $ (po_areg_shift_aq(97))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(122),
	datad => po_areg_shift_aq(97),
	combout => po_amix0_aword_state_out_a2_a_a16_combout);

-- Location: FF_X31_Y19_N3
po_areg_shift_aq_a105_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(41),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(105));

-- Location: LCCOMB_X31_Y19_N2
po_amix0_aword_state_out_a10_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(10) = po_areg_shift_aq(98) $ (po_amix0_aword_state_out_a2_a_a16_combout $ (po_areg_shift_aq(105) $ (po_areg_shift_aq(114))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(98),
	datab => po_amix0_aword_state_out_a2_a_a16_combout,
	datac => po_areg_shift_aq(105),
	datad => po_areg_shift_aq(114),
	combout => po_amix0_aword_state_out(10));

-- Location: LCCOMB_X32_Y26_N4
po_areg_mix_aq_a106_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a106_a_afeeder_combout = po_amix0_aword_state_out(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_amix0_aword_state_out(10),
	combout => po_areg_mix_aq_a106_a_afeeder_combout);

-- Location: FF_X32_Y26_N5
po_areg_mix_aq_a106_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a106_a_afeeder_combout,
	asdata => po_areg_sub_aq(42),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(106));

-- Location: LCCOMB_X31_Y26_N30
po_aadd1_astate_out_a106_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(106) = po_areg_key_aq(106) $ (po_areg_mix_aq(106))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(106),
	datad => po_areg_mix_aq(106),
	combout => po_aadd1_astate_out(106));

-- Location: FF_X31_Y26_N31
po_areg_add_aq_a106_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(106),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(106));

-- Location: FF_X31_Y19_N11
po_areg_shift_aq_a98_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(2),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(98));

-- Location: LCCOMB_X31_Y19_N10
po_amix0_aword_state_out_a11_a_a25 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a11_a_a25_combout = po_areg_shift_aq(106) $ (po_areg_shift_aq(103) $ (po_areg_shift_aq(98) $ (po_areg_shift_aq(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(106),
	datab => po_areg_shift_aq(103),
	datac => po_areg_shift_aq(98),
	datad => po_areg_shift_aq(111),
	combout => po_amix0_aword_state_out_a11_a_a25_combout);

-- Location: LCCOMB_X32_Y19_N8
po_areg_sub_aq_a123_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a123_a_afeeder_combout = auto_generated_aram_block1a3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_a_a3_a,
	combout => po_areg_sub_aq_a123_a_afeeder_combout);

-- Location: FF_X32_Y19_N9
po_areg_sub_aq_a123_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a123_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(123));

-- Location: FF_X31_Y19_N17
po_areg_shift_aq_a123_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(123),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(123));

-- Location: LCCOMB_X32_Y19_N24
po_amix0_aword_state_out_a11_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(11) = po_areg_shift_aq(115) $ (po_amix0_aword_state_out_a11_a_a25_combout $ (po_areg_shift_aq(99) $ (po_areg_shift_aq(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(115),
	datab => po_amix0_aword_state_out_a11_a_a25_combout,
	datac => po_areg_shift_aq(99),
	datad => po_areg_shift_aq(123),
	combout => po_amix0_aword_state_out(11));

-- Location: LCCOMB_X32_Y19_N28
po_areg_mix_aq_a107_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a107_a_afeeder_combout = po_amix0_aword_state_out(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(11),
	combout => po_areg_mix_aq_a107_a_afeeder_combout);

-- Location: FF_X32_Y19_N29
po_areg_mix_aq_a107_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a107_a_afeeder_combout,
	asdata => po_areg_sub_aq(43),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(107));

-- Location: LCCOMB_X31_Y26_N20
po_aadd1_astate_out_a107_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(107) = po_areg_key_aq(107) $ (po_areg_mix_aq(107))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(107),
	datad => po_areg_mix_aq(107),
	combout => po_aadd1_astate_out(107));

-- Location: FF_X31_Y26_N21
po_areg_add_aq_a107_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(107),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(107));

-- Location: LCCOMB_X31_Y21_N12
po_amix0_aword_state_out_a31_a_a26 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a31_a_a26_combout = po_areg_shift_aq(103) $ (po_areg_shift_aq(111))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_shift_aq(103),
	datad => po_areg_shift_aq(111),
	combout => po_amix0_aword_state_out_a31_a_a26_combout);

-- Location: LCCOMB_X34_Y19_N8
po_areg_sub_aq_a124_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a124_a_afeeder_combout = auto_generated_aram_block1a4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_a_a4_a,
	combout => po_areg_sub_aq_a124_a_afeeder_combout);

-- Location: FF_X34_Y19_N9
po_areg_sub_aq_a124_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a124_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(124));

-- Location: LCCOMB_X31_Y20_N16
po_areg_shift_aq_a124_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a124_a_afeeder_combout = po_areg_sub_aq(124)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(124),
	combout => po_areg_shift_aq_a124_a_afeeder_combout);

-- Location: FF_X31_Y20_N17
po_areg_shift_aq_a124_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a124_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(124));

-- Location: LCCOMB_X32_Y22_N28
po_amix0_aword_state_out_a12_a_a19 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a12_a_a19_combout = po_areg_shift_aq(116) $ (po_areg_shift_aq(124) $ (po_areg_shift_aq(99)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(116),
	datab => po_areg_shift_aq(124),
	datad => po_areg_shift_aq(99),
	combout => po_amix0_aword_state_out_a12_a_a19_combout);

-- Location: LCCOMB_X32_Y22_N18
po_amix0_aword_state_out_a12_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(12) = po_areg_shift_aq(100) $ (po_areg_shift_aq(107) $ (po_amix0_aword_state_out_a31_a_a26_combout $ (po_amix0_aword_state_out_a12_a_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(100),
	datab => po_areg_shift_aq(107),
	datac => po_amix0_aword_state_out_a31_a_a26_combout,
	datad => po_amix0_aword_state_out_a12_a_a19_combout,
	combout => po_amix0_aword_state_out(12));

-- Location: LCCOMB_X34_Y22_N14
po_areg_mix_aq_a108_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a108_a_afeeder_combout = po_amix0_aword_state_out(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(12),
	combout => po_areg_mix_aq_a108_a_afeeder_combout);

-- Location: FF_X34_Y22_N15
po_areg_mix_aq_a108_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a108_a_afeeder_combout,
	asdata => po_areg_sub_aq(44),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(108));

-- Location: LCCOMB_X32_Y29_N2
po_aadd1_astate_out_a108_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(108) = po_areg_mix_aq(108) $ (po_areg_key_aq(108))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(108),
	datad => po_areg_key_aq(108),
	combout => po_aadd1_astate_out(108));

-- Location: FF_X32_Y29_N3
po_areg_add_aq_a108_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(108),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(108));

-- Location: LCCOMB_X31_Y21_N0
po_amix0_aword_state_out_a13_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(13) = po_amix0_aword_state_out_a13_a_a21_combout $ (po_areg_shift_aq(108) $ (po_areg_shift_aq(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix0_aword_state_out_a13_a_a21_combout,
	datab => po_areg_shift_aq(108),
	datad => po_areg_shift_aq(101),
	combout => po_amix0_aword_state_out(13));

-- Location: LCCOMB_X31_Y22_N22
po_areg_mix_aq_a109_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a109_a_afeeder_combout = po_amix0_aword_state_out(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(13),
	combout => po_areg_mix_aq_a109_a_afeeder_combout);

-- Location: LCCOMB_X32_Y22_N30
po_areg_sub_aq_a45_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a45_a_afeeder_combout = auto_generated_aram_block1a5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem5_arom_rtl_0_aq_a_a5_a,
	combout => po_areg_sub_aq_a45_a_afeeder_combout);

-- Location: FF_X32_Y22_N31
po_areg_sub_aq_a45_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a45_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(45));

-- Location: FF_X31_Y22_N23
po_areg_mix_aq_a109_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a109_a_afeeder_combout,
	asdata => po_areg_sub_aq(45),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(109));

-- Location: LCCOMB_X32_Y27_N8
po_aadd1_astate_out_a109_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(109) = po_areg_key_aq(109) $ (po_areg_mix_aq(109))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(109),
	datad => po_areg_mix_aq(109),
	combout => po_aadd1_astate_out(109));

-- Location: FF_X32_Y27_N9
po_areg_add_aq_a109_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(109),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(109));

-- Location: LCCOMB_X32_Y21_N26
po_amix0_aword_state_out_a14_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(14) = po_areg_shift_aq(109) $ (po_amix0_aword_state_out_a6_a_a22_combout $ (po_areg_shift_aq(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(109),
	datab => po_amix0_aword_state_out_a6_a_a22_combout,
	datad => po_areg_shift_aq(102),
	combout => po_amix0_aword_state_out(14));

-- Location: FF_X32_Y21_N27
po_areg_mix_aq_a110_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(14),
	asdata => po_areg_sub_aq(46),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(110));

-- Location: LCCOMB_X34_Y29_N26
po_aadd1_astate_out_a110_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(110) = po_areg_key_aq(110) $ (po_areg_mix_aq(110))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(110),
	datad => po_areg_mix_aq(110),
	combout => po_aadd1_astate_out(110));

-- Location: FF_X34_Y29_N27
po_areg_add_aq_a110_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(110),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(110));

-- Location: LCCOMB_X34_Y29_N12
po_aadd1_astate_out_a111_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(111) = po_areg_mix_aq(111) $ (po_areg_key_aq(111))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(111),
	datad => po_areg_key_aq(111),
	combout => po_aadd1_astate_out(111));

-- Location: FF_X34_Y29_N13
po_areg_add_aq_a111_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(111),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(111));

-- Location: LCCOMB_X35_Y29_N16
po_amux2_aresult_a112_a_a80 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a112_a_a80_combout = (po_akeyGen_areg_aq(16) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(16),
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a112_a_a80_combout);

-- Location: FF_X35_Y29_N17
po_areg_key_aq_a112_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a112_a_a80_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(112));

-- Location: LCCOMB_X34_Y28_N8
po_aadd1_astate_out_a112_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(112) = po_areg_mix_aq(112) $ (po_areg_key_aq(112))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(112),
	datad => po_areg_key_aq(112),
	combout => po_aadd1_astate_out(112));

-- Location: FF_X34_Y28_N9
po_areg_add_aq_a112_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(112),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(112));

-- Location: LCCOMB_X36_Y26_N24
po_amux2_aresult_a113_a_a81 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a113_a_a81_combout = (po_akeyGen_areg_aq(17)) # ((!pc_aSelector4_a0_combout & ((!pc_astate_as2_aq) # (!pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_akeyGen_areg_aq(17),
	datab => pc_aSelector4_a1_combout,
	datac => pc_aSelector4_a0_combout,
	datad => pc_astate_as2_aq,
	combout => po_amux2_aresult_a113_a_a81_combout);

-- Location: FF_X36_Y26_N25
po_areg_key_aq_a113_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a113_a_a81_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(113));

-- Location: LCCOMB_X31_Y20_N28
po_areg_mix_aq_a113_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a113_a_afeeder_combout = po_amix0_aword_state_out(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix0_aword_state_out(17),
	combout => po_areg_mix_aq_a113_a_afeeder_combout);

-- Location: FF_X31_Y20_N29
po_areg_mix_aq_a113_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a113_a_afeeder_combout,
	asdata => po_areg_sub_aq(81),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(113));

-- Location: LCCOMB_X32_Y28_N22
po_aadd1_astate_out_a113_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(113) = po_areg_key_aq(113) $ (po_areg_mix_aq(113))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(113),
	datad => po_areg_mix_aq(113),
	combout => po_aadd1_astate_out(113));

-- Location: FF_X32_Y28_N23
po_areg_add_aq_a113_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(113),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(113));

-- Location: LCCOMB_X34_Y20_N24
po_amix0_aword_state_out_a18_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(18) = po_amix0_aword_state_out_a18_a_a29_combout $ (po_areg_shift_aq(122))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_amix0_aword_state_out_a18_a_a29_combout,
	datad => po_areg_shift_aq(122),
	combout => po_amix0_aword_state_out(18));

-- Location: FF_X34_Y20_N25
po_areg_mix_aq_a114_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(18),
	asdata => po_areg_sub_aq(82),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(114));

-- Location: LCCOMB_X34_Y28_N30
po_aadd1_astate_out_a114_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(114) = po_areg_key_aq(114) $ (po_areg_mix_aq(114))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(114),
	datad => po_areg_mix_aq(114),
	combout => po_aadd1_astate_out(114));

-- Location: FF_X34_Y28_N31
po_areg_add_aq_a114_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(114),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(114));

-- Location: LCCOMB_X31_Y19_N0
po_amix0_aword_state_out_a19_a_a30 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a19_a_a30_combout = po_areg_shift_aq(106) $ (po_areg_shift_aq(99) $ (po_areg_shift_aq(114) $ (po_areg_shift_aq(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(106),
	datab => po_areg_shift_aq(99),
	datac => po_areg_shift_aq(114),
	datad => po_areg_shift_aq(107),
	combout => po_amix0_aword_state_out_a19_a_a30_combout);

-- Location: LCCOMB_X32_Y20_N6
po_amix0_aword_state_out_a19_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(19) = po_areg_shift_aq(123) $ (po_areg_shift_aq(119) $ (po_amix0_aword_state_out_a19_a_a30_combout $ (po_areg_shift_aq(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(123),
	datab => po_areg_shift_aq(119),
	datac => po_amix0_aword_state_out_a19_a_a30_combout,
	datad => po_areg_shift_aq(111),
	combout => po_amix0_aword_state_out(19));

-- Location: LCCOMB_X32_Y20_N26
po_areg_mix_aq_a115_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a115_a_afeeder_combout = po_amix0_aword_state_out(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(19),
	combout => po_areg_mix_aq_a115_a_afeeder_combout);

-- Location: FF_X32_Y20_N27
po_areg_mix_aq_a115_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a115_a_afeeder_combout,
	asdata => po_areg_sub_aq(83),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(115));

-- Location: LCCOMB_X34_Y28_N20
po_aadd1_astate_out_a115_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(115) = po_areg_key_aq(115) $ (po_areg_mix_aq(115))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_key_aq(115),
	datad => po_areg_mix_aq(115),
	combout => po_aadd1_astate_out(115));

-- Location: FF_X34_Y28_N21
po_areg_add_aq_a115_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(115),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(115));

-- Location: LCCOMB_X34_Y28_N10
po_aadd1_astate_out_a116_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(116) = po_areg_mix_aq(116) $ (po_areg_key_aq(116))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(116),
	datad => po_areg_key_aq(116),
	combout => po_aadd1_astate_out(116));

-- Location: FF_X34_Y28_N11
po_areg_add_aq_a116_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(116),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(116));

-- Location: LCCOMB_X31_Y21_N8
po_amix0_aword_state_out_a29_a_a32 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a29_a_a32_combout = po_areg_shift_aq(109) $ (po_areg_shift_aq(116) $ (po_areg_shift_aq(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(109),
	datab => po_areg_shift_aq(116),
	datad => po_areg_shift_aq(101),
	combout => po_amix0_aword_state_out_a29_a_a32_combout);

-- Location: LCCOMB_X32_Y21_N14
po_amix0_aword_state_out_a21_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(21) = po_areg_shift_aq(125) $ (po_areg_shift_aq(108) $ (po_amix0_aword_state_out_a29_a_a32_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(125),
	datab => po_areg_shift_aq(108),
	datad => po_amix0_aword_state_out_a29_a_a32_combout,
	combout => po_amix0_aword_state_out(21));

-- Location: LCCOMB_X32_Y21_N8
po_areg_sub_aq_a85_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a85_a_afeeder_combout = auto_generated_aram_block1a5_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_asub_amem2_arom_rtl_0_aq_b_a5_a,
	combout => po_areg_sub_aq_a85_a_afeeder_combout);

-- Location: FF_X32_Y21_N9
po_areg_sub_aq_a85_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a85_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(85));

-- Location: FF_X32_Y21_N15
po_areg_mix_aq_a117_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(21),
	asdata => po_areg_sub_aq(85),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(117));

-- Location: LCCOMB_X34_Y28_N28
po_aadd1_astate_out_a117_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(117) = po_areg_key_aq(117) $ (po_areg_mix_aq(117))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(117),
	datad => po_areg_mix_aq(117),
	combout => po_aadd1_astate_out(117));

-- Location: FF_X34_Y28_N29
po_areg_add_aq_a117_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(117),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(117));

-- Location: LCCOMB_X31_Y29_N28
po_amux2_aresult_a118_a_a86 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a118_a_a86_combout = (po_akeyGen_areg_aq(22)) # ((!pc_aSelector4_a0_combout & ((!pc_aSelector4_a1_combout) # (!pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a0_combout,
	datab => pc_astate_as2_aq,
	datac => pc_aSelector4_a1_combout,
	datad => po_akeyGen_areg_aq(22),
	combout => po_amux2_aresult_a118_a_a86_combout);

-- Location: FF_X31_Y29_N29
po_areg_key_aq_a118_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a118_a_a86_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(118));

-- Location: LCCOMB_X31_Y26_N26
po_aadd1_astate_out_a118_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(118) = po_areg_mix_aq(118) $ (po_areg_key_aq(118))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(118),
	datac => po_areg_key_aq(118),
	combout => po_aadd1_astate_out(118));

-- Location: FF_X31_Y26_N27
po_areg_add_aq_a118_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(118),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(118));

-- Location: LCCOMB_X32_Y21_N22
po_areg_sub_aq_a86_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a86_a_afeeder_combout = auto_generated_aram_block1a6_aPORTBDATAOUT0

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem2_arom_rtl_0_aq_b_a6_a,
	combout => po_areg_sub_aq_a86_a_afeeder_combout);

-- Location: FF_X32_Y21_N23
po_areg_sub_aq_a86_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a86_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(86));

-- Location: FF_X31_Y21_N31
po_areg_shift_aq_a118_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	asdata => po_areg_sub_aq(86),
	sload => VCC,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(118));

-- Location: LCCOMB_X31_Y21_N30
po_amix0_aword_state_out_a23_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(23) = po_areg_shift_aq(110) $ (po_amix0_aword_state_out_a31_a_a26_combout $ (po_areg_shift_aq(118) $ (po_areg_shift_aq(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(110),
	datab => po_amix0_aword_state_out_a31_a_a26_combout,
	datac => po_areg_shift_aq(118),
	datad => po_areg_shift_aq(127),
	combout => po_amix0_aword_state_out(23));

-- Location: LCCOMB_X32_Y20_N24
po_areg_mix_aq_a119_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a119_a_afeeder_combout = po_amix0_aword_state_out(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(23),
	combout => po_areg_mix_aq_a119_a_afeeder_combout);

-- Location: FF_X32_Y20_N25
po_areg_mix_aq_a119_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a119_a_afeeder_combout,
	asdata => po_areg_sub_aq(87),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(119));

-- Location: LCCOMB_X32_Y28_N20
po_aadd1_astate_out_a119_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(119) = po_areg_key_aq(119) $ (po_areg_mix_aq(119))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(119),
	datad => po_areg_mix_aq(119),
	combout => po_aadd1_astate_out(119));

-- Location: FF_X32_Y28_N21
po_areg_add_aq_a119_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(119),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(119));

-- Location: LCCOMB_X34_Y27_N4
po_aadd1_astate_out_a120_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(120) = po_areg_mix_aq(120) $ (po_areg_key_aq(120))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(120),
	datad => po_areg_key_aq(120),
	combout => po_aadd1_astate_out(120));

-- Location: FF_X34_Y27_N5
po_areg_add_aq_a120_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(120),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(120));

-- Location: LCCOMB_X31_Y19_N14
po_amix0_aword_state_out_a25_a_a15 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a25_a_a15_combout = po_areg_shift_aq(127) $ (po_areg_shift_aq(113) $ (po_areg_shift_aq(120) $ (po_areg_shift_aq(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(127),
	datab => po_areg_shift_aq(113),
	datac => po_areg_shift_aq(120),
	datad => po_areg_shift_aq(105),
	combout => po_amix0_aword_state_out_a25_a_a15_combout);

-- Location: LCCOMB_X31_Y20_N0
po_amix0_aword_state_out_a25_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(25) = po_areg_shift_aq(97) $ (po_areg_shift_aq(112) $ (po_areg_shift_aq(119) $ (po_amix0_aword_state_out_a25_a_a15_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(97),
	datab => po_areg_shift_aq(112),
	datac => po_areg_shift_aq(119),
	datad => po_amix0_aword_state_out_a25_a_a15_combout,
	combout => po_amix0_aword_state_out(25));

-- Location: LCCOMB_X31_Y20_N2
po_areg_mix_aq_a121_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a121_a_afeeder_combout = po_amix0_aword_state_out(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(25),
	combout => po_areg_mix_aq_a121_a_afeeder_combout);

-- Location: LCCOMB_X32_Y19_N12
po_areg_sub_aq_a121_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a121_a_afeeder_combout = auto_generated_aram_block1a1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_a_a1_a,
	combout => po_areg_sub_aq_a121_a_afeeder_combout);

-- Location: FF_X32_Y19_N13
po_areg_sub_aq_a121_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a121_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(121));

-- Location: FF_X31_Y20_N3
po_areg_mix_aq_a121_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a121_a_afeeder_combout,
	asdata => po_areg_sub_aq(121),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(121));

-- Location: LCCOMB_X32_Y28_N14
po_aadd1_astate_out_a121_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(121) = po_areg_key_aq(121) $ (po_areg_mix_aq(121))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_key_aq(121),
	datad => po_areg_mix_aq(121),
	combout => po_aadd1_astate_out(121));

-- Location: FF_X32_Y28_N15
po_areg_add_aq_a121_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(121),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(121));

-- Location: LCCOMB_X32_Y19_N16
po_amix0_aword_state_out_a26_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(26) = po_areg_shift_aq(98) $ (po_areg_shift_aq(113) $ (po_amix0_aword_state_out_a26_a_a17_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(98),
	datab => po_areg_shift_aq(113),
	datad => po_amix0_aword_state_out_a26_a_a17_combout,
	combout => po_amix0_aword_state_out(26));

-- Location: FF_X32_Y19_N17
po_areg_mix_aq_a122_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(26),
	asdata => po_areg_sub_aq(122),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(122));

-- Location: LCCOMB_X32_Y28_N28
po_aadd1_astate_out_a122_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(122) = po_areg_key_aq(122) $ (po_areg_mix_aq(122))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(122),
	datad => po_areg_mix_aq(122),
	combout => po_aadd1_astate_out(122));

-- Location: FF_X32_Y28_N29
po_areg_add_aq_a122_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(122),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(122));

-- Location: LCCOMB_X31_Y19_N16
po_amix0_aword_state_out_a27_a_a34 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a27_a_a34_combout = po_areg_shift_aq(107) $ (po_areg_shift_aq(114) $ (po_areg_shift_aq(99)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(107),
	datab => po_areg_shift_aq(114),
	datad => po_areg_shift_aq(99),
	combout => po_amix0_aword_state_out_a27_a_a34_combout);

-- Location: LCCOMB_X32_Y19_N20
po_amix0_aword_state_out_a27_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(27) = po_areg_shift_aq(115) $ (po_amix0_aword_state_out_a27_a_a34_combout $ (po_amix0_aword_state_out_a28_a_a23_combout $ (po_areg_shift_aq(122))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(115),
	datab => po_amix0_aword_state_out_a27_a_a34_combout,
	datac => po_amix0_aword_state_out_a28_a_a23_combout,
	datad => po_areg_shift_aq(122),
	combout => po_amix0_aword_state_out(27));

-- Location: LCCOMB_X32_Y19_N4
po_areg_mix_aq_a123_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a123_a_afeeder_combout = po_amix0_aword_state_out(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(27),
	combout => po_areg_mix_aq_a123_a_afeeder_combout);

-- Location: FF_X32_Y19_N5
po_areg_mix_aq_a123_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a123_a_afeeder_combout,
	asdata => po_areg_sub_aq(123),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(123));

-- Location: LCCOMB_X34_Y28_N22
po_aadd1_astate_out_a123_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(123) = po_areg_mix_aq(123) $ (po_areg_key_aq(123))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => po_areg_mix_aq(123),
	datad => po_areg_key_aq(123),
	combout => po_aadd1_astate_out(123));

-- Location: FF_X34_Y28_N23
po_areg_add_aq_a123_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(123),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(123));

-- Location: LCCOMB_X34_Y28_N16
po_aadd1_astate_out_a124_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(124) = po_areg_mix_aq(124) $ (po_areg_key_aq(124))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_mix_aq(124),
	datad => po_areg_key_aq(124),
	combout => po_aadd1_astate_out(124));

-- Location: FF_X34_Y28_N17
po_areg_add_aq_a124_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(124),
	asdata => VCC,
	sload => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(124));

-- Location: LCCOMB_X32_Y21_N18
po_areg_shift_aq_a117_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_shift_aq_a117_a_afeeder_combout = po_areg_sub_aq(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_sub_aq(85),
	combout => po_areg_shift_aq_a117_a_afeeder_combout);

-- Location: FF_X32_Y21_N19
po_areg_shift_aq_a117_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_shift_aq_a117_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_shift_aq(117));

-- Location: LCCOMB_X32_Y21_N12
po_amix0_aword_state_out_a29_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(29) = po_areg_shift_aq(124) $ (po_areg_shift_aq(117) $ (po_amix0_aword_state_out_a29_a_a32_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(124),
	datab => po_areg_shift_aq(117),
	datad => po_amix0_aword_state_out_a29_a_a32_combout,
	combout => po_amix0_aword_state_out(29));

-- Location: LCCOMB_X32_Y19_N6
po_areg_sub_aq_a125_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_sub_aq_a125_a_afeeder_combout = auto_generated_aram_block1a5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_asub_amem0_arom_rtl_0_aq_a_a5_a,
	combout => po_areg_sub_aq_a125_a_afeeder_combout);

-- Location: FF_X32_Y19_N7
po_areg_sub_aq_a125_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_sub_aq_a125_a_afeeder_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_sub_aq(125));

-- Location: FF_X32_Y21_N13
po_areg_mix_aq_a125_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(29),
	asdata => po_areg_sub_aq(125),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(125));

-- Location: LCCOMB_X32_Y28_N18
po_aadd1_astate_out_a125_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(125) = po_areg_mix_aq(125) $ (po_areg_key_aq(125))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(125),
	datad => po_areg_key_aq(125),
	combout => po_aadd1_astate_out(125));

-- Location: FF_X32_Y28_N19
po_areg_add_aq_a125_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(125),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(125));

-- Location: LCCOMB_X31_Y21_N14
po_amix0_aword_state_out_a30_a_a33 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out_a30_a_a33_combout = po_areg_shift_aq(110) $ (po_areg_shift_aq(102) $ (po_areg_shift_aq(117)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(110),
	datab => po_areg_shift_aq(102),
	datad => po_areg_shift_aq(117),
	combout => po_amix0_aword_state_out_a30_a_a33_combout);

-- Location: LCCOMB_X32_Y21_N2
po_amix0_aword_state_out_a30_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(30) = po_areg_shift_aq(125) $ (po_areg_shift_aq(118) $ (po_amix0_aword_state_out_a30_a_a33_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(125),
	datab => po_areg_shift_aq(118),
	datad => po_amix0_aword_state_out_a30_a_a33_combout,
	combout => po_amix0_aword_state_out(30));

-- Location: FF_X32_Y21_N3
po_areg_mix_aq_a126_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amix0_aword_state_out(30),
	asdata => po_areg_sub_aq(126),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(126));

-- Location: LCCOMB_X31_Y28_N14
po_amux2_aresult_a126_a_a94 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a126_a_a94_combout = (po_akeyGen_areg_aq(30) & ((pc_aSelector4_a0_combout) # ((pc_aSelector4_a1_combout & pc_astate_as2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_aSelector4_a1_combout,
	datab => po_akeyGen_areg_aq(30),
	datac => pc_astate_as2_aq,
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a126_a_a94_combout);

-- Location: FF_X31_Y28_N15
po_areg_key_aq_a126_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a126_a_a94_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(126));

-- Location: LCCOMB_X32_Y28_N12
po_aadd1_astate_out_a126_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(126) = po_areg_mix_aq(126) $ (po_areg_key_aq(126))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_mix_aq(126),
	datad => po_areg_key_aq(126),
	combout => po_aadd1_astate_out(126));

-- Location: FF_X32_Y28_N13
po_areg_add_aq_a126_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(126),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(126));

-- Location: LCCOMB_X36_Y29_N30
po_amux2_aresult_a127_a_a95 : cycloneiii_lcell_comb
-- Equation(s):
-- po_amux2_aresult_a127_a_a95_combout = (po_akeyGen_areg_aq(31) & ((pc_aSelector4_a0_combout) # ((pc_astate_as2_aq & pc_aSelector4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as2_aq,
	datab => pc_aSelector4_a1_combout,
	datac => po_akeyGen_areg_aq(31),
	datad => pc_aSelector4_a0_combout,
	combout => po_amux2_aresult_a127_a_a95_combout);

-- Location: FF_X36_Y29_N31
po_areg_key_aq_a127_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_amux2_aresult_a127_a_a95_combout,
	ena => pc_aWideOr3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_key_aq(127));

-- Location: LCCOMB_X31_Y21_N24
po_amix0_aword_state_out_a31_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_amix0_aword_state_out(31) = po_areg_shift_aq(118) $ (po_areg_shift_aq(119) $ (po_amix0_aword_state_out_a31_a_a26_combout $ (po_areg_shift_aq(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => po_areg_shift_aq(118),
	datab => po_areg_shift_aq(119),
	datac => po_amix0_aword_state_out_a31_a_a26_combout,
	datad => po_areg_shift_aq(126),
	combout => po_amix0_aword_state_out(31));

-- Location: LCCOMB_X34_Y21_N16
po_areg_mix_aq_a127_a_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- po_areg_mix_aq_a127_a_afeeder_combout = po_amix0_aword_state_out(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => po_amix0_aword_state_out(31),
	combout => po_areg_mix_aq_a127_a_afeeder_combout);

-- Location: FF_X34_Y21_N17
po_areg_mix_aq_a127_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_areg_mix_aq_a127_a_afeeder_combout,
	asdata => po_areg_sub_aq(127),
	sload => pc_aSelector5_a1_combout,
	ena => pc_aenable_top_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_mix_aq(127));

-- Location: LCCOMB_X35_Y26_N14
po_aadd1_astate_out_a127_a : cycloneiii_lcell_comb
-- Equation(s):
-- po_aadd1_astate_out(127) = po_areg_key_aq(127) $ (po_areg_mix_aq(127))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => po_areg_key_aq(127),
	datad => po_areg_mix_aq(127),
	combout => po_aadd1_astate_out(127));

-- Location: FF_X35_Y26_N15
po_areg_add_aq_a127_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => osc_clk_ainputclkctrl_outclk,
	d => po_aadd1_astate_out(127),
	sclr => pc_aSelector4_a2_combout,
	ena => pc_aSelector3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => po_areg_add_aq(127));

-- Location: LCCOMB_X36_Y28_N30
pc_aWideOr10_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aWideOr10_a0_combout = ((pc_astate_as4_aq) # ((pc_astate_as2_aq) # (pc_astate_as6_aq))) # (!pc_astate_as0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as0_aq,
	datab => pc_astate_as4_aq,
	datac => pc_astate_as2_aq,
	datad => pc_astate_as6_aq,
	combout => pc_aWideOr10_a0_combout);

-- Location: LCCOMB_X36_Y28_N8
pc_aWideOr9 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aWideOr9_acombout = ((pc_astate_as1_aq) # ((pc_astate_as5_aq) # (pc_astate_as4_aq))) # (!pc_astate_as0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as0_aq,
	datab => pc_astate_as1_aq,
	datac => pc_astate_as5_aq,
	datad => pc_astate_as4_aq,
	combout => pc_aWideOr9_acombout);

-- Location: LCCOMB_X36_Y29_N18
pc_aWideOr8 : cycloneiii_lcell_comb
-- Equation(s):
-- pc_aWideOr8_acombout = (pc_astate_as3_aq) # ((pc_astate_as2_aq) # ((pc_astate_as1_aq) # (!pc_astate_as0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc_astate_as3_aq,
	datab => pc_astate_as2_aq,
	datac => pc_astate_as1_aq,
	datad => pc_astate_as0_aq,
	combout => pc_aWideOr8_acombout);

ww_chipher(0) <= chipher_a0_a_aoutput_o;

ww_chipher(1) <= chipher_a1_a_aoutput_o;

ww_chipher(2) <= chipher_a2_a_aoutput_o;

ww_chipher(3) <= chipher_a3_a_aoutput_o;

ww_chipher(4) <= chipher_a4_a_aoutput_o;

ww_chipher(5) <= chipher_a5_a_aoutput_o;

ww_chipher(6) <= chipher_a6_a_aoutput_o;

ww_chipher(7) <= chipher_a7_a_aoutput_o;

ww_chipher(8) <= chipher_a8_a_aoutput_o;

ww_chipher(9) <= chipher_a9_a_aoutput_o;

ww_chipher(10) <= chipher_a10_a_aoutput_o;

ww_chipher(11) <= chipher_a11_a_aoutput_o;

ww_chipher(12) <= chipher_a12_a_aoutput_o;

ww_chipher(13) <= chipher_a13_a_aoutput_o;

ww_chipher(14) <= chipher_a14_a_aoutput_o;

ww_chipher(15) <= chipher_a15_a_aoutput_o;

ww_chipher(16) <= chipher_a16_a_aoutput_o;

ww_chipher(17) <= chipher_a17_a_aoutput_o;

ww_chipher(18) <= chipher_a18_a_aoutput_o;

ww_chipher(19) <= chipher_a19_a_aoutput_o;

ww_chipher(20) <= chipher_a20_a_aoutput_o;

ww_chipher(21) <= chipher_a21_a_aoutput_o;

ww_chipher(22) <= chipher_a22_a_aoutput_o;

ww_chipher(23) <= chipher_a23_a_aoutput_o;

ww_chipher(24) <= chipher_a24_a_aoutput_o;

ww_chipher(25) <= chipher_a25_a_aoutput_o;

ww_chipher(26) <= chipher_a26_a_aoutput_o;

ww_chipher(27) <= chipher_a27_a_aoutput_o;

ww_chipher(28) <= chipher_a28_a_aoutput_o;

ww_chipher(29) <= chipher_a29_a_aoutput_o;

ww_chipher(30) <= chipher_a30_a_aoutput_o;

ww_chipher(31) <= chipher_a31_a_aoutput_o;

ww_chipher(32) <= chipher_a32_a_aoutput_o;

ww_chipher(33) <= chipher_a33_a_aoutput_o;

ww_chipher(34) <= chipher_a34_a_aoutput_o;

ww_chipher(35) <= chipher_a35_a_aoutput_o;

ww_chipher(36) <= chipher_a36_a_aoutput_o;

ww_chipher(37) <= chipher_a37_a_aoutput_o;

ww_chipher(38) <= chipher_a38_a_aoutput_o;

ww_chipher(39) <= chipher_a39_a_aoutput_o;

ww_chipher(40) <= chipher_a40_a_aoutput_o;

ww_chipher(41) <= chipher_a41_a_aoutput_o;

ww_chipher(42) <= chipher_a42_a_aoutput_o;

ww_chipher(43) <= chipher_a43_a_aoutput_o;

ww_chipher(44) <= chipher_a44_a_aoutput_o;

ww_chipher(45) <= chipher_a45_a_aoutput_o;

ww_chipher(46) <= chipher_a46_a_aoutput_o;

ww_chipher(47) <= chipher_a47_a_aoutput_o;

ww_chipher(48) <= chipher_a48_a_aoutput_o;

ww_chipher(49) <= chipher_a49_a_aoutput_o;

ww_chipher(50) <= chipher_a50_a_aoutput_o;

ww_chipher(51) <= chipher_a51_a_aoutput_o;

ww_chipher(52) <= chipher_a52_a_aoutput_o;

ww_chipher(53) <= chipher_a53_a_aoutput_o;

ww_chipher(54) <= chipher_a54_a_aoutput_o;

ww_chipher(55) <= chipher_a55_a_aoutput_o;

ww_chipher(56) <= chipher_a56_a_aoutput_o;

ww_chipher(57) <= chipher_a57_a_aoutput_o;

ww_chipher(58) <= chipher_a58_a_aoutput_o;

ww_chipher(59) <= chipher_a59_a_aoutput_o;

ww_chipher(60) <= chipher_a60_a_aoutput_o;

ww_chipher(61) <= chipher_a61_a_aoutput_o;

ww_chipher(62) <= chipher_a62_a_aoutput_o;

ww_chipher(63) <= chipher_a63_a_aoutput_o;

ww_chipher(64) <= chipher_a64_a_aoutput_o;

ww_chipher(65) <= chipher_a65_a_aoutput_o;

ww_chipher(66) <= chipher_a66_a_aoutput_o;

ww_chipher(67) <= chipher_a67_a_aoutput_o;

ww_chipher(68) <= chipher_a68_a_aoutput_o;

ww_chipher(69) <= chipher_a69_a_aoutput_o;

ww_chipher(70) <= chipher_a70_a_aoutput_o;

ww_chipher(71) <= chipher_a71_a_aoutput_o;

ww_chipher(72) <= chipher_a72_a_aoutput_o;

ww_chipher(73) <= chipher_a73_a_aoutput_o;

ww_chipher(74) <= chipher_a74_a_aoutput_o;

ww_chipher(75) <= chipher_a75_a_aoutput_o;

ww_chipher(76) <= chipher_a76_a_aoutput_o;

ww_chipher(77) <= chipher_a77_a_aoutput_o;

ww_chipher(78) <= chipher_a78_a_aoutput_o;

ww_chipher(79) <= chipher_a79_a_aoutput_o;

ww_chipher(80) <= chipher_a80_a_aoutput_o;

ww_chipher(81) <= chipher_a81_a_aoutput_o;

ww_chipher(82) <= chipher_a82_a_aoutput_o;

ww_chipher(83) <= chipher_a83_a_aoutput_o;

ww_chipher(84) <= chipher_a84_a_aoutput_o;

ww_chipher(85) <= chipher_a85_a_aoutput_o;

ww_chipher(86) <= chipher_a86_a_aoutput_o;

ww_chipher(87) <= chipher_a87_a_aoutput_o;

ww_chipher(88) <= chipher_a88_a_aoutput_o;

ww_chipher(89) <= chipher_a89_a_aoutput_o;

ww_chipher(90) <= chipher_a90_a_aoutput_o;

ww_chipher(91) <= chipher_a91_a_aoutput_o;

ww_chipher(92) <= chipher_a92_a_aoutput_o;

ww_chipher(93) <= chipher_a93_a_aoutput_o;

ww_chipher(94) <= chipher_a94_a_aoutput_o;

ww_chipher(95) <= chipher_a95_a_aoutput_o;

ww_chipher(96) <= chipher_a96_a_aoutput_o;

ww_chipher(97) <= chipher_a97_a_aoutput_o;

ww_chipher(98) <= chipher_a98_a_aoutput_o;

ww_chipher(99) <= chipher_a99_a_aoutput_o;

ww_chipher(100) <= chipher_a100_a_aoutput_o;

ww_chipher(101) <= chipher_a101_a_aoutput_o;

ww_chipher(102) <= chipher_a102_a_aoutput_o;

ww_chipher(103) <= chipher_a103_a_aoutput_o;

ww_chipher(104) <= chipher_a104_a_aoutput_o;

ww_chipher(105) <= chipher_a105_a_aoutput_o;

ww_chipher(106) <= chipher_a106_a_aoutput_o;

ww_chipher(107) <= chipher_a107_a_aoutput_o;

ww_chipher(108) <= chipher_a108_a_aoutput_o;

ww_chipher(109) <= chipher_a109_a_aoutput_o;

ww_chipher(110) <= chipher_a110_a_aoutput_o;

ww_chipher(111) <= chipher_a111_a_aoutput_o;

ww_chipher(112) <= chipher_a112_a_aoutput_o;

ww_chipher(113) <= chipher_a113_a_aoutput_o;

ww_chipher(114) <= chipher_a114_a_aoutput_o;

ww_chipher(115) <= chipher_a115_a_aoutput_o;

ww_chipher(116) <= chipher_a116_a_aoutput_o;

ww_chipher(117) <= chipher_a117_a_aoutput_o;

ww_chipher(118) <= chipher_a118_a_aoutput_o;

ww_chipher(119) <= chipher_a119_a_aoutput_o;

ww_chipher(120) <= chipher_a120_a_aoutput_o;

ww_chipher(121) <= chipher_a121_a_aoutput_o;

ww_chipher(122) <= chipher_a122_a_aoutput_o;

ww_chipher(123) <= chipher_a123_a_aoutput_o;

ww_chipher(124) <= chipher_a124_a_aoutput_o;

ww_chipher(125) <= chipher_a125_a_aoutput_o;

ww_chipher(126) <= chipher_a126_a_aoutput_o;

ww_chipher(127) <= chipher_a127_a_aoutput_o;

ww_round_m(0) <= round_m_a0_a_aoutput_o;

ww_round_m(1) <= round_m_a1_a_aoutput_o;

ww_round_m(2) <= round_m_a2_a_aoutput_o;

ww_round_m(3) <= round_m_a3_a_aoutput_o;

ww_en_t <= en_t_aoutput_o;

ww_en_r <= en_r_aoutput_o;

ww_en_c <= en_c_aoutput_o;

ww_en_ra <= en_ra_aoutput_o;

ww_en_rk2 <= en_rk2_aoutput_o;

ww_sel_m <= sel_m_aoutput_o;

ww_sel_m3 <= sel_m3_aoutput_o;

ww_state(0) <= state_a0_a_aoutput_o;

ww_state(1) <= state_a1_a_aoutput_o;

ww_state(2) <= state_a2_a_aoutput_o;
END structure;


