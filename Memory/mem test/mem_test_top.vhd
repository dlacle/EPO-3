library IEEE;
use IEEE.std_logic_1164.all;

entity mem_test_top is
	port (
	      clk50     : in  std_logic;
        reset     : in  std_logic;

        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
	 start_read : out std_logic; 
        inbuf     : out std_logic_vector(7 downto 0)
      );
end entity mem_test_top;


architecture structural of mem_test_top is

  component gen25mhz is
      port (clk50mhz	: in  std_logic;
            clk25mhz	: out std_logic
			     );
  end component gen25mhz;
  
  component mem_test is
    port (
        clk25     : in  std_logic;
        reset     : in  std_logic;

        cs        : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        start_read : out std_logic; 
        inbuf     : out std_logic_vector(7 downto 0)
    );
  end component mem_test;
  

  signal clk : std_logic;
begin
  u1: gen25mhz port map(clk50mhz => clk50,
                        clk25mhz => clk
                        );
                        
  u2: mem_test port map(clk25 => clk,
                        reset => reset,
                        cs => cs,
                        mosi => mosi,
                        miso => miso,
								        start_read => start_read,
                        inbuf => inbuf
                        );

end architecture structural;