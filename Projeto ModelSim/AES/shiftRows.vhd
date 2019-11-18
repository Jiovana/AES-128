library ieee;
use ieee.std_logic_1164.all;

entity shiftRows is
	port(
		state_in: in std_logic_vector(127 downto 0);
		state_out: out std_logic_vector(127 downto 0)
	);
end entity;

architecture rtl of shiftRows is 
	signal r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16 : std_logic_vector(7 downto 0);
	
begin	
	r1  <= state_in(127 downto 120); -- a00
	r2  <= state_in(87 downto 80); -- a10
	r3  <= state_in(47 downto 40);-- a20
	r4  <= state_in(7 downto 0);-- a30
	
	r5  <= state_in(95 downto 88);-- a01
	r6  <= state_in(55 downto 48);-- a11
	r7  <= state_in(15 downto 8);-- a21
	r8  <= state_in(103 downto 96);-- a31
	
	r9  <= state_in(63 downto 56);-- a02
	r10 <= state_in(23 downto 16);-- a12
	r11 <= state_in(111 downto 104);-- a22
	r12 <= state_in(71 downto 64);-- a32
	
	r13 <= state_in(31 downto 24);-- a03
	r14 <= state_in(119 downto 112); -- a13
	r15 <= state_in(79 downto 72);-- a23
	r16 <= state_in(39 downto 32);-- a33
		
	state_out <= r1&r2&r3&r4&r5&r6&r7&r8&r9&r10&r11&r12&r13&r14&r15&r16;
end rtl;