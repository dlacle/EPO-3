
library IEEE;
use IEEE.std_logic_1164.all;

entity mem_test is
    port (
        clk25       : in  std_logic;
        reset     : in  std_logic;

        cs        : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        start_read : out std_logic; 
        inbuf     : out std_logic_vector(7 downto 0)
    );
end entity mem_test;

architecture behavioural of mem_test is

    type state_type is (idle_state, opcode_state,address_state, data_state);

    signal state, new_state       : state_type;
    signal clkcount, new_clkcount : integer range 0 to 200;
    signal opcode : std_logic_vector(8 downto 0) := "000000011";
	signal start: std_logic;
      signal  in_inbuf,new_inbuf    : std_logic_vector(7 downto 0);
begin

reg: process (clk25)
    begin
        if rising_edge(clk25) then
            if reset = '0' then
                state    <= idle_state;
                clkcount <= 0;
            else
                state    <= new_state;
                clkcount <= new_clkcount;
		in_inbuf <= new_inbuf;
            end if;
        end if;
    end process;

comb: process (state, clkcount, clk25, miso)
    begin
        case state is
        when idle_state =>
            cs      <= '1';
            mosi    <= '0';
				    start_read <= '0';
				    start <= '0';
				
            new_clkcount <= clkcount + 1;
            if clkcount = 10 then
                new_state <= opcode_state;
            else
                new_state <= idle_state;
            end if;

        when opcode_state =>
            cs      <= '0';
            mosi    <= opcode(18-clkcount);
            start_read <= '0';
	    start <= '0';
				
            new_clkcount <= clkcount + 1;
            if clkcount = 18 then
                new_state <= address_state;
            else
                new_state <= opcode_state;
            end if;

        when address_state =>
            cs      <= '0';
            mosi    <= '0';
				start_read <= '0';
				    start <= '0';
				
            new_clkcount <= clkcount + 1;
            if clkcount = 42 then
                new_state <= data_state;
            else
                new_state <= address_state;
            end if;

        when data_state =>
            cs      <= '0';
            mosi    <= '0';
				    start_read <= '1';
				    start <= '1';
				
            new_clkcount <= clkcount + 1;
            if clkcount = 51 then
                new_clkcount <= 0;
                new_state    <= idle_state;
            else
                inbuf(clkcount-43) <= miso; 
                new_state    <= data_state;
            end if;
        end case;
    end process;

output:process (clk25,start)
begin

if(falling_edge(clk25)and start='1') then
new_inbuf(clkcount-43)<=miso;
end if; 
end process;
inbuf<=in_inbuf;
end architecture behavioural;