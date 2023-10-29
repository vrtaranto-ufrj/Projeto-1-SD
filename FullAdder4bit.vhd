----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:32 10/22/2023 
-- Design Name: 
-- Module Name:    FullAdder4bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder4bit is
    Port ( A : in  STD_LOGIC_VECTOR (4 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Overflow : out  STD_LOGIC;
			  Zero : out STD_LOGIC;
			  Negativo : out STD_LOGIC;
           Cout : out  STD_LOGIC);
end FullAdder4bit;

architecture Behavioral of FullAdder4bit is
    signal c : STD_LOGIC_VECTOR(4 downto 0);   -- Carry intermediário
	 signal sum : STD_LOGIC_VECTOR(4 downto 0);
	 
begin
	FA0: entity work.FullAdder1bit
	Port map (A => A(0), B => B(0), Cin => Cin, S => sum(0), Cout => c(0));
	
	FA1: entity work.FullAdder1bit
	Port map (A => A(1), B => B(1), Cin => c(0), S => sum(1), Cout => c(1));
	
	FA2: entity work.FullAdder1bit
	Port map (A => A(2), B => B(2), Cin => c(1), S => sum(2), Cout => c(2));
	
	FA3: entity work.FullAdder1bit
	Port map (A => A(3), B => B(3), Cin => c(2), S => sum(3), Cout => c(3));
	
	FASinal: entity work.FullAdder1bit
	Port map (A => A(4), B => B(4), Cin => c(3), S => sum(4), Cout => c(4));

	
	S(0) <= sum(0);
	S(1) <= sum(1);
	S(2) <= sum(2);
	S(3) <= sum(3);
	S(4) <= sum(4);
	Cout <= c(3);
	Overflow <= (A(4) AND B(4) AND NOT sum(4)) OR (NOT A(4) AND NOT B(4) AND sum(4));
	Negativo <= sum(4);
	Zero <= NOT (sum(0) OR sum(1) OR sum(2) OR sum(3) or sum(4));

end Behavioral;

