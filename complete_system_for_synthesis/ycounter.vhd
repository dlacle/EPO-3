library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
entity ycounter is
	
	port(clk       : in  std_logic;
        reset     : in  std_logic;
        pause    : in  std_logic;
        count_out : out std_logic_vector(11 downto 0)
	);
end ycounter;


architecture behavioural of ycounter is

signal count, new_count 	: signed (11 downto 0);
begin
	process (clk)
	begin
		if (rising_edge (clk)) then
			if (pause = '0') then
				if (reset = '1') then
					count <= (others => '0'); --reset 'count' to zero
				else
					count <= new_count; --gives signal 'count' the current count value stored in 'new_count'
				end if;
			end if;
		end if;
	end process;
		
	process (count)
	begin
		new_count <= count + "000000000001"; --count up by 1 every clock cycle
	end process;

	count_out <= std_logic_vector (count); --gives output 'count_out' the current count value stored in 'count'

end architecture behavioural;

