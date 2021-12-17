
library IEEE;
use IEEE.std_logic_1164.all;

entity mem_test is
    port (
        clk25       : in  std_logic;
        reset     : in  std_logic;

        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
        start_read : in std_logic;
        color     : out std_logic_vector(2 downto 0);
		     led     : out std_logic_vector(3 downto 0)
    );
end entity mem_test;

architecture behavioural of mem_test is

    type state_type is (idle_state, opcode_state,address_state, data_state);

    signal state, new_state       : state_type;
    signal clkcount, new_clkcount : integer range 0 to 800;
    signal bitcount, new_bitcount : integer range 0 to 2;
    signal opcode : std_logic_vector(8 downto 0) := "000000011";
    signal buf, new_buf : std_logic := '1'; 
    signal inbuf0, inbuf1     :  std_logic_vector(2 downto 0) := "000";
  

begin

reg: process (clk25)
    begin
        if rising_edge(clk25) then
            if reset = '1' then
                state    <= idle_state;
                clkcount <= 0;
                buf <= '0';
					 inbuf0<="000";
					  inbuf1<="000";
            else
                state    <= new_state;
                clkcount <= new_clkcount;
                bitcount <= new_bitcount;
                buf      <= new_buf;
            end if;
        end if;
    end process;

comb: process (state, clkcount, clk25, start_read, miso, opcode)
    begin
        case state is
        when idle_state =>
            cs      <= '1';
            sck     <= '0';
            mosi    <= '0';
				led <= "0001";
            if start_read = '1' then
                new_state <= opcode_state;
            else
                new_state <= idle_state;
            end if;

        when opcode_state =>
		  led <= "0010";
            cs      <= '0';
            sck     <= not(clk25);
            mosi    <= opcode(7-clkcount);
            
            new_clkcount <= clkcount + 1;
            if clkcount = 7 then
                new_state <= address_state;
                new_clkcount <= 0;
            else
                new_state <= opcode_state;
            end if;

        when address_state =>
		  led <= "0100";
            cs      <= '0';
            sck     <= not(clk25);
            mosi    <= '0';
				
            new_clkcount <= clkcount + 1;
            if clkcount = 24 then
                new_state <= data_state;
                new_clkcount <= 0;
            else
                new_state <= address_state;
            end if;

        when data_state =>
		  led <= "1000";
            cs      <= '0';
            sck     <= clk25;
            mosi    <= '0';
				
				    if buf = '0' then
				      inbuf0(bitcount) <= miso;
				      color <= inbuf1;
				    else
				      inbuf1(bitcount) <= miso;
				      color <= inbuf0;
				    end if;
				
				    
				    if bitcount = 2 then
				      new_bitcount <= 0;
				      if buf = '1' then
				        new_buf <= '0';
				      elsif buf = '0' then
				        new_buf <= '1';
				      end if; 
				    else
				      new_bitcount <= bitcount + 1;
				    end if; 
				    
            new_clkcount <= clkcount + 1;
            if clkcount = 640 then
                new_clkcount <= 0;
                new_state    <= idle_state;
            else
                new_state    <= data_state;
            end if;
        end case;
    end process;

end architecture behavioural;