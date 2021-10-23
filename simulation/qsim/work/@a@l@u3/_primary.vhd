library verilog;
use verilog.vl_types.all;
entity ALU3 is
    port(
        clock           : in     vl_logic;
        student_id      : in     vl_logic_vector(3 downto 0);
        OP              : in     vl_logic_vector(15 downto 0);
        parity          : out    vl_logic
    );
end ALU3;
