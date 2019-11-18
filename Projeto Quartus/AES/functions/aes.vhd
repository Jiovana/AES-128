library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

package functions is
	--declaraçao das funções que serão usadas ao longo da execução
	function sbox (input : std_logic_vector(7 downto 0)) return std_logic_vector;
	function inv_sbox (input : std_logic_vector(7 downto 0)) return std_logic_vector;
	function sub_bytes (state : std_logic_vector(127 downto 0)) return std_logic_vector;
	function inv_sub_bytes (state : std_logic_vector(127 downto 0)) return std_logic_vector;
	function shift_rows (state : std_logic_vector(127 downto 0)) return std_logic_vector;
	function inv_shift_rows (state : std_logic_vector(127 downto 0)) return std_logic_vector;
	function g_mult (a, state_byte : std_logic_vector(7 downto 0)) return std_logic_vector; 
	function inv_g_mult (a, state_byte : std_logic_vector(7 downto 0)) return std_logic_vector; 
	function mix_columns (state : std_logic_vector(127 downto 0)) return std_logic_vector;
	function inv_mix_columns(state : std_logic_vector(127 downto 0)) return std_logic_vector;
	function add_round_key (state, roundkey : std_logic_vector(127 downto 0)) return std_logic_vector;
	function generate_round_key(roundkey : std_logic_vector(127 downto 0); round : integer range 0 to 10) return std_logic_vector;

end package functions;

package body functions is
	--S-Box recebe um byte de entrada e o mapeia para outro byte de acordo com a tabela	
	-- pré definida chamada de 'substitution box', uma matriz 16x16 em hexa.
	function sbox (input : std_logic_vector(7 downto 0)) return std_logic_vector is
		variable temp : std_logic_vector(7 downto 0); -- variavel temporaria pra armazenar os valores
	begin 
		case input is
			-- "0000_xxxx"
			when x"00" => temp := x"63";
			when x"01" => temp := x"7c";
			when x"02" => temp := x"77";
			when x"03" => temp := x"7b";
			when x"04" => temp := x"f2";
			when x"05" => temp := x"6b";
			when x"06" => temp := x"6f";
			when x"07" => temp := x"c5";
			when x"08" => temp := x"30";
			when x"09" => temp := x"01";
			when x"0a" => temp := x"67";
			when x"0b" => temp := x"2b";
			when x"0c" => temp := x"fe";
			when x"0d" => temp := x"d7";
			when x"0e" => temp := x"ab";
			when x"0f" => temp := x"76"; 
			-- "0001_xxxx"
			when x"10" => temp := x"ca";
			when x"11" => temp := x"82";
			when x"12" => temp := x"c9";
			when x"13" => temp := x"7d";
			when x"14" => temp := x"fa";
			when x"15" => temp := x"59";
			when x"16" => temp := x"47";
			when x"17" => temp := x"f0";
			when x"18" => temp := x"ad";
			when x"19" => temp := x"d4";
			when x"1a" => temp := x"a2";
			when x"1b" => temp := x"af";
			when x"1c" => temp := x"9c";
			when x"1d" => temp := x"a4";
			when x"1e" => temp := x"72";
			when x"1f" => temp := x"c0"; 
			-- "0010_xxxx"
			when x"20" => temp := x"b7";
			when x"21" => temp := x"fd";
			when x"22" => temp := x"93";
			when x"23" => temp := x"26";
			when x"24" => temp := x"36";
			when x"25" => temp := x"3f";
			when x"26" => temp := x"f7";
			when x"27" => temp := x"cc";
			when x"28" => temp := x"34";
			when x"29" => temp := x"a5";
			when x"2a" => temp := x"e5";
			when x"2b" => temp := x"f1";
			when x"2c" => temp := x"71";
			when x"2d" => temp := x"d8";
			when x"2e" => temp := x"31";
			when x"2f" => temp := x"15";
			-- "0011_xxxx"
			when x"30" => temp := x"04";
			when x"31" => temp := x"c7";
			when x"32" => temp := x"23";
			when x"33" => temp := x"c3";
			when x"34" => temp := x"18";
			when x"35" => temp := x"96";
			when x"36" => temp := x"05";
			when x"37" => temp := x"9a";
			when x"38" => temp := x"07";
			when x"39" => temp := x"12";
			when x"3a" => temp := x"80";
			when x"3b" => temp := x"e2";
			when x"3c" => temp := x"eb";
			when x"3d" => temp := x"27";
			when x"3e" => temp := x"b2";
			when x"3f" => temp := x"75";
			-- "0100_xxxx"
			when x"40" => temp := x"09";
			when x"41" => temp := x"83";
			when x"42" => temp := x"2c";
			when x"43" => temp := x"1a";
			when x"44" => temp := x"1b";
			when x"45" => temp := x"6e";
			when x"46" => temp := x"5a";
			when x"47" => temp := x"a0";
			when x"48" => temp := x"52";
			when x"49" => temp := x"3b";
			when x"4a" => temp := x"d6";
			when x"4b" => temp := x"b3";
			when x"4c" => temp := x"29";
			when x"4d" => temp := x"e3";
			when x"4e" => temp := x"2f";
			when x"4f" => temp := x"84";
			-- "0101_xxxx"
			when x"50" => temp := x"53";
			when x"51" => temp := x"d1";
			when x"52" => temp := x"00";
			when x"53" => temp := x"ed";
			when x"54" => temp := x"20";
			when x"55" => temp := x"fc";
			when x"56" => temp := x"b1";
			when x"57" => temp := x"5b";
			when x"58" => temp := x"6a";
			when x"59" => temp := x"cb";
			when x"5a" => temp := x"be";
			when x"5b" => temp := x"39";
			when x"5c" => temp := x"4a";
			when x"5d" => temp := x"4c";
			when x"5e" => temp := x"58";
			when x"5f" => temp := x"cf";
			-- "0110_xxxx"
			when x"60" => temp := x"d0";
			when x"61" => temp := x"ef";
			when x"62" => temp := x"aa";
			when x"63" => temp := x"fb";
			when x"64" => temp := x"43";
			when x"65" => temp := x"4d";
			when x"66" => temp := x"33";
			when x"67" => temp := x"85";
			when x"68" => temp := x"45";
			when x"69" => temp := x"f9";
			when x"6a" => temp := x"02";
			when x"6b" => temp := x"7f";
			when x"6c" => temp := x"50";
			when x"6d" => temp := x"3c";
			when x"6e" => temp := x"9f";
			when x"6f" => temp := x"a8";
			-- "0111_xxxx"
			when x"70" => temp := x"51";
			when x"71" => temp := x"a3";
			when x"72" => temp := x"40"; 
			when x"73" => temp := x"8f"; 
			when x"74" => temp := x"92"; 
			when x"75" => temp := x"9d"; 
			when x"76" => temp := x"38"; 
			when x"77" => temp := x"f5"; 
			when x"78" => temp := x"bc"; 
			when x"79" => temp := x"b6"; 
			when x"7a" => temp := x"da"; 
			when x"7b" => temp := x"21"; 
			when x"7c" => temp := x"10"; 
			when x"7d" => temp := x"ff"; 
			when x"7e" => temp := x"f3"; 
			when x"7f" => temp := x"d2";
			-- "1000_xxxx"
			when x"80" => temp := x"cd";
			when x"81" => temp := x"0c";
			when x"82" => temp := x"13";
			when x"83" => temp := x"ec";
			when x"84" => temp := x"5f";
			when x"85" => temp := x"97";
			when x"86" => temp := x"44";
			when x"87" => temp := x"17";
			when x"88" => temp := x"c4";
			when x"89" => temp := x"a7";
			when x"8a" => temp := x"7e";
			when x"8b" => temp := x"3d";
			when x"8c" => temp := x"64";
			when x"8d" => temp := x"5d";
			when x"8e" => temp := x"19";
			when x"8f" => temp := x"73";
			-- "1001_xxxx"
			when x"90" => temp := x"60";
			when x"91" => temp := x"81";
			when x"92" => temp := x"4f";
			when x"93" => temp := x"dc";
			when x"94" => temp := x"22";
			when x"95" => temp := x"2a"; 
			when x"96" => temp := x"90"; 
			when x"97" => temp := x"88"; 
			when x"98" => temp := x"46"; 
			when x"99" => temp := x"ee"; 
			when x"9a" => temp := x"b8"; 
			when x"9b" => temp := x"14"; 
			when x"9c" => temp := x"de"; 
			when x"9d" => temp := x"5e"; 
			when x"9e" => temp := x"0b"; 
			when x"9f" => temp := x"db"; 
			-- "1010_xxxx"
			when x"a0" => temp := x"e0";
			when x"a1" => temp := x"32";
			when x"a2" => temp := x"3a";
			when x"a3" => temp := x"0a";
			when x"a4" => temp := x"49";
			when x"a5" => temp := x"06";
			when x"a6" => temp := x"24";
			when x"a7" => temp := x"5c";
			when x"a8" => temp := x"c2";
			when x"a9" => temp := x"d3";
			when x"aa" => temp := x"ac";
			when x"ab" => temp := x"62";
			when x"ac" => temp := x"91";
			when x"ad" => temp := x"95";
			when x"ae" => temp := x"e4";
			when x"af" => temp := x"79";
			-- "1011_xxxx"
			when x"b0" => temp := x"e7"; 
			when x"b1" => temp := x"c8"; 
			when x"b2" => temp := x"37"; 
			when x"b3" => temp := x"6d"; 
			when x"b4" => temp := x"8d"; 
			when x"b5" => temp := x"d5"; 
			when x"b6" => temp := x"4e"; 
			when x"b7" => temp := x"a9"; 
			when x"b8" => temp := x"6c"; 
			when x"b9" => temp := x"56"; 
			when x"ba" => temp := x"f4"; 
			when x"bb" => temp := x"ea"; 
			when x"bc" => temp := x"65"; 
			when x"bd" => temp := x"7a"; 
			when x"be" => temp := x"ae"; 
			when x"bf" => temp := x"08";
			-- "1100_xxxx"
			when x"c0" => temp := x"ba"; 
			when x"c1" => temp := x"78"; 
			when x"c2" => temp := x"25"; 
			when x"c3" => temp := x"2e"; 
			when x"c4" => temp := x"1c"; 
			when x"c5" => temp := x"a6"; 
			when x"c6" => temp := x"b4"; 
			when x"c7" => temp := x"c6"; 
			when x"c8" => temp := x"e8"; 
			when x"c9" => temp := x"dd"; 
			when x"ca" => temp := x"74"; 
			when x"cb" => temp := x"1f"; 
			when x"cc" => temp := x"4b"; 
			when x"cd" => temp := x"bd"; 
			when x"ce" => temp := x"8b"; 
			when x"cf" => temp := x"8a"; 
			-- "1101_xxxx"
			when x"d0" => temp := x"70"; 
			when x"d1" => temp := x"3e"; 
			when x"d2" => temp := x"b5"; 
			when x"d3" => temp := x"66"; 
			when x"d4" => temp := x"48"; 
			when x"d5" => temp := x"03"; 
			when x"d6" => temp := x"f6"; 
			when x"d7" => temp := x"0e"; 
			when x"d8" => temp := x"61"; 
			when x"d9" => temp := x"35"; 
			when x"da" => temp := x"57";
			when x"db" => temp := x"b9"; 
			when x"dc" => temp := x"86"; 
			when x"dd" => temp := x"c1"; 
			when x"de" => temp := x"1d"; 
			when x"df" => temp := x"9e"; 
			-- "1110_xxxx"
			when x"e0" => temp := x"e1"; 
			when x"e1" => temp := x"f8"; 
			when x"e2" => temp := x"98"; 
			when x"e3" => temp := x"11"; 
			when x"e4" => temp := x"69"; 
			when x"e5" => temp := x"d9"; 
			when x"e6" => temp := x"8e"; 
			when x"e7" => temp := x"94"; 
			when x"e8" => temp := x"9b"; 
			when x"e9" => temp := x"1e"; 
			when x"ea" => temp := x"87"; 
			when x"eb" => temp := x"e9"; 
			when x"ec" => temp := x"ce"; 
			when x"ed" => temp := x"55"; 
			when x"ee" => temp := x"28"; 
			when x"ef" => temp := x"df";
			-- "1111_xxxx"
			when x"f0" => temp := x"8c";
			when x"f1" => temp := x"a1";
			when x"f2" => temp := x"89";
			when x"f3" => temp := x"0d";
			when x"f4" => temp := x"bf";
			when x"f5" => temp := x"e6";
			when x"f6" => temp := x"42";
			when x"f7" => temp := x"68";
			when x"f8" => temp := x"41";
			when x"f9" => temp := x"99";
			when x"fa" => temp := x"2d";
			when x"fb" => temp := x"0f";
			when x"fc" => temp := x"b0";
			when x"fd" => temp := x"54";
			when x"fe" => temp := x"bb";
			when x"ff" => temp := x"16";
			-- default
			when others => null;
			end case;
		return temp;
		
	end function sbox;
	
	function inv_sbox (input : std_logic_vector(7 downto 0)) return std_logic_vector is
		variable temp : std_logic_vector(7 downto 0);
	begin
		case input is
			-- "0000_xxxx"
			when x"00" => temp := x"52"; 
			when x"01" => temp := x"09"; 
			when x"02" => temp := x"6a"; 
			when x"03" => temp := x"d5"; 
			when x"04" => temp := x"30"; 
			when x"05" => temp := x"36"; 
			when x"06" => temp := x"a5"; 
			when x"07" => temp := x"38"; 
			when x"08" => temp := x"bf"; 
			when x"09" => temp := x"40"; 
			when x"0a" => temp := x"a3"; 
			when x"0b" => temp := x"9e"; 
			when x"0c" => temp := x"81"; 
			when x"0d" => temp := x"f3"; 
			when x"0e" => temp := x"d7"; 
			when x"0f" => temp := x"fb"; 
			-- "0001_xxxx"
			when x"10" => temp := x"7c"; 
			when x"11" => temp := x"e3"; 
			when x"12" => temp := x"39"; 
			when x"13" => temp := x"82"; 
			when x"14" => temp := x"9b"; 
			when x"15" => temp := x"2f"; 
			when x"16" => temp := x"ff"; 
			when x"17" => temp := x"87"; 
			when x"18" => temp := x"34"; 
			when x"19" => temp := x"8e"; 
			when x"1a" => temp := x"43"; 
			when x"1b" => temp := x"44"; 
			when x"1c" => temp := x"c4"; 
			when x"1d" => temp := x"de"; 
			when x"1e" => temp := x"e9"; 
			when x"1f" => temp := x"cb"; 
			-- "0010_xxxx"
			when x"20" => temp := x"54";
			when x"21" => temp := x"7b";
			when x"22" => temp := x"94";
			when x"23" => temp := x"32";
			when x"24" => temp := x"a6";
			when x"25" => temp := x"c2";
			when x"26" => temp := x"23";
			when x"27" => temp := x"3d";
			when x"28" => temp := x"ee";
			when x"29" => temp := x"4c"; 
			when x"2a" => temp := x"95"; 
			when x"2b" => temp := x"0b"; 
			when x"2c" => temp := x"42"; 
			when x"2d" => temp := x"fa"; 
			when x"2e" => temp := x"c3"; 
			when x"2f" => temp := x"49"; 
			-- "0011_xxxx"
			when x"30" => temp := x"08"; 
			when x"31" => temp := x"2e"; 
			when x"32" => temp := x"a1"; 
			when x"33" => temp := x"66"; 
			when x"34" => temp := x"28"; 
			when x"35" => temp := x"d9"; 
			when x"36" => temp := x"24"; 
			when x"37" => temp := x"b2"; 
			when x"38" => temp := x"76"; 
			when x"39" => temp := x"5b"; 
			when x"3a" => temp := x"a2"; 
			when x"3b" => temp := x"49"; 
			when x"3c" => temp := x"6d"; 
			when x"3d" => temp := x"8b"; 
			when x"3e" => temp := x"d1"; 
			-- "0100_xxxx"
			when x"40" => temp := x"72"; 
			when x"41" => temp := x"f8"; 
			when x"42" => temp := x"f6"; 
			when x"43" => temp := x"64"; 
			when x"44" => temp := x"86"; 
			when x"45" => temp := x"68"; 
			when x"46" => temp := x"98"; 
			when x"47" => temp := x"16"; 
			when x"48" => temp := x"d4"; 
			when x"49" => temp := x"a4"; 
			when x"4a" => temp := x"5c"; 
			when x"4b" => temp := x"cc"; 
			when x"4c" => temp := x"5d"; 
			when x"4d" => temp := x"65"; 
			when x"4e" => temp := x"b6"; 
			when x"4f" => temp := x"92"; 
			-- "0101_xxxx"
			when x"50" => temp := x"6c";
			when x"51" => temp := x"70";
			when x"52" => temp := x"48";
			when x"53" => temp := x"50";
			when x"54" => temp := x"fd";
			when x"55" => temp := x"ed";
			when x"56" => temp := x"b9";
			when x"57" => temp := x"da";
			when x"58" => temp := x"5e";
			when x"59" => temp := x"15";
			when x"5a" => temp := x"46";
			when x"5b" => temp := x"57";
			when x"5c" => temp := x"a7";
			when x"5d" => temp := x"8d";
			when x"5e" => temp := x"9d";
			when x"5f" => temp := x"84";
			-- "0110_xxxx"
			when x"60" => temp := x"90"; 
			when x"61" => temp := x"d8"; 
			when x"62" => temp := x"ab"; 
			when x"63" => temp := x"00"; 
			when x"64" => temp := x"8c"; 
			when x"65" => temp := x"bc"; 
			when x"66" => temp := x"d3"; 
			when x"67" => temp := x"0a"; 
			when x"68" => temp := x"f7"; 
			when x"69" => temp := x"e4"; 
			when x"6a" => temp := x"58"; 
			when x"6b" => temp := x"05"; 
			when x"6c" => temp := x"b8"; 
			when x"6d" => temp := x"b3"; 
			when x"6e" => temp := x"45"; 
			when x"6f" => temp := x"06"; 
			-- "0111_xxxx"
			when x"70" => temp := x"d0"; 
			when x"71" => temp := x"2c"; 
			when x"72" => temp := x"1e"; 
			when x"73" => temp := x"8f"; 
			when x"74" => temp := x"ca"; 
			when x"75" => temp := x"3f"; 
			when x"76" => temp := x"0f"; 
			when x"77" => temp := x"02"; 
			when x"78" => temp := x"c1"; 
			when x"79" => temp := x"af"; 
			when x"7a" => temp := x"bd"; 
			when x"7b" => temp := x"03"; 
			when x"7c" => temp := x"01"; 
			when x"7d" => temp := x"13"; 
			when x"7e" => temp := x"8a"; 
			when x"7f" => temp := x"6b";
			-- "1000_xxxx"
			when x"80" => temp := x"3a"; 
			when x"81" => temp := x"91"; 
			when x"82" => temp := x"11"; 
			when x"83" => temp := x"41"; 
			when x"84" => temp := x"4f"; 
			when x"85" => temp := x"67"; 
			when x"86" => temp := x"dc"; 
			when x"87" => temp := x"ea"; 
			when x"88" => temp := x"97"; 
			when x"89" => temp := x"f2"; 
			when x"8a" => temp := x"cf"; 
			when x"8b" => temp := x"ce"; 
			when x"8c" => temp := x"f0"; 
			when x"8d" => temp := x"b4"; 
			when x"8e" => temp := x"e6"; 
			when x"8f" => temp := x"73";
			-- "1001_xxxx"
			when x"90" => temp := x"96"; 
			when x"91" => temp := x"ac"; 
			when x"92" => temp := x"74"; 
			when x"93" => temp := x"22"; 
			when x"94" => temp := x"e7"; 
			when x"95" => temp := x"ad"; 
			when x"96" => temp := x"35"; 
			when x"97" => temp := x"85"; 
			when x"98" => temp := x"e2"; 
			when x"99" => temp := x"f9"; 
			when x"9a" => temp := x"37"; 
			when x"9b" => temp := x"e8"; 
			when x"9c" => temp := x"1c"; 
			when x"9d" => temp := x"75"; 
			when x"9e" => temp := x"df"; 
			when x"9f" => temp := x"6e"; 
			-- "1010_xxxx"
			when x"a0" => temp := x"47"; 
			when x"a1" => temp := x"f1"; 
			when x"a2" => temp := x"1a"; 
			when x"a3" => temp := x"71"; 
			when x"a4" => temp := x"1d"; 
			when x"a5" => temp := x"29"; 
			when x"a6" => temp := x"c5"; 
			when x"a7" => temp := x"89"; 
			when x"a8" => temp := x"6f"; 
			when x"a9" => temp := x"b7"; 
			when x"aa" => temp := x"62"; 
			when x"ab" => temp := x"0e"; 
			when x"ac" => temp := x"aa"; 
			when x"ad" => temp := x"18"; 
			when x"ae" => temp := x"be"; 
			when x"af" => temp := x"1b"; 
			-- "1011_xxxx"
			when x"b0" => temp := x"fc"; 
			when x"b1" => temp := x"56"; 
			when x"b2" => temp := x"3e"; 
			when x"b3" => temp := x"4b"; 
			when x"b4" => temp := x"c6"; 
			when x"b5" => temp := x"d2"; 
			when x"b6" => temp := x"79"; 
			when x"b7" => temp := x"20"; 
			when x"b8" => temp := x"9a"; 
			when x"b9" => temp := x"db"; 
			when x"ba" => temp := x"c0"; 
			when x"bb" => temp := x"fe"; 
			when x"bc" => temp := x"78"; 
			when x"bd" => temp := x"cd"; 
			when x"be" => temp := x"5a"; 
			when x"bf" => temp := x"f4"; 
			-- "1100_xxxx"
			when x"c0" => temp := x"1f"; 
			when x"c1" => temp := x"dd"; 
			when x"c2" => temp := x"a8"; 
			when x"c3" => temp := x"33"; 
			when x"c4" => temp := x"88"; 
			when x"c5" => temp := x"07"; 
			when x"c6" => temp := x"c7"; 
			when x"c7" => temp := x"31"; 
			when x"c8" => temp := x"b1"; 
			when x"c9" => temp := x"12"; 
			when x"ca" => temp := x"10"; 
			when x"cb" => temp := x"59"; 
			when x"cc" => temp := x"27"; 
			when x"cd" => temp := x"80"; 
			when x"ce" => temp := x"ec"; 
			when x"cf" => temp := x"5f";
			-- "1101_xxxx"
			when x"d0" => temp := x"60"; 
			when x"d1" => temp := x"51"; 
			when x"d2" => temp := x"7f"; 
			when x"d3" => temp := x"a9"; 
			when x"d4" => temp := x"19"; 
			when x"d5" => temp := x"b5"; 
			when x"d6" => temp := x"4a"; 
			when x"d7" => temp := x"0d"; 
			when x"d8" => temp := x"2d"; 
			when x"d9" => temp := x"e5"; 
			when x"da" => temp := x"7a"; 
			when x"db" => temp := x"9f"; 
			when x"dc" => temp := x"93"; 
			when x"dd" => temp := x"c9"; 
			when x"de" => temp := x"9c"; 
			when x"df" => temp := x"ef"; 
			-- "1110_xxxx"
			when x"e0" => temp := x"a0"; 
			when x"e1" => temp := x"e0"; 
			when x"e2" => temp := x"3b"; 
			when x"e3" => temp := x"4d"; 
			when x"e4" => temp := x"ae"; 
			when x"e5" => temp := x"2a"; 
			when x"e6" => temp := x"f5"; 
			when x"e7" => temp := x"b0"; 
			when x"e8" => temp := x"c8"; 
			when x"e9" => temp := x"eb"; 
			when x"ea" => temp := x"bb"; 
			when x"eb" => temp := x"3c"; 
			when x"ec" => temp := x"83"; 
			when x"ed" => temp := x"53"; 
			when x"ee" => temp := x"99"; 
			when x"ef" => temp := x"61";
			-- "1111_xxxx"
			when x"f0" => temp := x"17"; 
			when x"f1" => temp := x"2b"; 
			when x"f2" => temp := x"04"; 
			when x"f3" => temp := x"7e"; 
			when x"f4" => temp := x"ba";
			when x"f5" => temp := x"77";
			when x"f6" => temp := x"d6";
			when x"f7" => temp := x"26";
			when x"f8" => temp := x"e1";
			when x"f9" => temp := x"69";
			when x"fa" => temp := x"14";
			when x"fb" => temp := x"63";
			when x"fc" => temp := x"55";
			when x"fd" => temp := x"21";
			when x"fe" => temp := x"0c";
			when x"ff" => temp := x"7d";
			-- "default"
			when others => null;
		end case;
		return temp;
	end function inv_sbox;
	
	-- a funçao sub bytes vai substituir em cada round os 16 bytes do estado
	-- pelo seu respectivo valor da S Box
	function sub_bytes (state : std_logic_vector(127 downto 0)) return std_logic_vector is
		variable byte, temp : std_logic_vector(127 downto 0);
	begin
		byte(127 downto 120) := sbox(state(127 downto 120));
		byte(119 downto 112) := sbox(state(119 downto 112));
		byte(111 downto 104) := sbox(state(111 downto 104));
		byte(103 downto 96)  := sbox(state(103 downto 96));
		byte(95 downto 88)   := sbox(state(95 downto 88));
		byte(87 downto 80)   := sbox(state(87 downto 80));
		byte(79 downto 72)   := sbox(state(79 downto 72));
		byte(71 downto 64)   := sbox(state(71 downto 64));
		byte(63 downto 56)   := sbox(state(63 downto 56));
		byte(55 downto 48)   := sbox(state(55 downto 48));
		byte(47 downto 40)   := sbox(state(47 downto 40));
		byte(39 downto 32)   := sbox(state(39 downto 32));
		byte(31 downto 24)   := sbox(state(31 downto 24));
		byte(23 downto 16)   := sbox(state(23 downto 16));
		byte(15 downto 8)    := sbox(state(15 downto 8));
		byte(7 downto 0)     := sbox(state(7 downto 0));
		
		temp := byte;
		return temp;
	end function sub_bytes;
	
	--funçao inversa da sub bytes, usa a S Box inversa para substituir os bytes do estado
	function inv_sub_bytes (state : std_logic_vector(127 downto 0)) return std_logic_vector is
		variable byte, temp : std_logic_vector(127 downto 0);
	begin
		byte(127 downto 120) := inv_sbox(state(127 downto 120));
		byte(119 downto 112) := inv_sbox(state(119 downto 112));
		byte(111 downto 104) := inv_sbox(state(111 downto 104));
		byte(103 downto 96)  := inv_sbox(state(103 downto 96));
		byte(95 downto 88)   := inv_sbox(state(95 downto 88));
		byte(87 downto 80)   := inv_sbox(state(87 downto 80));
		byte(79 downto 72)   := inv_sbox(state(79 downto 72));
		byte(71 downto 64)   := inv_sbox(state(71 downto 64));
		byte(63 downto 56)   := inv_sbox(state(63 downto 56));
		byte(55 downto 48)   := inv_sbox(state(55 downto 48));
		byte(47 downto 40)   := inv_sbox(state(47 downto 40));
		byte(39 downto 32)   := inv_sbox(state(39 downto 32));
		byte(31 downto 24)   := inv_sbox(state(31 downto 24));
		byte(23 downto 16)   := inv_sbox(state(23 downto 16));
		byte(15 downto 8)    := inv_sbox(state(15 downto 8));
		byte(7 downto 0)     := inv_sbox(state(7 downto 0));
		
		temp := byte;
		return temp;
	end function inv_sub_bytes;
	
	-- funçao faz um shift circular à esquerda nas linhas, com o valor do deslocamento sendo igual ao valor da linha,
	-- o que faz com q r0 = 0 deslocamento, r1 = 1 shift pra esquerda, r2 = 2 shifts, r3 = 3 shifts
	-- o estado é enxergado com os bytes de maior numero sendo no inicio
	function shift_rows (state : std_logic_vector(127 downto 0)) return std_logic_vector is
		variable byte, temp : std_logic_vector(127 downto 0);
	begin
		byte(127 downto 120) := state(127 downto 120); -- a00
		byte(119 downto 112) := state(87 downto 80); -- a10
		byte(111 downto 104) := state(47 downto 40); -- a20
		byte(103 downto 96)  := state(7 downto 0); -- a30
		
		byte(95 downto 88)   := state(95 downto 88); -- a01
		byte(87 downto 80)   := state(55 downto 48); -- a11
		byte(79 downto 72)   := state(15 downto 8); -- a21
		byte(71 downto 64)   := state(103 downto 96); -- a31
		
		byte(63 downto 56)   := state(63 downto 56); -- a02
		byte(55 downto 48)   := state(23 downto 16); -- a12
		byte(47 downto 40)   := state(111 downto 104); -- a22
		byte(39 downto 32)   := state(71 downto 64); -- a32
		
		byte(31 downto 24)   := state(31 downto 24); -- a03
		byte(23 downto 16)   := state(119 downto 112); -- a13
		byte(15 downto 8)    := state(79 downto 72); -- a23
		byte(7 downto 0)     := state(39 downto 32); -- a33
		
		temp := byte;
		return temp;
	end function shift_rows;
	
	-- inversa da shift_rows, shifta para direita agora
	function inv_shift_rows (state : std_logic_vector(127 downto 0)) return std_logic_vector is
		variable byte, temp : std_logic_vector(127 downto 0);
	begin
		byte(127 downto 120) := state(127 downto 120); -- a00
		byte(119 downto 112) := state(23 downto 16); -- a10
		byte(111 downto 104) := state(47 downto 40); -- a20
		byte(103 downto 96)  := state(71 downto 64); -- a30
		
		byte(95 downto 88)   := state(95 downto 88); -- a01
		byte(87 downto 80)   := state(119 downto 112); -- a11
		byte(79 downto 72)   := state(15 downto 8); -- a21
		byte(71 downto 64)   := state(39 downto 32); -- a31
		
		byte(63 downto 56)   := state(63 downto 56); -- a02
		byte(55 downto 48)   := state(87 downto 80); -- a12
		byte(47 downto 40)   := state(111 downto 104); -- a22
		byte(39 downto 32)   := state(7 downto 0); -- a32
		
		byte(31 downto 24)   := state(31 downto 24); -- a03
		byte(23 downto 16)   := state(55 downto 48); -- a13
		byte(15 downto 8)    := state(79 downto 72); -- a23
		byte(7 downto 0)     := state(103 downto 96); -- a33
		
		temp := byte;
		return temp;
	end function inv_shift_rows;
	
	-- mix columns multiplica cada coluna por uma matriz fixa denomidada 'a', 
	-- isso é visto com multiplicaçao no campo finito entre constantes e cada byte da coluna 
	-- (a funçao g mul), e xor disso tudo para formar cada novo byte da coluna.
	function mix_columns (state : std_logic_vector(127 downto 0)) return std_logic_vector is
		variable temp, byte : std_logic_vector(127 downto 0);
		variable t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15 : std_logic_vector(7 downto 0);
	begin
	
		t0 := state(127 downto 120);
		t1 := state(119 downto 112);
		t2 := state(111 downto 104);
		t3 := state(103 downto 96);
		t4 := state(95 downto 88);
		t5 := state(87 downto 80);
		t6 := state(79 downto 72);
		t7 := state(71 downto 64);
		t8 := state(63 downto 56);
		t9 := state(55 downto 48);
		t10 := state(47 downto 40);
		t11 := state(39 downto 32);
		t12 := state(31 downto 24);
		t13 := state(23 downto 16);
		t14 := state(15 downto 8);
		t15 := state(7 downto 0);
		
		
		byte(127 downto 120) := g_mult("00000010", t0) xor g_mult("00000011", t1) xor t2 xor t3; -- a00
		byte(119 downto 112) := t0 xor g_mult("00000010", t1) xor g_mult("00000011", t2) xor t3; -- a10
		byte(111 downto 104) := t0 xor t1 xor g_mult("00000010", t2) xor g_mult("00000011", t3); -- a20
		byte(103 downto 96)  := g_mult("00000011", t0) xor t1 xor t2 xor g_mult("00000010", t3); -- a30
	
		byte(95 downto 88)   := g_mult("00000010", t4) xor g_mult("00000011", t5) xor t6 xor t7; -- a01
		byte(87 downto 80)   := t4 xor g_mult("00000010", t5) xor g_mult("00000011", t6) xor t7; -- a11
		byte(79 downto 72)   := t4 xor t5 xor g_mult("00000010", t6) xor g_mult("00000011", t7); -- a21
		byte(71 downto 64)   := g_mult("00000011", t4) xor t5 xor t6 xor g_mult("00000010", t7); -- a31
		
		byte(63 downto 56)   := g_mult("00000010", t8) xor g_mult("00000011", t9) xor t10 xor t11; -- a02
		byte(55 downto 48)   := t8 xor g_mult("00000010", t9) xor g_mult("00000011", t10) xor t11; -- a12
		byte(47 downto 40)   := t8 xor t9 xor g_mult("00000010", t10) xor g_mult("00000011", t11); -- a22
		byte(39 downto 32)   := g_mult("00000011", t8) xor t9 xor t10 xor g_mult("00000010", t11); -- a32
		
		byte(31 downto 24)   := g_mult("00000010", t12) xor g_mult("00000011", t13) xor t14 xor t15; -- a03
		byte(23 downto 16)   := t12 xor g_mult("00000010", t13) xor g_mult("00000011", t14) xor t15; -- a13
		byte(15 downto 8)    := t12 xor t13 xor g_mult("00000010", t14) xor g_mult("00000011", t15); -- a23
		byte(7 downto 0)     := g_mult("00000011", t12) xor t13 xor t14 xor g_mult("00000010", t15); -- a33
		
	end function mix_columns;
	
	-- esta funçao realiza a multiplicaçao polinomial entre 2 polinômios de grau 7, isso é realizado por meio de shifts a esquerda.
	-- and_mask serve para testar se o resultado dessa operaçao causa overflow, se isso ocorre deve-se fazer xor com a constante 11011
	-- a multiplicaçao pode ser entre 1, 2 e 3 (o 'a'). Se 1, x*1 = x. Se 2, x*2 = x<<1 . Se 3, x*3 = x<<1 ^ x.
	function g_mult( a, state_byte : std_logic_vector(7 downto 0)) return std_logic_vector is
		variable temp, and_mask: std_logic_vector(7 downto 0);
	begin 
		and_mask := state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7);	
		
		case a(3 downto 0) is
			when "0001" => temp := state_byte;
			
			when "0010" => temp := state_byte(6 downto 0) & '0' xor (("00011011") and and_mask);
			
			when "0011" => temp := state_byte(6 downto 0) & '0' xor (("00011011") and and_mask) xor state_byte;
			
			when others => temp := (others => '0');
		end case;
		
		return temp;
		
	end function g_mult;
	
	-- mix colums inverso usa uma matriz fixa inversa à matriz usada noo mix colums normal. 
	-- mas as operaçoes são as mesmas: chamar a func inv_g_mult para cada byte com cada constante e fazer xor disso tudo.
	function inv_mix_columns (state : std_logic_vector(127 downto 0)) return std_logic_vector is
		variable temp, byte : std_logic_vector(127 downto 0);
		variable t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15 : std_logic_vector(7 downto 0);
	begin
		t0 := state(127 downto 120);
		t1 := state(119 downto 112);
		t2 := state(111 downto 104);
		t3 := state(103 downto 96);
		t4 := state(95 downto 88);
		t5 := state(87 downto 80);
		t6 := state(79 downto 72);
		t7 := state(71 downto 64);
		t8 := state(63 downto 56);
		t9 := state(55 downto 48);
		t10 := state(47 downto 40);
		t11 := state(39 downto 32);
		t12 := state(31 downto 24);
		t13 := state(23 downto 16);
		t14 := state(15 downto 8);
		t15 := state(7 downto 0);
		
		
		byte(127 downto 120) :=  inv_g_mult("00001110",t0) xor inv_g_mult("00001011",t1) xor inv_g_mult("00001101",t2) xor inv_g_mult("00001001",t3); --- a00
		byte(119 downto 112) :=  inv_g_mult("00001001",t0) xor inv_g_mult("00001110",t1) xor inv_g_mult("00001011",t2) xor inv_g_mult("00001101",t3); --- a10
		byte(111 downto 104) :=  inv_g_mult("00001101",t0) xor inv_g_mult("00001001",t1) xor inv_g_mult("00001110",t2) xor inv_g_mult("00001011",t3); --- a20
		byte(103 downto 96)  :=  inv_g_mult("00001011",t0) xor inv_g_mult("00001101",t1) xor inv_g_mult("00001001",t2) xor inv_g_mult("00001110",t3); --- a30
	
		byte(95 downto 88)   := inv_g_mult("00001110",t4) xor inv_g_mult("00001011",t5) xor inv_g_mult("00001101",t6) xor inv_g_mult("00001001",t7); -- a01
		byte(87 downto 80)   := inv_g_mult("00001001",t4) xor inv_g_mult("00001110",t5) xor inv_g_mult("00001011",t6) xor inv_g_mult("00001101",t7); -- a11
		byte(79 downto 72)   := inv_g_mult("00001101",t4) xor inv_g_mult("00001001",t5) xor inv_g_mult("00001110",t6) xor inv_g_mult("00001011",t7); -- a21
		byte(71 downto 64)   := inv_g_mult("00001011",t4) xor inv_g_mult("00001101",t5) xor inv_g_mult("00001001",t6) xor inv_g_mult("00001110",t7); -- a31
		
		byte(63 downto 56)   := inv_g_mult("00001110",t8) xor inv_g_mult("00001011",t9) xor inv_g_mult("00001101",t10) xor inv_g_mult("00001001",t11); -- a02
		byte(55 downto 48)   := inv_g_mult("00001001",t8) xor inv_g_mult("00001110",t9) xor inv_g_mult("00001011",t10) xor inv_g_mult("00001101",t11); -- a12
		byte(47 downto 40)   := inv_g_mult("00001101",t8) xor inv_g_mult("00001001",t9) xor inv_g_mult("00001110",t10) xor inv_g_mult("00001011",t11); -- a22
		byte(39 downto 32)   := inv_g_mult("00001011",t8) xor inv_g_mult("00001101",t9) xor inv_g_mult("00001001",t10) xor inv_g_mult("00001110",t11); -- a32
		
		byte(31 downto 24)   := inv_g_mult("00001110",t12) xor inv_g_mult("00001011",t13) xor inv_g_mult("00001101",t14) xor inv_g_mult("00001001",t15); -- a03
		byte(23 downto 16)   := inv_g_mult("00001001",t12) xor inv_g_mult("00001110",t13) xor inv_g_mult("00001011",t14) xor inv_g_mult("00001101",t15); -- a13
		byte(15 downto 8)    := inv_g_mult("00001101",t12) xor inv_g_mult("00001001",t13) xor inv_g_mult("00001110",t14) xor inv_g_mult("00001011",t15);-- a23
		byte(7 downto 0)     := inv_g_mult("00001011",t12) xor inv_g_mult("00001101",t13) xor inv_g_mult("00001001",t14) xor inv_g_mult("00001110",t15); -- a33
		
	end function inv_mix_columns;
	
	
	-- as operaçoes aqui são um pouco mais longas que as realizadas com o g mult normal, pois é o inverso que esta sendo feito.
	-- as constantes são 14,13,11,9. 
	function inv_g_mult( a, state_byte : std_logic_vector(7 downto 0)) return std_logic_vector is
		variable t1, t2, t3, temp, and_mask: std_logic_vector(7 downto 0);
	begin 
		and_mask := state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7)& state_byte(7);	
		
		case a(3 downto 0) is
			when "1001" => t1 := state_byte(6 downto 0) & '0' xor(("00011011") and and_mask);
								and_mask := t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7);
								t2 := t1(6 downto 0) & '0' xor (("00011011") and and_mask);
								and_mask := t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7);
								t3 := t2(6 downto 0) & '0' xor (("00011011") and and_mask);
								temp := t3 xor state_byte;
			
			when "1011" => t1 := state_byte(6 downto 0) & '0' xor(("00011011") and and_mask);
								and_mask := t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7);
								t2 := t1(6 downto 0) & '0' xor (("00011011") and and_mask);
								and_mask := t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7);
								t3 := t2(6 downto 0) & '0' xor (("00011011") and and_mask);
								temp := t1 xor t3 xor state_byte;
								
			when "1101" => t1 := state_byte(6 downto 0) & '0' xor(("00011011") and and_mask);
								and_mask := t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7);
								t2 := t1(6 downto 0) & '0' xor (("00011011") and and_mask);
								and_mask := t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7);
								t3 := t2(6 downto 0) & '0' xor (("00011011") and and_mask);
								temp := t2 xor t3 xor state_byte;
			
			when "1110" => t1 := state_byte(6 downto 0) & '0' xor(("00011011") and and_mask);
								and_mask := t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7)& t1(7);
								t2 := t1(6 downto 0) & '0' xor (("00011011") and and_mask);
								and_mask := t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7)& t2(7);
								t3 := t2(6 downto 0) & '0' xor (("00011011") and and_mask);
								temp := t1 xor t2 xor t3;
			
			when others => temp := (others => '0');
		end case;
		
		return temp;
		
	end function inv_g_mult;
	
	
	-- add round key faz simplesmente uma xor do estado com a chave do round atual. 
	function add_round_key (state, roundkey : std_logic_vector(127 downto 0)) return std_logic_vector is
		variable temp : std_logic_vector(127 downto 0);
	begin
		temp := state xor roundkey;
		return temp;	
	end function add_round_key;
	
	-- funçao que gera uma round key, recebendo a anterior e o numero do round para isso.
	-- são feitos cálculos usando xors e constantes (no primeiro byte da chave). 
	-- A rotaçao/shift esta implicita ao se pegar já os bytes certos para cada operaçao
	function generate_round_key(roundkey : std_logic_vector(127 downto 0); round : integer range 0 to 10) return std_logic_vector is
		variable temp : std_logic_vector(127 downto 0);
		variable b0,b1,b2,b3 : std_logic_vector(7 downto 0);
	begin
		b0 := roundkey(31 downto 24);
		b1 := roundkey(23 downto 16);
		b2 := roundkey(15 downto 8);
		b3 := roundkey(7 downto 0);
		
		case round is
			when 1 => temp(127 downto 120) := sbox(b1) xor "00000001" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
			
			when 2 => temp(127 downto 120) := sbox(b1) xor "00000010" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
			
			when 3 => temp(127 downto 120) := sbox(b1) xor "00000100" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
			
			when 4 => temp(127 downto 120) := sbox(b1) xor "00001000" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
			
			when 5 => temp(127 downto 120) := sbox(b1) xor "00010000" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
			
			when 6 => temp(127 downto 120) := sbox(b1) xor "00100000" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
			
			when 7 => temp(127 downto 120) := sbox(b1) xor "01000000" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
			
			when 8 => temp(127 downto 120) := sbox(b1) xor "10000000" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
						 
			when 9 => temp(127 downto 120) := sbox(b1) xor "00011011" xor roundkey(127 downto 120);
						 temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						 temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						 temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						 temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						 temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						 temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
						 
			when 10 => temp(127 downto 120) := sbox(b1) xor "00110110" xor roundkey(127 downto 120);
						  temp(119 downto 112) := sbox(b2) xor roundkey(119 downto 112);
						  temp(111 downto 104) := sbox(b3) xor roundkey(111 downto 104);
						  temp(103 downto 96)  := sbox(b0) xor roundkey(103 downto 96);
						  temp(95 downto 64)   := temp(127 downto 96) xor roundkey(95 downto 64);
						  temp(63 downto 32)   := temp(95 downto 64) xor roundkey(63 downto 32);
						  temp(31 downto 0)    := temp(63 downto 32) xor roundkey(31 downto 0);
						 
			when others => null;
		end case;	
		return temp;
						 
	end function generate_round_key;
			
end package body functions;