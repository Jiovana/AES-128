library verilog;
use verilog.vl_types.all;
entity word_subBytes is
    port(
        state_word      : in     vl_logic_vector(31 downto 0);
        clk_sub         : in     vl_logic;
        sub_word        : out    vl_logic_vector(31 downto 0)
    );
end word_subBytes;
