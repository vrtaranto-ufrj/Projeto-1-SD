----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:20 10/22/2023 
-- Design Name: 
-- Module Name:    Somador - Behavioral 
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

entity Somador is
    Port ( V1 : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           V2 : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           S : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Negativo : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Zero : out  STD_LOGIC);
end Somador;

architecture Behavioral of Somador is
	signal V1_ext : STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal V2_ext : STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal S_ext : STD_LOGIC_VECTOR (4 DOWNTO 0);
begin
	V1_ext(0) <= V1(0);
	V1_ext(1) <= V1(1);
	V1_ext(2) <= V1(2);
	V1_ext(3) <= V1(3);
	V1_ext(4) <= '0';
	
	V2_ext(0) <= V2(0);
	V2_ext(1) <= V2(1);
	V2_ext(2) <= V2(2);
	V2_ext(3) <= V2(3);
	V2_ext(4) <= '0';

	FA: entity work.FullAdder4bit
	Port map (A => V1_ext, B => V2_ext, Cin => '0', S => S_ext, Cout => Cout, Overflow => Overflow, Zero => Zero);
	
	Negativo <= '0';
	S(0) <= S_ext(0);
	S(1) <= S_ext(1);
	S(2) <= S_ext(2);
	S(3) <= S_ext(3);

end Behavioral;

