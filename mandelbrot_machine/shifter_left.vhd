library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shifter_left is 
port ( pixel_in : in std_logic_vector(11 downto 0);
s_out : out std_logic_vector(11 downto 0)
);
end entity shifter_left; 

architecture behavioural of shifter_left is 
component shifter_left_2 is 
port ( pixel_in : in std_logic_vector(11 downto 0);
s_out : out std_logic_vector(11 downto 0)
);
end component shifter_left_2; 
signal s_1 :std_logic_vector(11 downto 0);
begin                                
SL0: shifter_left_2 port map(pixel_in,s_1);
SL1: shifter_left_2 port map(s_1,s_out);
end architecture behavioural;

