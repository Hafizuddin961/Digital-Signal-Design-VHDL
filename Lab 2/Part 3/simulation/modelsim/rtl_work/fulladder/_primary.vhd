library verilog;
use verilog.vl_types.all;
entity fulladder is
    port(
        ci              : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        s               : out    vl_logic;
        co              : out    vl_logic
    );
end fulladder;
