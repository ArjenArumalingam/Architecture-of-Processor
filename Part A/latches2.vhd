LIBRARY ieee; 
USE ieee.std_logic_1164.all;

ENTITY latches2 IS
	PORT (B: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Resetb,Clock:IN STD_LOGIC;
		
		Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
		
END latches2 ;
ARCHITECTURE Behavior OF latches2 IS

BEGIN
	PROCESS(Resetb, Clock)
	BEGIN 
		IF Resetb = '0' THEN
			Q <= "00000000";
		ELSIF Clock'EVENT AND Clock = '1' THEN
		Q <= B;
		END IF;
	END PROCESS;
END Behavior;
		