library verilog;
use verilog.vl_types.all;
entity word_subBytes_vlg_check_tst is
    port(
        sub_word        : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end word_subBytes_vlg_check_tst;
