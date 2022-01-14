library IEEE;
use IEEE.std_logic_1164.ALL;

entity shift_sright is
   port(s     : in  std_logic_vector(2 downto 0);
        s_in : in  std_logic_vector(11 downto 0);
	s_out : out std_logic_vector(11 downto 0)
);
end shift_sright;

