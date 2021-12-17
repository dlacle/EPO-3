
library IEEE;
use IEEE.std_logic_1164.all;

entity mem_test is
    port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
			temp_color :in std_logic_vector(2 downto 0);
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
        start_read : in std_logic;
        color     : out std_logic_vector(2 downto 0)
    );
end entity mem_test;

architecture behavioural of mem_test is

    type state_type is (idle_state, opcode_state,address_state, data_state);

    signal state, new_state       : state_type;
    signal clkcount, new_clkcount : integer range 0 to 800;
    signal bitcount, new_bitcount : integer range 0 to 2;
    signal opcode : std_logic_vector(8 downto 0) := "000000011";

    signal inbuf0, inbuf1,new_inbuf,inbuf  :  std_logic_vector(2 downto 0) := "000";


begin

reg: process (clk25)
    begin
        if rising_edge(clk25) then
            if reset = '1' then
                state    <= idle_state;
                clkcount <= 0;
					 bitcount<=0;
					 inbuf<="010";
            else
                state    <= new_state;
                clkcount <= new_clkcount;
                bitcount <= new_bitcount;
                inbuf      <= new_inbuf;
            end if;
        end if;
    end process;

comb: process (state, clkcount, clk25, start_read, miso, opcode,temp_color,bitcount,inbuf,inbuf0)
    begin
        case state is
        when idle_state =>
				inbuf0	<= "000";
				new_inbuf <="010";
				new_bitcount<=0;
            cs      <= '1';
            sck     <= '0';
            mosi    <= '0';
				new_clkcount<=0;
            if start_read = '1' then
                new_state <= opcode_state;
            else
                new_state <= idle_state;
            end if;

        when opcode_state =>
		  			inbuf0	<= "000";
			new_inbuf <= inbuf;
			new_bitcount<= bitcount;
            cs      <= '0';
            sck     <= not(clk25);
            mosi    <= opcode(6-clkcount);
            
            new_clkcount <= clkcount + 1;
            if clkcount = 6 then
                new_state <= address_state;
                new_clkcount <= 0;
            else
                new_state <= opcode_state;
            end if;

        when address_state =>
		  new_bitcount<= bitcount;
		  			inbuf0	<= "000";
		  new_inbuf <= inbuf;
            cs      <= '0';
            sck     <= not(clk25);
            mosi    <= '0';
				
            new_clkcount <= clkcount + 1;
            if clkcount = 23 then
                new_state <= data_state;
                new_clkcount <= 0;
            else
                new_state <= address_state;
            end if;

        when data_state =>

            cs      <= '0';
            sck     <= clk25;
            mosi    <= '0';
				inbuf0(bitcount) <= miso;
		      new_clkcount <= clkcount + 1;		    

				
				    
				    if bitcount = 2 then
					 new_inbuf<=inbuf0;
				      new_bitcount <= 0;
				    else
					 new_inbuf <= inbuf;
				      new_bitcount <= bitcount + 1;
				    end if; 
				    
            if clkcount = 672 then
                new_clkcount <= 0;
                new_state    <= idle_state;
            else
                new_state    <= data_state;
            end if;
	
        end case;
    end process;
	 
color<=inbuf;
end architecture behavioural;