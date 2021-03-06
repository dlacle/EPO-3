library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity vga_driver is
	   port(
	clk          : in  std_logic;
        reset        : in  std_logic;
        pixel_sync	 : out std_logic;
		    color		: in std_logic_vector(2 downto 0);
        red          : out std_logic;
        green        : out std_logic;
        blue         : out std_logic;
        h_sync       : out std_logic;
        v_sync       : out std_logic);
end vga_driver;

architecture vga_behavioral of vga_driver is

signal hcount, vcount, new_hcount, new_vcount: unsigned(9 downto 0);
signal in_h_sync, in_v_sync, new_h_sync, new_v_sync, in_red, new_red, in_blue, new_blue, in_green, new_green,in_sync: std_logic;

begin

L1:		process(clk, reset)				
		begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				hcount <= (others => '0');
				vcount <= (others => '0');	
				in_h_sync <= '1'; 
				in_v_sync <= '1';
				in_red <= '0';
				in_green <= '0';
				in_blue <= '0';
			else 
				hcount <= new_hcount;
				vcount <= new_vcount;
				in_h_sync <= new_h_sync;
				in_v_sync <= new_v_sync;
				in_red <= new_red;
				in_green <= new_green;
				in_blue <= new_blue;
			end if;
		end if;
		end process; 

L2:		process(hcount, vcount)
		begin
			if(hcount = 799) then --end_h
				new_hcount <= (others => '0');
			else
				new_hcount <= hcount + 1;
			end if;

			if(hcount  = 799) then --inc_v
				if(vcount = 524) then --end_v
					new_vcount <= (others => '0');
				else
					new_vcount <= vcount + 1;
				end if;
			else
				new_vcount <= vcount;
			end if;
		end process;
		
L31:		process( hcount, vcount, in_h_sync, in_v_sync)
		begin
			if (hcount<95) then
				new_h_sync <= '0';
			else 
				new_h_sync <= '1';
			end if;

			if (hcount>=39 and vcount<1) then
				new_v_sync <= '0';
			elsif (vcount>1 and hcount>=39) then
				new_v_sync <= '1';
			else 
				new_v_sync<=in_v_sync;
			end if;
			
			if((hcount>140 and hcount<780) and (vcount > 32 and vcount<512)) then
				in_sync <= '1';
			else
				pixel_sync <= '0';
				in_sync <= '0';
			end if;
			
			if ((hcount>106 and hcount<780) and (vcount>32 and vcount<512)) then
					pixel_sync <= '1';
 				else
					pixel_sync <= '0';
			end if;
		end process;

L4:		process(hcount,vcount)
		begin
			if ( in_sync='1') then
				new_red <= color(0);
				new_green <= color(1);
				new_blue <= color(2);
				
			
			else 
				new_red <= '0';
				new_green <= '0';
				new_blue <= '0';
			end if;
		end process;



	
		h_sync <= in_h_sync;
		v_sync <= in_v_sync;
		red <= in_red;
		green <= in_green;
		blue <= in_blue;
		
end vga_behavioral;
