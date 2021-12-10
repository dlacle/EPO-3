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
        
        debug_leds : out std_logic_vector(7 downto 0)
    );
end write_fsm;


architecture behavioural of write_fsm is
  type state_type is (write_idle, opcode_wel, idle_wel, opcode_write, address_write, data_write, idle_write);
  signal state, new_state: state_type;
  signal clkcount, new_clkcount : integer range 0 to 30000;
  signal opcode, new_opcode : std_logic_vector(7 downto 0) := "00000000";
  signal color_buffer, new_color_buffer : std_logic_vector(23 downto 0) := "111110101100011010001000";
  signal debug, new_debug : std_logic_vector(7 downto 0) := "00000000";
  
begin
  statereg: process (clk25)
  begin
    if (clk25'event and clk25 = '1') then
      if reset = '1' then
        state <= write_idle;
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
    when write_idle =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
      new_debug <= "00000001";
      
      if (clkcount = 10) then
        new_opcode <= "00000110";
        new_state <= opcode_wel;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= write_idle;
        new_clkcount <= clkcount + 1; 
      end if;
      
    
    when opcode_wel =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "00000010";
      new_opcode <= opcode;
      
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
      new_debug <= "00000100";
      
      if (clkcount = 10) then
        new_opcode <= "00000010";
        new_state <= opcode_write;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_wel;
        new_clkcount <= clkcount + 1;
      end if;    
    
      
    when opcode_write =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_debug <= "00001000";
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
      new_debug <= "00010000";
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
      new_debug <= "00100000";
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
      
      if (clkcount = 10) then
        new_opcode <= "00000101";
        new_state <= write_idle;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_write;
        new_clkcount <= clkcount + 1;
      end if;
    
    end case;
  end process;
  debug_leds <= debug;
end architecture behavioural;



