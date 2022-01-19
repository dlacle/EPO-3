library IEEE;
use IEEE.std_logic_1164.ALL;
entity detect_divergence is
  port(sumintadder  : in  std_logic_vector(13 downto 0);
      sum           : out std_logic_vector(11 downto 0);
      div           : out std_logic
);
end detect_divergence;

architecture behavior of detect_divergence is

begin 

process(sumintadder)
begin
  if(sumintadder(13)='0') then
	 if(sumintadder(12)='1' or sumintadder(11)='1' or sumintadder(10)='1') then
	   div <='1';
	   sum(11)<='0';
	   sum(10 downto 0)<=sumintadder(10 downto 0);
	 else
 	   div <='0';
	   sum(11)<='0';
	   sum(10 downto 0)<=sumintadder(10 downto 0);
	 end if;
  --elsif(sumintadder(13)='1') then 
  else
    if(sumintadder(12)='0' or sumintadder(11)='0' or sumintadder(10)='0') then
      div <='1';
      sum(11)<='1';
      sum(10 downto 0)<=sumintadder(10 downto 0);
    else
      div <='0';
      sum(11)<='1';
      sum(10 downto 0)<=sumintadder(10 downto 0);
    end if;
  end if;
end process;

end behavior;