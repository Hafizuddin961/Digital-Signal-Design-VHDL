library verilog;
use verilog.vl_types.all;
entity circuitA is
    port(
        v               : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(2 downto 0)
    );
end circuitA;
