
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of shifter_right is

  component INVD8BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  signal n_0 : std_logic;

begin

  s_out(10) <= s_out(11);
  g4 : INVD8BWP7T port map(I => n_0, ZN => s_out(11));
  g6 : INVD0BWP7T port map(I => s_in(11), ZN => n_0);
  drc_bufs : BUFFD4BWP7T port map(I => s_in(1), Z => s_out(0));
  drc_bufs9 : BUFFD4BWP7T port map(I => s_in(10), Z => s_out(9));
  drc_bufs12 : BUFFD4BWP7T port map(I => s_in(9), Z => s_out(8));
  drc_bufs15 : BUFFD4BWP7T port map(I => s_in(8), Z => s_out(7));
  drc_bufs18 : BUFFD4BWP7T port map(I => s_in(7), Z => s_out(6));
  drc_bufs21 : BUFFD4BWP7T port map(I => s_in(6), Z => s_out(5));
  drc_bufs24 : BUFFD4BWP7T port map(I => s_in(5), Z => s_out(4));
  drc_bufs27 : BUFFD4BWP7T port map(I => s_in(4), Z => s_out(3));
  drc_bufs30 : BUFFD4BWP7T port map(I => s_in(3), Z => s_out(2));
  drc_bufs33 : BUFFD4BWP7T port map(I => s_in(2), Z => s_out(1));

end synthesised;
