library IEEE;
use IEEE.std_logic_1164.ALL;

entity main_xtoa is
port (  pixel_x : in std_logic_vector(11 downto 0);
	zoom : in std_logic_vector(2 downto 0);
	position : in std_logic_vector(2 downto 0);
	a	: out std_logic_vector(11 downto 0)
	);
end main_xtoa;

