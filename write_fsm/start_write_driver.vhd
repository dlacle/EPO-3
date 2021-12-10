
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity start_write_driver is
  port (clk : in std_logic;
    reset : in std_logic;
    start_write : out std_logic
  );
end start_write_driver;


architecture behavioural of start_write_driver is
  type state_type is (start_high, start_low);
  signal state, new_state: state_type;
  signal clkcount, new_clkcount : integer range 0 to 25000001;
begin
  statereg: process (clk)
  begin
    if (clk'event and clk = '1') then
      if reset = '1' then
        state <= start_high; 
      else
        clkcount <= new_clkcount;
        state <= new_state;
      end if;
    end if;
  end process;

  combinatorial: process (state, clk, clkcount)
  begin
    case state is
    when start_low =>
      start_write <= '0';
      new_clkcount <= clkcount + 1;
      if (clkcount = 25000000) then
        new_state <= start_high;
      else
        new_state <= start_low;
      end if;
      
    when start_high =>
      start_write <= '1';
      new_state <= start_low;
      new_clkcount <= 0;
      
 
    end case;
  end process;
end architecture behavioural;


