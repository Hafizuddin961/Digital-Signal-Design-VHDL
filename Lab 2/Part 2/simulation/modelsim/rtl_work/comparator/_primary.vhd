library verilog;
use verilog.vl_types.all;
entity comparator is
    port(
        v               : in     vl_logic_vector(3 downto 0);
        z               : out    vl_logic
    );
end comparator;
