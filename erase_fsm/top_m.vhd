library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_m is
    port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        pixel_sync	 : out std_logic;
	color		: in std_logic_vector(2 downto 0);
        red          : out std_logic;
        green        : out std_logic;
        blue         : out std_logic;
        h_sync       : out std_logic;
        v_sync       : out std_logic;
        miso      : in  std_logic
    );
end entity top_m;

architecture behave of top_m is 
component erase_test is
    port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        start_erase : in std_logic
    );
end component;

component vga_driver is
port(
	clk          : in  std_logic;
        reset        : in  std_logic;
        pixel_sync	 : out std_logic;
		color		: in std_logic_vector(2 downto 0);
        red          : out std_logic;
	frame	     : out std_logic;
        green        : out std_logic;
        blue         : out std_logic;
        h_sync       : out std_logic;
        v_sync       : out std_logic);
end component;

signal int_frame: std_logic;
begin 

mem: erase_test port map(
	clk25 => clk25,
	reset => reset,
	cs => cs,
	sck => sck,
	mosi => mosi,
	miso => miso,
	start_erase =>	int_frame);

vga: vga_driver port map (
	clk=>clk25,
	reset=>reset,
	pixel_sync=>pixel_sync,
	frame=>int_frame,
	color=>color,
	red=>red,
	green=>green,
	blue=>blue,
	h_sync=>h_sync,
	v_sync=>v_sync);




end behave;

