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
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
        h_sync     : out std_logic;
        v_sync     : out std_logic;
        red       : out std_logic;
        green     : out std_logic;
        blue      : out std_logic
      );
	end component;

	signal clk50, reset, cs, sck, mosi, miso, h_sync, v_sync, red, green, blue :std_logic; --start_read
	
begin
	
	lbl0: mem_test_top port map(	clk50 => clk50,
					reset => reset,
					cs => cs,
					sck => sck,
					mosi => mosi,
					miso => miso,
					h_sync => h_sync,
          v_sync => v_sync,
					red => red, 
          green => green,
          blue => blue                         
					);
	
	clk50 <= 		'0' after 0 ns,
			'1' after 10 ns when clk50/= '1' else '0' after 10 ns; 
			
	reset <= 	'1' after 0 ns,
			'0' after 50 ns;
			
	--start_read <= '0' after 0 ns,
	--              '1' after 460 ns,
	--              '0' after 500 ns,
	--              '1' after 32000 ns, 
	--              '0' after 32040 ns,
	--              '1' after 63000 ns, 
	--              '0' after 63040 ns;
	               
	miso <= '0' after 0 ns,
	        '1' after 1880 ns,
	        '0' after 1920 ns,
	        '1' after 1960 ns,
	        '0' after 2000 ns,
	        '1' after 2040 ns,
	        '0' after 2080 ns,
	        '1' after 2120 ns,
	        '0' after 2160 ns,
	        '1' after 2200 ns,
	        '0' after 2240 ns,
	        '1' after 2280 ns,
	        '0' after 2320 ns;       
	        
  

end architecture structural;
