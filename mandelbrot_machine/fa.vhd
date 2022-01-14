library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fa is
   Port ( a : in  STD_LOGIC;
          b : in  STD_LOGIC;
          cin : in  STD_LOGIC;
          s : out  STD_LOGIC;
          cout : out  STD_LOGIC);
end fa;

architecture Behavioral of fa is

begin
    process(a,b, cin) begin
    s <= ( a xor b) xor cin;
    cout <= (a and b) or (( a xor b)and cin);
    end process; 
end Behavioral;
