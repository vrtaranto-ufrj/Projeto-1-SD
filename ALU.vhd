----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:44 10/22/2023 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( V1 : in  STD_LOGIC_VECTOR(3 downto 0);
           V2 : in  STD_LOGIC_VECTOR(3 downto 0);
           sel : in  STD_LOGIC_VECTOR(2 downto 0);  -- Seleção de operação usando 3 botões
           resultado : out  STD_LOGIC_VECTOR(3 downto 0);
           Zero : out STD_LOGIC;
           Overflow : out STD_LOGIC;
           Negativo : out STD_LOGIC;
           Cout : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
	
	COMPONENT Somador IS
		PORT (
		V1, V2 : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
		S : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
		Negativo : out  STD_LOGIC;
      Cout : out  STD_LOGIC;
      Overflow : out  STD_LOGIC;
      Zero : out  STD_LOGIC);
	END COMPONENT;
	
	COMPONENT Subtrator IS
		PORT (
		V1, V2 : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
		S : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
		Negativo : out  STD_LOGIC;
      Cout : out  STD_LOGIC;
      Overflow : out  STD_LOGIC;
      Zero : out  STD_LOGIC);
	END COMPONENT;
	
	COMPONENT Incrementa1 IS
		PORT ( Vin : in  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	END COMPONENT;
	
	COMPONENT TrocadeSinal IS
		Port ( Vin : in  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (4 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	END COMPONENT;
	
	COMPONENT ShiftLeft IS
		Port ( Vin : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	END COMPONENT;
	
	COMPONENT RotationLeft IS
		Port ( Vin : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	END COMPONENT;
	
	COMPONENT ShiftRight IS
		Port ( Vin : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	END COMPONENT;
	
	COMPONENT RotationRight IS
		Port ( Vin : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Vout : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Zero : out  STD_LOGIC;
           Overflow : out  STD_LOGIC;
           Negativo : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	END COMPONENT;
	signal Operando1 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	signal Operando2 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	signal somaa, sub, incr, comp, shiftl, shiftr, rotal, rotar : STD_LOGIC_VECTOR (3 DOWNTO 0);
	
	signal somaZero, somaOV, somaNeg, somaCout : STD_LOGIC;
	signal subZero, subOV, subNeg, subCout : STD_LOGIC;
	signal incrZero, incrOV, incrNeg, incrCout : STD_LOGIC;
	signal invZero, invOV, invNeg, invCout : STD_LOGIC;
	signal slZero, slOV, slNeg, slCout : STD_LOGIC;
	signal srZero, srOV, srNeg, srCout : STD_LOGIC;
	signal rlZero, rlOV, rlNeg, rlCout : STD_LOGIC;
	signal rrZero, rrOV, rrNeg, rrCout : STD_LOGIC;
	
	signal Operando1_ext : STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal incr_ext, inv_ext : STD_LOGIC_VECTOR (4 DOWNTO 0);
	
begin
	Operando1 <= V1;
	Operando2 <= V2;
	Operando1_ext(0) <= Operando1(0);
	Operando1_ext(1) <= Operando1(1);
	Operando1_ext(2) <= Operando1(2);
	Operando1_ext(3) <= Operando1(3);
	Operando1_ext(4) <= '0';
	
	
	SOMA: Somador port map( V1 => Operando1, 
									V2 => Operando2, 
									S => somaa, 
									Zero => somaZero, 
									Negativo => somaNeg, 
									Overflow => somaOV, 
									Cout => somaCout);

	SUBTRACAO: Subtrator port map( V1 => Operando1, 
									V2 => Operando2, 
									S => sub, 
									Zero => subZero, 
									Negativo => subNeg, 
									Overflow => subOV, 
									Cout => subCout);
	
	INCREMENTO: Incrementa1 port map( Vin => Operando1_ext, 
									Vout => incr_ext, 
									Zero => incrZero, 
									Negativo => incrNeg, 
									Overflow => incrOV, 
									Cout => incrCout);
	
	TROCASINAL: TrocadeSinal port map( Vin => Operando1_ext, 
									Vout => inv_ext, 
									Zero => invZero, 
									Negativo => invNeg, 
									Overflow => invOV, 
									Cout => invCout);	
									
	SHIFTLEFTM: ShiftLeft port map( Vin => Operando1, 
									Vout => shiftl, 
									Zero => slZero, 
									Negativo => slNeg, 
									Overflow => slOV, 
									Cout => slCout);
		
	SHIFTRIGHTM: ShiftRight port map( Vin => Operando1, 
									Vout => shiftr, 
									Zero => srZero, 
									Negativo => srNeg, 
									Overflow => srOV, 
									Cout => srCout);
									
	ROTATIONLEFTM: RotationLeft port map( Vin => Operando1, 
									Vout => rotal, 
									Zero => rlZero, 
									Negativo => rlNeg, 
									Overflow => rlOV, 
									Cout => rlCout);
									
	ROTATIONRIGHTM: RotationRight port map( Vin => Operando1, 
									Vout => rotar, 
									Zero => rrZero, 
									Negativo => rrNeg, 
									Overflow => rrOV, 
									Cout => rrCout);
									
	incr(0) <= incr_ext(0);
	incr(1) <= incr_ext(1);
	incr(2) <= incr_ext(2);
	incr(3) <= incr_ext(3);
	
	comp(0) <= inv_ext(0);
	comp(1) <= inv_ext(1);
	comp(2) <= inv_ext(2);
	comp(3) <= inv_ext(3);
									
	resultado <=  somaa when (sel = "000") else
				sub when (sel = "001") else
				incr when (sel = "010") else
				comp when (sel = "011") else
				shiftl when (sel = "100") else
				shiftr when (sel = "101") else
				rotal when (sel = "110") else
				rotar when (sel = "111") else
				"0000";

	Zero <=  somaZero when (sel = "000") else
				subZero when (sel = "001") else
				incrZero when (sel = "010") else
				invZero when (sel = "011") else
				slZero when (sel = "100") else
				srZero when (sel = "101") else
				rlZero when (sel = "110") else
				rrZero when (sel = "111") else
				'0';
				
				
				
	Cout <=  somaCout when (sel = "000") else
				subCout when (sel = "001") else
				incrCout when (sel = "010") else
				invCout when (sel = "011") else
				slCout when (sel = "100") else
				srCout when (sel = "101") else
				rlCout when (sel = "110") else
				rrCout when (sel = "111") else
				'0';
				
				
	Negativo <=  somaNeg when (sel = "000") else
				subNeg when (sel = "001") else
				incrNeg when (sel = "010") else
				invNeg when (sel = "011") else
				slNeg when (sel = "100") else
				srNeg when (sel = "101") else
				rlNeg when (sel = "110") else
				rrNeg when (sel = "111") else
				'0';
				
				
				
	Overflow <=  somaOV when (sel = "000") else
				subOV when (sel = "001") else
				incrOV when (sel = "010") else
				invOV when (sel = "011") else
				slOV when (sel = "100") else
				srOV when (sel = "101") else
				rlOV when (sel = "110") else
				rrOV when (sel = "111") else
				'0';
				
	
	

end Behavioral;

