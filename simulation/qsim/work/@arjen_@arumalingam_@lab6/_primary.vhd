library verilog;
use verilog.vl_types.all;
entity Arjen_Arumalingam_Lab6 is
    port(
        Neg             : out    vl_logic;
        Clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Resetb          : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        En1             : in     vl_logic;
        data_in         : in     vl_logic;
        ResetFSM        : in     vl_logic;
        current_state   : out    vl_logic_vector(3 downto 0);
        OP              : out    vl_logic_vector(15 downto 0);
        Res             : out    vl_logic_vector(7 downto 0);
        student_id      : out    vl_logic_vector(3 downto 0)
    );
end Arjen_Arumalingam_Lab6;
