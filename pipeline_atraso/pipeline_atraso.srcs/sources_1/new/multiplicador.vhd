----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2023 11:21:48
-- Design Name: 
-- Module Name: multiplicador - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplicador is
    Port ( clk : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           mult_out : out STD_LOGIC_VECTOR (63 downto 0));
end multiplicador;

architecture Behavioral of multiplicador is

    signal regA, regB: STD_LOGIC_VECTOR (31 downto 0);
    signal saida: STD_LOGIC_VECTOR (63 downto 0); 
    
    
--COMPONENT mult_gen_0
  --PORT (
    --A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    --B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    --P : OUT STD_LOGIC_VECTOR(63 DOWNTO 0) 
  --); 

   
COMPONENT mult_pipe
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(63 DOWNTO 0) 
  );
END COMPONENT;
begin
  
  
 -- mult_test : mult_gen_0
  --PORT MAP (
   -- A => A,
   -- B => B,
    --P => P
  --);
  
  mult_test_pipe : mult_pipe
  PORT MAP (
    CLK => CLK,
    A => regA,
    B => regB,
    P => saida
  );
    
process (clk)begin
    if rising_edge(clk) then
        regA <= A; 
    end if;
end process;

process (clk)begin
    if rising_edge(clk) then
        regB <= B; 
    end if;
end process;

process (clk)begin
    if rising_edge(clk) then
        mult_out <= saida; 
    end if;
end process;



end Behavioral;
