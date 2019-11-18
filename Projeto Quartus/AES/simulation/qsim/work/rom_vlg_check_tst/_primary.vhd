library verilog;
use verilog.vl_types.all;
entity rom_vlg_check_tst is
    port(
        q1              : in     vl_logic_vector(7 downto 0);
        q2              : in     vl_logic_vector(7 downto 0);
        q3              : in     vl_logic_vector(7 downto 0);
        q4              : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end rom_vlg_check_tst;
