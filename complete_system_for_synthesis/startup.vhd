  library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity startup_fsm is
   port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        start_startup : in std_logic;
        startup_done : out std_logic
    );
end startup_fsm;


architecture behavioural of startup_fsm is
  type state_type is (idle_startup, opcode_wel, idle_wel, opcode_unprotect, data_unprotect, idle_unprotect, startup_done_state);
  signal state, new_state: state_type;
  signal clkcount, new_clkcount : integer range 0 to 10;
  signal opcode, new_opcode : std_logic_vector(7 downto 0) := "00000000";
  signal cs_in, sck_in, mosi_in : std_logic;
  
begin
  statereg: process (clk25)
  begin
    if (clk25'event and clk25 = '1') then
      if reset = '1' then
        state <= idle_startup; 
        clkcount <= 0;
        opcode <= "00000000";
      else
        clkcount <= new_clkcount;
        state <= new_state;
        opcode <= new_opcode;
      end if;
    end if;
  end process;
  
  
    process (start_startup, cs_in)
    begin
       if (start_startup = '1') then
          cs <= cs_in;
       else
          cs <= 'Z';
       end if;
    end process;
    
    process (start_startup, sck_in)
    begin
       if (start_startup = '1') then
          sck <= sck_in;
       else
          sck <= 'Z';
       end if;
    end process;
    
    process (start_startup, mosi_in)
    begin
       if (start_startup = '1') then
          mosi <= mosi_in;
       else
          mosi <= 'Z';
       end if;
    end process;



  combinatorial: process (state, clk25, clkcount, opcode, start_startup)
  begin
    case state is
    when idle_startup =>
      cs_in <=  '1';
      sck_in <= '0';
      mosi_in <= '0';
      new_clkcount <= 0;
      startup_done <= '0';
      
      if (start_startup = '1') then
        new_opcode <= "00000110";
        new_state <= opcode_wel;
      else
        new_opcode <= "00000000";
        new_state <= idle_startup;
      end if;
      
    
    when opcode_wel =>
      cs_in <=  '0';
      sck_in <= not(clk25);
      mosi_in <= opcode(7-clkcount);
      new_opcode <= opcode;
      startup_done <= '0';
      
      if (clkcount = 7) then
        new_state <= idle_wel;
        new_clkcount <= 0;
      else
        new_state <= opcode_wel;
        new_clkcount <= clkcount + 1;
      end if;
    
    when idle_wel =>
      cs_in <=  '1';
      sck_in <= '0';
      mosi_in <= '0';
      startup_done <= '0';
      
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
      cs_in <=  '0';
      sck_in <= not(clk25);
      mosi_in <= opcode(7-clkcount);
      new_opcode <= opcode;
      startup_done <= '0';
      
      if (clkcount = 7) then
        new_state <= data_unprotect;
        new_clkcount <= 0;
      else
        new_state <= opcode_unprotect;
        new_clkcount <= clkcount + 1;
      end if;
    
    when data_unprotect =>
      cs_in <=  '0';
      sck_in <= not(clk25);
      mosi_in <= '0';
      new_opcode <= "00000000";
      startup_done <= '0';
      
      if (clkcount = 7) then
        new_state <= idle_unprotect;
        new_clkcount <= 0;
      else
        new_state <= data_unprotect;
        new_clkcount <= clkcount + 1;
      end if;
      
    when idle_unprotect =>
      cs_in <=  '1';
      sck_in <= '0';
      mosi_in <= '0';
      startup_done <= '0';
      
      if (clkcount = 10) then
        new_opcode <= "00000110";
        new_state <= startup_done_state;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_unprotect;
        new_clkcount <= clkcount + 1;
      end if; 

    when startup_done_state =>
      cs_in <=  '1';
      sck_in <= '0';
      mosi_in <= '0';
      startup_done <= '1';
      
      if (clkcount = 10) then
        new_opcode <= "00000110";
        new_state <= idle_startup;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= startup_done_state;
        new_clkcount <= clkcount + 1;
      end if;    

    end case;
  end process;
end architecture behavioural;


