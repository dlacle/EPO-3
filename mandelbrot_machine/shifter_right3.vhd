library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shifter_right3 is 
port ( s_in : in std_logic_vector(11 downto 0);
s_out : out std_logic_vector(11 downto 0)
);
end entity shifter_right3; 

architecture behavioural of shifter_right3 is 
component shifter_right is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;
component shifter_right2 is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;

signal s_1 :std_logic_vector(11 downto 0);
begin                                
SL0: shifter_right port map(s_in,s_1);
SL1: shifter_right2 port map(s_1,s_out);
end architecture behavioural;
