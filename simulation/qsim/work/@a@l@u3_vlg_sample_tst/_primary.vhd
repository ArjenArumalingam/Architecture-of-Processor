library verilog;
use verilog.vl_types.all;
entity ALU3_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        OP              : in     vl_logic_vector(15 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU3_vlg_sample_tst;
