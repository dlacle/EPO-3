library IEEE;
use IEEE.std_logic_1164.ALL;

entity top_top_level_tb is
end top_top_level_tb;

architecture behaviour of top_top_level_tb is
component top_top_level is
    Port (
      clk : in std_logic;
      reset : in std_logic;
			pos : in std_logic_vector (2 downto 0);
			zoom : in std_logic_vector (2 downto 0);
			cs        : out std_logic;
      sck       : out std_logic;
      mosi      : out std_logic;
      miso      : in  std_logic;
      h_sync     : out std_logic;
      v_sync     : out std_logic;
      red       : out std_logic;
      green     : out std_logic;
      blue      : out std_logic;
      frame_ready: out std_logic
      );
end component;


signal clk : std_logic;
signal reset : std_logic;
signal pos: std_logic_vector(2 downto 0);
signal zoom : std_logic_vector(2 downto 0);
signal cs, sck, mosi, miso : std_logic;
signal h_sync, v_sync, red, green, blue : std_logic;
signal frame_ready : std_logic;
begin
test: top_top_level port map (clk, reset, pos, zoom, cs, sck, mosi, miso, h_sync, v_sync, red, green, blue, frame_ready);
clk <= '0' after 0 ns,
'1' after 20 ns when clk /= '1' else '0' after 20 ns;
reset <= '1' after 0 ns,
'0' after 80 ns;
zoom <= "000" after 0 ns,
"000" after 900000 ns;
pos <= "000" after 0 ns,
"000" after 900000 ns;
miso <= '0' after 0 ns,
'1' after 1440 ns when miso /= '1' else '0' after 80 ns;
end behaviour;

