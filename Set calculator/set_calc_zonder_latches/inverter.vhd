library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity inverter_12bit is
	port(input : in std_logic_vector(11 downto 0);
		output : out std_logic_vector(11 downto 0));
end inverter_12bit;

architecture inverter_arch of inverter_12bit is

component ha is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;


signal s : std_logic_vector(11 downto 0);
signal c : std_logic_vector(11 downto 0);

begin
	process(input)
		begin
			for j in 0 to 11 loop
				if input(j) = '1' then
					s(j) <= '0';
				else 
					s(j) <= '1';
				end if;
			end loop;
	end process;
	
ha1: ha port map (a => s(0), b => '1', s => output(0), c => c(0));
ha2: ha port map (a => s(1), b => c(0), s => output(1), c => c(1));
ha3: ha port map (a => s(2), b => c(1), s => output(2), c => c(2));
ha4: ha port map (a => s(3), b => c(2), s => output(3), c => c(3));
ha5: ha port map (a => s(4), b => c(3), s => output(4), c => c(4));	
ha6: ha port map (a => s(5), b => c(4), s => output(5), c => c(5));
ha7: ha port map (a => s(6), b => c(5), s => output(6), c => c(6));
ha8: ha port map (a => s(7), b => c(6), s => output(7), c => c(7));
ha9: ha port map (a => s(8), b => c(7), s => output(8), c => c(8));
ha10: ha port map (a => s(9), b => c(8), s => output(9), c => c(9));
ha11: ha port map (a => s(10), b => c(9), s => output(10), c => c(10));
ha12: ha port map (a => s(11), b => c(10), s => output(11), c => c(11));

end inverter_arch;
