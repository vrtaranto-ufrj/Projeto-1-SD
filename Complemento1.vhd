----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:16 10/22/2023 
-- Design Name: 
-- Module Name:    Complemento1 - Behavioral 
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

entity Complemento1 is
    Port ( Vin : in  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (4 DOWNTO 0));
end Complemento1;

architecture Behavioral of Complemento1 is

begin
	Vout(0) <= NOT Vin(0);
	Vout(1) <= NOT Vin(1);
	Vout(2) <= NOT Vin(2);
	Vout(3) <= NOT Vin(3);
	Vout(4) <= NOT Vin(4);

end Behavioral;

