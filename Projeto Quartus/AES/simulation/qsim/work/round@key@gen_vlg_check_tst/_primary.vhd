library verilog;
use verilog.vl_types.all;
entity roundKeyGen_vlg_check_tst is
    port(
        roundkey_out    : in     vl_logic_vector(127 downto 0);
        sampler_rx      : in     vl_logic
    );
end roundKeyGen_vlg_check_tst;
