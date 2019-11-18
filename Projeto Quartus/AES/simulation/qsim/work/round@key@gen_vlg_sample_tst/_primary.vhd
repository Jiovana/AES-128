library verilog;
use verilog.vl_types.all;
entity roundKeyGen_vlg_sample_tst is
    port(
        clk_key         : in     vl_logic;
        round_num       : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end roundKeyGen_vlg_sample_tst;
