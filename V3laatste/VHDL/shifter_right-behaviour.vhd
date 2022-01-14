library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioural of shifter_right is 

signal tmp : std_logic_vector(11 downto 0); 

begin      
	process(s_in)
	begin
	if (s_in(11) ='0') then                            
		tmp(10 downto 0) <= s_in(11 downto 1);
		tmp(11) <= '0'; 
	else
		tmp(10 downto 0) <= s_in(11 downto 1);
		tmp(11) <= '1'; 
	end if;
	end process;
	s_out <= tmp;
end architecture behavioural;
