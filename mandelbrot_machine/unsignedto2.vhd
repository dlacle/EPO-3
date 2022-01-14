library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

entity unsignedto2 is
	port( count_y : in std_logic_vector(11 downto 0);
	      count_y_2s: out std_logic_vector(11 downto 0)
		);
end unsignedto2;

architecture behaviour of unsignedto2 is
begin
	process(count_y)
	begin 
			count_y_2s <= 	std_logic_vector(unsigned(NOT(count_y))+"000000000001"); 
	end process;
		
end behaviour;
