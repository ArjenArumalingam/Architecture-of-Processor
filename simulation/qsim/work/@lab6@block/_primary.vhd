library verilog;
use verilog.vl_types.all;
entity Lab6Block is
    port(
        sign            : out    vl_logic;
        Clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Resetb          : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        En1             : in     vl_logic;
        data_in         : in     vl_logic;
        ResetFSM        : in     vl_logic;
        current_state   : out    vl_logic_vector(3 downto 0);
        first_four      : out    vl_logic_vector(0 to 6);
        last_four       : out    vl_logic_vector(0 to 6);
        neg             : out    vl_logic_vector(0 to 6);
        OP              : out    vl_logic_vector(15 downto 0);
        state           : out    vl_logic_vector(0 to 6);
        student_id      : out    vl_logic_vector(3 downto 0)
    );
end Lab6Block;
