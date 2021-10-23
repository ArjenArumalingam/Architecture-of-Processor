library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
port( clock : in std_logic; 
		A,B : in unsigned(7 downto 0); 
		student_id : in unsigned(3 downto 0); 
		OP : in unsigned( 15 downto 0);
		
		neg: out std_logic; 
		R1 : out unsigned(3 downto 0); 
		R2 : out unsigned(3 downto 0)); 
end ALU;

architecture calculate of ALU is 
	signal Reg1,Reg2,Result: unsigned(7 downto 0):= (others => '0');
	signal Reg4 : unsigned (0 to 7);

begin
	Reg1 <= A; 
	Reg2 <= B; 

process(clock, OP)
begin
	if(rising_edge(clock)) THEN 
		case OP is
			WHEN "0000000000000001" =>
				Result <= (Reg1 + Reg2);
				neg <= '0';

			WHEN "0000000000000010" =>
				IF Reg1 > Reg2 THEN
					Result <= (Reg1 - Reg2);
					neg <= '0';
				ELSE 
					Result <= (Reg2 - Reg1);
					neg <= '1';
				END IF;
				
			WHEN "0000000000000100" =>
				Result <= (NOT Reg1);
				neg<= '0';

			WHEN "0000000000001000" =>
				Result<= (Reg1 NAND Reg2);
				Neg<= '0';

			WHEN "0000000000010000" =>
				Result<= (Reg1 NOR Reg2);
				neg<= '0';

			WHEN "0000000000100000" =>
				Result<= (Reg1 AND Reg2);
				neg<= '0';

			WHEN "0000000001000000" =>
				Result<= (Reg1 OR Reg2);
				neg<= '0';

			WHEN "0000000010000000" =>
				Result<= (Reg1 XOR Reg2);
				neg<= '0';

			WHEN "0000000100000000" =>
				Result<= (Reg1 XNOR Reg2);
				neg<= '0';

			WHEN OTHERS =>
			
		end case;
	end if;
end process;
R1 <= Result(3 downto 0); 
R2 <= Result(7 downto 4); 
end calculate;