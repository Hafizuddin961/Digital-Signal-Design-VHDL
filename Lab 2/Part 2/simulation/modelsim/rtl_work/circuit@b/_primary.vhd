library verilog;
use verilog.vl_types.all;
entity circuitB is
    port(
        z               : in     vl_logic;
        HEX1            : out    vl_logic_vector(6 downto 0)
    );
end circuitB;
