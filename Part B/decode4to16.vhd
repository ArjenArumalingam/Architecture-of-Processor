LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.decode3to8_package.all;

ENTITY decode4to16 IS
   PORT(s   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        En1 : IN STD_LOGIC;
        OP  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
   END decode4to16;

ARCHITECTURE Structure OF decode4to16 IS
   SIGNAL m: STD_LOGIC_VECTOR(0 TO 1);
BEGIN
   m(0) <=(NOT s(3) AND En1);
   m(1)<=(s(3) AND En1);
    Dec1: decode3to8 PORT MAP
       (s(2 DOWNTO 0), m(0), OP(7 DOWNTO 0));
    Dec2: decode3to8 PORT MAP
       (s(2 DOWNTO 0), m(1),OP(15 DOWNTO 8));
END STRUCTURE;