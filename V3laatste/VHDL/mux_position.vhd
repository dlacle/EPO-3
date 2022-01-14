library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity mux_position is
 port ( C0, C1, C2, C3, C4, C5, C6, C7        : in std_logic_vector(11 downto 0);
    Sel                    : in std_logic_vector(2 downto 0);
    center_a                : out std_logic_vector(11 downto 0));
end mux_position;

architecture behavioural of mux_position is
begin

 with Sel select
 center_a <=     C0 when "000", 
        C1 when "001", 
         C2 when "010", 
        C3 when "011", 
        C4 when "100", 
        C5 when "101", 
        C6 when "110", 
        C7 when "111", 
        "000000000000"  when others;

end behavioural;
