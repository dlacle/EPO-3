library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_fsm is
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
            mode            : out std_logic_vector ( 1 downto 0);    
            frame_begin     : out std_logic
    );
end main_fsm;



architecture behavioural of main_fsm is

type state_type is (idle,idle_startup, opcode_wel, idle_wel, opcode_unprotect, data_unprotect, idle_unprotect);   
 signal count: integer:=1;

begin

    statereg: process (clk25)
    begin
      if (clk25'event and clk25 = '1') then
        if reset = '1' then
          state <= idle_startup; 
          clkcount <= 0;
          opcode <= "00000000";
          debug <= "00000000";
        else
          clkcount <= new_clkcount;
          state <= new_state;
          opcode <= new_opcode;
          debug <= new_debug;

        end if;
      end if;
    end process;   


    combinatorial: process (state, clk25, clkcount, opcode, debug)
    begin
      case state is
        when startup_state =>
            mode = "000";
        if (startup_done = '1') then
            new_state       <= opcode_wel;
        else
            new_state       <= startup;
        end if;
        
        
        when chip_erase_state =>
            mode = "001";
        if chip_erase_done = '1' then
            new_state       <= write_state;
        else
            new_state       <= chip_erase_state;
        end if;
        
        when write_state =>
            mode = "010";
        if dead_time = '1' then

      end case;
    end process;
    debug_leds <= debug;
    end architecture behavioural;