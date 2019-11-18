library ieee;
use ieee.std_logic_1164.all;

entity mixColumns_32b is
	port(
		word_state_in: in std_logic_vector(31 downto 0);
		word_state_out: out std_logic_vector(31 downto 0)
	);
end entity;

architecture rtl of mixColumns_32b is 
	signal t0, t1, t2, t3 : std_logic_vector(7 downto 0);
	signal r1, r2, r3, r4 : std_logic_vector(7 downto 0);
	signal g0, g1, g2, g3, g4, g6, g5, g7 : std_logic_vector(7 downto 0);
	
	component g_Mult is
		port(
			state_byte: in std_logic_vector(7 downto 0);
			a: in std_logic_vector(7 downto 0);
			b_out: out std_logic_vector(7 downto 0)
		);
	end component;
	
begin
		
		t0 <= word_state_in(31 downto 24);
		t1 <= word_state_in(23 downto 16);
		t2 <= word_state_in(15 downto 8);
		t3 <= word_state_in(7 downto 0);
		
		m0 : g_Mult
			port map (state_byte => t0, a => "00000010", b_out => g0);
		
		m1 : g_Mult
			port map (state_byte => t1, a => "00000011", b_out => g1);
			
		m2 : g_Mult
			port map (state_byte => t1, a => "00000010", b_out => g2);
			
		m3 : g_Mult
			port map (state_byte => t2, a => "00000011", b_out => g3);
			
		m4 : g_Mult
			port map (state_byte => t2, a => "00000010", b_out => g4);
		
		m5 : g_Mult
			port map (state_byte => t3, a => "00000011", b_out => g5);
		
		m6 : g_Mult
			port map (state_byte => t0, a => "00000011", b_out => g6);
			
		m7 : g_Mult
			port map (state_byte => t3, a => "00000010", b_out => g7);
			
			
		r1 <= g0 xor g1 xor t2 xor t3; -- a00
		r2 <= t0 xor g2 xor g3 xor t3; -- a10
		r3 <= t0 xor t1 xor g4 xor g5; -- a20
		r4 <= g6 xor t1 xor t2 xor g7; -- a30
	
		word_state_out <= r1&r2&r3&r4;
		
end rtl;