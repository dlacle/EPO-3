library IEEE;
use IEEE.std_logic_1164.all;

entity main_fsm_top is
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
end entity main_fsm_top;



architecture structural of main_fsm_top is
    component gen25mhz is
        port (clk50mhz	: in  std_logic;
                clk25mhz	: out std_logic
                    );
    end component gen25mhz;
  
    component main_fsm is
        port (  clk25           : in std_logic;
                reset           : in std_logic;
                start_read      : in std_logic;
                dead_time       : in std_logic;
                begin_read      : out std_logic;
                read_done       : in std_logic;
                start_startup   : out std_logic;
                startup_done    : in std_logic; 
                start_erase     : out std_logic;
                chip_erase_done : in std_logic;
                frame_full      : in std_logic;    
                write_done      : in std_logic;            
                start_write     : out std_logic
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
            startup_done : out std_logic; 
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
            start_erase : in std_logic;
            chip_erase_done : out std_logic
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
            write_done      : out std_logic;            
            start_write     : in std_logic
        );
    end component write_fsm;



    component read_fsm is
        port (
            clk25       : in  std_logic;
            reset     : in  std_logic;
            cs        : out std_logic;
            sck       : out std_logic;
            mosi      : out std_logic;
            miso      : in  std_logic;
            
            begin_read : in std_logic;
            read_done : out std_logic;
            color     : out std_logic_vector(2 downto 0)
        );
    end component read_fsm;



    component vga_driver is
        port(
            clk          : in  std_logic;
            reset        : in  std_logic;
            start_read	 : out std_logic;
            dead_time    : out std_logic;
            color		: in std_logic_vector(2 downto 0);
            red          : out std_logic;
            green        : out std_logic;
            blue         : out std_logic;
            h_sync       : out std_logic;
            v_sync       : out std_logic);
    end component vga_driver;


    signal clk : std_logic;
    signal start_read, dead_time, begin_read, read_done, start_startup, startup_done, start_erase, chip_erase_done, frame_full, write_done, start_write  : std_logic;
    signal color : std_logic_vector(2 downto 0);
  
begin
    u1: gen25mhz port map(clk50mhz => clk50,
                            clk25mhz => clk
                            );
                            



    u2: main_fsm port map(clk25 => clk,
                            reset => reset,
                            start_read => start_read, 
                            dead_time => dead_time,
                            begin_read => begin_read,
                            read_done => read_done,
                            start_startup => start_startup,  
                            startup_done  => startup_done,
                            start_erase => start_erase,
                            chip_erase_done => chip_erase_done,
                            frame_full => frame_full,
                            write_done => write_done,
                            start_write => start_write
                            );

    
    u3: startup_fsm port map(clk25 => clk, 
                             reset => reset, 
                             cs => cs, 
                             sck => sck, 
                             mosi => mosi, 
                             miso => miso, 
                             start_startup => start_startup, 
                             startup_done => startup_done,
                             debug_leds => debug_leds
                            );


    u4: erase_fsm port map(clk25 => clk, 
                           reset => reset, 
                           cs => cs, 
                           sck => sck, 
                           mosi => mosi, 
                           miso => miso, 
                           start_erase => start_erase,
                           chip_erase_done => chip_erase_done
                          );                        

    u5: write_fsm port map(clk25 => clk,
                            reset => reset,
                            cs => cs, 
                            sck => sck, 
                            mosi => mosi, 
                            miso => miso, 
                            debug_leds => debug_leds, 
                            frame_full => frame_full,
                            write_done => write_done,
                            start_write => start_write
                            );

    u6: read_fsm port map(clk25 => clk,
                          reset => reset,
                          cs => cs,
                          sck => sck,
                          mosi => mosi, 
                          miso => miso, 
                          begin_read => begin_read,
                          read_done => read_done,
                          color => color
                        );

    u7: vga_driver port map(clk => clk,
                            reset => reset,
                            start_read => start_read,
                            dead_time => dead_time,
                            color => color,
                            red => red, 
                            green => green,
                            blue => blue,
                            h_sync => h_sync,
                            v_sync => v_sync
                            );

end architecture structural;