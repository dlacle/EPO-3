library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register_a is
	port (	clk		: in 	std_logic;
		enable		: in 	std_logic;
		a_in 		: in	std_logic_vector(11 downto 0);
		a_out	 	: out 	std_logic_vector(11 downto 0)
	);
end entity register_a;

architecture structural of register_a is 

type	register_state is (						update_state,
							wait_state
							);	

signal state, new_state	: register_state;
begin 
	process (clk)
	begin
		if (rising_edge (clk)) then
				state	<= new_state;	-- going to the new state
		end if;
	end process;

	process(a_in, clk, enable)
	begin
		case state is 
			when update_state =>
				a_out <= a_in;
				new_state <= wait_state;
			when wait_state =>
				if (enable = '1') then 
					new_state <= update_state;
				else 
					new_state <= wait_state;
				end if;
		end case;
	end process;
end architecture structural;
