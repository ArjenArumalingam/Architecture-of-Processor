library verilog;
use verilog.vl_types.all;
entity P3_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic;
        data_in         : in     vl_logic;
        En1             : in     vl_logic;
        Resetb          : in     vl_logic;
        ResetFSM        : in     vl_logic;
        Resetn          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end P3_vlg_sample_tst;
