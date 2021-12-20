library IEEE;
use IEEE.std_logic_1164.ALL;

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
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
   zoom <= "001" after 0 ns;   position(0) <= '0' after 0 ns;
   position(1) <= '0' after 0 ns;
   position(2) <= '1' after 0 ns;
   pixel_ready <= '0' after 0 ns, '1' after 10 ns  when pixel_ready /= '1' else '0' after 10 ns;
end behaviour;


