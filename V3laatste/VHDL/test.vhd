library IEEE;
use IEEE.std_logic_1164.ALL;
entity main_tb is 
end main_tb;


architecture behaviour of main_tb is
component main is
port(clk : in std_logic;
reset: in std_logic;
zoom : in std_logic_vector(2 downto 0);
position : in std_logic_vector(2 downto 0);
pixel_ready : in std_logic;
new_coordinate : out std_logic;
a : out std_logic_vector(11 downto 0);
b : out std_logic_vector(11 downto 0);
frame_ready : out std_logic
);
end component;



signal clk : std_logic;
signal reset : std_logic;
signal zoom : std_logic_vector(2 downto 0);
signal position: std_logic_vector(2 downto 0);
signal pixel_ready : std_logic;
signal new_coordinate : std_logic;
signal frame_ready : std_logic;
signal a : std_logic_vector(11 downto 0);
signal b : std_logic_vector(11 downto 0);
begin
test: main port map (clk, reset,zoom, position, pixel_ready, new_coordinate,a, b, frame_ready);
clk <= '0' after 0 ns,
'1' after 20 ns when clk /= '1' else '0' after 20 ns;
reset <= '1' after 0 ns,
'0' after 800 ns,
'1' after 899000 ns,
'0' after 899900 ns;
zoom <= "000" after 0 ns,
"000" after 900000 ns;
position <= "000" after 0 ns,
"000" after 900000 ns;
pixel_ready <= '0' after 0 ns,
'1' after 480 ns when pixel_ready /= '1' else '0' after 720 ns;
end behaviour;
