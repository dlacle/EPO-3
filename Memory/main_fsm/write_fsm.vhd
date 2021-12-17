library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity write_fsm is
   port (
        clk25       : in  std_logic;
        reset     : in  std_logic;
        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
        frame_full : out std_logic; 
        write_done      : out std_logic;            
        start_write     : in std_logic
    );
end write_fsm;


architecture behavioural of write_fsm is
  type state_type is (write_idle, opcode_wel, idle_wel, opcode_write, address_write, data_write, idle_write, idle_frame_full, write_done_state);
  signal state, new_state: state_type;
  signal clkcount, new_clkcount : integer range 0 to 30000;
  signal opcode, new_opcode : std_logic_vector(7 downto 0) := "00000000";
  signal color_buffer, new_color_buffer : std_logic_vector(23 downto 0) := "111110101100011010001000";
  signal bitcount, new_bitcount : integer range 0 to 32;
  signal pagecount, new_pagecount : integer range 0 to 255; 
  signal address, new_address : std_logic_vector(23 downto 0) := "000000000000000000000000";
  signal cs_in, sck_in, mosi_in : std_logic;
  
  
begin





  statereg: process (clk25)
  begin
    if (clk25'event and clk25 = '1') then
      if reset = '1' then
        state <= write_idle;
        clkcount <= 0; 
        opcode <= "00000000";
        bitcount <= 0; 
        address <= "000000000000000000000000";
        pagecount <= 0;
      else
        clkcount <= new_clkcount;
        state <= new_state;
        opcode <= new_opcode;
        bitcount <= new_bitcount;
        address <= new_address;
        pagecount <= new_pagecount; 
      end if;
    end if;
  end process;


  process (start_write, cs_in, sck_in, mosi_in)
  begin
     if (start_write = '1') then
        cs <= cs_in;
        sck <= sck_in;
        mosi <= mosi_in;
     else
        cs <= 'Z';
        sck <= 'Z';
        mosi <= 'Z';
     end if;
  end process;


  combinatorial: process (state, clk25, clkcount, opcode, address, pagecount, start_write, color_buffer, bitcount)
  begin
    case state is
    when write_idle =>
      cs_in <=  '1';
      sck_in <= '0';
      mosi_in <= '0';
      new_bitcount <= 0;
      new_address <= address;
      new_pagecount <= pagecount;
      frame_full <= '0'; 
      write_done <= '0';
      if (start_write = '1') then
        new_opcode <= "00000110";
        new_state <= opcode_wel;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= write_idle;
        new_clkcount <= clkcount; 
      end if;
      
    
    when opcode_wel =>
      cs_in <=  '0';
      sck_in  <= not(clk25);
      mosi_in <= opcode(7-clkcount);
      new_opcode <= opcode;
      new_bitcount <= 0;
      new_address <= address;
      new_pagecount <= pagecount;
      frame_full <= '0'; 
      write_done <= '0';
      if (clkcount = 7) then
        new_state <= idle_wel;
        new_clkcount <= 0;
      else
        new_state <= opcode_wel;
        new_clkcount <= clkcount + 1;
      end if;
    
    when idle_wel =>
      cs_in<=  '1';
      sck_in  <= '0';
      mosi_in <= '0';
      new_bitcount <= 0;
      new_address <= address;
      new_pagecount <= pagecount;
      frame_full <= '0'; 
      write_done <= '0';
      if (clkcount = 10) then
        new_opcode <= "00000010";
        new_state <= opcode_write;
        new_clkcount <= 0;
      else
        new_opcode <= "00000000";
        new_state <= idle_wel;
        new_clkcount <= clkcount + 1;
      end if;    
    
      
    when opcode_write =>
      cs_in<=  '0';
      sck_in  <= not(clk25);
      mosi_in <= opcode(7-clkcount);
      new_opcode <= opcode;
      new_bitcount <= 0;
      new_address <= address;
      new_pagecount <= pagecount;
      frame_full <= '0'; 
      write_done <= '0';
      if (clkcount = 7) then
        new_state <= address_write;
        new_clkcount <= 0;
      else
        new_state <= opcode_write;
        new_clkcount <= clkcount + 1;
      end if;
      
    when address_write =>
      cs_in<=  '0';
      sck_in  <= not(clk25);
      mosi_in <= address(23-clkcount);
      new_opcode <= "00000000";
      new_bitcount <= 0;
      new_address <= address;
      new_pagecount <= pagecount;
      frame_full <= '0'; 
      write_done <= '0';
      if (clkcount = 23) then
        new_state <= data_write;
        new_clkcount <= 0;
      else
        new_state <= address_write;
        new_clkcount <= clkcount + 1;
      end if;
      
    when data_write =>
      cs_in <=  '0';
      sck_in  <= not(clk25);
      mosi_in <= color_buffer(bitcount);
      new_opcode <= "00000000";
      new_address <= address;
      new_pagecount <= pagecount;
      frame_full <= '0'; 
      write_done <= '0';
      if (clkcount = 23) then
		    new_opcode <= "00000000";
        new_state <= idle_write;
        new_clkcount <= 0;
        new_bitcount <= 0;
      else
        new_state <= data_write;
        new_clkcount <= clkcount + 1;
        if (bitcount = 23) then
          new_bitcount <= 0; 
        else
          new_bitcount <= bitcount + 1;
        end if;
      end if;
      
      
    when idle_write =>
      cs_in <=  '1';
      sck_in  <= '0';
      mosi_in <= '0';
      new_bitcount <= 0;
      frame_full <= '0'; 
      write_done <= '0';
      if (clkcount = 525) then
        new_opcode <= "00000101";
        
        new_clkcount <= 0;
        if(address = std_logic_vector(to_unsigned((pagecount * 256) + 243,24)))then
          if (pagecount = 79)then
            new_pagecount <= pagecount;
            new_address <= address;
            new_state <= idle_frame_full;
          else
            new_pagecount <= pagecount + 1;
            new_address <= std_logic_vector(to_unsigned(((pagecount + 1) * 256) ,24));
            new_state <= write_done_state; 
          end if;
        else
          new_address <= std_logic_vector(unsigned(address) + 3);
          new_pagecount <= pagecount;
          new_state <= write_done_state; 
        end if;
      else
        new_opcode <= "00000000";
        new_state <= idle_write;
        new_clkcount <= clkcount + 1;
        new_address <= address;
        new_pagecount <= pagecount;
      end if;
    
    when idle_frame_full =>
      cs_in <=  '1';
      sck_in  <= '0';
      mosi_in <= '0';
      new_bitcount <= 0;
      frame_full <= '1'; 
      write_done <= '1';
      new_clkcount <= 0;
      new_opcode <= "00000000";
      new_state <= idle_frame_full;
      new_address <= address;
      new_pagecount <= pagecount;  
    
    when write_done_state => 
      cs_in<=  '1';
      sck_in  <= '0';
      mosi_in <= '0';
      new_bitcount <= 0;
      new_address <= address;
      new_pagecount <= pagecount;
      frame_full <= '0'; 
      write_done <= '1';
      new_opcode <= "00000010";
      new_state <= write_idle;
      new_clkcount <= 0;
      

    end case;
  end process;
end architecture behavioural;



