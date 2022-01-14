
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity read_fsm is
    port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
        begin_read : in std_logic;
        read_done : out std_logic;
        color     : out std_logic_vector(2 downto 0)
    );
end entity read_fsm;

architecture behavioural of read_fsm is

    type state_type is (idle_state, opcode_state,address_state, data_state, read_done_state);

    signal state, new_state       : state_type;
    signal clkcount, new_clkcount : integer range 0 to 800;
    signal bitcount, new_bitcount : integer range 0 to 2;
    signal opcode : std_logic_vector(8 downto 0) := "000000011";
    signal address, new_address : std_logic_vector(23 downto 0) := "000000000000000000000000";
    signal inbuf0, inbuf1,new_inbuf,inbuf  :  std_logic_vector(2 downto 0) := "000";
    signal doublecount, new_doublecount : integer range 0 to 1;
    signal pagecount, new_pagecount : integer range 0 to 255;
    signal cs_in, sck_in, mosi_in : std_logic;
    

begin

reg: process (clk25)
    begin
        if rising_edge(clk25) then
            if reset = '1' then
                state    <= idle_state;
                clkcount <= 0;
				bitcount<=0;
				inbuf<="000";
                doublecount <= 0;
                pagecount <= 0;
                opcode <= "000000011";
            else
                state    <= new_state;
                clkcount <= new_clkcount;
                bitcount <= new_bitcount;
                inbuf      <= new_inbuf;
                address  <= new_address;
                doublecount <= new_doublecount;
                pagecount <= new_pagecount;
            end if;
        end if;
    end process;

    process (begin_read, cs_in, sck_in, mosi_in)
    begin
       if (begin_read = '1') then
          cs <= cs_in;
          sck <= sck_in;
          mosi <= mosi_in;
       else
          cs <= 'Z';
          sck <= 'Z';
          mosi <= 'Z';
       end if;
    end process;


comb: process (state, clkcount, clk25, begin_read, miso, opcode,bitcount,inbuf,inbuf0, address, doublecount, pagecount)
    begin
        case state is
        when idle_state =>
			inbuf0	<= "000";
			new_inbuf <="000";
			new_bitcount<=0;
            cs_in     <= '1';
            sck_in     <= '0';
            mosi_in    <= '0';
			      new_clkcount <= 0;
			      new_address <= address;
            read_done <= '0';
            new_doublecount <= doublecount;
            new_pagecount <= pagecount;
				    
            if begin_read = '1' then
                new_state <= opcode_state;
            else
                new_state <= idle_state;
            end if;

        when opcode_state =>
            inbuf0	<= "000";
			new_inbuf <= inbuf;
			new_bitcount<= bitcount;
            new_doublecount <= doublecount;
            new_pagecount <= pagecount;
            cs_in      <= '0';
            sck_in     <= not(clk25);
            mosi_in    <= opcode(7-clkcount);
            new_address <= address;
            read_done <= '0';
            
            
            if clkcount = 7 then
                new_state <= address_state;
                new_clkcount <= 0;
            else
                new_state <= opcode_state;
                new_clkcount <= clkcount + 1;
            end if;

        when address_state =>
		    new_bitcount<= bitcount;
		  	inbuf0	<= "000";
		    new_inbuf <= inbuf;
            new_doublecount <= doublecount;
            new_pagecount <= pagecount;
            cs_in      <= '0';
            sck_in     <= not(clk25);
            mosi_in    <= address(23-clkcount);
			new_address <= address;
            read_done <= '0';
				    
            
            if clkcount = 23 then
                new_state <= data_state;
                new_clkcount <= 0;
            else
                new_state <= address_state;
                new_clkcount <= clkcount + 1;
            end if;

        when data_state =>
            cs_in      <= '0';
            sck_in     <= clk25;
            mosi_in    <= '0';
            inbuf0 <= inbuf0;
			      inbuf0(bitcount) <= miso;
		    
            read_done <= '0';		
			      if bitcount = 2 then
				       new_inbuf<=inbuf0;
				       new_bitcount <= 0;
			      else
				       new_inbuf <= inbuf;
				       new_bitcount <= bitcount + 1;
			      end if; 
				    
            if clkcount = 639 then
                new_clkcount <= 0;
                
                if (address = "000000001110111100000000") then
                    new_pagecount <= 0;
                    new_address <= ( others => '0');
                    new_doublecount <= 0;
                else
                    if(doublecount = 1) then
                        if (pagecount = 240)then
                            new_pagecount <= 0;
                            new_address <= ( others => '0');
                        else
                            new_pagecount <= pagecount + 1;
                            new_address <= std_logic_vector(unsigned(address) + 256);
                        end if;
                        new_doublecount <= 0;
                    else
                        new_address <= address;
                        new_pagecount <= pagecount;
                        new_doublecount <= doublecount + 1;
                    end if;
                end if;
                new_state    <= read_done_state;
            else
                new_doublecount <= doublecount;
                new_state    <= data_state;
				        new_address <= address;
				        new_pagecount <= pagecount;
                new_clkcount <= clkcount + 1;
            end if;



        when read_done_state => 
            new_bitcount<= bitcount;
		  	     inbuf0	<= "000";
		        new_inbuf <= inbuf;
            new_doublecount <= doublecount;
            new_pagecount <= pagecount;
            cs_in      <= '1';
            sck_in     <= '0';
            mosi_in    <= '0';
			      new_address <= address;
            read_done <= '1';
            new_state <= idle_state;
            new_clkcount <= clkcount + 1;
            
	
        end case;
		        
    end process;
	 
    color<=inbuf;
    
end architecture behavioural;