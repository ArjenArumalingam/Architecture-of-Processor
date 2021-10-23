library verilog;
use verilog.vl_types.all;
entity Problem2_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(3 downto 0);
        first_four      : in     vl_logic_vector(0 to 6);
        last_four       : in     vl_logic_vector(0 to 6);
        neg             : in     vl_logic_vector(0 to 6);
        OP              : in     vl_logic_vector(15 downto 0);
        sign            : in     vl_logic;
        state           : in     vl_logic_vector(0 to 6);
        student_id      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Problem2_vlg_check_tst;
