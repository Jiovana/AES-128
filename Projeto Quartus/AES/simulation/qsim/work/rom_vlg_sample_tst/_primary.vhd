library verilog;
use verilog.vl_types.all;
entity rom_vlg_sample_tst is
    port(
        addr1           : in     vl_logic_vector(7 downto 0);
        addr2           : in     vl_logic_vector(7 downto 0);
        addr3           : in     vl_logic_vector(7 downto 0);
        addr4           : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end rom_vlg_sample_tst;
