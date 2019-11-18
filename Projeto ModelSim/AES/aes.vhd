library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aes is
	port (
		osc_clk : in std_logic;
		reset_n : in std_logic;
		chipher : out std_logic_vector(127 downto 0);
		round_m : out std_logic_vector(3 downto 0);
		en_t : out std_logic;
		en_r : out std_logic;
		en_c : out std_logic;
		en_ra  : out std_logic;
		en_rk2 : out std_logic;
		sel_m : out std_logic;
		sel_m3 : out std_logic;
		state	: out std_logic_vector(2 downto 0)
	);
end entity;

architecture rtl of aes is

component operational is
	port(
		clk_top	 : in std_logic;
		reset_top : in std_logic;
		enable_top : in std_logic;
		enable_regkey : in std_logic;
		enable_count : in std_logic;
		enable_regadd  : in std_logic;
		enable_regk2 : in std_logic;
		selMux : in std_logic;
		selMux3 : in std_logic;
		state : in std_logic_vector(127 downto 0);
		key   : in std_logic_vector(127 downto 0);
		
		round_top : out std_logic_vector(3 downto 0);
		chipher_text : out std_logic_vector(127 downto 0)
	);
end component;

component fsm is
	port(
		clk	 : in	std_logic;
		reset	 : in	std_logic;
		round  : in std_logic_vector(3 downto 0);
		
		enable_top 		: out std_logic;
		enable_regkey 	: out std_logic;
		enable_count 	: out std_logic;
		enable_regadd  : out std_logic;
		enable_regk2   : out std_logic;
		sel_mux 			: out std_logic;
		sel_mux3			: out std_logic;
		reset_top 		: out std_logic;
		state_out 		: out std_logic_vector(2 downto 0)
	);
end component;

	signal en_top_c, en_count_c, en_reg_c, en_Reg_a, sel_mux_c, sel_mux3_c, rst_c, en_reg_k2 : std_logic;
	signal round_c : std_logic_vector(3 downto 0);
	--signal state_c : std_logic_vector(127 downto 0) := (x"6bc1bee22e409f96e93d7e117393172a");
	--signal key_c   : std_logic_vector(127 downto 0) := (x"2b7e151628aed2a6abf7158809cf4f3c");
	signal state_c : std_logic_vector(127 downto 0) := (x"3243f6a8885a308d313198a2e0370734");
	signal key_c   : std_logic_vector(127 downto 0) := (x"2b7e151628aed2a6abf7158809cf4f3c");
	--signal state_c : std_logic_vector(127 downto 0) := (x"54776F204F6E65204E696E652054776F");
	--signal key_c   : std_logic_vector(127 downto 0) := (x"5468617473206D79204B756E67204675");
	signal aux : std_logic_vector(127 downto 0);
	signal stt : std_logic_vector(2 downto 0);
	
begin
	pc : fsm 
		port map (clk => osc_clk, reset => reset_n, round => round_c, 
					 enable_top => en_top_c, enable_regkey => en_reg_c, enable_regadd => en_Reg_a, enable_count => en_count_c,
					 enable_regk2 => en_reg_k2, sel_mux => sel_mux_c, sel_mux3 => sel_mux3_c, reset_top => rst_c, state_out => stt);
		
	po : operational
		port map (clk_top => osc_clk, reset_top => rst_c, enable_top => en_top_c, enable_regkey => en_reg_c,
					 enable_count => en_count_c, enable_regadd => en_Reg_a, enable_regk2 => en_reg_k2, selMux => sel_mux_c, selMux3 => sel_mux3_c, 
					 state => state_c, key => key_c, round_top => round_c, chipher_text => aux );

--	po : operational
--		port map (clk_top => osc_clk, reset_top => rst_c, enable_top => en_t, enable_regkey => en_r,
--					 enable_count => en_c, enable_regadd => en_ra, enable_regk2 => en_rk2, selMux => sel_m, selMux3 => sel_m3, 
--					 state => state_c, key => key_c, round_top => round_c, chipher_text => aux );

	chipher <= aux;
	round_m <= round_c;
	en_t <= en_top_c;
	en_r <= en_reg_c;
	en_c <= en_count_c;
	en_ra <= en_Reg_a;
	en_rk2 <= en_reg_k2;
	sel_m <= sel_mux_c;
	sel_m3 <= sel_mux3_c;
	state <= stt;
end rtl;