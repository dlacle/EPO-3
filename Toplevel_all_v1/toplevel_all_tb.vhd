library IEEE;
use IEEE.std_logic_1164.all;
--MVP: works without zoom.

entity toplevel_all_tb is 
end entity toplevel_all_tb;


architecture behaviour of toplevel_all_tb is 

component toplevel_all is
	port (
        clk25 : in  std_logic;
        reset: in std_logic;
        pixel_ready : in std_logic;
        zoom	: in std_logic_vector(2 downto 0);
        position : in std_logic_vector(2 downto 0);
        h_sync     : out std_logic;
        v_sync     : out std_logic;
        red       : out std_logic;
        green     : out std_logic;
        blue      : out std_logic

      );
end component;
signal clk, reset,pixel_ready,zoom : std_logic;
signal zoom_in,position_in : std_logic_vector(2 downto 0);
signal h_sync,v_sync,red,green,blue : std_logic;

begin
    test: toplevel_all port map (clk,reset,pixel_ready,zoom_in,position_in,h_sync,v_sync);
    clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns; 
    --pixel_ready <= '1' after 0 ns,
    --'1' after 40 ns when pixel_ready /= '1' else '0' after 40 ns;
    pixel_ready <= '0' after 0 ns, '1' after 10 ns  when pixel_ready /= '1' else '0' after 10 ns;
    zoom_in <= "000" after 0 ns;
    position_in(0) <= '0' after 0 ns;
    position_in(1) <= '0' after 0 ns;
    position_in(2) <= '1' after 0 ns;

end behaviour;
    