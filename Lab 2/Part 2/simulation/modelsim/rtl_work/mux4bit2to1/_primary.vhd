library verilog;
use verilog.vl_types.all;
entity mux4bit2to1 is
    port(
        z               : in     vl_logic;
        v               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        m               : out    vl_logic_vector(3 downto 0)
    );
end mux4bit2to1;
