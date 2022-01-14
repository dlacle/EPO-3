library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zoomandposition_control is
	port (	clk		: in 	std_logic;		--25Mhz set calculator clock
		reset		: in 	std_logic;		--from interface 
		count_x		: in	std_logic_vector(11 downto 0);	--from x_counter
		count_y		: in	std_logic_vector(11 downto 0);	--from y_counter
		position	: in	std_logic_vector(2 downto 0);	--input from interface
		zoom		: in	std_logic_vector(2 downto 0);	--input from interface
		pixel_ready	: in 	std_logic;			--pixel ready signal 
		frame_ready	: out	std_logic;			--output that shows that a frame is done to the user 
		pause_count_x	: out	std_logic;			--output that makes sure counter x pauses counting
		pause_count_y	: out	std_logic;			--output that makes sure counter y pauses counting
		reset_x		: out 	std_logic;			--output that makes sure counter x is reset
		reset_y 	: out 	std_logic;			--output that makes sure counter x is reset
    
    new_coordinate : out std_logic
  
	);
	end entity zoomandposition_control; 

architecture behavioural of zoomandposition_control is
		--self defined control states
	type	control_state is (			reset_state,
							count_x_state,
							count_y_state,
							wait_x_state,
							wait_y_state,
							reset_x_state,
							x_wait_ready,
							y_wait_ready,
							x_wait_1,
							x_wait_2
							);	
		--Two extra signal's of the same type to make propagations from one state to another possible 
	signal	state, new_state :			control_state;
	signal	check :	unsigned(11 downto 0):= "000011001000";
	signal	count_x_unsigned, count_y_unsigned :	unsigned(11 downto 0);
  signal clkcount, new_clkcount : integer range 0 to 2;

begin

	--This process describes the state propagation of the system
	process (clk)
	begin
		if (rising_edge (clk)) then
			if (reset = '1') then
				state <= reset_state;	-- Reset arrow
				check <= "000011001000";
				clkcount <= 0;
			else
				state	<= new_state;	-- going to the new state
				clkcount <= new_clkcount;
			end if;
		end if;
	end process;

	process (count_x, count_y, zoom, position, pixel_ready, state, count_x_unsigned, check, count_y_unsigned)	--proccess that describes the functionallity of the FSM 
	begin
		count_x_unsigned <= unsigned(count_x);
		count_y_unsigned <= unsigned(count_y);
		case state is 
			when reset_state =>
				reset_x <= '1';
				reset_y <= '1';
				frame_ready <= '1';
				pause_count_x <= '0';
				pause_count_y <= '0';
				if ( pixel_ready = '1') then 
					new_state <= count_x_state;
					new_coordinate <= '0';
					new_clkcount <= 0;
				else 
					new_state <= reset_state;
					new_coordinate <= '0';
					new_clkcount <= 0;
				end if;
				
			when count_x_state =>
				reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '0';
				pause_count_y <= '1';
				new_state <= x_wait_1;
				new_coordinate <= '0';
				new_clkcount <= 0;
				
		  when x_wait_1 =>
		    reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '1';
				new_coordinate <= '0';
				new_state <= x_wait_2; 
			
			when x_wait_2 =>
			  reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '1';
				new_coordinate <= '0';
				new_state <= x_wait_ready; 
			
			when x_wait_ready =>
			  reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '1';
				new_coordinate <= '1';
				new_clkcount <= 0;
				if(pixel_ready = '0') then
				  new_state <= wait_x_state;
				else
				  new_state <= x_wait_ready;
				end if;
				
				
			when wait_x_state =>
				reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '1';
				new_coordinate <= '0';
				new_clkcount <= 0;
				if (count_x_unsigned = check) then 
					if (pixel_ready = '1') then 
						new_state <= count_y_state;
					else
						new_state <= wait_x_state;
					end if;
				else
					if (pixel_ready = '1') then 
						new_state <= count_x_state;
					else
						new_state <= wait_x_state;
					end if;
				end if;
				
			when count_y_state =>
				reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '0';
				new_state <= wait_y_state;
				new_coordinate <= '0';
				new_clkcount <= 0;
			
			when y_wait_ready =>
			  reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '1';
				new_coordinate <= '1';
				new_clkcount <= 0;
				if(pixel_ready = '0') then
				  new_state <= wait_y_state;
				else
				  new_state <= y_wait_ready;
				end if;
				
			when wait_y_state =>
				reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '1';
				new_coordinate <= '0';
				new_clkcount <= 0;
				if (count_y_unsigned = check) then 
					if (pixel_ready = '1') then
						new_state <= reset_state;
					else
						new_state <= wait_y_state;
					end if;
				else
					if (pixel_ready = '1') then
						new_state <= reset_x_state;
					else
						new_state <= wait_y_state;
					end if;
				end if;
				
			when reset_x_state =>
				reset_x <= '1';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '0';
				pause_count_y <= '1';
				new_coordinate <= '0';
				new_clkcount <= 0;
				new_state <= count_x_state;
				
		end case;
	end process;
end architecture behavioural;
