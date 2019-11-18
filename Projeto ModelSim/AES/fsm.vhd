-- Quartus II VHDL Template
-- Four-State Mealy State Machine

-- A Mealy machine has outputs that depend on both the state and
-- the inputs.	When the inputs change, the outputs are updated
-- immediately, without waiting for a clock edge.  The outputs
-- can be written more than once per state or per clock cycle.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
	port(
		clk	 : in	std_logic;
		reset	 : in	std_logic;
		round  : in std_logic_vector(3 downto 0);
		
		enable_top 		: out std_logic;
		enable_regkey 	: out std_logic;
		enable_regadd  : out std_logic;
		enable_count 	: out std_logic;
		enable_regk2   : out std_logic;
		sel_mux 			: out std_logic;
		sel_mux3			: out std_logic;
		reset_top 		: out std_logic;
		state_out 		: out std_logic_vector(2 downto 0)
	);

end entity;

architecture rtl of fsm is
	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7);
	-- Register to hold the current state
	signal state : state_type;
	signal temp : std_logic_vector(2 downto 0);

begin
	process (clk, reset)
	begin
		if (rising_edge(clk)) then
			if reset = '1' then
				state <= s0;
			else 
				case state is
					when s0=>
							state <= s1;							
					when s1=>
							state <= s2;							
					when s2=>
							state <= s3;							
					when s3=>
							state <= s4;							
					when s4=>
						if (round = "0001") then
							state <= s6;
						else
							state <= s5;
						end if;
					when s5 => 
							state <= s6;
					when s6=>
						if (round = "1010") then
							state <= s7;							
						else
							state <= s2;							
						end if;						
					when s7 =>
							state <= s7;					
				end case;
			end if;
		end if;
	end process;

	process (state, round)
	begin
			case state is
				when s0=>
					reset_top 		<= '1';
					enable_regkey 	<= '1';
					enable_top 		<= '0';
					enable_count 	<= '0';
					enable_regadd  <= '0';
					enable_regk2   <= '0';
					sel_mux 			<= '0';
					sel_mux3			<= '0';
					temp <= "000";
				when s1=>
					reset_top  		<= '0';
					enable_regkey 	<= '1';
					enable_top 		<= '1';
					enable_regadd  <= '1';
					enable_count 	<= '0';
					enable_regk2   <= '0';
					sel_mux 			<= '0';
					sel_mux3			<= '0';
					temp <= "001";
				when s2=>
					if (round = "0000") then
						reset_top 		<= '0';
						enable_regkey 	<= '0';
						enable_top 		<= '1';
						enable_regadd  <= '1';
						enable_count 	<= '1';
						enable_regk2   <= '0';
						sel_mux 			<= '0';
						sel_mux3			<= '0';
					else
						reset_top 		<= '0';
						enable_regkey 	<= '0';
						enable_top 		<= '1';
						enable_regadd  <= '1';
						enable_count 	<= '1';
						enable_regk2   <= '0';
						sel_mux 			<= '1';
						sel_mux3			<= '0';
					end if;
					temp <= "010";
				when s3=>
					if (round = "1010") then 
						reset_top 		<= '0';
						enable_regkey 	<= '0';
						enable_top 		<= '1';
						enable_regadd  <= '0';
						enable_count 	<= '0';
						enable_regk2   <= '1';
						sel_mux 			<= '1';
						sel_mux3			<= '1';					
					else
						reset_top 		<= '0';
						enable_regkey 	<= '0';
						enable_top 		<= '1';
						enable_regadd  <= '0';
						enable_count 	<= '0';
						enable_regk2   <= '1';
						sel_mux 			<= '1';
						sel_mux3			<= '0';
					end if;
					temp <= "011";
				when s4=>
					if (round = "1010") then 
						reset_top 		<= '0';
						enable_regkey 	<= '1';
						enable_top 		<= '1';
						enable_regadd  <= '0';
						enable_count 	<= '0';
						enable_regk2   <= '0';
						sel_mux 			<= '1';
						sel_mux3			<= '1';					
					else
						reset_top 		<= '0';
						enable_regkey 	<= '1';
						enable_top 		<= '1';
						enable_regadd  <= '0';
						enable_count 	<= '0';
						enable_regk2   <= '0';
						sel_mux 			<= '1';
						sel_mux3			<= '0';
					end if;	
					temp <= "100";
				when s5=>
					if (round = "1010") then 
						reset_top 		<= '0';
						enable_regkey 	<= '0';
						enable_top 		<= '1';
						enable_regadd  <= '0';
						enable_count 	<= '0';
						enable_regk2   <= '0';
						sel_mux 			<= '1';
						sel_mux3			<= '1';					
					else
						reset_top 		<= '0';
						enable_regkey 	<= '0';
						enable_top 		<= '1';
						enable_regadd  <= '0';
						enable_count 	<= '0';
						enable_regk2   <= '0';
						sel_mux 			<= '1';
						sel_mux3			<= '0';
					end if;	
					temp <= "101";
				when s6=>
					if (round = "1010") then 
						reset_top 		<= '0';
						enable_regkey 	<= '0';
						enable_top 		<= '1';
						enable_regadd  <= '1';
						enable_count 	<= '0';
						enable_regk2   <= '0';
						sel_mux 			<= '1';
						sel_mux3			<= '1';
					else
						reset_top 		<= '0';
						enable_regkey 	<= '0';
						enable_top 		<= '1';
						enable_regadd  <= '0';
						enable_count 	<= '0';
						enable_regk2   <= '0';
						sel_mux 			<= '1';
						sel_mux3			<= '0';
					end if;	
					temp <= "110";
				when s7=>
					reset_top 		<= '0';
					enable_regkey 	<= '0';
					enable_top 		<= '0';
					enable_regadd  <= '0';
					enable_count 	<= '0';
					enable_regk2   <= '0';
					sel_mux 			<= '0';
					sel_mux3			<= '0';
					temp <= "111";				
			end case;
	end process;
	state_out <= temp;
end rtl;
