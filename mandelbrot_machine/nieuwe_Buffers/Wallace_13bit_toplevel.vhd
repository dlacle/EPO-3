library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use UNISIM.VComponents.all;

entity wallace_13bit_toplevel is
    Port ( input_1 : in  STD_LOGIC_VECTOR (12 downto 0);
           input_2 : in  STD_LOGIC_VECTOR (12 downto 0);
           output : out  STD_LOGIC_VECTOR (24 downto 0);
		   vergelijk : out std_logic_vector (25 downto 0));
end wallace_13bit_toplevel;

architecture wallace_13bit_toplevel_arch of wallace_13bit_toplevel is

component inverter_12bit
	port(	input : in std_logic_vector(11 downto 0);
			output : out std_logic_vector(11 downto 0));
end component;

component inverter_24bit
	port(	input : in std_logic_vector(23 downto 0);
			output : out std_logic_vector(23 downto 0));
end component;

component wallace_12bit
    Port ( a : in  STD_LOGIC_VECTOR (11 downto 0);
           b : in  STD_LOGIC_VECTOR (11 downto 0);
           output : out  STD_LOGIC_VECTOR (23 downto 0));
end component;

signal invert_1 : std_logic_vector(11 downto 0);
signal invert_2 : std_logic_vector(11 downto 0);


signal multip_input_1 : std_logic_vector(11 downto 0);
signal multip_input_2 : std_logic_vector(11 downto 0);
signal multip_output : std_logic_vector(23 downto 0);


signal invert_multip_output : std_logic_vector(23 downto 0);


begin
process(input_1, input_2, invert_1, invert_2)
	begin
		vergelijk <= std_logic_vector(signed(input_1) * signed(input_2));
		
		if (input_1(12) and input_2(12)) = '1' then -- if both numbers are negative
			-- invert both, output is positive
			multip_input_1 <= invert_1;
			multip_input_2 <= invert_2;
			
		elsif (input_1(12) xor input_2(12)) = '1' then
			
			if input_1(12) = '1' then
				--invert only input_1
				multip_input_1 <= invert_1;
				multip_input_2 <= input_2(11 downto 0);
				
			else 
				--invert only input_2
				multip_input_1 <= input_1(11 downto 0);
				multip_input_2 <= invert_2;
			end if;
		else
			--do not invert
			multip_input_1 <= input_1(11 downto 0);
			multip_input_2 <= input_2(11 downto 0);
		end if;
end process;


process(multip_output, invert_multip_output, input_1, input_2)
	begin
		if (input_1(12) xor input_2(12)) = '1' then -- if both numbers are negative
			-- invert only one, output is negative
			output(23 downto 0) <= invert_multip_output;
			output(24) <= '1';
		else
			--do not invert, due to both positive or both negative. 
			output(23 downto 0) <= multip_output;
			output(24) <= '0';
		end if;
		
end process;


	

	--Invert
	invert1: inverter_12bit port map (input => input_1(11 downto 0), output => invert_1);
	invert2: inverter_12bit port map (input => input_2(11 downto 0), output => invert_2);
	invert3: inverter_24bit port map (input => multip_output, output => invert_multip_output); 
	
	multip1: wallace_12bit port map (a => multip_input_1, b => multip_input_2, output => multip_output);

	


end architecture;