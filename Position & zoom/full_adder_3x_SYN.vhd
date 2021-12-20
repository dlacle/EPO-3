
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of full_adder_3x is

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  signal c : std_logic_vector(10 downto 0);
  signal fa1_n_0, fa2_n_0, fa3_n_0, fa4_n_0, fa5_n_0 : std_logic;
  signal fa6_n_0, fa7_n_0, fa8_n_0, fa9_n_0, fa10_n_0 : std_logic;
  signal fa11_n_0, fa11_n_1, fa11_n_2 : std_logic;

begin

  fa5_g41 : AO22D0BWP7T port map(A1 => c(4), A2 => fa5_n_0, B1 => b(5), B2 => a(5), Z => c(5));
  fa5_g45 : CKXOR2D0BWP7T port map(A1 => b(5), A2 => a(5), Z => fa5_n_0);
  fa5_g2 : CKXOR2D4BWP7T port map(A1 => c(4), A2 => fa5_n_0, Z => s(5));
  fa6_g41 : AO22D0BWP7T port map(A1 => c(5), A2 => fa6_n_0, B1 => b(6), B2 => a(6), Z => c(6));
  fa6_g45 : CKXOR2D0BWP7T port map(A1 => b(6), A2 => a(6), Z => fa6_n_0);
  fa6_g2 : CKXOR2D4BWP7T port map(A1 => c(5), A2 => fa6_n_0, Z => s(6));
  fa7_g41 : AO22D0BWP7T port map(A1 => c(6), A2 => fa7_n_0, B1 => b(7), B2 => a(7), Z => c(7));
  fa7_g45 : CKXOR2D0BWP7T port map(A1 => b(7), A2 => a(7), Z => fa7_n_0);
  fa7_g2 : CKXOR2D4BWP7T port map(A1 => c(6), A2 => fa7_n_0, Z => s(7));
  fa8_g41 : AO22D0BWP7T port map(A1 => c(7), A2 => fa8_n_0, B1 => b(8), B2 => a(8), Z => c(8));
  fa8_g45 : CKXOR2D0BWP7T port map(A1 => b(8), A2 => a(8), Z => fa8_n_0);
  fa8_g2 : CKXOR2D4BWP7T port map(A1 => c(7), A2 => fa8_n_0, Z => s(8));
  fa9_g41 : AO22D0BWP7T port map(A1 => c(8), A2 => fa9_n_0, B1 => b(9), B2 => a(9), Z => c(9));
  fa9_g45 : CKXOR2D0BWP7T port map(A1 => b(9), A2 => a(9), Z => fa9_n_0);
  fa9_g2 : CKXOR2D4BWP7T port map(A1 => c(8), A2 => fa9_n_0, Z => s(9));
  fa1_g41 : AO22D0BWP7T port map(A1 => fa1_n_0, A2 => c(0), B1 => b(1), B2 => a(1), Z => c(1));
  fa1_g45 : CKXOR2D0BWP7T port map(A1 => b(1), A2 => a(1), Z => fa1_n_0);
  fa1_g2 : CKXOR2D4BWP7T port map(A1 => fa1_n_0, A2 => c(0), Z => s(1));
  fa10_g41 : AO22D0BWP7T port map(A1 => c(9), A2 => fa10_n_0, B1 => b(10), B2 => a(10), Z => c(10));
  fa10_g45 : CKXOR2D0BWP7T port map(A1 => b(10), A2 => a(10), Z => fa10_n_0);
  fa10_g2 : CKXOR2D4BWP7T port map(A1 => c(9), A2 => fa10_n_0, Z => s(10));
  fa2_g41 : AO22D0BWP7T port map(A1 => c(1), A2 => fa2_n_0, B1 => b(2), B2 => a(2), Z => c(2));
  fa2_g45 : CKXOR2D0BWP7T port map(A1 => b(2), A2 => a(2), Z => fa2_n_0);
  fa2_g2 : CKXOR2D4BWP7T port map(A1 => c(1), A2 => fa2_n_0, Z => s(2));
  fa11_g41 : ND2D4BWP7T port map(A1 => fa11_n_2, A2 => fa11_n_0, ZN => cout);
  fa11_g45 : ND2D0BWP7T port map(A1 => c(10), A2 => fa11_n_1, ZN => fa11_n_2);
  fa11_g46 : CKXOR2D0BWP7T port map(A1 => b(11), A2 => a(11), Z => fa11_n_1);
  fa11_g47 : ND2D0BWP7T port map(A1 => b(11), A2 => a(11), ZN => fa11_n_0);
  fa11_g2 : CKXOR2D4BWP7T port map(A1 => c(10), A2 => fa11_n_1, Z => s(11));
  fa3_g41 : AO22D0BWP7T port map(A1 => c(2), A2 => fa3_n_0, B1 => b(3), B2 => a(3), Z => c(3));
  fa3_g45 : CKXOR2D0BWP7T port map(A1 => b(3), A2 => a(3), Z => fa3_n_0);
  fa3_g2 : CKXOR2D4BWP7T port map(A1 => c(2), A2 => fa3_n_0, Z => s(3));
  ha1_g17 : CKXOR2D4BWP7T port map(A1 => b(0), A2 => a(0), Z => s(0));
  ha1_g18 : AN2D1BWP7T port map(A1 => b(0), A2 => a(0), Z => c(0));
  fa4_g41 : AO22D0BWP7T port map(A1 => c(3), A2 => fa4_n_0, B1 => b(4), B2 => a(4), Z => c(4));
  fa4_g45 : CKXOR2D0BWP7T port map(A1 => b(4), A2 => a(4), Z => fa4_n_0);
  fa4_g2 : CKXOR2D4BWP7T port map(A1 => c(3), A2 => fa4_n_0, Z => s(4));

end synthesised;
