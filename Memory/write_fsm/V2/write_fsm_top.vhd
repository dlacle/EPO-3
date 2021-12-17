library IEEE;
use IEEE.std_logic_1164.all;

entity write_fsm_top is
	port (
	      clk50     : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        debug_leds : out std_logic_vector(7 downto 0);
        frame_full : out std_logic;
        frame_begin : in std_logic
      );
end entity write_fsm_top;



architecture structural of write_fsm_top is

  component gen25mhz is
      port (clk50mhz	: in  std_logic;
            clk25mhz	: out std_logic
			     );
  end component gen25mhz;
  
  component write_fsm is
   port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
        debug_leds : out std_logic_vector(7 downto 0);
        frame_full : out std_logic;
        frame_begin : in std_logic
    );
  end component write_fsm;
  

  signal clk : std_logic;
  
begin
  u1: gen25mhz port map(clk50mhz => clk50,
                        clk25mhz => clk
                        );
                        
  u2: write_fsm port map(clk25 => clk,
                        reset => reset,
                        cs => cs,
                        sck => sck,
                        mosi => mosi,
                        miso => miso,
								        debug_leds => debug_leds,
								        frame_full => frame_full,
								        frame_begin => frame_begin
                        );


end architecture structural;