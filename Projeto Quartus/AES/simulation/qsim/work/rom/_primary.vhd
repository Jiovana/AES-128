library verilog;
use verilog.vl_types.all;
entity rom is
    port(
        clk             : in     vl_logic;
        addr1           : in     vl_logic_vector(7 downto 0);
        addr2           : in     vl_logic_vector(7 downto 0);
        addr3           : in     vl_logic_vector(7 downto 0);
        addr4           : in     vl_logic_vector(7 downto 0);
        q1              : out    vl_logic_vector(7 downto 0);
        q2              : out    vl_logic_vector(7 downto 0);
        q3              : out    vl_logic_vector(7 downto 0);
        q4              : out    vl_logic_vector(7 downto 0)
    );
end rom;
