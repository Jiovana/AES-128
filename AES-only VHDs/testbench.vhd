library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is

end entity;


architecture rtl of testbench is

component aes is
	port (
		osc_clk : in std_logic;
		reset_n : in std_logic;
		
		chipher : out std_logic_vector(127 downto 0)
--		round_m : out std_logic_vector(3 downto 0);
--		en_t : out std_logic;
--		en_r : out std_logic;
--		en_c : out std_logic;
--		en_ra  : out std_logic;
--		en_rk2 : out std_logic;
--		sel_m : out std_logic;
--		sel_m3 : out std_logic;
--		state	: out std_logic_vector(2 downto 0)
	);
end component;
	
--	signal en_t_sg, en_r_sg, en_c_sg, en_ra_sg, en_rk2_sg, sel_m_sg, sel_m3_sg : std_logic;
	signal clk_sg : std_logic := '0';
	signal reset_sg : std_logic := '1';
	signal chipher_sg : std_logic_vector(127 downto 0);
--	signal round_sg : std_logic_vector(3 downto 0);
--	signal state_sg : std_logic_vector(2 downto 0);

begin 
--	tudo : aes
--		port map ( osc_clk => clk_sg, reset_n => reset_sg, chipher => chipher_sg, round_m => round_sg,
--					  en_t => en_t_sg, en_r => en_r_sg, en_c => en_c_sg, en_ra => en_ra_sg, en_rk2 => en_rk2_sg,
--					  sel_m => sel_m_sg, sel_m3 => sel_m3_sg, state => state_sg );

tudo : aes
		port map ( osc_clk => clk_sg, reset_n => reset_sg, chipher => chipher_sg );
					  
	
	clk_sg <= not clk_sg after 2.5 ns;
	
	reset_sg <= '0' after 16 ns;
	
	

end rtl;