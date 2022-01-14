
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of main_xtoa is

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AOI32D0BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
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

  component CKMUX2D0BWP7T
    port(I0, I1, S : in std_logic; Z : out std_logic);
  end component;

  component OR2D0BWP7T
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

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  signal center_a : std_logic_vector(11 downto 0);
  signal shifter_rightxout : std_logic_vector(11 downto 0);
  signal full_adder_x2 : std_logic_vector(11 downto 0);
  signal FAx1_c : std_logic_vector(10 downto 0);
  signal full_adder_x1 : std_logic_vector(11 downto 0);
  signal FAx2_c : std_logic_vector(10 downto 0);
  signal FAx3_c : std_logic_vector(10 downto 0);
  signal FAx2_fa11_n_0, FAx3_fa1_n_0, FAx3_fa2_n_0, FAx3_fa3_n_0, FAx3_fa4_n_0 : std_logic;
  signal FAx3_fa5_n_0, FAx3_fa6_n_0, FAx3_fa7_n_0, FAx3_fa8_n_0, FAx3_fa9_n_0 : std_logic;
  signal FAx3_fa10_n_0, FAx3_fa11_n_0, FAx3_fa11_n_1, FAx3_fa11_n_2, MUXx_n_0 : std_logic;
  signal MUXx_n_1, MUXx_n_2, MUXx_n_4, MUXx_n_5, MUXx_n_7 : std_logic;
  signal MUXx_n_8, SRx_n_1, SRx_n_2, SRx_n_3, SRx_n_4 : std_logic;
  signal SRx_n_5, SRx_n_6, SRx_n_7, SRx_n_8, SRx_n_9 : std_logic;
  signal SRx_n_10, SRx_n_11, SRx_n_12, SRx_n_13, SRx_n_14 : std_logic;
  signal SRx_n_15, SRx_n_16, SRx_n_17, SRx_n_18, SRx_n_19 : std_logic;
  signal SRx_n_20, SRx_n_21, SRx_n_22, SRx_n_23, SRx_n_24 : std_logic;
  signal SRx_n_25, SRx_n_26, n_0 : std_logic;

begin

  g2 : INVD0BWP7T port map(I => pixel_x(2), ZN => n_0);
  MUXx_g237 : IND2D0BWP7T port map(A1 => center_a(2), B1 => MUXx_n_5, ZN => center_a(8));
  MUXx_g238 : AO21D0BWP7T port map(A1 => MUXx_n_4, A2 => position(0), B => center_a(2), Z => center_a(4));
  MUXx_g239 : OAI21D0BWP7T port map(A1 => MUXx_n_8, A2 => MUXx_n_0, B => MUXx_n_7, ZN => center_a(9));
  MUXx_g240 : MOAI22D0BWP7T port map(A1 => MUXx_n_0, A2 => position(2), B1 => center_a(7), B2 => MUXx_n_0, ZN => center_a(10));
  MUXx_g241 : OAI22D0BWP7T port map(A1 => MUXx_n_7, A2 => position(2), B1 => center_a(7), B2 => MUXx_n_0, ZN => center_a(3));
  MUXx_g242 : NR2D0BWP7T port map(A1 => MUXx_n_8, A2 => position(0), ZN => center_a(2));
  MUXx_g243 : MOAI22D0BWP7T port map(A1 => MUXx_n_4, A2 => position(0), B1 => MUXx_n_2, B2 => position(0), ZN => center_a(11));
  MUXx_g244 : OAI22D0BWP7T port map(A1 => MUXx_n_4, A2 => MUXx_n_0, B1 => MUXx_n_7, B2 => MUXx_n_1, ZN => center_a(5));
  MUXx_g245 : OAI21D0BWP7T port map(A1 => position(0), A2 => MUXx_n_1, B => MUXx_n_5, ZN => center_a(6));
  MUXx_g246 : AOI21D0BWP7T port map(A1 => MUXx_n_1, A2 => position(1), B => center_a(7), ZN => MUXx_n_8);
  MUXx_g247 : ND2D0BWP7T port map(A1 => MUXx_n_0, A2 => position(1), ZN => MUXx_n_7);
  MUXx_g248 : NR2XD0BWP7T port map(A1 => position(1), A2 => MUXx_n_1, ZN => center_a(7));
  MUXx_g249 : INVD0BWP7T port map(I => MUXx_n_4, ZN => center_a(1));
  MUXx_g250 : ND2D0BWP7T port map(A1 => position(2), A2 => position(1), ZN => MUXx_n_2);
  MUXx_g251 : ND2D0BWP7T port map(A1 => position(0), A2 => position(1), ZN => MUXx_n_5);
  MUXx_g252 : NR2D0BWP7T port map(A1 => position(2), A2 => position(1), ZN => MUXx_n_4);
  MUXx_g253 : INVD1BWP7T port map(I => position(2), ZN => MUXx_n_1);
  MUXx_g254 : INVD1BWP7T port map(I => position(0), ZN => MUXx_n_0);
  SRx_g804 : MOAI22D0BWP7T port map(A1 => SRx_n_18, A2 => SRx_n_2, B1 => SRx_n_23, B2 => SRx_n_2, ZN => shifter_rightxout(4));
  SRx_g805 : AO22D0BWP7T port map(A1 => SRx_n_20, A2 => SRx_n_2, B1 => zoom(0), B2 => SRx_n_21, Z => shifter_rightxout(2));
  SRx_g806 : AO22D0BWP7T port map(A1 => SRx_n_21, A2 => SRx_n_2, B1 => zoom(0), B2 => SRx_n_23, Z => shifter_rightxout(3));
  SRx_g807 : MOAI22D0BWP7T port map(A1 => SRx_n_25, A2 => zoom(0), B1 => SRx_n_26, B2 => zoom(0), ZN => shifter_rightxout(9));
  SRx_g809 : MOAI22D0BWP7T port map(A1 => SRx_n_24, A2 => zoom(0), B1 => SRx_n_20, B2 => zoom(0), ZN => shifter_rightxout(1));
  SRx_g810 : OAI22D0BWP7T port map(A1 => SRx_n_16, A2 => zoom(0), B1 => SRx_n_25, B2 => SRx_n_2, ZN => shifter_rightxout(8));
  SRx_g811 : OAI22D0BWP7T port map(A1 => SRx_n_22, A2 => zoom(0), B1 => SRx_n_24, B2 => SRx_n_2, ZN => shifter_rightxout(0));
  SRx_g812 : OAI22D0BWP7T port map(A1 => SRx_n_18, A2 => zoom(0), B1 => SRx_n_19, B2 => SRx_n_2, ZN => shifter_rightxout(5));
  SRx_g813 : OAI22D0BWP7T port map(A1 => SRx_n_17, A2 => zoom(0), B1 => SRx_n_16, B2 => SRx_n_2, ZN => shifter_rightxout(7));
  SRx_g814 : OAI22D0BWP7T port map(A1 => SRx_n_19, A2 => zoom(0), B1 => SRx_n_17, B2 => SRx_n_2, ZN => shifter_rightxout(6));
  SRx_g816 : AOI32D0BWP7T port map(A1 => full_adder_x2(4), A2 => zoom(2), A3 => SRx_n_3, B1 => SRx_n_8, B2 => zoom(1), ZN => SRx_n_22);
  SRx_g817 : OAI21D0BWP7T port map(A1 => SRx_n_15, A2 => zoom(1), B => SRx_n_4, ZN => SRx_n_26);
  SRx_g818 : OA21D0BWP7T port map(A1 => SRx_n_14, A2 => zoom(1), B => SRx_n_4, Z => SRx_n_25);
  SRx_g819 : AOI32D0BWP7T port map(A1 => full_adder_x2(5), A2 => zoom(2), A3 => SRx_n_3, B1 => SRx_n_9, B2 => zoom(1), ZN => SRx_n_24);
  SRx_g820 : OAI22D0BWP7T port map(A1 => SRx_n_10, A2 => zoom(1), B1 => SRx_n_7, B2 => SRx_n_3, ZN => SRx_n_23);
  SRx_g821 : MOAI22D0BWP7T port map(A1 => SRx_n_11, A2 => SRx_n_3, B1 => SRx_n_9, B2 => SRx_n_3, ZN => SRx_n_21);
  SRx_g822 : MOAI22D0BWP7T port map(A1 => SRx_n_10, A2 => SRx_n_3, B1 => SRx_n_8, B2 => SRx_n_3, ZN => SRx_n_20);
  SRx_g823 : MAOI22D0BWP7T port map(A1 => SRx_n_12, A2 => zoom(1), B1 => SRx_n_7, B2 => zoom(1), ZN => SRx_n_19);
  SRx_g824 : MAOI22D0BWP7T port map(A1 => SRx_n_13, A2 => zoom(1), B1 => SRx_n_11, B2 => zoom(1), ZN => SRx_n_18);
  SRx_g825 : MAOI22D0BWP7T port map(A1 => SRx_n_13, A2 => SRx_n_3, B1 => SRx_n_14, B2 => SRx_n_3, ZN => SRx_n_17);
  SRx_g826 : MAOI22D0BWP7T port map(A1 => SRx_n_12, A2 => SRx_n_3, B1 => SRx_n_15, B2 => SRx_n_3, ZN => SRx_n_16);
  SRx_g827 : AOI21D0BWP7T port map(A1 => full_adder_x2(10), A2 => SRx_n_1, B => SRx_n_5, ZN => SRx_n_15);
  SRx_g828 : AOI21D0BWP7T port map(A1 => full_adder_x2(9), A2 => SRx_n_1, B => SRx_n_5, ZN => SRx_n_14);
  SRx_g829 : IOA21D0BWP7T port map(A1 => full_adder_x2(7), A2 => SRx_n_1, B => SRx_n_6, ZN => SRx_n_13);
  SRx_g830 : IOA21D0BWP7T port map(A1 => full_adder_x2(8), A2 => SRx_n_1, B => SRx_n_6, ZN => SRx_n_12);
  SRx_g831 : AOI22D0BWP7T port map(A1 => full_adder_x2(5), A2 => SRx_n_1, B1 => full_adder_x2(9), B2 => zoom(2), ZN => SRx_n_11);
  SRx_g832 : AOI22D0BWP7T port map(A1 => full_adder_x2(4), A2 => SRx_n_1, B1 => full_adder_x2(8), B2 => zoom(2), ZN => SRx_n_10);
  SRx_g833 : AO22D0BWP7T port map(A1 => SRx_n_1, A2 => pixel_x(1), B1 => zoom(2), B2 => full_adder_x2(7), Z => SRx_n_9);
  SRx_g834 : AO22D0BWP7T port map(A1 => SRx_n_1, A2 => pixel_x(0), B1 => zoom(2), B2 => full_adder_x2(6), Z => SRx_n_8);
  SRx_g835 : AOI22D0BWP7T port map(A1 => full_adder_x2(6), A2 => SRx_n_1, B1 => full_adder_x2(10), B2 => zoom(2), ZN => SRx_n_7);
  SRx_g836 : CKND1BWP7T port map(I => SRx_n_6, ZN => SRx_n_5);
  SRx_g837 : ND2D0BWP7T port map(A1 => full_adder_x2(11), A2 => zoom(2), ZN => SRx_n_6);
  SRx_g838 : ND2D0BWP7T port map(A1 => full_adder_x2(11), A2 => zoom(1), ZN => SRx_n_4);
  SRx_g839 : INVD1BWP7T port map(I => zoom(1), ZN => SRx_n_3);
  SRx_g840 : INVD1BWP7T port map(I => zoom(0), ZN => SRx_n_2);
  SRx_g841 : INVD1BWP7T port map(I => zoom(2), ZN => SRx_n_1);
  SRx_g2 : CKMUX2D0BWP7T port map(I0 => SRx_n_26, I1 => full_adder_x2(11), S => zoom(0), Z => shifter_rightxout(10));
  FAx1_fa4_g35 : IOA21D0BWP7T port map(A1 => FAx1_c(3), A2 => pixel_x(4), B => FAx1_c(4), ZN => full_adder_x1(4));
  FAx1_fa4_g36 : OR2D0BWP7T port map(A1 => FAx1_c(3), A2 => pixel_x(4), Z => FAx1_c(4));
  FAx1_fa5_g21 : HA1D0BWP7T port map(A => pixel_x(5), B => FAx1_c(4), CO => FAx1_c(5), S => full_adder_x1(5));
  FAx1_fa6_g21 : HA1D0BWP7T port map(A => pixel_x(6), B => FAx1_c(5), CO => FAx1_c(6), S => full_adder_x1(6));
  FAx1_fa7_g35 : IOA21D0BWP7T port map(A1 => FAx1_c(6), A2 => pixel_x(7), B => FAx1_c(7), ZN => full_adder_x1(7));
  FAx1_fa7_g36 : OR2D0BWP7T port map(A1 => FAx1_c(6), A2 => pixel_x(7), Z => FAx1_c(7));
  FAx1_fa8_g35 : IOA21D0BWP7T port map(A1 => FAx1_c(7), A2 => pixel_x(8), B => FAx1_c(8), ZN => full_adder_x1(8));
  FAx1_fa8_g36 : OR2D0BWP7T port map(A1 => FAx1_c(7), A2 => pixel_x(8), Z => FAx1_c(8));
  FAx1_fa9_g17 : MOAI22D0BWP7T port map(A1 => FAx1_c(8), A2 => pixel_x(9), B1 => FAx1_c(8), B2 => pixel_x(9), ZN => full_adder_x1(9));
  FAx2_fa10_g2 : FA1D0BWP7T port map(A => FAx2_c(9), B => full_adder_x1(6), CI => full_adder_x1(8), CO => FAx2_c(10), S => full_adder_x2(10));
  FAx2_fa11_g31 : MOAI22D0BWP7T port map(A1 => FAx2_c(10), A2 => FAx2_fa11_n_0, B1 => FAx2_c(10), B2 => FAx2_fa11_n_0, ZN => full_adder_x2(11));
  FAx2_fa11_g32 : XNR2D1BWP7T port map(A1 => full_adder_x1(9), A2 => full_adder_x1(7), ZN => FAx2_fa11_n_0);
  FAx2_fa4_g21 : HA1D0BWP7T port map(A => pixel_x(0), B => n_0, CO => FAx2_c(4), S => full_adder_x2(4));
  FAx3_fa2_g41 : AO22D0BWP7T port map(A1 => FAx3_fa2_n_0, A2 => FAx3_c(1), B1 => center_a(2), B2 => shifter_rightxout(2), Z => FAx3_c(2));
  FAx3_fa2_g45 : CKXOR2D0BWP7T port map(A1 => center_a(2), A2 => shifter_rightxout(2), Z => FAx3_fa2_n_0);
  FAx3_fa2_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(1), A2 => FAx3_fa2_n_0, Z => a(2));
  FAx3_ha1_g17 : CKXOR2D4BWP7T port map(A1 => shifter_rightxout(0), A2 => center_a(7), Z => a(0));
  FAx3_ha1_g18 : AN2D1BWP7T port map(A1 => shifter_rightxout(0), A2 => center_a(7), Z => FAx3_c(0));
  FAx3_fa3_g41 : AO22D0BWP7T port map(A1 => FAx3_fa3_n_0, A2 => FAx3_c(2), B1 => center_a(3), B2 => shifter_rightxout(3), Z => FAx3_c(3));
  FAx3_fa3_g45 : CKXOR2D0BWP7T port map(A1 => center_a(3), A2 => shifter_rightxout(3), Z => FAx3_fa3_n_0);
  FAx3_fa3_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(2), A2 => FAx3_fa3_n_0, Z => a(3));
  FAx3_fa4_g41 : AO22D0BWP7T port map(A1 => FAx3_fa4_n_0, A2 => FAx3_c(3), B1 => center_a(4), B2 => shifter_rightxout(4), Z => FAx3_c(4));
  FAx3_fa4_g45 : CKXOR2D0BWP7T port map(A1 => center_a(4), A2 => shifter_rightxout(4), Z => FAx3_fa4_n_0);
  FAx3_fa4_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(3), A2 => FAx3_fa4_n_0, Z => a(4));
  FAx3_fa5_g41 : AO22D0BWP7T port map(A1 => FAx3_c(4), A2 => FAx3_fa5_n_0, B1 => center_a(5), B2 => shifter_rightxout(5), Z => FAx3_c(5));
  FAx3_fa5_g45 : CKXOR2D0BWP7T port map(A1 => center_a(5), A2 => shifter_rightxout(5), Z => FAx3_fa5_n_0);
  FAx3_fa5_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(4), A2 => FAx3_fa5_n_0, Z => a(5));
  FAx3_fa6_g41 : AO22D0BWP7T port map(A1 => FAx3_c(5), A2 => FAx3_fa6_n_0, B1 => center_a(6), B2 => shifter_rightxout(6), Z => FAx3_c(6));
  FAx3_fa6_g45 : CKXOR2D0BWP7T port map(A1 => center_a(6), A2 => shifter_rightxout(6), Z => FAx3_fa6_n_0);
  FAx3_fa6_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(5), A2 => FAx3_fa6_n_0, Z => a(6));
  FAx3_fa7_g41 : AO22D0BWP7T port map(A1 => FAx3_c(6), A2 => FAx3_fa7_n_0, B1 => center_a(7), B2 => shifter_rightxout(7), Z => FAx3_c(7));
  FAx3_fa7_g45 : CKXOR2D0BWP7T port map(A1 => center_a(7), A2 => shifter_rightxout(7), Z => FAx3_fa7_n_0);
  FAx3_fa7_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(6), A2 => FAx3_fa7_n_0, Z => a(7));
  FAx3_fa8_g41 : AO22D0BWP7T port map(A1 => FAx3_c(7), A2 => FAx3_fa8_n_0, B1 => center_a(8), B2 => shifter_rightxout(8), Z => FAx3_c(8));
  FAx3_fa8_g45 : CKXOR2D0BWP7T port map(A1 => center_a(8), A2 => shifter_rightxout(8), Z => FAx3_fa8_n_0);
  FAx3_fa8_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(7), A2 => FAx3_fa8_n_0, Z => a(8));
  FAx3_fa10_g41 : AO22D0BWP7T port map(A1 => FAx3_c(9), A2 => FAx3_fa10_n_0, B1 => center_a(10), B2 => shifter_rightxout(10), Z => FAx3_c(10));
  FAx3_fa10_g45 : CKXOR2D0BWP7T port map(A1 => center_a(10), A2 => shifter_rightxout(10), Z => FAx3_fa10_n_0);
  FAx3_fa10_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(9), A2 => FAx3_fa10_n_0, Z => a(10));
  FAx3_fa9_g41 : AO22D0BWP7T port map(A1 => FAx3_c(8), A2 => FAx3_fa9_n_0, B1 => center_a(9), B2 => shifter_rightxout(9), Z => FAx3_c(9));
  FAx3_fa9_g45 : CKXOR2D0BWP7T port map(A1 => center_a(9), A2 => shifter_rightxout(9), Z => FAx3_fa9_n_0);
  FAx3_fa9_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(8), A2 => FAx3_fa9_n_0, Z => a(9));
  FAx3_fa11_g31 : OR2D4BWP7T port map(A1 => FAx3_fa11_n_1, A2 => FAx3_fa11_n_2, Z => a(11));
  FAx3_fa11_g32 : NR2D0BWP7T port map(A1 => FAx3_c(10), A2 => FAx3_fa11_n_0, ZN => FAx3_fa11_n_2);
  FAx3_fa11_g33 : AN2D1BWP7T port map(A1 => FAx3_c(10), A2 => FAx3_fa11_n_0, Z => FAx3_fa11_n_1);
  FAx3_fa11_g34 : XNR2D1BWP7T port map(A1 => full_adder_x2(11), A2 => center_a(11), ZN => FAx3_fa11_n_0);
  FAx2_fa5_g2 : FA1D0BWP7T port map(A => pixel_x(1), B => full_adder_x1(3), CI => FAx2_c(4), CO => FAx2_c(5), S => full_adder_x2(5));
  FAx2_fa6_g2 : FA1D0BWP7T port map(A => FAx2_c(5), B => n_0, CI => full_adder_x1(4), CO => FAx2_c(6), S => full_adder_x2(6));
  FAx2_fa7_g2 : FA1D0BWP7T port map(A => FAx2_c(6), B => full_adder_x1(3), CI => full_adder_x1(5), CO => FAx2_c(7), S => full_adder_x2(7));
  FAx2_fa8_g2 : FA1D0BWP7T port map(A => FAx2_c(7), B => full_adder_x1(4), CI => full_adder_x1(6), CO => FAx2_c(8), S => full_adder_x2(8));
  FAx2_fa9_g2 : FA1D0BWP7T port map(A => FAx2_c(8), B => full_adder_x1(5), CI => full_adder_x1(7), CO => FAx2_c(9), S => full_adder_x2(9));
  FAx3_fa1_g41 : AO22D0BWP7T port map(A1 => FAx3_fa1_n_0, A2 => FAx3_c(0), B1 => center_a(1), B2 => shifter_rightxout(1), Z => FAx3_c(1));
  FAx3_fa1_g45 : CKXOR2D0BWP7T port map(A1 => center_a(1), A2 => shifter_rightxout(1), Z => FAx3_fa1_n_0);
  FAx3_fa1_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(0), A2 => FAx3_fa1_n_0, Z => a(1));
  FAx1_fa3_g35 : IOA21D0BWP7T port map(A1 => pixel_x(2), A2 => pixel_x(3), B => FAx1_c(3), ZN => full_adder_x1(3));
  FAx1_fa3_g36 : OR2D0BWP7T port map(A1 => pixel_x(2), A2 => pixel_x(3), Z => FAx1_c(3));

end synthesised;
