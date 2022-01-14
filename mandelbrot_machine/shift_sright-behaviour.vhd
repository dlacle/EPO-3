library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of shift_sright is
component shifter_right is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;
component shifter_right2 is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;
component shifter_right3 is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;
component shifter_right4 is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;
component shifter_right5 is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;
component shifter_right6 is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;
component shifter_right7 is
   port(s_in : in  std_logic_vector(11 downto 0);
	 s_out : out std_logic_vector(11 downto 0)
);
end component;
component mux_position is
 port ( C0, C1, C2, C3, C4, C5, C6, C7        : in std_logic_vector(11 downto 0);
    Sel                    : in std_logic_vector(2 downto 0);
    center_a                : out std_logic_vector(11 downto 0));
end component;
signal s_1,s_2,s_3,s_4,s_5,s_6,s_7: std_logic_vector(11 downto 0);

begin
SR1: shifter_right port map(s_in,s_1);
SR2: shifter_right2 port map(s_in,s_2);
SR3: shifter_right3 port map(s_in,s_3);
SR4: shifter_right4 port map(s_in,s_4);
SR5: shifter_right5 port map(s_in,s_5);
SR6: shifter_right6 port map(s_in,s_6);
SR7: shifter_right7 port map(s_in,s_7);
MUX: mux_position port map(s_in,s_1,s_2,s_3,s_4,s_5,s_6,s_7,s,s_out);
end behaviour;

