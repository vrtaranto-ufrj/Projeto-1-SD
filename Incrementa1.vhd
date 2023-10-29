----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:13 10/22/2023 
-- Design Name: 
-- Module Name:    Incrementa1 - Behavioral 
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

entity Incrementa1 is
    Port ( Vin : in  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Incrementa1;

architecture Behavioral of Incrementa1 is

begin
	FA: entity work.FullAdder4bit
	Port map (A => Vin, B => "00000", Cin => '1', S => Vout, Cout => Cout, Overflow => Overflow, Zero => Zero, Negativo => Negativo);


end Behavioral;

