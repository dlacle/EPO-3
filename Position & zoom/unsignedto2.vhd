library IEEE;
use IEEE.std_logic_1164.ALL;

entity unsignedto2 is
	port( count_y : in std_logic_vector(11 downto 0);
	      count_y_2s: out std_logic_vector(11 downto 0)
		);
end unsignedto2;

