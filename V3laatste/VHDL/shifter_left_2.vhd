library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shifter_left_2 is 
port ( s_in : in std_logic_vector(11 downto 0);
s_out : out std_logic_vector(11 downto 0)
);
end entity shifter_left_2; 

architecture behavioural of shifter_left_2 is 

begin                        
		s_out(11 downto 2) <= s_in(9 downto 0);
		s_out(1 downto 0) <= "00"; 
end architecture behavioural;
