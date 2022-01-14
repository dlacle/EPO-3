library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of main_xtoa is
component full_adder_3x is
    Port ( a : in  STD_LOGIC_VECTOR (11 downto 0);
           b : in  STD_LOGIC_VECTOR (11 downto 0);
           s : out  STD_LOGIC_VECTOR (11 downto 0);
           cout : out  STD_LOGIC);
end component;
component shifter_left_2 is 
port ( s_in : in std_logic_vector(11 downto 0);
s_out : out std_logic_vector(11 downto 0)
);
end component; 
component shifter_left_4 is 
port ( s_in : in std_logic_vector(11 downto 0);
s_out : out std_logic_vector(11 downto 0)
);
end component; 
component shift_sright is 
port ( s : in std_logic_vector(2 downto 0);
s_in : in std_logic_vector(11 downto 0);
s_out : out std_logic_vector(11 downto 0)
);
end component; 
component mux_position is
 port ( C0, C1, C2, C3, C4, C5, C6, C7        : in std_logic_vector(11 downto 0);
    Sel                    : in std_logic_vector(2 downto 0);
    center_a                : out std_logic_vector(11 downto 0));
end component;
	signal full_adder_x1, full_adder_x2 : std_logic_vector(11 downto 0);
	signal shift_out4xleft, shift_out2xleft, shifter_rightxout : std_logic_vector(11 downto 0);
	signal hunderdmin : std_logic_vector(11 downto 0);
	signal C0, C1, C2, C3, C4, C5, C6, C7, center_a        : std_logic_vector(11 downto 0);
begin
	C0 <= "000000000000";		-- "0"
	C1 <= "110000011000";		-- "-1000"
	C2 <= "101100011110";		-- "-1250"
	C3 <= "111101101010";		-- "-150"
	C4 <= "110111010111";		-- "-553"
	C5 <= "101010100011";		-- "-1373"
	C6 <= "101001100010";		-- "-1438"
	C7 <= "000101101010";		-- "362"
	hunderdmin <= "111110011100";	-- "-100"
	FAx1: full_adder_3x port map(pixel_x,hunderdmin,full_adder_x1);
	SL4x: shifter_left_4 port map(full_adder_x1,shift_out4xleft);
	SL2x: shifter_left_2 port map(full_adder_x1,shift_out2xleft);
	FAx2: full_adder_3x port map(shift_out4xleft, shift_out2xleft,full_adder_x2);
	SRx : shift_sright port map(zoom,full_adder_x2,shifter_rightxout); 
	MUXx : mux_position port map(C0, C1, C2, C3, C4, C5, C6, C7, position, center_a); 
	FAx3 : full_adder_3x port map(center_a,shifter_rightxout,a);
end behaviour;


