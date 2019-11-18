library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity roundKeyGen is
	port(
		roundkey_in : in std_logic_vector(127 downto 0);
		round_num : in std_logic_vector(3 downto 0);
		clk_key : in std_logic; 
		enable_key : in std_logic;
		roundkey_out : out std_logic_vector(127 downto 0)
	);
end entity;

architecture rtl of roundKeyGen is
	signal temp : std_logic_vector(127 downto 0);
	signal b0, b1, b2, b3, r0, r1, r2, r3 , outMux: std_logic_vector (7 downto 0);
	signal outreg, x : std_logic_vector(31 downto 0);
	
	component rom is
		port (
			clk		: in std_logic;
			addr1	   : in std_logic_vector(7 downto 0);
			addr2	   : in std_logic_vector(7 downto 0);
			q1		   : out std_logic_vector(7 downto 0);
			q2		   : out std_logic_vector(7 downto 0)
		);
	end component;
	
	component key_mux is
		port (
			round  : std_logic_vector(3 downto 0);
			result : out std_logic_vector (7 downto 0)
		);
	end component;
	
	component reg_32b is
		port(
			clk		: in std_logic;
			enable	: in std_logic;
			d	      : in std_logic_vector(31 downto 0);
			q			: out std_logic_vector(31 downto 0)
		);
	end component;
	
begin

	reg: reg_32b
		port map ( clk => clk_key, enable => enable_key, d => x , q => outreg);
	

	b0 <= roundkey_in(31 downto 24);
	b1 <= roundkey_in(23 downto 16);
	b2 <= roundkey_in(15 downto 8);
	b3 <= roundkey_in(7 downto 0);

	mem0 : rom 
		port map( clk => clk_key, addr1 => b1, addr2 => b2, q1 => r1, q2 => r2 );
	
	mem1 : rom 
		port map( clk => clk_key, addr1 => b3, addr2 => b0, q1 => r3, q2 => r0 );
		
	mux : key_mux
		port map (round => round_num, result => outMux);
		
		
--	temp(127 downto 120) <= r1 xor outMux xor roundkey_in(127 downto 120);
--	temp(119 downto 112) <= r2 xor roundkey_in(119 downto 112);
--	temp(111 downto 104) <= r3 xor roundkey_in(111 downto 104);
--	temp(103 downto 96)  <= r0 xor roundkey_in(103 downto 96);

	x(31 downto 24) <= r1 xor outMux xor roundkey_in(127 downto 120);
	x(23 downto 16) <= r2 xor roundkey_in(119 downto 112);
	x(15 downto 8) <= r3 xor roundkey_in(111 downto 104);
	x(7 downto 0)  <= r0 xor roundkey_in(103 downto 96);
	
--	temp(95 downto 64)   <= temp(127 downto 96) xor roundkey_in(95 downto 64);
--	temp(63 downto 32)   <= temp(95 downto 64) xor roundkey_in(63 downto 32);
--	temp(31 downto 0)    <= temp(63 downto 32) xor roundkey_in(31 downto 0);

	temp(95 downto 64)   <= outreg xor roundkey_in(95 downto 64);
	temp(63 downto 32)   <= temp(95 downto 64) xor roundkey_in(63 downto 32);
	temp(31 downto 0)    <= temp(63 downto 32) xor roundkey_in(31 downto 0);
	
	roundkey_out <= outreg&temp(95 downto 0);
	
	
end rtl;