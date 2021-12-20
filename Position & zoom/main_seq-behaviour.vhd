library IEEE;
use IEEE.std_logic_1164.ALL;
entity main_seq is
port (  clk		: in std_logic;
		reset : in std_logic;
		zoom : in std_logic_vector(2 downto 0);
		position: in std_logic_vector(2 downto 0);
		pixel_ready : in std_logic;
		frame_ready : out std_logic;
		count_x : out std_logic_vector(11 downto 0);
		count_y_2s : out std_logic_vector(11 downto 0)
	);
end main_seq;

architecture behaviour of main_seq is
 component zoomandposition_control is
	port (	clk		: in 	std_logic;		--25Mhz set calculator clock
		reset		: in 	std_logic;		--from interface 
		count_x		: in	std_logic_vector(11 downto 0);	--from x_counter
		count_y		: in	std_logic_vector(11 downto 0);	--from y_counter
		position	: in	std_logic_vector(2 downto 0);	--input from interface
		zoom		: in	std_logic_vector(2 downto 0);	--input from interface
		pixel_ready	: in 	std_logic;			--pixel ready signal 
		frame_ready	: out	std_logic;			--output that shows that a frame is done to the user 
		pause_count_x	: out	std_logic;			--output that makes sure counter x pauses counting
		pause_count_y	: out	std_logic;			--output that makes sure counter y pauses counting
		reset_x		: out 	std_logic;			--output that makes sure counter x is reset
		reset_y 	: out 	std_logic			--output that makes sure counter x is reset

	);
	end component zoomandposition_control; 
component ycounter is
	
	port(clk       : in  std_logic;
        reset     : in  std_logic;
        pause    : in  std_logic;
        count_out : out std_logic_vector(11 downto 0)
	);
end component ycounter;
component unsignedto2 is
	port( count_y : in std_logic_vector(11 downto 0);
	      count_y_2s: out std_logic_vector(11 downto 0)
		);
end component;

signal count_y: std_logic_vector(11 downto 0);
signal pause_x, pause_y, reset_x, reset_y : std_logic;
begin
CONTROL:zoomandposition_control port map(clk,reset,count_x,count_y,position,zoom,pixel_ready,frame_ready,pause_x, pause_y,reset_x,reset_y);
K1: ycounter port map(clk, reset_x, pause_x, count_x); 
K2: ycounter port map(clk, reset_y, pause_y, count_y); 
CONVERTER: unsignedto2 port map(count_y,count_y_2s);

end behaviour;

