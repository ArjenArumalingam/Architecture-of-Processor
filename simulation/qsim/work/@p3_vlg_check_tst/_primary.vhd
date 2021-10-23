library verilog;
use verilog.vl_types.all;
entity P3_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(3 downto 0);
        OP              : in     vl_logic_vector(15 downto 0);
        parity          : in     vl_logic;
        student_id      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end P3_vlg_check_tst;
