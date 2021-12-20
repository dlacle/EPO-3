library IEEE;
use IEEE.std_logic_1164.ALL;

entity main_ytob is
port (  s_in : in std_logic_vector(11 downto 0);
	zoom : in std_logic_vector(2 downto 0);
	position : in std_logic_vector(2 downto 0);
	b	: out std_logic_vector(11 downto 0)
	);
end main_ytob;

