library ieee;
use ieee.std_logic_1164.all;

entity g_Mult is
	port(
		state_byte: in std_logic_vector(7 downto 0);
		a: in std_logic_vector(7 downto 0);
		b_out: out std_logic_vector(7 downto 0)
	);
end entity;

architecture rtl of g_Mult is 
	signal and_mask : std_logic_vector(7 downto 0);
	
begin
		and_mask <= state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7);	
		
		process (a, state_byte, and_mask)
			begin
			case a(3 downto 0) is
				when "0001" => b_out <= state_byte;
			
				when "0010" => b_out <= state_byte(6 downto 0) & '0' xor (("00011011") and and_mask);
			
				when "0011" => b_out <= state_byte(6 downto 0) & '0' xor (("00011011") and and_mask) xor state_byte;
			
				when others => b_out <= (others => '0');
			end case;
		end process;
		
end rtl;