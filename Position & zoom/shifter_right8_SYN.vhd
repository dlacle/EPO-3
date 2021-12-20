
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of shifter_right8 is

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;


begin

  s_out(4) <= s_out(11);
  s_out(5) <= s_out(11);
  s_out(6) <= s_out(11);
  s_out(7) <= s_out(11);
  s_out(8) <= s_out(11);
  s_out(9) <= s_out(11);
  s_out(10) <= s_out(11);
  drc_bufs : BUFFD4BWP7T port map(I => s_in(8), Z => s_out(0));
  drc_bufs3 : BUFFD4BWP7T port map(I => s_in(11), Z => s_out(3));
  drc_bufs6 : BUFFD4BWP7T port map(I => s_in(10), Z => s_out(2));
  drc_bufs9 : BUFFD4BWP7T port map(I => s_in(9), Z => s_out(1));
  tie_0_cell : TIELBWP7T port map(ZN => s_out(11));

end synthesised;
