library ieee;
use ieee.std_logic_1164.all;
 
entity color_calc is
   port(iterations : in std_logic_vector(6 downto 0);
			color : out std_logic_vector(2 downto 0)
			);
end color_calc;
 
architecture behavior of color_calc is

begin

process(iterations)
  begin
    if(iterations(6) = '1') then
      color <= "111";
    elsif (iterations(5) = '1') then
      color <= "111";
    elsif (iterations(4) = '1' and iterations(3) = '1') then
      color <= "001";
	 elsif (iterations(4) = '1' and iterations(3) = '0') then
      color <= "101";
    elsif (iterations(3) = '1' and iterations(2) = '1') then
      color <= "010";
	 elsif (iterations(3) = '1' and iterations(2) = '0')then
		color <= "100";
    elsif (iterations(2) = '1') then
      color <= "011";
    elsif (iterations(1) = '1') then
      color <= "111";
    elsif (iterations(0) = '1') then
      color <= "111";
    else
      color <= "111";
    end if;
end process;
   
end behavior;
