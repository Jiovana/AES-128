-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	port(
		clk		  : in std_logic;
		reset	  : in std_logic;
		enable	  : in std_logic;
		q		  : out std_logic_vector(3 downto 0)
	);
end entity;

architecture rtl of counter is
	signal   cnt : integer range 0 to 11;

begin

	process (clk)
		begin
		if (rising_edge(clk)) then
			if reset = '1' then
				-- Reset the counter to 0
				cnt <= 0;
			elsif enable = '1' then
				-- Increment the counter if counting is enabled			   
				cnt <= cnt + 1;
			end if;
		end if;	
	end process;
		-- Output the current count
		q <= std_logic_vector(to_signed(cnt,4));

end rtl;
