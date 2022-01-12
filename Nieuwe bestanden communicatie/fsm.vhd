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
		new_coordinate_given : out std_logic;
		reset_x		: out 	std_logic;			--output that makes sure counter x is reset
		reset_y 	: out 	std_logic			--output that makes sure counter x is reset

	);
	end entity zoomandposition_control; 

architecture behavioural of zoomandposition_control is
		--self defined control states
	type	control_state is (			reset_state,
							count_x_state,
							count_y_state,
							wait_x_state,
							wait_y_state,
							reset_x_state
							);	
		--Two extra signal's of the same type to make propagations from one state to another possible 
	signal	state, new_state :			control_state;
	signal	check :					unsigned(11 downto 0);
	signal	count_x_unsigned, count_y_unsigned :	unsigned(11 downto 0);

begin
	check <= "000011001000";
	--This process describes the state propagation of the system
	process (clk)
	begin
		if (rising_edge (clk)) then
			if (reset = '1') then
				state <= reset_state;	-- Reset arrow
			else
				state	<= new_state;	-- going to the new state
			end if;
		end if;
	end process;

	process (count_x, count_y, zoom, position, pixel_ready, state, check)	--proccess that describes the functionallity of the FSM 
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
				new_coordinate_given <='0';
				new_state <= count_x_state;
			when count_x_state =>
				reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '0';
				pause_count_y <= '1';
				new_coordinate_given <='0';
				new_state <= wait_x_state;
			when wait_x_state =>
				reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '1';
				new_coordinate_given <='1';
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
				new_coordinate_given <='0';
				new_state <= wait_y_state;
			when wait_y_state =>
				reset_x <= '0';
				reset_y <= '0';
				frame_ready <= '0';
				pause_count_x <= '1';
				pause_count_y <= '1';
				new_coordinate_given <='1';
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
				new_coordinate_given <='0';
				new_state <= count_x_state;
		end case;
	end process;
end architecture behavioural;
