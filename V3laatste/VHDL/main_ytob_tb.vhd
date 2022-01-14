library IEEE;
use IEEE.std_logic_1164.ALL;

entity main_ytob_tb is
end entity;

architecture behaviour of main_ytob_tb is
component main_ytob is
port (  s_in : in std_logic_vector(11 downto 0);
zoom : in std_logic_vector(2 downto 0);
position : in std_logic_vector(2 downto 0);
b : out std_logic_vector(11 downto 0)
);
end component;


signal s_in : std_logic_vector(11 downto 0);
signal zoom : std_logic_vector(2 downto 0);
signal position : std_logic_vector(2 downto 0);
signal b : std_logic_vector(11 downto 0);
begin
test: main_ytob port map (s_in, zoom, position, b);
s_in <= "000000000000" after 0 ns, --"0"
"000000000001" after 1000 ns, --"1"
"000011001000" after 2000 ns, --"200"
"000000000000" after 3000 ns, --"0"
"000000000001" after 4000 ns, --"1"
"000011001000" after 5000 ns, --"200"
"000000000000" after 6000 ns, --"0"
"000000000001" after 7000 ns, --"1"
"000011001000" after 8000 ns; --"200"
zoom <= "000" after 0 ns,
"001" after 3000 ns,
"010" after 6000 ns;
position <= "000" after 0 ns,
"001" after 6000 ns;

end behaviour;
