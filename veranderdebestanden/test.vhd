library IEEE;
use IEEE.std_logic_1164.ALL;



entity main_tb is
end entity main_tb;

architecture behaviour of main_tb is
  component main is
   port(clk : in  std_logic;
	reset: in std_logic;
	pixel_ready : in std_logic;
	zoom	: in std_logic_vector(2 downto 0);
	position : in std_logic_vector(2 downto 0);
	a	: out std_logic_vector(11 downto 0);
	b	: out std_logic_vector(11 downto 0);
	frame_ready : out std_logic
	);
end component;

   signal clk		: std_logic;
   signal reset : std_logic;
   signal zoom : std_logic_vector(2 downto 0);
   signal position: std_logic_vector(2 downto 0);
   signal pixel_ready : std_logic;
   signal frame_ready : std_logic;
   signal a : std_logic_vector(11 downto 0);
   signal b : std_logic_vector(11 downto 0);
begin
   test: main port map (clk, reset, pixel_ready,zoom, position,a, b, frame_ready);
 
   reset <= '1' after 0 ns,
            '0' after 80 ns,
		'1'after 2 ms, 
		'0' after 5 ms;
   zoom <= "000" after 0 ns;   
   position <= "000" after 0 ns;
    clk <= '0' AFTER 0 ns,
'1' AFTER 20 ns WHEN clk /= '1' ELSE '0' AFTER 20 ns;
  pixel_ready <= '0' AFTER 0 ns,
'1' AFTER 10 ns WHEN pixel_ready /= '1' ELSE '0' AFTER 10 ns;

       	
end behaviour;