library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity set_calc_sim is
  port (clk : in std_logic;
    reset : in std_logic;
    final_itt : out std_logic
  );
end set_calc_sim;

architecture behaviour of set_calc_sim is
  type state_type is (reset_state, count_state, output_state);
  signal state, next_state: state_type;
  signal counter, next_counter : std_logic_vector(24 downto 0);
begin
  statereg: process (clk)
  begin
    if (clk'event and clk = '1') then
      if reset = '1' then
        state <= reset_state;
        counter <= "0000000000000000000000000";
      else
        state <= next_state;
        counter <= next_counter;
      end if;
    end if;
  end process;
  
  combinatorial: process (state, counter)
    begin
      case state is
        when reset_state =>
          final_itt <= '0';
          next_counter <= "0000000000000000000000000";
          next_state <= count_state;

        when count_state =>
          final_itt <= '0';
          next_counter <= std_logic_vector(unsigned(counter) + 1);
          if(counter(24) = '1')then
            next_state <= output_state;
          else
            next_state <= count_state;
          end if;
            
        when output_state =>
          final_itt <= '1';
          next_counter <= "0000000000000000000000000";
          next_state <= count_state;
          
      end case;
  end process;
end behaviour;