library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity imaginary_calc is
  port(reset  : in std_logic;
       A : in  	std_logic_vector(11 downto 0);
       B : in  	std_logic_vector(11 downto 0);
       D : in  	std_logic_vector(11 downto 0);
       outputimaginary : out  std_logic_vector(11 downto 0);
       div  :out std_logic);
end imaginary_calc;

architecture behaviour of imaginary_calc is

component intadder_12bit is
    port(x   : in  std_logic_vector(11 downto 0);
         y   : in  std_logic_vector(11 downto 0);
         sumintadder : out std_logic_vector(11 downto 0));
end component;

component wallace_13bit_toplevel is
    Port ( input_1 : in  STD_LOGIC_VECTOR (12 downto 0);
           input_2 : in  STD_LOGIC_VECTOR (12 downto 0);
           output : out  STD_LOGIC_VECTOR (24 downto 0));
end component;

component intadder_14_bit is
   port(x   : in  std_logic_vector(13 downto 0);
        y   : in  std_logic_vector(13 downto 0);
        sumintadder : out std_logic_vector(13 downto 0));
end component;


component detect_divergence is   -- fix bits and implement in the adder, not seperate component
   port(sumintadder     : in  	std_logic_vector(13 downto 0);
	      sum   : out std_logic_vector(11 downto 0);
        div   : out  std_logic);
end component;

signal AxB_25bit : std_logic_vector(24 downto 0);
signal calc_done, tempmsb  : std_logic;
signal A_13bit, B_13bit : std_logic_vector(12 downto 0);
signal AxB : std_logic_vector(14 downto 0);
signal AxBx2, D_14bit, out_14_bit : std_logic_vector(13 downto 0);
signal outputimaginaryalmost : std_logic_vector(11 downto 0);

begin
  
process(A, B, B_13bit, A_13bit)
  begin
    --A-->13 bit
    if(A(11)='0') then
      A_13bit(11)<='0';
      A_13bit(12)<='0';
      A_13bit(10 downto 0)<=A(10 downto 0);
    --elsif(A(11)='1') then
    else
      A_13bit(11)<='1';
      A_13bit(12)<='1';
      A_13bit(10 downto 0)<=A(10 downto 0);
    end if;

    --B --> 13 bit
    if(B(11)='0') then
      B_13bit(11)<='0';
      B_13bit(12)<='0';
      B_13bit(10 downto 0)<=B(10 downto 0);
    --elsif(B(11)='1') then
    else
      B_13bit(11)<='1';
      B_13bit(12)<='1';
      B_13bit(10 downto 0)<=B(10 downto 0);
    end if;
end process;


--AxB
MC: component wallace_13bit_toplevel PORT MAP(
    input_1 => A_13bit,
    input_2 => B_13bit,
    output  => AxB_25bit --25bit
);

AxB<=AxB_25bit(24 downto 10);


process(AxB, AxBx2, D)
  begin
    --AxB vermenigvuldigd met 2
    if(AxB(12)='0') then
      AxBx2(13 downto 1)<=AxB(12 downto 0); -- Kan VEEL SLIMMER HIERBOVEN
      AxBx2(0)<='0';
    --elsif(AxB(12)='1') then
    else
      AxBx2(13 downto 1)<=AxB(12 downto 0);
      AxBx2(0)<='1';
    end if;

    --D --> 14 bit
    if(D(11)='0') then
      D_14bit(13)<='0';
      D_14bit(12 downto 11)<="00";
      D_14bit(10 downto 0)<=D(10 downto 0);
    --elsif(D(11)='1') then
    else
      D_14bit(13)<='1';
      D_14bit(12 downto 11)<="11";
      D_14bit(10 downto 0)<=D(10 downto 0);
    end if;
end process;




--+D_14bit
ADDER: component intadder_14_bit port map(
    x=>AxBx2,
    y=>D_14bit,
    sumintadder=>out_14_bit
);

detect: component detect_divergence port map(
    sumintadder => out_14_bit,
    sum => outputimaginary,
    div=> div
);

end behaviour;