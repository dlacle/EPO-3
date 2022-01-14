
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of main_ytob is

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI32D0BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKMUX2D0BWP7T
    port(I0, I1, S : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component HA1D0BWP7T
    port(A, B : in std_logic; CO, S : out std_logic);
  end component;

  component FA1D0BWP7T
    port(A, B, CI : in std_logic; CO, S : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  signal shifter_rightyout : std_logic_vector(11 downto 0);
  signal full_adder_y2 : std_logic_vector(11 downto 0);
  signal FAy1_c : std_logic_vector(10 downto 0);
  signal full_adder_y1 : std_logic_vector(11 downto 0);
  signal FAy2_c : std_logic_vector(10 downto 0);
  signal center_b : std_logic_vector(11 downto 0);
  signal FAy3_c : std_logic_vector(10 downto 0);
  signal FAy2_fa11_n_0, FAy3_fa3_n_0, FAy3_fa4_n_0, FAy3_fa6_n_0, FAy3_fa7_n_0 : std_logic;
  signal FAy3_fa8_n_0, FAy3_fa9_n_0, FAy3_fa10_n_0, FAy3_fa11_n_0, FAy3_fa11_n_1 : std_logic;
  signal FAy3_fa11_n_2, MUXy_n_1, SRy_n_1, SRy_n_2, SRy_n_3 : std_logic;
  signal SRy_n_4, SRy_n_5, SRy_n_6, SRy_n_7, SRy_n_8 : std_logic;
  signal SRy_n_9, SRy_n_10, SRy_n_11, SRy_n_12, SRy_n_13 : std_logic;
  signal SRy_n_14, SRy_n_15, SRy_n_16, SRy_n_17, SRy_n_18 : std_logic;
  signal SRy_n_19, SRy_n_20, SRy_n_21, SRy_n_22, SRy_n_23 : std_logic;
  signal SRy_n_24, SRy_n_25, SRy_n_26, SRy_n_27, SRy_n_28 : std_logic;
  signal n_0 : std_logic;

begin

  g2 : INVD0BWP7T port map(I => s_in(2), ZN => n_0);
  SRy_g804 : MOAI22D0BWP7T port map(A1 => SRy_n_18, A2 => SRy_n_2, B1 => SRy_n_23, B2 => SRy_n_2, ZN => shifter_rightyout(4));
  SRy_g805 : AO22D0BWP7T port map(A1 => SRy_n_20, A2 => SRy_n_2, B1 => zoom(0), B2 => SRy_n_21, Z => shifter_rightyout(2));
  SRy_g806 : AO22D0BWP7T port map(A1 => SRy_n_21, A2 => SRy_n_2, B1 => zoom(0), B2 => SRy_n_23, Z => shifter_rightyout(3));
  SRy_g807 : MOAI22D0BWP7T port map(A1 => SRy_n_25, A2 => zoom(0), B1 => SRy_n_26, B2 => zoom(0), ZN => shifter_rightyout(9));
  SRy_g809 : MOAI22D0BWP7T port map(A1 => SRy_n_24, A2 => zoom(0), B1 => SRy_n_20, B2 => zoom(0), ZN => shifter_rightyout(1));
  SRy_g810 : OAI22D0BWP7T port map(A1 => SRy_n_16, A2 => zoom(0), B1 => SRy_n_25, B2 => SRy_n_2, ZN => shifter_rightyout(8));
  SRy_g811 : OR2D4BWP7T port map(A1 => SRy_n_27, A2 => SRy_n_28, Z => b(0));
  SRy_g812 : OAI22D0BWP7T port map(A1 => SRy_n_18, A2 => zoom(0), B1 => SRy_n_19, B2 => SRy_n_2, ZN => shifter_rightyout(5));
  SRy_g813 : OAI22D0BWP7T port map(A1 => SRy_n_17, A2 => zoom(0), B1 => SRy_n_16, B2 => SRy_n_2, ZN => shifter_rightyout(7));
  SRy_g814 : OAI22D0BWP7T port map(A1 => SRy_n_19, A2 => zoom(0), B1 => SRy_n_17, B2 => SRy_n_2, ZN => shifter_rightyout(6));
  SRy_g815 : NR2D0BWP7T port map(A1 => SRy_n_22, A2 => zoom(0), ZN => SRy_n_28);
  SRy_g816 : NR2D0BWP7T port map(A1 => SRy_n_24, A2 => SRy_n_2, ZN => SRy_n_27);
  SRy_g818 : AOI32D0BWP7T port map(A1 => full_adder_y2(4), A2 => zoom(2), A3 => SRy_n_3, B1 => SRy_n_8, B2 => zoom(1), ZN => SRy_n_22);
  SRy_g819 : OAI21D0BWP7T port map(A1 => SRy_n_15, A2 => zoom(1), B => SRy_n_4, ZN => SRy_n_26);
  SRy_g820 : OA21D0BWP7T port map(A1 => SRy_n_14, A2 => zoom(1), B => SRy_n_4, Z => SRy_n_25);
  SRy_g821 : AOI32D0BWP7T port map(A1 => full_adder_y2(5), A2 => zoom(2), A3 => SRy_n_3, B1 => SRy_n_9, B2 => zoom(1), ZN => SRy_n_24);
  SRy_g822 : OAI22D0BWP7T port map(A1 => SRy_n_10, A2 => zoom(1), B1 => SRy_n_7, B2 => SRy_n_3, ZN => SRy_n_23);
  SRy_g823 : MOAI22D0BWP7T port map(A1 => SRy_n_11, A2 => SRy_n_3, B1 => SRy_n_9, B2 => SRy_n_3, ZN => SRy_n_21);
  SRy_g824 : MOAI22D0BWP7T port map(A1 => SRy_n_10, A2 => SRy_n_3, B1 => SRy_n_8, B2 => SRy_n_3, ZN => SRy_n_20);
  SRy_g825 : MAOI22D0BWP7T port map(A1 => SRy_n_12, A2 => zoom(1), B1 => SRy_n_7, B2 => zoom(1), ZN => SRy_n_19);
  SRy_g826 : MAOI22D0BWP7T port map(A1 => SRy_n_13, A2 => zoom(1), B1 => SRy_n_11, B2 => zoom(1), ZN => SRy_n_18);
  SRy_g827 : MAOI22D0BWP7T port map(A1 => SRy_n_13, A2 => SRy_n_3, B1 => SRy_n_14, B2 => SRy_n_3, ZN => SRy_n_17);
  SRy_g828 : MAOI22D0BWP7T port map(A1 => SRy_n_12, A2 => SRy_n_3, B1 => SRy_n_15, B2 => SRy_n_3, ZN => SRy_n_16);
  SRy_g829 : AOI21D0BWP7T port map(A1 => full_adder_y2(10), A2 => SRy_n_1, B => SRy_n_5, ZN => SRy_n_15);
  SRy_g830 : AOI21D0BWP7T port map(A1 => full_adder_y2(9), A2 => SRy_n_1, B => SRy_n_5, ZN => SRy_n_14);
  SRy_g831 : IOA21D0BWP7T port map(A1 => full_adder_y2(7), A2 => SRy_n_1, B => SRy_n_6, ZN => SRy_n_13);
  SRy_g832 : IOA21D0BWP7T port map(A1 => full_adder_y2(8), A2 => SRy_n_1, B => SRy_n_6, ZN => SRy_n_12);
  SRy_g833 : AOI22D0BWP7T port map(A1 => full_adder_y2(5), A2 => SRy_n_1, B1 => full_adder_y2(9), B2 => zoom(2), ZN => SRy_n_11);
  SRy_g834 : AOI22D0BWP7T port map(A1 => full_adder_y2(4), A2 => SRy_n_1, B1 => full_adder_y2(8), B2 => zoom(2), ZN => SRy_n_10);
  SRy_g835 : AO22D0BWP7T port map(A1 => SRy_n_1, A2 => s_in(1), B1 => zoom(2), B2 => full_adder_y2(7), Z => SRy_n_9);
  SRy_g836 : AO22D0BWP7T port map(A1 => SRy_n_1, A2 => s_in(0), B1 => zoom(2), B2 => full_adder_y2(6), Z => SRy_n_8);
  SRy_g837 : AOI22D0BWP7T port map(A1 => full_adder_y2(6), A2 => SRy_n_1, B1 => full_adder_y2(10), B2 => zoom(2), ZN => SRy_n_7);
  SRy_g838 : CKND1BWP7T port map(I => SRy_n_6, ZN => SRy_n_5);
  SRy_g839 : ND2D0BWP7T port map(A1 => full_adder_y2(11), A2 => zoom(2), ZN => SRy_n_6);
  SRy_g840 : ND2D0BWP7T port map(A1 => full_adder_y2(11), A2 => zoom(1), ZN => SRy_n_4);
  SRy_g841 : INVD1BWP7T port map(I => zoom(1), ZN => SRy_n_3);
  SRy_g842 : INVD1BWP7T port map(I => zoom(0), ZN => SRy_n_2);
  SRy_g843 : INVD1BWP7T port map(I => zoom(2), ZN => SRy_n_1);
  SRy_g2 : CKMUX2D0BWP7T port map(I0 => SRy_n_26, I1 => full_adder_y2(11), S => zoom(0), Z => shifter_rightyout(10));
  FAy1_fa9_g15 : CKXOR2D0BWP7T port map(A1 => s_in(9), A2 => FAy1_c(8), Z => full_adder_y1(9));
  FAy1_fa3_g21 : HA1D0BWP7T port map(A => s_in(3), B => s_in(2), CO => FAy1_c(3), S => full_adder_y1(3));
  FAy1_fa4_g21 : HA1D0BWP7T port map(A => s_in(4), B => FAy1_c(3), CO => FAy1_c(4), S => full_adder_y1(4));
  FAy2_fa4_g21 : HA1D0BWP7T port map(A => s_in(0), B => n_0, CO => FAy2_c(4), S => full_adder_y2(4));
  FAy2_fa5_g2 : FA1D0BWP7T port map(A => s_in(1), B => full_adder_y1(3), CI => FAy2_c(4), CO => FAy2_c(5), S => full_adder_y2(5));
  FAy2_fa6_g2 : FA1D0BWP7T port map(A => n_0, B => full_adder_y1(4), CI => FAy2_c(5), CO => FAy2_c(6), S => full_adder_y2(6));
  FAy2_fa7_g2 : FA1D0BWP7T port map(A => FAy2_c(6), B => full_adder_y1(3), CI => full_adder_y1(5), CO => FAy2_c(7), S => full_adder_y2(7));
  FAy2_fa8_g2 : FA1D0BWP7T port map(A => FAy2_c(7), B => full_adder_y1(4), CI => full_adder_y1(6), CO => FAy2_c(8), S => full_adder_y2(8));
  FAy2_fa10_g2 : FA1D0BWP7T port map(A => FAy2_c(9), B => full_adder_y1(6), CI => full_adder_y1(8), CO => FAy2_c(10), S => full_adder_y2(10));
  FAy2_fa9_g2 : FA1D0BWP7T port map(A => FAy2_c(8), B => full_adder_y1(5), CI => full_adder_y1(7), CO => FAy2_c(9), S => full_adder_y2(9));
  FAy2_fa11_g31 : MOAI22D0BWP7T port map(A1 => FAy2_c(10), A2 => FAy2_fa11_n_0, B1 => FAy2_c(10), B2 => FAy2_fa11_n_0, ZN => full_adder_y2(11));
  FAy2_fa11_g32 : XNR2D1BWP7T port map(A1 => full_adder_y1(9), A2 => full_adder_y1(7), ZN => FAy2_fa11_n_0);
  FAy1_fa5_g35 : IOA21D0BWP7T port map(A1 => FAy1_c(4), A2 => s_in(5), B => FAy1_c(5), ZN => full_adder_y1(5));
  FAy1_fa5_g36 : OR2D0BWP7T port map(A1 => FAy1_c(4), A2 => s_in(5), Z => FAy1_c(5));
  MUXy_g109 : OR2D0BWP7T port map(A1 => center_b(11), A2 => center_b(9), Z => center_b(4));
  MUXy_g110 : AO21D0BWP7T port map(A1 => center_b(9), A2 => MUXy_n_1, B => center_b(11), Z => center_b(8));
  MUXy_g111 : AO21D0BWP7T port map(A1 => center_b(9), A2 => position(2), B => center_b(11), Z => center_b(3));
  MUXy_g112 : NR3D0BWP7T port map(A1 => MUXy_n_1, A2 => position(0), A3 => position(1), ZN => center_b(11));
  MUXy_g113 : AN2D1BWP7T port map(A1 => position(0), A2 => position(1), Z => center_b(9));
  MUXy_g114 : INVD0BWP7T port map(I => position(2), ZN => MUXy_n_1);
  FAy3_fa7_g41 : AO22D0BWP7T port map(A1 => FAy3_c(6), A2 => FAy3_fa7_n_0, B1 => center_b(11), B2 => shifter_rightyout(7), Z => FAy3_c(7));
  FAy3_fa7_g45 : CKXOR2D0BWP7T port map(A1 => center_b(11), A2 => shifter_rightyout(7), Z => FAy3_fa7_n_0);
  FAy3_fa7_g2 : CKXOR2D4BWP7T port map(A1 => FAy3_c(6), A2 => FAy3_fa7_n_0, Z => b(7));
  FAy3_fa8_g41 : AO22D0BWP7T port map(A1 => FAy3_c(7), A2 => FAy3_fa8_n_0, B1 => center_b(8), B2 => shifter_rightyout(8), Z => FAy3_c(8));
  FAy3_fa8_g45 : CKXOR2D0BWP7T port map(A1 => center_b(8), A2 => shifter_rightyout(8), Z => FAy3_fa8_n_0);
  FAy3_fa8_g2 : CKXOR2D4BWP7T port map(A1 => FAy3_c(7), A2 => FAy3_fa8_n_0, Z => b(8));
  FAy3_fa9_g41 : AO22D0BWP7T port map(A1 => FAy3_c(8), A2 => FAy3_fa9_n_0, B1 => center_b(9), B2 => shifter_rightyout(9), Z => FAy3_c(9));
  FAy3_fa9_g45 : CKXOR2D0BWP7T port map(A1 => center_b(9), A2 => shifter_rightyout(9), Z => FAy3_fa9_n_0);
  FAy3_fa9_g2 : CKXOR2D4BWP7T port map(A1 => FAy3_c(8), A2 => FAy3_fa9_n_0, Z => b(9));
  FAy3_fa10_g41 : AO22D0BWP7T port map(A1 => FAy3_c(9), A2 => FAy3_fa10_n_0, B1 => center_b(11), B2 => shifter_rightyout(10), Z => FAy3_c(10));
  FAy3_fa10_g45 : CKXOR2D0BWP7T port map(A1 => center_b(11), A2 => shifter_rightyout(10), Z => FAy3_fa10_n_0);
  FAy3_fa10_g2 : CKXOR2D4BWP7T port map(A1 => FAy3_c(9), A2 => FAy3_fa10_n_0, Z => b(10));
  FAy3_fa1_g21 : CKXOR2D4BWP7T port map(A1 => shifter_rightyout(1), A2 => center_b(8), Z => b(1));
  FAy3_fa1_g22 : AN2D1BWP7T port map(A1 => shifter_rightyout(1), A2 => center_b(8), Z => FAy3_c(1));
  FAy3_fa11_g31 : OR2D4BWP7T port map(A1 => FAy3_fa11_n_1, A2 => FAy3_fa11_n_2, Z => b(11));
  FAy3_fa11_g32 : NR2D0BWP7T port map(A1 => FAy3_c(10), A2 => FAy3_fa11_n_0, ZN => FAy3_fa11_n_2);
  FAy3_fa11_g33 : AN2D1BWP7T port map(A1 => FAy3_c(10), A2 => FAy3_fa11_n_0, Z => FAy3_fa11_n_1);
  FAy3_fa11_g34 : XNR2D1BWP7T port map(A1 => full_adder_y2(11), A2 => center_b(11), ZN => FAy3_fa11_n_0);
  FAy3_fa2_g21 : CKXOR2D4BWP7T port map(A1 => shifter_rightyout(2), A2 => FAy3_c(1), Z => b(2));
  FAy3_fa2_g22 : AN2D1BWP7T port map(A1 => shifter_rightyout(2), A2 => FAy3_c(1), Z => FAy3_c(2));
  FAy3_fa3_g41 : AO22D0BWP7T port map(A1 => FAy3_fa3_n_0, A2 => FAy3_c(2), B1 => center_b(3), B2 => shifter_rightyout(3), Z => FAy3_c(3));
  FAy3_fa3_g45 : CKXOR2D0BWP7T port map(A1 => center_b(3), A2 => shifter_rightyout(3), Z => FAy3_fa3_n_0);
  FAy3_fa3_g2 : CKXOR2D4BWP7T port map(A1 => FAy3_fa3_n_0, A2 => FAy3_c(2), Z => b(3));
  FAy3_fa4_g41 : AO22D0BWP7T port map(A1 => FAy3_fa4_n_0, A2 => FAy3_c(3), B1 => center_b(4), B2 => shifter_rightyout(4), Z => FAy3_c(4));
  FAy3_fa4_g45 : CKXOR2D0BWP7T port map(A1 => center_b(4), A2 => shifter_rightyout(4), Z => FAy3_fa4_n_0);
  FAy3_fa4_g2 : CKXOR2D4BWP7T port map(A1 => FAy3_c(3), A2 => FAy3_fa4_n_0, Z => b(4));
  FAy1_fa6_g35 : IOA21D0BWP7T port map(A1 => FAy1_c(5), A2 => s_in(6), B => FAy1_c(6), ZN => full_adder_y1(6));
  FAy1_fa6_g36 : OR2D0BWP7T port map(A1 => FAy1_c(5), A2 => s_in(6), Z => FAy1_c(6));
  FAy3_fa5_g21 : CKXOR2D4BWP7T port map(A1 => FAy3_c(4), A2 => shifter_rightyout(5), Z => b(5));
  FAy3_fa5_g22 : AN2D1BWP7T port map(A1 => FAy3_c(4), A2 => shifter_rightyout(5), Z => FAy3_c(5));
  FAy1_fa7_g21 : HA1D0BWP7T port map(A => s_in(7), B => FAy1_c(6), CO => FAy1_c(7), S => full_adder_y1(7));
  FAy3_fa6_g41 : AO22D0BWP7T port map(A1 => FAy3_c(5), A2 => FAy3_fa6_n_0, B1 => center_b(9), B2 => shifter_rightyout(6), Z => FAy3_c(6));
  FAy3_fa6_g45 : CKXOR2D0BWP7T port map(A1 => center_b(9), A2 => shifter_rightyout(6), Z => FAy3_fa6_n_0);
  FAy3_fa6_g2 : CKXOR2D4BWP7T port map(A1 => FAy3_c(5), A2 => FAy3_fa6_n_0, Z => b(6));
  FAy1_fa8_g21 : HA1D0BWP7T port map(A => s_in(8), B => FAy1_c(7), CO => FAy1_c(8), S => full_adder_y1(8));

end synthesised;
