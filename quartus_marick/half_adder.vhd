library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ha is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end ha;


architecture Behavioral of ha is

begin
    process(a,b) begin
    s <= a xor b;
    c <= a and b;
    end process;
end Behavioral;
