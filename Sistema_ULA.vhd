
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Sistema_ALU is
	Port ( clk_sys : in STD_LOGIC;           -- Clock do sistema
           reset : in STD_LOGIC;             -- Reset
           sel : in STD_LOGIC_VECTOR(2 downto 0);  -- Seleção de operação usando 4 botões
			  LEDs : out STD_LOGIC_VECTOR(7 downto 0)
         );
end Sistema_ALU;

architecture Behavioral of Sistema_ALU is
    signal operando1, operando2, result : STD_LOGIC_VECTOR(3 downto 0);
    signal Zero, Overflow, Negativo, Cout : STD_LOGIC;
	 signal mostrarResultado : STD_LOGIC;
	 
	 -- Instância do Contador
    component Contador
        Port ( clk_sys : in STD_LOGIC;  
               reset : in STD_LOGIC;
					mostrarResult : out STD_LOGIC;
               valor : out STD_LOGIC_VECTOR(3 downto 0);
					valor2 : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
	 
	 -- Instância da ALU
    component ALU
        Port ( V1 : in  STD_LOGIC_VECTOR(3 downto 0);
               V2 : in  STD_LOGIC_VECTOR(3 downto 0);
               sel : in  STD_LOGIC_VECTOR(2 downto 0);             
               resultado : out  STD_LOGIC_VECTOR(3 downto 0);
               Zero : out STD_LOGIC;
               Overflow : out STD_LOGIC;
               Negativo : out STD_LOGIC;
					Cout : out STD_LOGIC);
    end component;
	 
begin
    -- Conectando o Contador
    contadorM: Contador port map (
        clk_sys => clk_sys,
        reset => reset,
		  mostrarResult => mostrarResultado,
        valor => operando1,
		  valor2 => operando2
    );
	 
	 -- Conectando a ALU
    aluM: ALU port map (
        V1 => operando1,
        V2 => operando2,  -- Aqui usamos o mesmo operando para simplicidade
        sel => sel,
        resultado => result,
        Zero => Zero,
        Overflow => Overflow,
        Negativo => Negativo,
        Cout => Cout
    );
	 
	 process(mostrarResultado)
	 begin
			if mostrarResultado = '0' then
				LEDs(0) <= operando2(0);
				LEDs(1) <= operando2(1);
				LEDs(2) <= operando2(2);
				LEDs(3) <= operando2(3);
				LEDs(4) <= operando1(0);
				LEDs(5) <= operando1(1);
				LEDs(6) <= operando1(2);
				LEDs(7) <= operando1(3);
			else
				LEDs(0) <= result(0);
				LEDs(1) <= result(1);
				LEDs(2) <= result(2);
				LEDs(3) <= result(3);
				LEDs(4) <= Zero;
				LEDs(5) <= Overflow;
				LEDs(6) <= Negativo;
				LEDs(7) <= Cout;
			end if;
		end process;
	 
	 -- Conectando os displays e LEDs
    
	 
	 
end Behavioral;