library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU3 is
port( clock : in std_logic; 
		student_id : in std_logic_vector (3 downto 0); 
		OP : in unsigned(15 downto 0); --16-bit selector for Operation from Decoder
		parity: out std_logic);
end ALU3;

architecture calculate of ALU3 is 
	signal sid : std_logic_vector (3 downto 0);
	signal p : std_logic;

begin 
	sid <= student_id;
process(clock, OP)
begin 
	if(rising_edge(clock)) THEN 
		case sid is     
			WHEN "0000" =>
				p <= '1'; 
			
			WHEN "0001" =>
				p <= '0'; 
				
			WHEN "0010" =>
				p <= '0'; 

			WHEN "0011" =>
				p <= '1'; 

			WHEN "0100" =>
				p <= '0'; 
			
			WHEN "0101" =>
				p <= '1'; 

			WHEN "0110" =>
				p <= '1'; 

			WHEN "0111" =>
				p <= '0'; 
	
			WHEN "1000" =>
				p <= '0'; 
			
			WHEN "1001" =>
				p <= '1'; 

			WHEN "1010" =>
				p <= '1'; 

			WHEN "1100" =>
				p <= '1'; 

			WHEN "1101" =>
				p <= '0'; 

			WHEN "1110" =>
				p <= '0'; 
				
			WHEN "1111" =>
				p <= '1'; 
				
			WHEN OTHERS =>
			
		end case;
	end if;
end process;
parity <= p;
end calculate;