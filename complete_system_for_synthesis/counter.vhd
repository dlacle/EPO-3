library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
  Port (
    reset : in std_logic;
    real_out : in std_logic_vector (11 downto 0);
    imaginary_out : in std_logic_vector (11 downto 0);
    clk : in std_logic;
    newcoordinate_given : in std_logic;
    memory_ready : in STD_LOGIC;
    diverged : in std_logic;
    real_in : out std_logic_vector (11 downto 0);
    imaginary_in : out std_logic_vector (11 downto 0);
    final_iteration : out  STD_LOGIC;
    counts : out  STD_LOGIC_vector(6 downto 0));
end counter;

architecture behavior of counter is

signal countplus: std_logic_vector(6 downto 0);
signal count: std_logic_vector(6 downto 0);
signal stuck, newstuck, newfinal_iteration, int_final_iteration, div_synced: std_logic;
signal real_outprev, next_real_outprev, imaginary_outprev, next_imaginary_outprev, nextreal_in, int_real_in, nextimaginary_in, int_imaginary_in: std_logic_vector(11 downto 0);

TYPE STATE_TYPE IS (finalvalue, calculating, resetting);
SIGNAL state   : STATE_TYPE ;
signal nextstate   : STATE_TYPE;

begin 
counts <= count;

process(clk, reset)
  begin
    if(rising_edge(clk)) then
      if (reset = '1') then
        state<= resetting;
        count <= "0000000";
        stuck <= '0';
        int_final_iteration <= '0';
        int_imaginary_in <= "000000000000";
        int_real_in <= "000000000000";
      else
        state <= nextstate;
        count <= countplus;
        int_final_iteration <= newfinal_iteration;
        stuck <= newstuck;
        int_real_in <= nextreal_in;
        int_imaginary_in <= nextimaginary_in;
        real_outprev <= next_real_outprev;
        imaginary_outprev <= next_imaginary_outprev;
      end if;
    end if;
end process;

process(clk, diverged)
  begin
    if(diverged = '1') then
      div_synced <= '1';
    else
      div_synced <='0';
    end if;
end process;

process(state, reset, int_final_iteration, count, real_out, imaginary_out, memory_ready, newcoordinate_given, real_outprev, imaginary_outprev, div_synced, stuck, int_imaginary_in, int_real_in)
  begin
    case state is
      when   finalvalue=>
        newfinal_iteration <= '1';
        nextimaginary_in <= int_imaginary_in;
        nextreal_in <= int_real_in;
        if( memory_ready = '1' and newcoordinate_given = '1') then
          nextstate <= resetting;
          countplus <= count;
          newfinal_iteration <= '1';
        else
          nextstate <= finalvalue;
          countplus <= count;
          newfinal_iteration <= '1';
        end if;
        
        if(real_outprev = real_out and imaginary_out = imaginary_outprev) then
          newstuck <= '1';
          next_real_outprev <= real_outprev;
          next_imaginary_outprev <= imaginary_outprev;
        else
          next_real_outprev <= real_out;
          next_imaginary_outprev <= imaginary_out;
          newstuck <= '0';
        end if;

      when   calculating=>
        if(real_outprev = real_out and imaginary_out = imaginary_outprev) then
          next_real_outprev <= real_outprev;
          next_imaginary_outprev <= imaginary_outprev;
          newstuck <= '1';
          countplus <= std_logic_vector((unsigned(count)+"0000001"));
        else
          next_real_outprev <= real_out;
          next_imaginary_outprev <= imaginary_out;
          newstuck <= '0';
          countplus <= std_logic_vector((unsigned(count)+"0000001"));
        end if;

        if(div_synced = '1' or count = "1111111") then
          nextstate <= finalvalue;
          nextimaginary_in <= int_imaginary_in;
          nextreal_in <= int_real_in;
          newfinal_iteration <= '1';
        elsif (stuck = '1') then
          nextstate <= finalvalue;
          nextimaginary_in <= int_imaginary_in;
          nextreal_in <= int_real_in;
          countplus <= "1111111";
          newfinal_iteration <= '1';
        else
          nextstate <= calculating;
          nextreal_in <= real_out;
          nextimaginary_in <= imaginary_out;
          newfinal_iteration <= '0';
        end if;


      when   resetting=>
        nextstate <= calculating;
        countplus <= "0000000";
        nextreal_in <= "000000000000";
        nextimaginary_in <= "000000000000";
        next_real_outprev <= "000000000000";
        next_imaginary_outprev <= "000000000000";
        newfinal_iteration <= '0';
        newstuck <= '0';
    end case;
    
  final_iteration<=int_final_iteration;
  
end process;

final_iteration <= int_final_iteration;
imaginary_in <= int_imaginary_in;
real_in <= int_real_in;

 -- not efficient

end behavior;