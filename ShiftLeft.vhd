----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:21 10/22/2023 
-- Design Name: 
-- Module Name:    ShiftLeft - Behavioral 
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

entity ShiftLeft is
    Port ( Vin : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end ShiftLeft;

architecture Behavioral of ShiftLeft is

begin
	
	Vout(0) <= '0';
	Vout(1) <= Vin(0);
	Vout(2) <= Vin(1);
	Vout(3) <= Vin(2);
	
	Zero <= not (Vin(1) or Vin(2) or Vin(3));
	Overflow <= '0';
	Negativo <= '0';
	Cout <= '0';
	
	

end Behavioral;

