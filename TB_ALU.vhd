----------------------------------------------------------------------------------
-- Engineer: Adrián Hernández 
-- Fecha: 22/06/2022
-- TEST - ALU
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
 
ENTITY TB_ALU IS
END TB_ALU;
 
ARCHITECTURE behavior OF TB_ALU IS 

    COMPONENT alu
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         operacion : IN  std_logic_vector(3 downto 0);
         salida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal operacion : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(7 downto 0);
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          a => a,
          b => b,
          operacion => operacion,
          salida => salida
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.
      a <= "00001010";	
		b <= "00001000";
		operacion <= "0000";
		wait for 10 ns;
		operacion <= "0001";
		wait for 10 ns;
		operacion <= "0010";
		wait for 10 ns;
		operacion <= "0011";
		wait for 10 ns;
		operacion <= "0100";
		wait for 10 ns;
		operacion <= "0101";
		wait for 10 ns;
		operacion <= "0110";
		wait for 10 ns;
		operacion <= "0111";
		wait for 10 ns;
		operacion <= "1000";
		wait for 10 ns;
		operacion <= "1001";
		wait for 10 ns;
		operacion <= "1010";
		wait for 10 ns;
		operacion <= "1011";
		wait for 10 ns;
		operacion <= "1111";
		wait for 10 ns;
      -- insert stimulus here 
      wait;
   end process;

END;