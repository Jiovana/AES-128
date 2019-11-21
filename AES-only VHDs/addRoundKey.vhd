library ieee;
use ieee.std_logic_1164.all;

entity addRoundKey is
	port(
		state_in: in std_logic_vector(127 downto 0);
		round_key: in std_logic_vector(127 downto 0);
		state_out: out std_logic_vector(127 downto 0)
	);
end entity;

architecture rtl of addRoundKey is 
	
begin
	state_out <= state_in xor round_key;
end rtl;