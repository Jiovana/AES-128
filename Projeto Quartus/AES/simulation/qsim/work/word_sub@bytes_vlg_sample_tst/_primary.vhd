library verilog;
use verilog.vl_types.all;
entity word_subBytes_vlg_sample_tst is
    port(
        clk_sub         : in     vl_logic;
        state_word      : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end word_subBytes_vlg_sample_tst;
