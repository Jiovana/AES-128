library ieee;
use ieee.std_logic_1164.all;

entity reg_128b is
	port (
		clk		: in std_logic;
		enable	: in std_logic;
		d	      : in std_logic_vector(127 downto 0);
		q			: out std_logic_vector(127 downto 0)
	);

end entity;

architecture rtl of reg_128b is

begin

	process (clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				q <= d;
			end if;
		end if;
	end process;

end rtl;
