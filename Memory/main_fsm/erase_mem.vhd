library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity erase_fsm is
    port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        e_count		 : in std_logic;
        start_erase : in std_logic;
        chip_erase_done : out std_logic
    );
end entity erase_fsm;

architecture behavioural of erase_fsm is

    type state_type is (idle_state,address_opcode,opcode_wel_e,idle_wel_e,opcode_erase,idle_erase,chip_erase_done_state);

    signal state, new_state       : state_type;
    signal clkcount, new_clkcount : integer range 0 to 800;
    signal bitcount, new_bitcount : integer range 0 to 2;
    signal opcode,new_opcode : std_logic_vector(7 downto 0) := "00000000";
    signal address, new_address : std_logic_vector(23 downto 0) := "000000000000000000000000";
    signal cs_in, sck_in, mosi_in : std_logic; 
    constant C : integer := 64000;

begin

reg: process (clk25)
    begin
        if rising_edge(clk25) then
            if reset = '1' then
                state    <= idle_state;
                clkcount <= 0;
		            opcode	<= (others => '0');
		            address <= (others => '0');
            else
                state    <= new_state;
                clkcount <= new_clkcount;
		            opcode <= new_opcode;
		            address <= new_address;
            end if;
        end if;
    end process;


    process (start_erase, cs_in, sck_in, mosi_in)
    begin
       if (start_erase = '1') then
          cs <= cs_in;
          sck <= sck_in;
          mosi <= mosi_in;
       else
          cs <= 'Z';
          sck <= 'Z';
          mosi <= 'Z';
       end if;
    end process;

comb: process (state, clkcount, clk25, miso, opcode,start_erase, address, e_count)
    begin
        case state is
        when idle_state =>
            cs_in     <= '1';
            mosi_in    <= '0';
            sck_in <='0';
            new_opcode <= "00000110";
  	        new_address <= address;
		        new_clkcount<=0;
            chip_erase_done <= '0';

            if start_erase = '1' then
                new_state <= opcode_wel_e;
            else
                new_state <= idle_state;
            end if;

    when opcode_wel_e =>
      cs_in <=  '0';
      sck_in <= not(clk25);
      mosi_in <= opcode(7-clkcount);
      new_opcode <= opcode;
	    new_address <= address;
      chip_erase_done <= '0';
      if (clkcount = 7) then
        new_state <= idle_wel_e;
        new_clkcount <= 0;
      else
        new_state <= opcode_wel_e;
        new_clkcount <= clkcount + 1;
      end if;
    
    when idle_wel_e =>
      cs_in <=  '1';
      sck_in <= '0';
      mosi_in <= '0';
	    new_address <= address;
      chip_erase_done <= '0';
      if (clkcount = 10) then
        new_opcode <= "11011000";
        new_state <= opcode_erase;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_wel_e;
        new_clkcount <= clkcount + 1;
      end if;



        when opcode_erase =>
          cs_in      <= '0';
          sck_in     <= not(clk25);
          mosi_in    <= opcode(7-clkcount);
 	        new_opcode <= opcode;
	        new_address <= address;
          new_clkcount <= clkcount + 1;
          chip_erase_done <= '0';
         if clkcount = 7 then
            new_state <= address_opcode;
            new_clkcount <= 0;
            else
            new_state <= opcode_erase;
        end if;

        when address_opcode =>
        cs_in      <= '0';
        sck_in     <= not(clk25);
        mosi_in    <= address(23-clkcount);
        new_clkcount <= clkcount + 1;
	      new_opcode <= opcode;
	      new_address <= address;
        chip_erase_done <= '0';
  
        if clkcount = 23 then
        new_state <= idle_erase;
        new_clkcount <= 0;
        else
        new_state <= address_opcode;
        end if;

        when idle_erase =>
          cs_in      <= '1';
          sck_in     <= not(clk25);
          mosi_in    <= '0';
          chip_erase_done <= '0';
          new_opcode <= opcode;

          if e_count = '1' then
            new_clkcount <= clkcount + 1;
          else 
            new_clkcount <= clkcount;
          end if;

          if clkcount >= 60 then
            new_state<= chip_erase_done_state;
            new_clkcount <= 0;
            new_address<=std_logic_vector(unsigned(address) + 64000);
          else
            new_address <= address;
            new_state<=idle_erase;
          end if;

        when chip_erase_done_state =>
          cs_in      <= '1';
          sck_in     <= not(clk25);
          mosi_in    <= '0';
          chip_erase_done <= '1';
          new_opcode <= opcode;
          new_clkcount <= clkcount + 1;
          if (clkcount = 10) then
            new_state<= idle_state;
            new_address <= address;
          else
            new_address <= address;
            new_state<=chip_erase_done_state;
          end if;



       end case;
    end process;
end architecture behavioural;
