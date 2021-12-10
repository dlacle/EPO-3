library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity erase_test is
    port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        start_erase : in std_logic
    );
end entity erase_test;

architecture behavioural of erase_test is

    type state_type is (idle_state,address_opcode,opcode_wel_e,idle_wel_e,opcode_erase,idle_erase);

    signal state, new_state       : state_type;
    signal clkcount, new_clkcount : integer range 0 to 800;
    signal bitcount, new_bitcount : integer range 0 to 2;
    signal opcode,new_opcode : std_logic_vector(7 downto 0) := "00000000";
    signal address, new_address : std_logic_vector(23 downto 0) := "000000000000000000000000";


begin

reg: process (clk25)
    begin
        if rising_edge(clk25) then
            if reset = '1' then
                state    <= idle_state;
                clkcount <= 0;
		opcode	<= (others => '0');
            else
                state    <= new_state;
                clkcount <= new_clkcount;
		opcode <= new_opcode;
            end if;
        end if;
    end process;

comb: process (state, clkcount, clk25, miso, opcode,start_erase)
    begin
        case state is
        when idle_state =>
            cs      <= '1';
            mosi    <= '0';
            sck<='0';
        new_opcode <= "00000110";
		new_clkcount<=0;

            if start_erase = '1' then
                new_state <= opcode_wel_e;
            else
                new_state <= idle_state;
            end if;

    when opcode_wel_e =>
      cs <=  '0';
      sck <= not(clk25);
      mosi <= opcode(7-clkcount);
      new_opcode <= opcode;
      if (clkcount = 7) then
        new_state <= idle_wel_e;
        new_clkcount <= 0;
      else
        new_state <= opcode_wel_e;
        new_clkcount <= clkcount + 1;
      end if;
    
    when idle_wel_e =>
      cs <=  '1';
      sck <= '0';
      mosi <= '0';
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
              cs      <= '0';
         sck     <= not(clk25);
        mosi    <= opcode(7-clkcount);
 	new_opcode <= opcode;
  
          new_clkcount <= clkcount + 1;
         if clkcount = 7 then
            new_state <= address_opcode;
            new_clkcount <= 0;
            else
            new_state <= opcode_erase;
        end if;

        when address_opcode =>
        cs      <= '0';
        sck     <= not(clk25);
        mosi    <= address(23-clkcount);
        new_clkcount <= clkcount + 1;
        if clkcount = 23 then
        new_state <= idle_erase;
        new_clkcount <= 0;
        else
        new_state <= address_opcode;
        end if;

        when idle_erase =>--
	cs      <= '0';
        sck     <= not(clk25);

        if start_erase = '1' then
        new_clkcount <= clkcount + 1;
        else 
        new_clkcount <= clkcount;
        end if;

        if clkcount >= 60 then
        new_state<= idle_state;
        else
        new_state<=idle_erase;
        end if;

       end case;
    end process;
    end architecture behavioural;
