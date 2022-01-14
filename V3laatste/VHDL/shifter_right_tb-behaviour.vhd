library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of shifter_right_tb is
   component shifter_right
      port(s_in : in  std_logic_vector(11 downto 0);
   	 s_out : out std_logic_vector(11 downto 0)
   );
   end component;
   signal s_in : std_logic_vector(11 downto 0);
   signal s_out : std_logic_vector(11 downto 0);
begin
   test: shifter_right port map (s_in, s_out);
   s_in <= "000000000000" after 0 ns, "000000001100" after 20 ns, "000011000010" after 40 ns;
   
end behaviour;

