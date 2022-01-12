library IEEE;
use IEEE.std_logic_1164.all;

entity buffer_tb is
end entity buffer_tb;
    
architecture structural of buffer_tb  is

    component gen_buffer 
port(   clk :in std_logic;
	reset: in std_logic;
	done: in std_logic;
	buff_full: out std_logic;
color_valid: in std_logic;
	data_in	:in std_logic_vector(2 downto 0);
	data_out: out std_logic_vector(23 downto 0)
); 
end component;

signal reset,clk,done,buff_full,color_valid:std_logic;
signal data_out:std_logic_vector(23 downto 0);  
signal data_in: std_logic_vector(2 downto 0);
begin

LB: gen_buffer port map (
		clk=>clk,
		reset=> reset,
		data_in => data_in,
		done => done,
color_valid=>color_valid,
		buff_full=>buff_full,
		data_out=>data_out);

        clk <= 	'0' after 0 ns,
                    '1' after 20 ns when clk/= '1' else '0' after 20 ns; 
                    
        reset <= 	'1' after 0 ns,
                    '0' after 50 ns;
	
	data_in	<= "101" after 40 ns,
		   "100" after 460 ns;

	color_valid<= '1' after 0 ns;

	done <= '0' after 0 ns,
		'1' after 470 ns;
end architecture structural;