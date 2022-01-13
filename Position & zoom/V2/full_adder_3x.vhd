library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_3x is
    Port ( a : in  STD_LOGIC_VECTOR (11 downto 0);
           b : in  STD_LOGIC_VECTOR (11 downto 0);
           s : out  STD_LOGIC_VECTOR (11 downto 0);
           cout : out  STD_LOGIC);
end full_adder_3x;

architecture Behavioral of full_adder_3x is
component fa is
   Port ( a : in  STD_LOGIC;
          b : in  STD_LOGIC;
          cin : in  STD_LOGIC;
          s : out  STD_LOGIC;
          cout : out  STD_LOGIC);
end component;
component ha is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;
signal c: STD_LOGIC_VECTOR (10 downto 0);

begin
ha1: ha port map( a =>a(0),b => b(0),c=>c(0),s=>s(0));
fa1:fa port map( a =>a(1),b => b(1),cin=>c(0),s=>s(1),cout=>c(1));
fa2:fa port map( a =>a(2),b => b(2),cin=>c(1),s=>s(2),cout=>c(2));
fa3:fa port map( a =>a(3),b => b(3),cin=>c(2),s=>s(3),cout=>c(3));
fa4:fa port map( a =>a(4),b => b(4),cin=>c(3),s=>s(4),cout=>c(4));
fa5:fa port map( a =>a(5),b => b(5),cin=>c(4),s=>s(5),cout=>c(5));
fa6:fa port map( a =>a(6),b => b(6),cin=>c(5),s=>s(6),cout=>c(6));
fa7:fa port map( a =>a(7),b => b(7),cin=>c(6),s=>s(7),cout=>c(7));
fa8:fa port map( a =>a(8),b => b(8),cin=>c(7),s=>s(8),cout=>c(8));
fa9:fa port map( a =>a(9),b => b(9),cin=>c(8),s=>s(9),cout=>c(9));
fa10:fa port map( a =>a(10),b => b(10),cin=>c(9),s=>s(10),cout=>c(10));
fa11:fa port map( a =>a(11),b => b(11),cin=>c(10),s=>s(11),cout=>cout);
end Behavioral;

