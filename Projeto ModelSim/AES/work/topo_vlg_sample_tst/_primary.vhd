library verilog;
use verilog.vl_types.all;
entity topo_vlg_sample_tst is
    port(
        clk_m           : in     vl_logic;
        reset_m         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end topo_vlg_sample_tst;
