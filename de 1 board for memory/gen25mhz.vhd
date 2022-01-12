library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity gen25mhz is
  	 port ( clk50mhz: in std_logic;
  	 clk25mhz: out std_logic);
end gen25mhz;
  
architecture bhv of gen25mhz is
  
    signal count: integer:=1;
    signal tmp : std_logic := '0';
  
begin
  
    process(clk50mhz, tmp)
    begin
    if(clk50mhz'event and clk50mhz='1') then
      count <=count+1;
      if (count = 1) then
        tmp <= NOT tmp;
        count <= 1;
      end if;
    end if;
    clk25mhz <= tmp;
    end process;
end bhv;
