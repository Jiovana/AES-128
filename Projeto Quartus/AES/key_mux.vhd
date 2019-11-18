library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity key_mux is
	port 
	(
		round  : in std_logic_vector(3 downto 0);
		result : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of key_mux is
begin
	
	with to_integer(unsigned(round)) select
	result <= "00000001" when 1,
				 "00000010" when 2,
				 "00000100" when 3,
				 "00001000" when 4,
				 "00010000" when 5,
				 "00100000" when 6,
				 "01000000" when 7,
				 "10000000" when 8,
				 "00011011" when 9,
				 "00110110" when 10,
				 "00000000" when others;
				 

end rtl;
