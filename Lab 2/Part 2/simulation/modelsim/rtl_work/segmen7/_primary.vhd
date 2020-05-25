library verilog;
use verilog.vl_types.all;
entity segmen7 is
    port(
        m               : in     vl_logic_vector(3 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0)
    );
end segmen7;
