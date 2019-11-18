-- Quartus II VHDL Template
-- Dual-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
	port 
	(
		clk		: in std_logic;
		addr1	   : in std_logic_vector(7 downto 0);
		addr2	   : in std_logic_vector(7 downto 0);
		q1		   : out std_logic_vector(7 downto 0);
		q2		   : out std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of rom is
	-- Build a 2-D array type for the RoM
	subtype word_t is std_logic_vector(7 downto 0);
	type memory_t is array(255 downto 0) of word_t;
	
	signal rom : memory_t := (
			-- "1111_xxxx"
			 x"16", x"bb", x"54", x"b0", x"0f", x"2d", x"99", x"41", x"68", x"42", x"e6", x"bf", x"0d", x"89", x"a1", x"8c", 
			-- "1110_xxxx"
			 x"df", x"28", x"55", x"ce", x"e9", x"87", x"1e", x"9b", x"94", x"8e", x"d9", x"69", x"11", x"98", x"f8", x"e1", 
			-- "1101_xxxx"
			 x"9e", x"1d", x"c1", x"86", x"b9", x"57", x"35", x"61", x"0e", x"f6", x"03", x"48", x"66", x"b5", x"3e", x"70",
			-- "1100_xxxx"
			 x"8a", x"8b", x"bd", x"4b", x"1f", x"74", x"dd", x"e8", x"c6", x"b4", x"a6", x"1c", x"2e", x"25", x"78", x"ba",
			-- "1011_xxxx"
			 x"08", x"ae", x"7a", x"65", x"ea", x"f4", x"56", x"6c", x"a9", x"4e", x"d5", x"8d", x"6d", x"37", x"c8", x"e7",
			-- "1010_xxxx"
			 x"79", x"e4", x"95", x"91", x"62", x"ac", x"d3", x"c2", x"5c", x"24", x"06", x"49", x"0a", x"3a", x"32", x"e0",
			-- "1001_xxxx"
			 x"db", x"0b", x"5e", x"de", x"14", x"b8", x"ee", x"46", x"88", x"90", x"2a", x"22", x"dc", x"4f", x"81", x"60",
			-- "1000_xxxx"
			 x"73", x"19", x"5d", x"64", x"3d", x"7e", x"a7", x"c4", x"17", x"44", x"97", x"5f", x"ec", x"13", x"0c", x"cd",
			-- "0111_xxxx"
			 x"d2", x"f3", x"ff", x"10", x"21", x"da", x"b6", x"bc", x"f5", x"38", x"9d", x"92", x"8f", x"40", x"a3", x"51",
			-- "0110_xxxx"
			 x"a8", x"9f", x"3c", x"50", x"7f", x"02", x"f9", x"45", x"85", x"33", x"4d", x"43", x"fb", x"aa", x"ef", x"d0", 
			-- "0101_xxxx"
			 x"cf", x"58", x"4c", x"4a", x"39", x"be", x"cb", x"6a", x"5b", x"b1", x"fc", x"20", x"ed", x"00", x"d1", x"53",
			-- "0100_xxxx"
			 x"84", x"2f", x"e3", x"29", x"b3", x"d6", x"3b", x"52", x"a0", x"5a", x"6e", x"1b", x"1a", x"2c", x"83", x"09",
			-- "0011_xxxx"
			 x"75", x"b2", x"27", x"eb", x"e2", x"80", x"12", x"07", x"9a", x"05", x"96", x"18", x"c3", x"23", x"c7", x"04", 
			-- "0010_xxxx"
			 x"15", x"31", x"d8", x"71", x"f1", x"e5", x"a5", x"34", x"cc", x"f7", x"3f", x"36", x"26", x"93", x"fd", x"b7",
			-- "0001_xxxx"
			 x"c0", x"72", x"a4", x"9c", x"af", x"a2", x"d4", x"ad", x"f0", x"47", x"59", x"fa", x"7d", x"c9", x"82", x"ca",
			-- "0000_xxxx"
			 x"76", x"ab", x"d7", x"fe", x"2b", x"67", x"01", x"30", x"c5", x"6f", x"6b", x"f2", x"7b", x"77", x"7c", x"63" );

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			q1 <= rom(to_integer(unsigned(addr1)));
			q2 <= rom(to_integer(unsigned(addr2)));
		end if;
	end process;

end rtl;
