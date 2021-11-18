
library IEEE;
use IEEE.std_logic_1164.all;

entity driver_tb is
end entity driver_tb;

architecture structural of driver_tb is

component top_vga is
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
end component top_vga;

	signal clk          :   std_logic;
        signal reset        :   std_logic;
        signal creset        :   std_logic;
        signal pixel_sync	 :  std_logic;
        signal red          :  std_logic;
        signal green        :  std_logic;
        signal blue         : std_logic;
        signal h_sync       :  std_logic;
        signal v_sync       :  std_logic;

begin

	lbl0: top_vga port map	(	clk			=> clk,
					reset   		=> reset,
					creset   		=> creset,
					pixel_sync			=> pixel_sync,
					red			=> red,
					green			=> green,
					blue			=> blue,
					h_sync			=> h_sync,	
					v_sync			=> v_sync	
				);

	-- 20 ns = 50 MHz
	CLK			<=	'0' after 0 ns,
					'1' after 10 ns when clk /= '1' else '0' after 10 ns;

	creset			<=	'1' after 0 ns,
					'0' after 15 ms;

	reset			<=	'1' after 0 ns,
					'0' after 30 ms;


end architecture structural;
