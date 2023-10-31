library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador is
    Port ( clk_sys : in STD_LOGIC;  -- Clock do sistema
           reset : in STD_LOGIC;   -- Reset
			  mostrarResult : out STD_LOGIC;  -- 0 quando for para mostrar operandos, 1 quando for o resultado
           valor : out STD_LOGIC_VECTOR(3 downto 0);
			  valor2 : out STD_LOGIC_VECTOR(3 downto 0));
			  
end Contador;

architecture Behavioral of Contador is
    signal count_4s : STD_LOGIC_VECTOR(27 downto 0) := (others => '0');  -- Contador para gerar pulso de 2s
    signal tmp_valor : STD_LOGIC_VECTOR(3 downto 0) := "0000";  -- Valor temporário do contador
	 signal tmp_valor2 : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	 signal tmp_mostrarResult : STD_LOGIC := '0';
	 -- Clock de sistema de 50MHz, 2s = 100,000,000 ciclos
    constant MAX_COUNT_4S : STD_LOGIC_VECTOR(27 downto 0) := "1011111010111100001000000000";
	 constant MAX_COUNT_2s : STD_LOGIC_VECTOR(27 downto 0) := "0101111101011110000100000000";
    -- constant MAX_COUNT_2S : STD_LOGIC_VECTOR(26 downto 0) := "000000000000000000000000011"; -- Para teste	 
    -- constant MAX_COUNT_1S : STD_LOGIC_VECTOR(26 downto 0) := "000000000000000000000000001"; -- Para teste	
begin

	 process(clk_sys, reset)
	 begin
		  if reset = '1' then
				tmp_valor <= "0000";
				tmp_valor2 <="0000";
				tmp_mostrarResult <= '0';
				count_4s <= (others => '0');
		  elsif rising_edge(clk_sys) then
				if count_4s = MAX_COUNT_2S then
					tmp_mostrarResult <= '1';
				end if;
				if count_4s = MAX_COUNT_4S then
				 tmp_mostrarResult <= '0';
				 count_4s <= (others => '0');
						if tmp_valor = "1111" then
							tmp_valor <= "0000";
							tmp_valor2 <= tmp_valor2 + 1;
							if tmp_valor2 = "1111" then
								tmp_valor2 <= "0000";
							end if;
						else
							tmp_valor <= tmp_valor + 1;
					end if;
				else
					count_4s <= count_4s + 1;
				end if;
			end if;
    end process;

    valor <= tmp_valor;
	 valor2 <= tmp_valor2;
	 mostrarResult <= tmp_mostrarResult;
	 
end Behavioral;