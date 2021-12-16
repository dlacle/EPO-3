library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_fsm is
    port (  clk25           : in std_logic;
            reset           : in std_logic;
            cs              : out std_logic;
            sck             : out std_logic;
            mosi            : out std_logic;
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
end main_fsm;



architecture behavioural of main_fsm is
    type state_type is (idle, startup_state, erase_state, read_state, write_state);
    signal state, new_state       : state_type;   
    signal start_bit, new_start_bit : std_logic;
    signal cs_in, sck_in, mosi_in : std_logic; 
    signal output_enable : std_logic;

begin

    statereg: process (clk25)
    begin
      if (clk25'event and clk25 = '1') then
        if reset = '1' then
          state <= startup_state;
          start_bit <='0';
        else
          state <= new_state;
          start_bit <= new_start_bit; 
        end if;
      end if;
    end process;

    process (output_enable, cs_in, sck_in, mosi_in)
    begin
        if (output_enable = '1') then
            cs <= cs_in;
            sck <= sck_in;
            mosi <= mosi_in;
        else
            cs <= 'Z';
            sck <= 'Z';
            mosi <= 'Z';
        end if;
    end process;   

    combinatorial: process (state, clk25, start_read, dead_time, read_done, startup_done, chip_erase_done, write_done,frame_full, start_bit)
    begin
      case state is

        when idle => 
            cs_in <= '1';
            sck_in <= '0';
            mosi_in <= '0';
            begin_read      <= '0'; 
            start_startup   <= '0';
            start_erase     <= '0';
            start_write     <= '0';
            output_enable   <= '1';
            new_start_bit      <= start_bit;

            if frame_full ='0' then 
                if start_bit = '0' then
                    new_state   <= startup_state;
                elsif dead_time = '1' then
                    new_state     <= write_state;
                elsif start_read = '1' then
                    new_state     <= read_state;
                end if;  
            else 
                new_start_bit <= '0';
                new_state  <= idle;
            end if;

        when startup_state =>
            cs_in <= '1';
            sck_in <= '0';
            mosi_in <= '0';
            begin_read      <= '0'; 
            start_startup   <= '1';
            start_erase     <= '0';
            start_write     <= '0';
            output_enable   <= '0';
            new_start_bit      <= '1';
            if (startup_done = '1') then
                new_state   <= erase_state;
            else
                new_state   <= startup_state;
            end if;
        
        
        when erase_state =>
            cs_in <= '1';
            sck_in <= '0';
            mosi_in <= '0';
            begin_read      <= '0'; 
            start_startup   <= '0';
            start_erase     <= '1';
            start_write     <= '0';
            output_enable   <= '0';
            new_start_bit   <= start_bit;
            if chip_erase_done = '1' then
                new_state   <= idle;
            else
                new_state   <= erase_state;
            end if;
        
        when write_state =>
            cs_in <= '1';
            sck_in <= '0';
            mosi_in <= '0';
            begin_read      <= '0'; 
            start_startup   <= '0';
            start_erase     <= '0'; 
            start_write     <= '1';
            output_enable   <= '0';  
            new_start_bit   <= start_bit;
            if write_done = '1' then
                new_state   <= idle;
            else
                new_state   <= write_state;
            end if;

        when read_state =>
            cs_in <= '1';
            sck_in <= '0';
            mosi_in <= '0';
            begin_read      <= '1'; 
            start_startup   <= '0';
            start_erase     <= '0'; 
            start_write     <= '0';
            output_enable   <= '0';  
            new_start_bit   <= start_bit;
            if read_done = '1' then
                new_state   <= idle;
            else
                new_state   <= read_state;
            end if;
      end case;
    end process;
end architecture behavioural;