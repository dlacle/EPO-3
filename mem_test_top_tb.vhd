library IEEE;
use IEEE.std_logic_1164.all;

entity mem_test_top_tb is
end entity mem_test_top_tb;

architecture structural of mem_test_top_tb  is

	component mem_test_top
		port (
        clk50     : in  std_logic;
        reset     : in  std_logic;

        cs        : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
        start_read : out std_logic;
         
        inbuf     : out std_logic_vector(7 downto 0)
    );
	end component;

	signal clk50, reset, cs, mosi, miso, start_read :std_logic;
	signal inbuf: std_logic_vector (7 downto 0);
begin
	
	lbl0: mem_test_top port map(	clk50 => clk50,
					reset => reset,
					cs => cs,
					mosi => mosi,
					miso => miso,
					start_read => start_read,
					inbuf => inbuf
					);
	
	clk50 <= 		'0' after 0 ns,
			'1' after 10 ns when clk50/= '1' else '0' after 10 ns; 
	reset <= 	'0' after 0 ns,
			'1' after 2500 ns;
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
