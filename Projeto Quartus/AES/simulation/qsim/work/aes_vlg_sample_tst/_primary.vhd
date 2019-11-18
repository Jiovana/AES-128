library verilog;
use verilog.vl_types.all;
entity aes_vlg_sample_tst is
    port(
        osc_clk         : in     vl_logic;
        reset_n         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end aes_vlg_sample_tst;
