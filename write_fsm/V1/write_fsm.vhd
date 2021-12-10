  library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity write_fsm is
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
end write_fsm;


architecture behavioural of write_fsm is
  type state_type is (idle, opcode_wel, idle_wel, opcode_unprotect, data_unprotect, idle_unprotect, opcode_well, idle_well, opcode_status, data_status, idle_status, opcode_write, address_write, data_write, idle_write, opcode_erase, data_erase, idle_erase, opcode_welll, idle_welll);
  signal state, new_state: state_type;
  signal clkcount, new_clkcount : integer range 0 to 30000;
  signal opcode, new_opcode : std_logic_vector(7 downto 0) := "00000000";
  signal debug, new_debug : std_logic_vector(7 downto 0) := "00000000";
  signal inbuf0, inbuf1,new_inbuf,inbuf  :  std_logic_vector(7 downto 0) := "00000000";
  
begin
  statereg: process (clk25)
  begin
    if (clk25'event and clk25 = '1') then
      if reset = '1' then
        state <= idle; 
      else
        clkcount <= new_clkcount;
        state <= new_state;
        opcode <= new_opcode;
        debug <= new_debug;
        inbuf <= new_inbuf;
      end if;
    end if;
  end process;

  combinatorial: process (state, clk25, clkcount, opcode, debug, start_write, inbuf, inbuf0, miso)
  begin
    case state is
    when idle =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "11000000";
      new_clkcount <= 0;
      new_inbuf <= inbuf;
      if (start_write = '1') then
        new_opcode <= "00000110";
        new_state <= opcode_wel;
      else
        new_opcode <= "00000000";
        new_state <= idle;
      end if;
      
    
    when opcode_wel =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "00000001";
      new_opcode <= opcode;
      new_inbuf <= inbuf;
      if (clkcount = 7) then
        new_state <= idle_wel;
        new_clkcount <= 0;
      else
        new_state <= opcode_wel;
        new_clkcount <= clkcount + 1;
      end if;
    
    when idle_wel =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "00000010";
      new_inbuf <= inbuf;
      if (clkcount = 10) then
        new_opcode <= "00000001";
        new_state <= opcode_unprotect;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_wel;
        new_clkcount <= clkcount + 1;
      end if;
    
    when opcode_unprotect =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "00000100";
      new_opcode <= opcode;
      new_inbuf <= inbuf;
      if (clkcount = 7) then
        new_state <= data_unprotect;
        new_clkcount <= 0;
      else
        new_state <= opcode_unprotect;
        new_clkcount <= clkcount + 1;
      end if;
    
    when data_unprotect =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= '0';
      new_debug <= "00001000";
      new_opcode <= "00000000";
      new_inbuf <= inbuf;
      if (clkcount = 7) then
        new_state <= idle_unprotect;
        new_clkcount <= 0;
      else
        new_state <= data_unprotect;
        new_clkcount <= clkcount + 1;
      end if;
      
    when idle_unprotect =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "00010000";
      new_inbuf <= inbuf;
      if (clkcount = 10) then
        new_opcode <= "00000110";
        new_state <= opcode_well;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_unprotect;
        new_clkcount <= clkcount + 1;
      end if;
      
    when opcode_well =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "00000001";
      new_opcode <= opcode;
      new_inbuf <= inbuf;
      if (clkcount = 7) then
        new_state <= idle_well;
        new_clkcount <= 0;
      else
        new_state <= opcode_well;
        new_clkcount <= clkcount + 1;
      end if;
    
    when idle_well =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "00000010";
      new_inbuf <= inbuf;
      if (clkcount = 10) then
        new_opcode <= "11011000";
        new_state <= opcode_erase;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_well;
        new_clkcount <= clkcount + 1;
      end if;
    
    
    when opcode_erase =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "00000100";
      new_opcode <= opcode;
      new_inbuf <= inbuf;
      if (clkcount = 7) then
        new_state <= data_erase;
        new_clkcount <= 0;
      else
        new_state <= opcode_erase;
        new_clkcount <= clkcount + 1;
      end if;
    
    when data_erase =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= '0';
      new_debug <= "00001000";
      new_opcode <= "00000000";
      new_inbuf <= inbuf;
      if (clkcount = 23) then
        new_state <= idle_erase;
        new_clkcount <= 0;
      else
        new_state <= data_erase;
        new_clkcount <= clkcount + 1;
      end if;
      
    when idle_erase =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "00010000";
      new_inbuf <= inbuf;
      if (start_write = '1') then
        new_opcode <= "00000110";
        new_state <= opcode_welll;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_erase;
      end if;
    
    
    when opcode_welll =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "00100000";
      new_opcode <= opcode;
      new_inbuf <= inbuf;
      if (clkcount = 7) then
        new_state <= idle_welll;
        new_clkcount <= 0;
      else
        new_state <= opcode_welll;
        new_clkcount <= clkcount + 1;
      end if;
    
    when idle_welll =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "01000000";
      new_inbuf <= inbuf;
      if (clkcount = 10) then
		  new_opcode <= "00000010";
        new_state <= opcode_write;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_welll;
        new_clkcount <= clkcount + 1;
      end if;
      
    when opcode_status =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "10000000";
      new_opcode <= opcode;
      new_inbuf <= inbuf;
      if (clkcount = 7) then
        new_state <= data_status;
        new_clkcount <= 0;
      else
        new_state <= opcode_status;
        new_clkcount <= clkcount + 1;
      end if;  
    
    
    when data_status =>
      cs <=  '0';
      sck <= clk25;
      mosi <= '0';
      new_debug <= "00001000";
      new_opcode <= "00000000";
      inbuf0(clkcount) <= miso;
      if (clkcount = 7) then
        new_state <= idle_status;
        new_inbuf<=inbuf0;
        new_clkcount <= 0;
      else
        new_state <= data_status;
        new_clkcount <= clkcount + 1;
        new_inbuf <= inbuf;
      end if;
    
    when idle_status =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "01000000";
      new_inbuf <= inbuf;
      if (clkcount = 10) then
        new_state <= idle;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_status;
        new_clkcount <= clkcount + 1;
      end if;
    
    
      
    when opcode_write =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "10000000";
      new_opcode <= opcode;
      if (clkcount = 7) then
        new_state <= address_write;
        new_clkcount <= 0;
      else
        new_state <= opcode_write;
        new_clkcount <= clkcount + 1;
      end if;
      
    when address_write =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= '0';
      new_debug <= "00001000";
      new_opcode <= "00000000";
      if (clkcount = 23) then
        new_state <= data_write;
        new_clkcount <= 0;
      else
        new_state <= address_write;
        new_clkcount <= clkcount + 1;
      end if;
      
    when data_write =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= '0';
      new_debug <= "00001000";
      new_opcode <= "00000000";
      if (clkcount = 639) then
		    new_opcode <= "00000000";
        new_state <= idle_write;
        new_clkcount <= 0;
      else
        new_state <= data_write;
        new_clkcount <= clkcount + 1;
      end if;
      
      
    when idle_write =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "01000000";
      new_inbuf <= inbuf;
      if (clkcount = 10) then
        new_opcode <= "00000101";
        new_state <= opcode_status;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_write;
        new_clkcount <= clkcount + 1;
      end if;
    
    end case;
  end process;
  debug_leds <= inbuf;
end architecture behavioural;
