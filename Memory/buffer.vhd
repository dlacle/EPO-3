library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gen_buffer is
port(	clk :in std_logic;
	reset: in std_logic;
	data_in	:in std_logic_vector(2 downto 0);
	data_out: out std_logic_vector(23 downto 0)
);
end gen_buffer;
architecture behavioral of gen_buffer is

signal new_count, count:integer range 0 to 10;
signal new_data,data : std_logic_vector(23 downto 0);

begin

L1:		process(clk, reset)				
		begin
		if (rising_edge(clk)) then
			if (reset = '1') then
			data <=(others => '0');
			else 
			data <= new_data;
			count 	 <= new_count;
			end if;
		end if;
		end process; 

L2:		process(data_in,data,count)
		begin
		new_data <= data(23-3 downto 0) & data_in;
		end process;
 
data_out<= data;
end behavioral;
		
	
