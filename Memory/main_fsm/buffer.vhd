library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gen_buffer is
port(	clk :in std_logic;
	reset: in std_logic;
	next_color : in std_logic;
	data_in	:in std_logic_vector(2 downto 0);
	data_out: out std_logic_vector(23 downto 0);
	done : out std_logic
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
			count<=0;
			else 
				if (next_color = '0') then
					data <= new_data;
					count 	 <= new_count;
				else 
					data <= data;
					count <= count;
				end if;
			end if;
		end if;
		end process; 

L2:		process(data_in,data,count)
		begin
		
		new_data <= data(23-3 downto 0) & data_in;
		if count=8 then
		  done <= '1';
		  new_count <= 0;
		else
			done <= '0';
			new_count <= count+1;	
		end if;
		end process;
 
data_out<= data;
end behavioral;
		
	
