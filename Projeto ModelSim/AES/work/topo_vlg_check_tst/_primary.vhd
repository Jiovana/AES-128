library verilog;
use verilog.vl_types.all;
entity topo_vlg_check_tst is
    port(
        chipher         : in     vl_logic_vector(127 downto 0);
        en_c            : in     vl_logic;
        en_r            : in     vl_logic;
        en_ra           : in     vl_logic;
        en_t            : in     vl_logic;
        round_m         : in     vl_logic_vector(3 downto 0);
        sel_m           : in     vl_logic;
        sel_m3          : in     vl_logic;
        state           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end topo_vlg_check_tst;
