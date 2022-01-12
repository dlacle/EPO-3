library IEEE;
use IEEE.std_logic_1164.ALL;

entity main is
   port(clk : in  std_logic;
	reset: in std_logic;
	pixel_ready : in std_logic;
	zoom	: in std_logic_vector(2 downto 0);
	position : in std_logic_vector(2 downto 0);
	newcoordinate : out std_logic;
	a	: out std_logic_vector(11 downto 0);
	b	: out std_logic_vector(11 downto 0);
	frame_ready : out std_logic
	);
end main;

