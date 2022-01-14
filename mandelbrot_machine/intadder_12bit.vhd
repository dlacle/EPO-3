library IEEE;
use IEEE.std_logic_1164.ALL;
entity intadder_13bit is
   port(x   : in  std_logic_vector(12 downto 0);
        y   : in  std_logic_vector(12 downto 0);
        sumintadder : out std_logic_vector(12 downto 0));
end intadder_13bit;
architecture behaviour of intadder_13bit is

component fa is
   Port ( a : in  STD_LOGIC;
          b : in  STD_LOGIC;
          cin : in  STD_LOGIC;
          s : out  STD_LOGIC;
          cout : out  STD_LOGIC);
end component;

signal cary: std_logic_vector(12 downto 0);
signal co:std_logic;
begin
     a0: fa port map (x(0),y(0),'0',sumintadder(0),cary(0));
     a1: fa port map (x(1),y(1),cary(0),sumintadder(1),cary(1));
     a2: fa port map (x(2),y(2),cary(1),sumintadder(2),cary(2));
     a3: fa port map (x(3),y(3),cary(2),sumintadder(3),cary(3));
     a4: fa port map (x(4),y(4),cary(3),sumintadder(4),cary(4));
     a5: fa port map (x(5),y(5),cary(4),sumintadder(5),cary(5));
     a6: fa port map (x(6),y(6),cary(5),sumintadder(6),cary(6));
     a7: fa port map (x(7),y(7),cary(6),sumintadder(7),cary(7));
     a8: fa port map (x(8),y(8),cary(7),sumintadder(8),cary(8));
     a9: fa port map (x(9),y(9),cary(8),sumintadder(9),cary(9));
     a10: fa port map (x(10),y(10),cary(9),sumintadder(10),cary(10));
     a11: fa port map (x(11),y(11),cary(10),sumintadder(11),cary(11));
     a12: fa port map (x(12),y(12),cary(11),sumintadder(12),cary(12));

end behaviour;
