library IEEE;
use IEEE.std_logic_1164.all;

entity write_fsm_top is
	port (
	      clk50     : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        debug_leds : out std_logic_vector(7 downto 0);
        miso      : in  std_logic
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
          start_write : in std_logic
      );
  end component write_fsm;
  

  component start_write_driver is
    port (clk : in std_logic;
      reset : in std_logic;
      start_write : out std_logic
    );
  end component start_write_driver;


  signal clk : std_logic;
  signal start_write : std_logic;
  
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
                        start_write => start_write
                        );

  u3: start_write_driver port map(clk => clk,
                                 reset => reset,
                                 start_write => start_write
                                 );

end architecture structural;