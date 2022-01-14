library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gen_buffer is
port(	clk :in std_logic;
	reset: in std_logic;
	done: in std_logic;
	buff_full: out std_logic;
	memory_ready : out std_logic;
	color_valid: in std_logic;
	data_in	:in std_logic_vector(2 downto 0);
	data_out: out std_logic_vector(23 downto 0)
);
end gen_buffer;
architecture behavioral of gen_buffer is

type state_type is (count_state, wait_state, wait_new_state);
signal state, new_state       : state_type;
signal new_count, count:integer range 0 to 10;
signal new_data,data : std_logic_vector(23 downto 0);

begin

L1:		process(clk, reset)				
		begin

		if (rising_edge(clk)) then
			if (reset = '1') then
			data <=(others => '0');
			count<=0;
			state<=count_state;
			else 
			data <= new_data;
			count 	 <= new_count;
			state<=new_state;
			end if;
		end if;
		end process; 

L2:		process(data_in,data,count,done,state,color_valid)
		begin
		case state is

		when count_state =>
		memory_ready <= '1';
		if color_valid = '1' then 
		new_count <= count+1;	
		new_data <= data(23-3 downto 0) & data_in;
			if count=8 then
			buff_full <= '1';
			new_state <= wait_state;
			new_count<=0;
			else
			buff_full <= '0';
			new_state <= wait_new_state;
			end if;
		else 
		  new_data<=data;
		  new_count<=count;
		  buff_full<='0';
		  new_state<= count_state;
		end if;
		
		when wait_new_state => 
		memory_ready <= '1';
		new_data<=data;
		new_count<=count;
		buff_full<='0';
		if color_valid = '0' then 
		  new_state <= count_state;
		else
      new_state <= wait_new_state;
    end if;
      
		when wait_state =>
		memory_ready <= '0';
		new_data<=data;
		buff_full<='1';
		new_count<=0;
		if done='1' then
		new_state<=count_state;
		else
		new_state<= wait_state;
		end if;

		end case; 
		end process;
 
data_out<= data;
end behavioral;
	
