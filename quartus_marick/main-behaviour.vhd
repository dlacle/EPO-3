library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of main is
component main_xtoa is
port (  pixel_x : in std_logic_vector(11 downto 0);
	zoom : in std_logic_vector(2 downto 0);
	position : in std_logic_vector(2 downto 0);
	a	: out std_logic_vector(11 downto 0)
	);
end component;
component main_ytob is
port (  s_in : in std_logic_vector(11 downto 0);
	zoom : in std_logic_vector(2 downto 0);
	position : in std_logic_vector(2 downto 0);
	b	: out std_logic_vector(11 downto 0)
	);
end component main_ytob;
component main_seq is
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
component register_a is
	port (	clk		: in 	std_logic;
		enable		: in 	std_logic;
		reset		: in 	std_logic;
		a_in 		: in	std_logic_vector(11 downto 0);
		a_out	 	: out 	std_logic_vector(11 downto 0)
	);
end component;
signal pixel_x, pixel_y, a_int, b_int : std_logic_vector(11 downto 0);
begin
I2S: main_seq port map(clk, reset,zoom, position, pixel_ready, frame_ready, pixel_x, pixel_y);
S2X: main_xtoa port map(pixel_x, zoom, position,a_int);
S2Y: main_ytob port map(pixel_y, zoom, position,b_int);
Oa: register_a port map(clk, pixel_ready,reset,a_int,a);
Ob: register_a port map(clk, pixel_ready,reset,b_int,b);
end behaviour;

