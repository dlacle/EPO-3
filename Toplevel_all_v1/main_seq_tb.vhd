library IEEE;
use IEEE.std_logic_1164.ALL;

entity main_seq_tb is
end main_seq_tb;

architecture behaviour of main_seq_tb is
   component main_seq
   port (  clk		: in std_logic;
   		reset : in std_logic;
   		zoom : in std_logic_vector(2 downto 0);
   		position: in std_logic_vector(2 downto 0);
   		pixel_ready : in std_logic;
   		frame_ready : out std_logic;
   		count_x : out std_logic_vector(11 downto 0);
   		count_y_2s : out std_logic_vector(11 downto 0)
   	);
   end component;
   signal clk		: std_logic;
   signal reset : std_logic;
   signal zoom : std_logic_vector(2 downto 0);
   signal position: std_logic_vector(2 downto 0);
   signal pixel_ready : std_logic;
   signal frame_ready : std_logic;
   signal count_x : std_logic_vector(11 downto 0);
   signal count_y_2s : std_logic_vector(11 downto 0);
begin
   test: main_seq port map (clk, reset, zoom, position, pixel_ready, frame_ready, count_x, count_y_2s);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
   zoom <= "000" after 0 ns,"001" after 0.8 ms,"010" after 1.6 ms,"011" after 2.4 ms,"100" after 3.2 ms,"101" after 4 ms,"110" after 4.8 ms,"111" after 5.6 ms;
   position(0) <= '0' after 0 ns;
   position(1) <= '0' after 0 ns;
   position(2) <= '0' after 0 ns;
   pixel_ready <= '0' after 0 ns, '1' after 10 ns  when pixel_ready /= '1' else '0' after 10 ns;
end behaviour;

