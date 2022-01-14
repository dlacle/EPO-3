library IEEE;
use IEEE.std_logic_1164.ALL;

entity real_calc is
   port(reset: in std_logic;
a   : in  std_logic_vector(11 downto 0);
        b          : in  std_logic_vector(11 downto 0);
        c          : in  std_logic_vector(11 downto 0);
        
        outputreal : out std_logic_vector(11 downto 0);
	div        : out std_logic);
end real_calc;

architecture behaviour of real_calc is

component inverter_12bit is
	port(input : in std_logic_vector(11 downto 0);
		output : out std_logic_vector(11 downto 0));
end component;

component intadder_16bit is
   port(x   : in  std_logic_vector(15 downto 0);
        y   : in  std_logic_vector(15 downto 0);
        sumintadder : out std_logic_vector(15 downto 0));
end component;

component intadder_13bit is
   port(x   : in  std_logic_vector(12 downto 0);
        y   : in  std_logic_vector(12 downto 0);
        sumintadder : out std_logic_vector(12 downto 0));
end component;

component wallace_13bit_toplevel is
    Port ( input_1 : in  STD_LOGIC_VECTOR (12 downto 0);
           input_2 : in  STD_LOGIC_VECTOR (12 downto 0);
           output : out  STD_LOGIC_VECTOR (24 downto 0));
end component;
signal A13bit, B13bit : std_logic_vector(12 downto 0);
signal AminB, AplusB : std_logic_vector(12 downto 0);
signal Cbig : std_logic_vector(15 downto 0);
signal AsquaredminusBsquared: std_logic_vector(14 downto 0);
signal AsquaredminusBsquaredBig: std_logic_vector(24 downto 0);
signal minB13bit: std_logic_vector(12 downto 0);
signal minb: std_logic_vector(11 downto 0);
signal realValue: std_logic_vector(15 downto 0);

signal AsquaredminusBsquared_16bit: std_logic_vector(15 downto 0);

begin
--invert 
A13bit(12) <= a(11);
A13bit(11 downto 0) <= a(11 downto 0);
B13bit(12) <= b(11);
B13bit(11 downto 0) <= b(11 downto 0);
minB13bit(12) <= minb(11);
minB13bit(11 downto 0) <= minb(11 downto 0);
	MC0: inverter_12bit PORT MAP(input => b ,output => minb);
-- maak minB
--A-B
	MC1: intadder_13bit PORT MAP(x => A13bit,y => minB13bit, sumintadder => AminB);

--A+B
	MC2: intadder_13bit PORT MAP(x => A13bit,y => B13bit, sumintadder => AplusB);

--Multiplier (A-B)*(A+B)
	MC3: wallace_13bit_toplevel PORT MAP(input_1 => AplusB, input_2 => AminB, output => AsquaredminusBsquaredBig);

AsquaredminusBsquared <= AsquaredminusBsquaredBig (24 downto 10); --make 15 bit
AsquaredminusBsquared_16bit(15) <= AsquaredminusBsquared(14);
AsquaredminusBsquared_16bit(14 downto 0) <= AsquaredminusBsquared(14 downto 0);

Cbig(11 downto 0) <= c(11 downto 0);
Cbig(12) <= c(11);
Cbig(13) <= c(11);
Cbig(14) <= c(11);
Cbig(15) <= c(11);


MC4: component intadder_16bit PORT MAP(	x=>Cbig,
		y=>AsquaredminusBsquared_16bit, --14 bit numbas
		sumintadder=>realValue
								);

process(realValue)
	begin

		if(realvalue(14) = '0') then
			if(realvalue(13) ='1' or realValue(12)='1' or realValue(11)='1') then
			div<= '1';
			else
			div<= '0';
			end if;
		else
			if(realvalue(13) ='0' or realValue(12)='0' or realValue(11)='0') then
			div<= '1';
			else
			div<= '0';
			end if;
		end if;
		outputreal(11) <= realValue(14);
		outputreal(10 downto 0) <= realValue(10 downto 0);

end process;


-- AsqrdminBsqrd (14 bit) - C (12 bit) => Result(13 bit)

-- Make Result positive, if the 12th bit is 1, send divergence signal. 
-- Otherwise send original Result as output and send the iteration done signal

--c+ multiplierresult



end behaviour;

