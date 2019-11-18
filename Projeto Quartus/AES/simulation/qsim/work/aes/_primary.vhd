library verilog;
use verilog.vl_types.all;
entity aes is
    port(
        osc_clk         : in     vl_logic;
        reset_n         : in     vl_logic;
        chipher         : out    vl_logic_vector(127 downto 0);
        round_m         : out    vl_logic_vector(3 downto 0);
        en_t            : out    vl_logic;
        en_r            : out    vl_logic;
        en_c            : out    vl_logic;
        en_ra           : out    vl_logic;
        en_rk2          : out    vl_logic;
        sel_m           : out    vl_logic;
        sel_m3          : out    vl_logic;
        state           : out    vl_logic_vector(2 downto 0)
    );
end aes;
