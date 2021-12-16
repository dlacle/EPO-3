library IEEE;
use IEEE.std_logic_1164.all;

entity main_tb is
end entity main_tb;
    
architecture structural of main_tb  is

    component main_fsm_top 
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
    
signal clk50,reset,cs,sck,mosi,miso,h_sync,v_sync,red,green,blue:std_logic;

begin

    lbl0: main_fsm_top port map(	clk50 => clk50,
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


        clk50 <= 	'0' after 0 ns,
                    '1' after 10 ns when clk50/= '1' else '0' after 10 ns; 
                    
        reset <= 	'1' after 0 ns,
                    '0' after 50 ns;

end architecture structural;