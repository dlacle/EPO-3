library IEEE;
use IEEE.std_logic_1164.ALL;
entity top_level_tb is

end entity;

architecture behavior of top_level_tb is

   component top_level is
      port(reset: in std_logic;
clk : in std_logic;
  c : in std_logic_vector (11 downto 0);
  d : in std_logic_vector (11 downto 0);
  newcoordinate_given : in std_logic;
           memory_ready: in std_logic;
           output : out  STD_LOGIC_VECTOR (2 downto 0);
  final_iteration : out  STD_LOGIC);



   end component;

signal clk :  std_logic;
signal c :  std_logic_vector (11 downto 0);
signal d :  std_logic_vector (11 downto 0);
signal newcoordinate_given :  std_logic;
signal memory_ready:  std_logic;
signal  output :   STD_LOGIC_VECTOR (2 downto 0);
signal final_iteration:   STD_LOGIC;
signal  reset :   STD_LOGIC;

begin
test: top_level port map (reset=> reset, clk=>clk, c=>c, d=>d, newcoordinate_given=>newcoordinate_given, memory_ready=>memory_ready, output=>output,  final_iteration=>final_iteration);
 
newcoordinate_given <= '0' after 0 ns, '1' AFTER 1500 ns, '0' AFTER 1650 ns, '1' AFTER 3000 ns, '0' AFTER 3150 ns, '1' AFTER 4500 ns, '0' AFTER 4650 ns, '1' AFTER 6000 ns, '0' AFTER 6150 ns;
memory_ready <= '1' after 0 ns, '1' AFTER 1500 ns, '0' AFTER 1650 ns, '1' AFTER 3000 ns, '0' AFTER 3150 ns, '1' AFTER 4500 ns, '0' AFTER 4650 ns, '1' AFTER 6000 ns, '0' AFTER 6150 ns;
reset <= '1'after 0 ns, '0' after 180 ns;

    clk <= '0' AFTER 0 ns,
'1' AFTER 20 ns WHEN clk /= '1' ELSE '0' AFTER 20 ns;
   
    c <= "111110101010" AFTER 0 ns, "001010101010"  AFTER 1510 ns, "000000001110"  AFTER 3020 ns,  "111011101110"  AFTER 4530 ns;  
d <= "000000100110" AFTER 0 ns, "111000000110" AFTER 1510 ns, "110000101010" AFTER 3020 ns, "111010101010"  AFTER 4530 ns;
     

     
end behavior;
