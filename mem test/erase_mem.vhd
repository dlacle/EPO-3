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

    type state_type is (idle_state, opcode_state,address_state, w_state);

    signal state, new_state       : state_type;
    signal clkcount, new_clkcount : integer range 0 to 800;
    signal bitcount, new_bitcount : integer range 0 to 2;
    signal opcode : std_logic_vector(7 downto 0) := "11011000";
    signal address, new_address : std_logic_vector(23 downto 0) := "000000000000000000000000";
    signal frame_count, new_frame_count: integer range 0 to 70;


begin

reg: process (clk25)
    begin
        if rising_edge(clk25) then
            if reset = '1' then
                state    <= idle_state;
                clkcount <= 0;
		frame_count<= 0;
            else
                state    <= new_state;
                clkcount <= new_clkcount;
		frame_count <=new_frame_count;
            end if;
        end if;
    end process;

comb: process (state, clkcount, clk25, miso, opcode,frame_count,start_erase)
    begin
        case state is
        when idle_state =>
            cs      <= '1';
            mosi    <= '0';
            sck<='0';
		new_clkcount<=0;
        new_frame_count<=0;

            if start_erase = '1' then
                new_state <= opcode_state;
            else
                new_state <= idle_state;
            end if;

        when opcode_state =>
        new_frame_count<=frame_count;
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
        new_frame_count<=frame_count;
        cs      <= '0';
        sck     <= not(clk25);
        mosi    <= address(23-clkcount);
        new_clkcount <= clkcount + 1;
        if clkcount = 23 then
        new_state <= w_state;
        new_clkcount <= 0;
        else
        new_state <= address_state;
        end if;

        when w_state =>
	cs      <= '0';
        sck     <= not(clk25);

        if start_erase = '1' then
        new_frame_count<=frame_count+1;
        else 
        new_frame_count<=frame_count;
        end if;

        if frame_count>=60 then
        new_state<= idle_state;
        else
        new_state<=w_state;
        end if;

       end case;
    end process;
    end architecture behavioural;
