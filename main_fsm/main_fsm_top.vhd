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
        
        debug_leds : out std_logic_vector(7 downto 0);

        h_sync     : out std_logic;
        v_sync     : out std_logic;
        red       : out std_logic;
        green     : out std_logic;
        blue      : out std_logic
      );
end entity mem_test_top;



architecture structural of mem_test_top is
    component gen25mhz is
        port (clk50mhz	: in  std_logic;
                clk25mhz	: out std_logic
                    );
    end component gen25mhz;
  
    component main_fsm is
        port (  clk25           : in std_logic;
                reset           : in std_logic;
                cs              : out std_logic;
                sck             : out std_logic;
                mosi            : out std_logic;
                miso            : in std_logic;
                start_read      : in std_logic;
                start_startup   : out std_logic;
                start_erase     : out std_logic;
                frame_full      : in std_logic;   
                frame_begin     : out std_logic
        );
    end component main_fsm;
  

    component startup_fsm is
    port (
            clk25       : in  std_logic;
            reset     : in  std_logic;
            cs        : out std_logic;
            sck       : out std_logic;
            mosi      : out std_logic;
            miso      : in  std_logic;
            start_startup : in std_logic; 
            debug_leds : out std_logic_vector(7 downto 0)
        );
    end component startup_fsm;


    component erase_fsm is
        port (
            clk25       : in  std_logic;
            reset     : in  std_logic;
            cs        : out std_logic;
            sck       : out std_logic;
            mosi      : out std_logic;
            miso      : in  std_logic;
            start_erase : in std_logic
        );
    end component erase_fsm;

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


    component vga_driver is
        port(
            clk          : in  std_logic;
            reset        : in  std_logic;
            pixel_sync	 : out std_logic;
            color		: in std_logic_vector(2 downto 0);
            red          : out std_logic;
            green        : out std_logic;
            blue         : out std_logic;
            h_sync       : out std_logic;
            v_sync       : out std_logic);
    end component vga_driver;


    signal clk : std_logic;
    signal start_read, start_startup, start_erase, frame_full, frame_begin : std_logic;
    signal color : std_logic_vector(2 downto 0);
  
begin
    u1: gen25mhz port map(clk50mhz => clk50,
                            clk25mhz => clk
                            );
                            
    u2: main_fsm port map(clk25 => clk,
                            reset => reset,
                            cs => cs,
                            sck => sck,
                            mosi => mosi,
                            miso => miso,
                            start_startup => start_startup,                
                            start_read => start_read,
                            start_erase => start_erase,
                            frame_full => frame_full,
                            frame_begin => frame_begin
                            );

    
    u3: startup_fsm port map(clk25 => clk, 
                             reset => reset, 
                             cs => cs, 
                             sck => sck, 
                             mosi => mosi, 
                             miso => miso, 
                             start_startup => start_startup, 
                             debug_leds => debug_leds
                            );


    u4: erase_fsm port map(clk25 => clk, 
                           reset => reset, 
                           cs => cs, 
                           sck => sck, 
                           mosi => mosi, 
                           miso => miso, 
                           start_erase => start_erase
                          );                        

    u5: write_fsm port map(clk25 => clk,
                            reset => reset,
                            cs => cs, 
                            sck => sck, 
                            mosi => mosi, 
                            miso => miso, 
                            debug_leds => debug_leds, 
                            frame_full => frame_full,
                            frame_begin => frame_begin
                            );

    u6: vga_driver port map(clk => clk,
                            reset => reset,
                            pixel_sync => start_read,
                            color => color,
                            red => red, 
                            green => green,
                            blue => blue,
                            h_sync => h_sync,
                            v_sync => v_sync
                            );

end architecture structural;