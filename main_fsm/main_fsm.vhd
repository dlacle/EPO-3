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
            frame_begin     : out std_logic
    );
end main_fsm;



architecture behavioural of main_fsm is

type state_type is (idle,idle_startup, opcode_wel, idle_wel, opcode_unprotect, data_unprotect, idle_unprotect);   
 signal count: integer:=1;
 signal tmp : std_logic := '0';

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
        when idle_startup =>
            cs              <= '1';
            sck             <= '0';
            mosi            <= '0';
            new_debug       <= "10000000";
            new_clkcount    <= 0;
        if (clkcount = 10) then
            new_opcode      <= "00000110";
            new_state       <= opcode_wel;
        else
            new_opcode      <= "00000000";
            new_state       <= idle_startup;
            new_clkcount    <= clkcount + 1;
        end if;
        
        
        when opcode_wel =>
            cs              <=  '0';
            sck             <= not(clk25);
            mosi            <= opcode(7-clkcount);
            new_debug       <= "10000001";
            new_opcode      <= opcode;
        
        if (clkcount = 7) then
            new_state       <= idle_wel;
            new_clkcount    <= 0;
        else
            new_state       <= opcode_wel;
            new_clkcount    <= clkcount + 1;
        end if;
        
        when idle_wel =>
            cs              <= '1';
            sck             <= '0';
            mosi            <= '0';
            new_debug       <= "10000010";
        
        if (clkcount = 10) then
            new_opcode      <= "00000001";
            new_state       <= opcode_unprotect;
            new_clkcount    <= 0;
        else
            new_opcode      <= "00000000";
            new_state       <= idle_wel;
            new_clkcount    <= clkcount + 1;
        end if;
        
        when opcode_unprotect =>
            cs              <=  '0';
            sck             <= not(clk25);
            mosi            <= opcode(7-clkcount);
            new_debug       <= "10000100";
            new_opcode      <= opcode;
        
        if (clkcount = 7) then
            new_state       <= data_unprotect;
            new_clkcount    <= 0;
        else
            new_state       <= opcode_unprotect;
            new_clkcount    <= clkcount + 1;
        end if;
        
        when data_unprotect =>
            cs              <= '0';
            sck             <= not(clk25);
            mosi            <= '0';
            new_debug       <= "10001000";
            new_opcode      <= "00000000";
        
        if (clkcount = 7) then
            new_state       <= idle_unprotect;
            new_clkcount    <= 0;
        else
            new_state       <= data_unprotect;
            new_clkcount    <= clkcount + 1;
        end if;
        
        when idle_unprotect =>
            cs              <= '1';
            sck             <= '0';
            mosi            <= '0';
            new_debug       <= "10010000";
        
        if (clkcount = 10) then
            new_opcode      <= "00000110";
            new_state       <= idle;
            new_clkcount    <= 0;
        else
            new_opcode      <= "00000000";
            new_state       <= idle_unprotect;
            new_clkcount    <= clkcount + 1;
        end if;

        when read_state =>
        

      end case;
    end process;
    debug_leds <= debug;
    end architecture behavioural;