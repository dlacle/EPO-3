library IEEE;
use IEEE.std_logic_1164.all;

entity write_fsm_top_tb is
end entity write_fsm_top_tb;

architecture structural of write_fsm_top_tb  is

  component write_fsm_top is
	   port (
	      clk50     : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        frame_full : out std_logic;
        frame_begin : in std_logic
      );
  end component write_fsm_top;

	signal clk50, reset, cs, sck, mosi, miso, frame_full, frame_begin:std_logic; --start_read

begin
	
	lbl0: write_fsm_top port map(	clk50 => clk50,
					reset => reset,
					cs => cs,
					sck => sck,
					mosi => mosi,
					miso => miso,
					frame_full => frame_full,
					frame_begin => frame_begin
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
	        '1' after 3000 ns,
	        '0' after 3040 ns,
	        '1' after 3080 ns,
	        '0' after 3120 ns,
	        '1' after 3160 ns,
	        '0' after 3200 ns,
	        '1' after 3240 ns,
	        '0' after 3280 ns,
	        '1' after 3320 ns,
	        '0' after 3360 ns,
	        '1' after 3400 ns,
	        '0' after 3440 ns;       
	        
  frame_begin <= '0' after 0 ns, 
                 '1' after 325 ms,
                 '0' after 326 ms;

end architecture structural;
