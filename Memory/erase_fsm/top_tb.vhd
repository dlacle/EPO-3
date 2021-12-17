library IEEE;
use IEEE.std_logic_1164.all;

entity mem_test_top_tb is
end entity mem_test_top_tb;


architecture structural of mem_test_top_tb  is

	component top_m is
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
	end component;

	signal clk25, reset, cs, mosi, miso, start_read,sck,pixel_sync,red,green,blue,h_sync,v_sync :std_logic;
signal color :std_logic_vector(2 downto 0);
	signal inbuf: std_logic_vector (7 downto 0);
begin
	
	lbl0: top_m port map(	clk25 => clk25,
					reset => reset,
					cs => cs,
					mosi => mosi,
					miso => miso,
					pixel_sync => pixel_sync,
					color=>color,
					red => red,
					green => green,
					blue => blue,
					h_sync=>h_sync,
					v_sync=>v_sync
					);
	
	clk25 <= 		'0' after 0 ns,
			'1' after 20 ns when clk25/= '1' else '0' after 20 ns; 
	reset <= 	'0' after 0 ns,
			'1' after 2500 ns,
			'0' after 2800 ns;
	miso <= '0' after 0 ns,
	        '1' after 1700 ns,
	        '0' after 1740 ns,
          '1' after 1780 ns,
	        '0' after 1820 ns,
	        '1' after 1860 ns,
	        '0' after 1900 ns,
	        '1' after 1940 ns,
	        '0' after 1980 ns,
	        '1' after 2020 ns,
	        '0' after 2060 ns;       
	        
  

end architecture structural;
