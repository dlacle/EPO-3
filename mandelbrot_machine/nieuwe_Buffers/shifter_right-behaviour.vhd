library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioural of shifter_right is 

begin      
	process(s_in)
	begin
	if (s_in(11) ='0') then                            
		s_out(10 downto 0) <= s_in(11 downto 1);
		s_out(11) <= '0'; 
	else
		s_out(10 downto 0) <= s_in(11 downto 1);
		s_out(11) <= '1'; 
	end if;
	end process;
end architecture behavioural;
