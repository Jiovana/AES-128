library verilog;
use verilog.vl_types.all;
entity altsyncram_3 is
    port(
        q_a             : out    vl_logic_vector(7 downto 0);
        q_b             : out    vl_logic_vector(7 downto 0);
        eccstatus       : out    vl_logic_vector(2 downto 0);
        address_b       : in     vl_logic_vector(7 downto 0);
        address_a       : in     vl_logic_vector(7 downto 0);
        clock0          : in     vl_logic;
        devpor          : in     vl_logic;
        devclrn         : in     vl_logic;
        devoe           : in     vl_logic
    );
end altsyncram_3;
