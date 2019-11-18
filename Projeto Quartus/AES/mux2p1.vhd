library ieee;
use ieee.std_logic_1164.all;

entity mux2p1 is
	port (
		a	   : in std_logic_vector  (127 downto 0);
		b	   : in std_logic_vector  (127 downto 0);
		sel   : in std_logic;
		result : out std_logic_vector (127 downto 0)
	);
end entity;

architecture rtlBSN of mux2p1 is
begin

	result <= a when sel = '0' else  b;

end rtlBSN;
