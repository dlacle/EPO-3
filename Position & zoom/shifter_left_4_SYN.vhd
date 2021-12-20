
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of shifter_left_4 is

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;


begin

  s_out(0) <= s_out(3);
  s_out(1) <= s_out(3);
  s_out(2) <= s_out(3);
  drc_bufs : BUFFD4BWP7T port map(I => pixel_in(0), Z => s_out(4));
  drc_bufs7 : BUFFD4BWP7T port map(I => pixel_in(11), Z => s_out(11));
  drc_bufs10 : BUFFD4BWP7T port map(I => pixel_in(4), Z => s_out(8));
  drc_bufs13 : BUFFD4BWP7T port map(I => pixel_in(3), Z => s_out(7));
  drc_bufs16 : BUFFD4BWP7T port map(I => pixel_in(2), Z => s_out(6));
  drc_bufs19 : BUFFD4BWP7T port map(I => pixel_in(1), Z => s_out(5));
  tie_0_cell : TIELBWP7T port map(ZN => s_out(3));

end synthesised;
