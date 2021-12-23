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
            
            color_in  : in std_logic_vector(2 downto 0);
            color_valid : in std_logic;
            
            h_sync     : out std_logic;
            v_sync     : out std_logic;
            red       : out std_logic;
            green     : out std_logic;
            blue      : out std_logic
            );
    end component;
    
signal clk50,reset,cs,sck,mosi,miso, color_valid, h_sync,v_sync,red,green,blue:std_logic;
signal color_in : std_logic_vector(2 downto 0);

begin

    lbl0: main_fsm_top port map(	clk50 => clk50,
                    reset => reset,
                    cs => cs,
                    sck => sck,
                    mosi => mosi,
                    miso => miso,
                    color_in => color_in,
                    color_valid => color_valid,
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
                    
        color_in <= "111" after 100000 ns, 
                    "000" after 100400 ns;
        
        color_valid <= '1' after 0 ns,
                       '0' after 100080 ns,
                       '1' after 100120 ns,
                       '0' after 100200 ns,
                       '1' after 100240 ns,
                       '0' after 100320 ns,
                       '1' after 100360 ns,
                       '0' after 100440 ns,
                       '1' after 100480 ns,
                       '0' after 100560 ns,
                       '1' after 100600 ns,
                       '0' after 100680 ns,
                       '1' after 100720 ns,
                       '0' after 100800 ns,
                       '1' after 100840 ns,
                       '0' after 100920 ns,
                       '1' after 100960 ns;

end architecture structural;