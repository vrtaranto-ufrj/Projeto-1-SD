----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:16:40 10/22/2023 
-- Design Name: 
-- Module Name:    SomadorSubtrator - Behavioral 
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

entity Subtrator is
    Port ( V1 : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           V2 : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           S : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Negativo : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Zero : out  STD_LOGIC);
end Subtrator;

architecture Behavioral of Subtrator is
	signal V1_ext : STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal V2_ext : STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal V2_inv : STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal Resp : STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal Resp_invertido : STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal Temp_neg : STD_LOGIC;

	
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

	Comp1: entity work.Complemento1
	Port map (Vin => V2_ext, Vout => V2_inv);
	
	FA: entity work.FullAdder4bit
	Port map (A => V1_ext, B => V2_inv, Cin => '1', S => Resp, Cout => Cout, Overflow => Overflow, Zero => Zero, Negativo => Temp_neg);
	
	Neg: entity work.TrocadeSinal
   Port map (Vin => Resp, Vout => Resp_invertido);

   S(0) <= (not Temp_neg and Resp(0)) or (Temp_neg and Resp_invertido(0));
	S(1) <= (not Temp_neg and Resp(1)) or (Temp_neg and Resp_invertido(1));
	S(2) <= (not Temp_neg and Resp(2)) or (Temp_neg and Resp_invertido(2));
	S(3) <= (not Temp_neg and Resp(3)) or (Temp_neg and Resp_invertido(3));

	Negativo <= Temp_neg;

end Behavioral;

