library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity inverter_24bit is
	port(input : in std_logic_vector(23 downto 0);
		output : out std_logic_vector(23 downto 0));
end inverter_24bit;

architecture inverter_arch of inverter_24bit is

component ha is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;


signal s : std_logic_vector(23 downto 0);
signal c : std_logic_vector(23 downto 0);

begin
	process(input)
		begin
			for j in 0 to 23 loop
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
ha13: ha port map (a => s(12), b => c(11), s => output(12), c => c(12));
ha14: ha port map (a => s(13), b => c(12), s => output(13), c => c(13));
ha15: ha port map (a => s(14), b => c(13), s => output(14), c => c(14));
ha16: ha port map (a => s(15), b => c(14), s => output(15), c => c(15));
ha17: ha port map (a => s(16), b => c(15), s => output(16), c => c(16));
ha18: ha port map (a => s(17), b => c(16), s => output(17), c => c(17));
ha19: ha port map (a => s(18), b => c(17), s => output(18), c => c(18));
ha20: ha port map (a => s(19), b => c(18), s => output(19), c => c(19));
ha21: ha port map (a => s(20), b => c(19), s => output(20), c => c(20));
ha22: ha port map (a => s(21), b => c(20), s => output(21), c => c(21));
ha23: ha port map (a => s(22), b => c(21), s => output(22), c => c(22));
ha24: ha port map (a => s(23), b => c(22), s => output(23), c => c(23));

end inverter_arch;
