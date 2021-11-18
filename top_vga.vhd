
library IEEE;
use IEEE.std_logic_1164.all;

entity top_vga is
port(
	clk          : in  std_logic;
        reset        : in  std_logic;
        creset        : in  std_logic;
        pixel_sync	 : out std_logic;
        red          : out std_logic;
        green        : out std_logic;
        blue         : out std_logic;
        h_sync       : out std_logic;
        v_sync       : out std_logic);
end top_vga;

architecture arc of top_vga is

--input buffer
component vga_driver is
	   port(
	clk          : in  std_logic;
        reset        : in  std_logic;
        pixel_sync	 : out std_logic;
        red          : out std_logic;
        green        : out std_logic;
        blue         : out std_logic;
        h_sync       : out std_logic;
        v_sync       : out std_logic);
end component vga_driver;


component clk_divider is
	port (
	CLK		: in std_logic;	
	RST		: in std_logic;
	CLK_OUT	: out std_logic
	);
end component clk_divider;
signal VGAclk:std_logic;

 BEGIN
c2: clk_divider port map (
	CLK=>clk,
	RST=>creset,
	CLK_OUT=>VGAclk
);
 C1: vga_driver PORT MAP(VGAclk,reset,pixel_sync,red,green,blue,h_sync,v_sync);
--controller
end arc;