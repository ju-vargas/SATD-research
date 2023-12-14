library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

 

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

 

entity multiplicador_tb is
--  Port ( );
end multiplicador_tb;

 

architecture Behavioral of multiplicador_tb is

 

component multiplicador is
    Port ( clk : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           mult_out : out STD_LOGIC_VECTOR (63 downto 0));
end component;

 

signal clk :  STD_LOGIC;
 signal          A : STD_LOGIC_VECTOR (31 downto 0);
  signal         B :  STD_LOGIC_VECTOR (31 downto 0);
 signal          mult_out :  STD_LOGIC_VECTOR (63 downto 0);
 
 constant clk_period : time := 20 ns;
begin

 

dut: multiplicador
   port map( clk=> clk,
             A => A,
             B => B,
             mult_out => mult_out);
             
  process
  begin
  wait for 100ns;
  A <= "00000000000000000000000000000001";
  B <= "00000000000000000000000000000010";
  wait for clk_period;
  A <= "00000000000000000000000001000000";
  B <= "00000000000000000000000000010000";
  wait for clk_period;
  A <= "00000000000000000000001000000000";
  B <= "00000000000000000000000011000000";
  wait for clk_period;
  A <= "00000000000000000000000000100000";
  B <= "00000000000000000000100000000000";
  wait for clk_period;
  A <= "00000000000000000000000011000000";
  B <= "00000000000000000000000000010000";
  wait for clk_period;           
  A <= "00000000000000000000000000000001";
  B <= "00000000000000000000000000011100";
  wait for clk_period;  
  wait;
  end process; 
           

 

process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

 


end Behavioral;