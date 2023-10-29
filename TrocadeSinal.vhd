----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:11 10/22/2023 
-- Design Name: 
-- Module Name:    TrocadeSinal - Behavioral 
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

entity TrocadeSinal is
    Port ( Vin : in  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end TrocadeSinal;

architecture Behavioral of TrocadeSinal is
	signal V2_inv : STD_LOGIC_VECTOR (4 DOWNTO 0);

begin
	Comp1: entity work.Complemento1
	Port map (Vin => Vin, Vout => V2_inv);
	
	Incr: entity work.Incrementa1
	Port map (Vin => V2_inv, Vout => Vout, Cout => Cout, Overflow => Overflow, Zero => Zero, Negativo => Negativo);


end Behavioral;

