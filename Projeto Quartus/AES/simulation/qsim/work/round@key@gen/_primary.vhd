library verilog;
use verilog.vl_types.all;
entity roundKeyGen is
    port(
        round_num       : in     vl_logic_vector(3 downto 0);
        clk_key         : in     vl_logic;
        roundkey_out    : out    vl_logic_vector(127 downto 0)
    );
end roundKeyGen;
