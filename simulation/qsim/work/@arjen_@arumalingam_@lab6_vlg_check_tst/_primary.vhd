library verilog;
use verilog.vl_types.all;
entity Arjen_Arumalingam_Lab6_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(3 downto 0);
        Neg             : in     vl_logic;
        OP              : in     vl_logic_vector(15 downto 0);
        Res             : in     vl_logic_vector(7 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Arjen_Arumalingam_Lab6_vlg_check_tst;
