
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of main_seq is

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFXD1BWP7T
    port(CP, DA, DB, SA : in std_logic; Q, QN : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKXOR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211XD0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OA211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component CKXOR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  signal count_y : std_logic_vector(11 downto 0);
  signal CONTROL_state : std_logic_vector(2 downto 0);
  signal CONTROL_check_0_156, CONTROL_check_1_155, CONTROL_check_2_154, CONTROL_check_3_153, CONTROL_check_4_152 : std_logic;
  signal CONTROL_check_5_151, CONTROL_check_6_150, CONTROL_check_7_149, CONTROL_check_8_148, CONTROL_check_9_147 : std_logic;
  signal CONTROL_check_10_146, CONTROL_check_11_145, CONTROL_n_0, CONTROL_n_1, CONTROL_n_2 : std_logic;
  signal CONTROL_n_3, CONTROL_n_4, CONTROL_n_5, CONTROL_n_6, CONTROL_n_7 : std_logic;
  signal CONTROL_n_8, CONTROL_n_9, CONTROL_n_10, CONTROL_n_11, CONTROL_n_12 : std_logic;
  signal CONTROL_n_13, CONTROL_n_14, CONTROL_n_15, CONTROL_n_16, CONTROL_n_17 : std_logic;
  signal CONTROL_n_18, CONTROL_n_19, CONTROL_n_20, CONTROL_n_21, CONTROL_n_22 : std_logic;
  signal CONTROL_n_23, CONTROL_n_24, CONTROL_n_25, CONTROL_n_26, CONTROL_n_27 : std_logic;
  signal CONTROL_n_28, CONTROL_n_29, CONTROL_n_30, CONTROL_n_31, CONTROL_n_32 : std_logic;
  signal CONTROL_n_33, CONTROL_n_34, CONTROL_n_35, CONTROL_n_36, CONTROL_n_37 : std_logic;
  signal CONTROL_n_38, CONTROL_n_39, CONTROL_n_40, CONTROL_n_41, CONTROL_n_42 : std_logic;
  signal CONTROL_n_43, CONTROL_n_44, CONTROL_n_45, CONTROL_n_47, CONTROL_n_48 : std_logic;
  signal CONTROL_n_51, CONVERTER_n_0, CONVERTER_n_2, CONVERTER_n_3, CONVERTER_n_4 : std_logic;
  signal CONVERTER_n_8, CONVERTER_n_10, CONVERTER_n_11, CONVERTER_n_12, CONVERTER_n_14 : std_logic;
  signal CONVERTER_n_15, CONVERTER_n_16, CONVERTER_n_18, CONVERTER_n_19, CONVERTER_n_20 : std_logic;
  signal CONVERTER_n_23, CONVERTER_n_26, CONVERTER_n_27, CONVERTER_n_28, CONVERTER_n_32 : std_logic;
  signal CONVERTER_n_34, CONVERTER_n_35, CONVERTER_n_36, K1_n_0, K1_n_1 : std_logic;
  signal K1_n_2, K1_n_3, K1_n_4, K1_n_5, K1_n_6 : std_logic;
  signal K1_n_7, K1_n_8, K1_n_9, K1_n_10, K1_n_11 : std_logic;
  signal K1_n_12, K1_n_13, K1_n_14, K1_n_15, K1_n_16 : std_logic;
  signal K1_n_17, K1_n_18, K1_n_19, K1_n_20, K1_n_21 : std_logic;
  signal K1_n_22, K1_n_23, K1_n_24, K1_n_25, K1_n_26 : std_logic;
  signal K1_n_27, K1_n_28, K1_n_29, K1_n_30, K1_n_31 : std_logic;
  signal K1_n_32, K1_n_33, K1_n_34, K1_n_35, K1_n_36 : std_logic;
  signal K1_n_37, K1_n_38, K1_n_39, K1_n_40, K1_n_41 : std_logic;
  signal K1_n_42, K1_n_43, K1_n_44, K1_n_45, K2_n_0 : std_logic;
  signal K2_n_1, K2_n_2, K2_n_3, K2_n_4, K2_n_5 : std_logic;
  signal K2_n_6, K2_n_7, K2_n_8, K2_n_9, K2_n_10 : std_logic;
  signal K2_n_11, K2_n_12, K2_n_13, K2_n_14, K2_n_15 : std_logic;
  signal K2_n_16, K2_n_17, K2_n_18, K2_n_19, K2_n_20 : std_logic;
  signal K2_n_21, K2_n_22, K2_n_23, K2_n_24, K2_n_25 : std_logic;
  signal K2_n_26, K2_n_27, K2_n_28, K2_n_29, K2_n_30 : std_logic;
  signal K2_n_31, K2_n_32, K2_n_33, K2_n_34, K2_n_35 : std_logic;
  signal K2_n_36, K2_n_37, K2_n_38, K2_n_39, K2_n_40 : std_logic;
  signal K2_n_41, K2_n_42, K2_n_43, K2_n_44, K2_n_45 : std_logic;
  signal n_32, n_33, n_34, n_35, n_36 : std_logic;
  signal n_37, n_38, n_39, n_40, n_41 : std_logic;
  signal n_42, n_43, pause_x, pause_y, reset_x : std_logic;

begin

  g1 : BUFFD4BWP7T port map(I => n_35, Z => count_x(8));
  g10 : BUFFD4BWP7T port map(I => n_39, Z => count_x(4));
  g6 : BUFFD4BWP7T port map(I => n_33, Z => count_x(10));
  g9 : BUFFD4BWP7T port map(I => n_40, Z => count_x(3));
  g7 : BUFFD4BWP7T port map(I => n_36, Z => count_x(7));
  g4 : BUFFD4BWP7T port map(I => n_41, Z => count_x(2));
  g11 : BUFFD4BWP7T port map(I => n_42, Z => count_x(1));
  g3 : BUFFD4BWP7T port map(I => n_43, Z => count_x(0));
  g8 : BUFFD4BWP7T port map(I => n_38, Z => count_x(5));
  g5 : BUFFD4BWP7T port map(I => n_37, Z => count_x(6));
  g13 : BUFFD4BWP7T port map(I => count_y(0), Z => count_y_2s(0));
  g12 : BUFFD4BWP7T port map(I => n_34, Z => count_x(9));
  g2 : BUFFD4BWP7T port map(I => n_32, Z => count_x(11));
  K1_count_reg_11 : DFQD1BWP7T port map(CP => clk, D => K1_n_45, Q => n_32);
  K1_g647 : AO21D0BWP7T port map(A1 => K1_n_43, A2 => n_32, B => K1_n_41, Z => K1_n_45);
  K1_count_reg_9 : DFQD1BWP7T port map(CP => clk, D => K1_n_42, Q => n_34);
  K1_g649 : OAI32D1BWP7T port map(A1 => n_33, A2 => K1_n_0, A3 => K1_n_35, B1 => K1_n_3, B2 => K1_n_39, ZN => K1_n_44);
  K1_g650 : OAI21D0BWP7T port map(A1 => reset_x, A2 => n_33, B => K1_n_39, ZN => K1_n_43);
  K1_count_reg_8 : DFQD1BWP7T port map(CP => clk, D => K1_n_38, Q => n_35);
  K1_g652 : OAI31D0BWP7T port map(A1 => n_34, A2 => K1_n_0, A3 => K1_n_30, B => K1_n_40, ZN => K1_n_42);
  K1_g653 : NR4D0BWP7T port map(A1 => K1_n_35, A2 => K1_n_0, A3 => K1_n_3, A4 => n_32, ZN => K1_n_41);
  K1_g654 : OAI21D0BWP7T port map(A1 => K1_n_34, A2 => pause_x, B => n_34, ZN => K1_n_40);
  K1_count_reg_7 : DFQD1BWP7T port map(CP => clk, D => K1_n_36, Q => n_36);
  K1_g656 : OAI31D0BWP7T port map(A1 => n_35, A2 => K1_n_0, A3 => K1_n_27, B => K1_n_37, ZN => K1_n_38);
  K1_g657 : AOI21D0BWP7T port map(A1 => K1_n_35, A2 => K1_n_2, B => pause_x, ZN => K1_n_39);
  K1_count_reg_6 : DFQD1BWP7T port map(CP => clk, D => K1_n_32, Q => n_37);
  K1_g659 : OAI21D0BWP7T port map(A1 => K1_n_31, A2 => pause_x, B => n_35, ZN => K1_n_37);
  K1_g660 : OAI31D0BWP7T port map(A1 => n_36, A2 => K1_n_0, A3 => K1_n_22, B => K1_n_33, ZN => K1_n_36);
  K1_g661 : IND2D1BWP7T port map(A1 => K1_n_30, B1 => n_34, ZN => K1_n_35);
  K1_count_reg_5 : DFQD1BWP7T port map(CP => clk, D => K1_n_28, Q => n_38);
  K1_g663 : AN2D0BWP7T port map(A1 => K1_n_30, A2 => K1_n_2, Z => K1_n_34);
  K1_g664 : OAI21D0BWP7T port map(A1 => K1_n_26, A2 => pause_x, B => n_36, ZN => K1_n_33);
  K1_g665 : OAI31D0BWP7T port map(A1 => n_37, A2 => K1_n_19, A3 => K1_n_0, B => K1_n_29, ZN => K1_n_32);
  K1_g666 : AN2D0BWP7T port map(A1 => K1_n_27, A2 => K1_n_2, Z => K1_n_31);
  K1_count_reg_4 : DFQD1BWP7T port map(CP => clk, D => K1_n_24, Q => n_39);
  K1_g668 : OAI21D0BWP7T port map(A1 => K1_n_23, A2 => pause_x, B => n_37, ZN => K1_n_29);
  K1_g669 : OAI31D0BWP7T port map(A1 => n_38, A2 => K1_n_14, A3 => K1_n_0, B => K1_n_25, ZN => K1_n_28);
  K1_g670 : IND2D1BWP7T port map(A1 => K1_n_27, B1 => n_35, ZN => K1_n_30);
  K1_g671 : IND2D1BWP7T port map(A1 => K1_n_22, B1 => n_36, ZN => K1_n_27);
  K1_count_reg_3 : DFQD1BWP7T port map(CP => clk, D => K1_n_20, Q => n_40);
  K1_g673 : AN2D0BWP7T port map(A1 => K1_n_22, A2 => K1_n_2, Z => K1_n_26);
  K1_g674 : OAI21D0BWP7T port map(A1 => K1_n_18, A2 => pause_x, B => n_38, ZN => K1_n_25);
  K1_g675 : OAI31D0BWP7T port map(A1 => n_39, A2 => K1_n_11, A3 => K1_n_0, B => K1_n_21, ZN => K1_n_24);
  K1_g676 : AN2D0BWP7T port map(A1 => K1_n_19, A2 => K1_n_2, Z => K1_n_23);
  K1_count_reg_2 : DFQD1BWP7T port map(CP => clk, D => K1_n_16, Q => n_41);
  K1_g678 : OAI21D0BWP7T port map(A1 => K1_n_15, A2 => pause_x, B => n_39, ZN => K1_n_21);
  K1_g679 : OAI31D0BWP7T port map(A1 => n_40, A2 => K1_n_7, A3 => K1_n_0, B => K1_n_17, ZN => K1_n_20);
  K1_g680 : IND2D1BWP7T port map(A1 => K1_n_19, B1 => n_37, ZN => K1_n_22);
  K1_g681 : IND2D1BWP7T port map(A1 => K1_n_14, B1 => n_38, ZN => K1_n_19);
  K1_count_reg_1 : DFQD1BWP7T port map(CP => clk, D => K1_n_12, Q => n_42);
  K1_g683 : INR2D1BWP7T port map(A1 => K1_n_14, B1 => reset_x, ZN => K1_n_18);
  K1_g684 : OAI21D0BWP7T port map(A1 => K1_n_10, A2 => pause_x, B => n_40, ZN => K1_n_17);
  K1_g685 : OAI31D0BWP7T port map(A1 => n_41, A2 => K1_n_6, A3 => K1_n_0, B => K1_n_13, ZN => K1_n_16);
  K1_g686 : INR2D1BWP7T port map(A1 => K1_n_11, B1 => reset_x, ZN => K1_n_15);
  K1_g688 : OAI21D0BWP7T port map(A1 => K1_n_8, A2 => pause_x, B => n_41, ZN => K1_n_13);
  K1_g689 : OAI31D0BWP7T port map(A1 => n_42, A2 => K1_n_1, A3 => K1_n_0, B => K1_n_9, ZN => K1_n_12);
  K1_g690 : IND2D1BWP7T port map(A1 => K1_n_11, B1 => n_39, ZN => K1_n_14);
  K1_g691 : IND2D1BWP7T port map(A1 => K1_n_7, B1 => n_40, ZN => K1_n_11);
  K1_g692 : INR2D1BWP7T port map(A1 => K1_n_7, B1 => reset_x, ZN => K1_n_10);
  K1_g693 : OAI21D0BWP7T port map(A1 => K1_n_4, A2 => pause_x, B => n_42, ZN => K1_n_9);
  K1_g694 : INR2D1BWP7T port map(A1 => K1_n_6, B1 => reset_x, ZN => K1_n_8);
  K1_g695 : IND2D1BWP7T port map(A1 => K1_n_6, B1 => n_41, ZN => K1_n_7);
  K1_g696 : ND2D1BWP7T port map(A1 => n_42, A2 => n_43, ZN => K1_n_6);
  K1_g697 : INVD0BWP7T port map(I => K1_n_0, ZN => K1_n_5);
  K1_g698 : NR2D1BWP7T port map(A1 => reset_x, A2 => n_43, ZN => K1_n_4);
  K1_g706 : INVD1BWP7T port map(I => reset_x, ZN => K1_n_2);
  K1_g2 : IND2D1BWP7T port map(A1 => pause_x, B1 => K1_n_2, ZN => K1_n_0);
  K1_count_reg_10 : DFD1BWP7T port map(CP => clk, D => K1_n_44, Q => n_33, QN => K1_n_3);
  K1_count_reg_0 : DFXD1BWP7T port map(CP => clk, DA => pause_x, DB => K1_n_5, SA => n_43, Q => n_43, QN => K1_n_1);
  CONVERTER_g222 : ND2D4BWP7T port map(A1 => CONVERTER_n_34, A2 => CONVERTER_n_35, ZN => count_y_2s(10));
  CONVERTER_g223 : IND2D1BWP7T port map(A1 => count_y(10), B1 => CONVERTER_n_32, ZN => CONVERTER_n_36);
  CONVERTER_g224 : OR2D1BWP7T port map(A1 => CONVERTER_n_32, A2 => count_y(10), Z => CONVERTER_n_35);
  CONVERTER_g225 : ND2D1BWP7T port map(A1 => CONVERTER_n_32, A2 => count_y(10), ZN => CONVERTER_n_34);
  CONVERTER_g227 : NR2XD0BWP7T port map(A1 => CONVERTER_n_28, A2 => count_y(9), ZN => CONVERTER_n_32);
  CONVERTER_g230 : ND2D4BWP7T port map(A1 => CONVERTER_n_26, A2 => CONVERTER_n_27, ZN => count_y_2s(8));
  CONVERTER_g231 : IND2D1BWP7T port map(A1 => count_y(8), B1 => CONVERTER_n_23, ZN => CONVERTER_n_28);
  CONVERTER_g232 : OR2D1BWP7T port map(A1 => CONVERTER_n_23, A2 => count_y(8), Z => CONVERTER_n_27);
  CONVERTER_g233 : ND2D1BWP7T port map(A1 => CONVERTER_n_23, A2 => count_y(8), ZN => CONVERTER_n_26);
  CONVERTER_g237 : NR2XD0BWP7T port map(A1 => CONVERTER_n_19, A2 => count_y(7), ZN => CONVERTER_n_23);
  CONVERTER_g238 : ND2D4BWP7T port map(A1 => CONVERTER_n_18, A2 => CONVERTER_n_20, ZN => count_y_2s(6));
  CONVERTER_g239 : OR2D1BWP7T port map(A1 => CONVERTER_n_15, A2 => count_y(6), Z => CONVERTER_n_20);
  CONVERTER_g240 : ND2D1BWP7T port map(A1 => CONVERTER_n_15, A2 => count_y(6), ZN => CONVERTER_n_18);
  CONVERTER_g241 : IND2D1BWP7T port map(A1 => count_y(6), B1 => CONVERTER_n_15, ZN => CONVERTER_n_19);
  CONVERTER_g242 : ND2D4BWP7T port map(A1 => CONVERTER_n_16, A2 => CONVERTER_n_14, ZN => count_y_2s(5));
  CONVERTER_g243 : ND2D1BWP7T port map(A1 => CONVERTER_n_12, A2 => count_y(5), ZN => CONVERTER_n_16);
  CONVERTER_g244 : OR2D1BWP7T port map(A1 => CONVERTER_n_12, A2 => count_y(5), Z => CONVERTER_n_14);
  CONVERTER_g245 : INR2XD0BWP7T port map(A1 => CONVERTER_n_12, B1 => count_y(5), ZN => CONVERTER_n_15);
  CONVERTER_g246 : ND2D4BWP7T port map(A1 => CONVERTER_n_10, A2 => CONVERTER_n_11, ZN => count_y_2s(4));
  CONVERTER_g247 : INR2XD0BWP7T port map(A1 => CONVERTER_n_8, B1 => count_y(4), ZN => CONVERTER_n_12);
  CONVERTER_g248 : OR2D1BWP7T port map(A1 => CONVERTER_n_8, A2 => count_y(4), Z => CONVERTER_n_11);
  CONVERTER_g249 : ND2D1BWP7T port map(A1 => CONVERTER_n_8, A2 => count_y(4), ZN => CONVERTER_n_10);
  CONVERTER_g251 : NR2XD0BWP7T port map(A1 => CONVERTER_n_4, A2 => count_y(3), ZN => CONVERTER_n_8);
  CONVERTER_g254 : ND2D4BWP7T port map(A1 => CONVERTER_n_3, A2 => CONVERTER_n_2, ZN => count_y_2s(2));
  CONVERTER_g255 : IND2D1BWP7T port map(A1 => count_y(2), B1 => CONVERTER_n_0, ZN => CONVERTER_n_4);
  CONVERTER_g256 : ND2D1BWP7T port map(A1 => CONVERTER_n_0, A2 => count_y(2), ZN => CONVERTER_n_3);
  CONVERTER_g257 : OR2D1BWP7T port map(A1 => CONVERTER_n_0, A2 => count_y(2), Z => CONVERTER_n_2);
  CONVERTER_g258 : CKXOR2D4BWP7T port map(A1 => count_y(0), A2 => count_y(1), Z => count_y_2s(1));
  CONVERTER_g259 : NR2XD0BWP7T port map(A1 => count_y(0), A2 => count_y(1), ZN => CONVERTER_n_0);
  CONVERTER_g2 : CKXOR2D4BWP7T port map(A1 => CONVERTER_n_36, A2 => count_y(11), Z => count_y_2s(11));
  CONVERTER_g260 : CKXOR2D4BWP7T port map(A1 => CONVERTER_n_28, A2 => count_y(9), Z => count_y_2s(9));
  CONVERTER_g261 : CKXOR2D4BWP7T port map(A1 => CONVERTER_n_19, A2 => count_y(7), Z => count_y_2s(7));
  CONVERTER_g262 : CKXOR2D4BWP7T port map(A1 => CONVERTER_n_4, A2 => count_y(3), Z => count_y_2s(3));
  K2_count_reg_11 : DFQD1BWP7T port map(CP => clk, D => K2_n_45, Q => count_y(11));
  K2_g655 : AO21D0BWP7T port map(A1 => K2_n_43, A2 => count_y(11), B => K2_n_41, Z => K2_n_45);
  K2_count_reg_9 : DFQD1BWP7T port map(CP => clk, D => K2_n_42, Q => count_y(9));
  K2_g657 : OAI32D1BWP7T port map(A1 => count_y(10), A2 => K2_n_0, A3 => K2_n_35, B1 => K2_n_2, B2 => K2_n_39, ZN => K2_n_44);
  K2_g658 : OAI21D0BWP7T port map(A1 => frame_ready, A2 => count_y(10), B => K2_n_39, ZN => K2_n_43);
  K2_count_reg_8 : DFQD1BWP7T port map(CP => clk, D => K2_n_38, Q => count_y(8));
  K2_g660 : OAI31D0BWP7T port map(A1 => count_y(9), A2 => K2_n_0, A3 => K2_n_30, B => K2_n_40, ZN => K2_n_42);
  K2_g661 : NR4D0BWP7T port map(A1 => K2_n_35, A2 => K2_n_0, A3 => K2_n_2, A4 => count_y(11), ZN => K2_n_41);
  K2_g662 : OAI21D0BWP7T port map(A1 => K2_n_34, A2 => pause_y, B => count_y(9), ZN => K2_n_40);
  K2_count_reg_7 : DFQD1BWP7T port map(CP => clk, D => K2_n_36, Q => count_y(7));
  K2_g664 : OAI31D0BWP7T port map(A1 => count_y(8), A2 => K2_n_0, A3 => K2_n_27, B => K2_n_37, ZN => K2_n_38);
  K2_g665 : AOI21D0BWP7T port map(A1 => K2_n_35, A2 => K2_n_3, B => pause_y, ZN => K2_n_39);
  K2_count_reg_6 : DFQD1BWP7T port map(CP => clk, D => K2_n_32, Q => count_y(6));
  K2_g667 : OAI21D0BWP7T port map(A1 => K2_n_31, A2 => pause_y, B => count_y(8), ZN => K2_n_37);
  K2_g668 : OAI31D0BWP7T port map(A1 => count_y(7), A2 => K2_n_0, A3 => K2_n_22, B => K2_n_33, ZN => K2_n_36);
  K2_g669 : IND2D1BWP7T port map(A1 => K2_n_30, B1 => count_y(9), ZN => K2_n_35);
  K2_count_reg_5 : DFQD1BWP7T port map(CP => clk, D => K2_n_28, Q => count_y(5));
  K2_g671 : AN2D0BWP7T port map(A1 => K2_n_30, A2 => K2_n_3, Z => K2_n_34);
  K2_g672 : OAI21D0BWP7T port map(A1 => K2_n_26, A2 => pause_y, B => count_y(7), ZN => K2_n_33);
  K2_g673 : OAI31D0BWP7T port map(A1 => count_y(6), A2 => K2_n_19, A3 => K2_n_0, B => K2_n_29, ZN => K2_n_32);
  K2_g674 : AN2D0BWP7T port map(A1 => K2_n_27, A2 => K2_n_3, Z => K2_n_31);
  K2_count_reg_4 : DFQD1BWP7T port map(CP => clk, D => K2_n_24, Q => count_y(4));
  K2_g676 : OAI21D0BWP7T port map(A1 => K2_n_23, A2 => pause_y, B => count_y(6), ZN => K2_n_29);
  K2_g677 : OAI31D0BWP7T port map(A1 => count_y(5), A2 => K2_n_14, A3 => K2_n_0, B => K2_n_25, ZN => K2_n_28);
  K2_g678 : IND2D1BWP7T port map(A1 => K2_n_27, B1 => count_y(8), ZN => K2_n_30);
  K2_g679 : IND2D1BWP7T port map(A1 => K2_n_22, B1 => count_y(7), ZN => K2_n_27);
  K2_count_reg_3 : DFQD1BWP7T port map(CP => clk, D => K2_n_20, Q => count_y(3));
  K2_g681 : AN2D0BWP7T port map(A1 => K2_n_22, A2 => K2_n_3, Z => K2_n_26);
  K2_g682 : OAI21D0BWP7T port map(A1 => K2_n_18, A2 => pause_y, B => count_y(5), ZN => K2_n_25);
  K2_g683 : OAI31D0BWP7T port map(A1 => count_y(4), A2 => K2_n_11, A3 => K2_n_0, B => K2_n_21, ZN => K2_n_24);
  K2_g684 : AN2D0BWP7T port map(A1 => K2_n_19, A2 => K2_n_3, Z => K2_n_23);
  K2_count_reg_2 : DFQD1BWP7T port map(CP => clk, D => K2_n_16, Q => count_y(2));
  K2_g686 : OAI21D0BWP7T port map(A1 => K2_n_15, A2 => pause_y, B => count_y(4), ZN => K2_n_21);
  K2_g687 : OAI31D0BWP7T port map(A1 => count_y(3), A2 => K2_n_7, A3 => K2_n_0, B => K2_n_17, ZN => K2_n_20);
  K2_g688 : IND2D1BWP7T port map(A1 => K2_n_19, B1 => count_y(6), ZN => K2_n_22);
  K2_g689 : IND2D1BWP7T port map(A1 => K2_n_14, B1 => count_y(5), ZN => K2_n_19);
  K2_count_reg_1 : DFQD1BWP7T port map(CP => clk, D => K2_n_12, Q => count_y(1));
  K2_g691 : AN2D0BWP7T port map(A1 => K2_n_14, A2 => K2_n_3, Z => K2_n_18);
  K2_g692 : OAI21D0BWP7T port map(A1 => K2_n_10, A2 => pause_y, B => count_y(3), ZN => K2_n_17);
  K2_g693 : OAI31D0BWP7T port map(A1 => count_y(2), A2 => K2_n_6, A3 => K2_n_0, B => K2_n_13, ZN => K2_n_16);
  K2_g694 : INR2D1BWP7T port map(A1 => K2_n_11, B1 => frame_ready, ZN => K2_n_15);
  K2_g696 : OAI21D0BWP7T port map(A1 => K2_n_8, A2 => pause_y, B => count_y(2), ZN => K2_n_13);
  K2_g697 : OAI31D0BWP7T port map(A1 => count_y(1), A2 => K2_n_1, A3 => K2_n_0, B => K2_n_9, ZN => K2_n_12);
  K2_g698 : IND2D1BWP7T port map(A1 => K2_n_11, B1 => count_y(4), ZN => K2_n_14);
  K2_g699 : IND2D1BWP7T port map(A1 => K2_n_7, B1 => count_y(3), ZN => K2_n_11);
  K2_g700 : INR2D1BWP7T port map(A1 => K2_n_7, B1 => frame_ready, ZN => K2_n_10);
  K2_g701 : OAI21D0BWP7T port map(A1 => K2_n_4, A2 => pause_y, B => count_y(1), ZN => K2_n_9);
  K2_g702 : INR2D1BWP7T port map(A1 => K2_n_6, B1 => frame_ready, ZN => K2_n_8);
  K2_g703 : IND2D1BWP7T port map(A1 => K2_n_6, B1 => count_y(2), ZN => K2_n_7);
  K2_g704 : ND2D1BWP7T port map(A1 => count_y(1), A2 => count_y(0), ZN => K2_n_6);
  K2_g705 : INVD0BWP7T port map(I => K2_n_0, ZN => K2_n_5);
  K2_g706 : NR2D1BWP7T port map(A1 => frame_ready, A2 => count_y(0), ZN => K2_n_4);
  K2_g729 : INVD1BWP7T port map(I => frame_ready, ZN => K2_n_3);
  K2_g2 : IND2D1BWP7T port map(A1 => pause_y, B1 => K2_n_3, ZN => K2_n_0);
  K2_count_reg_10 : DFD1BWP7T port map(CP => clk, D => K2_n_44, Q => count_y(10), QN => K2_n_2);
  K2_count_reg_0 : DFXD1BWP7T port map(CP => clk, DA => pause_y, DB => K2_n_5, SA => count_y(0), Q => count_y(0), QN => K2_n_1);
  CONTROL_g412 : AO21D0BWP7T port map(A1 => CONTROL_state(2), A2 => CONTROL_state(0), B => frame_ready, Z => reset_x);
  CONTROL_g413 : AN2D4BWP7T port map(A1 => CONTROL_n_45, A2 => CONTROL_n_48, Z => frame_ready);
  CONTROL_g414 : OR2D1BWP7T port map(A1 => CONTROL_n_51, A2 => CONTROL_state(1), Z => pause_x);
  CONTROL_g415 : CKAN2D1BWP7T port map(A1 => CONTROL_n_47, A2 => CONTROL_state(2), Z => CONTROL_n_51);
  CONTROL_g416 : INVD1BWP7T port map(I => CONTROL_n_45, ZN => pause_y);
  CONTROL_g417 : NR2XD0BWP7T port map(A1 => CONTROL_state(2), A2 => CONTROL_state(0), ZN => CONTROL_n_45);
  CONTROL_g1338 : AO221D0BWP7T port map(A1 => CONTROL_n_29, A2 => CONTROL_n_48, B1 => CONTROL_n_40, B2 => pixel_ready, C => CONTROL_n_39, Z => CONTROL_n_44);
  CONTROL_state_reg_2 : DFQD1BWP7T port map(CP => clk, D => CONTROL_n_43, Q => CONTROL_state(2));
  CONTROL_g1341 : AO211D0BWP7T port map(A1 => CONTROL_n_29, A2 => CONTROL_state(1), B => CONTROL_n_40, C => CONTROL_n_21, Z => CONTROL_n_43);
  CONTROL_g1342 : OAI31D0BWP7T port map(A1 => CONTROL_state(2), A2 => CONTROL_n_47, A3 => CONTROL_n_30, B => CONTROL_n_41, ZN => CONTROL_n_42);
  CONTROL_g1343 : IOA21D1BWP7T port map(A1 => CONTROL_n_38, A2 => pixel_ready, B => CONTROL_n_28, ZN => CONTROL_n_41);
  CONTROL_g1344 : OA21D0BWP7T port map(A1 => CONTROL_n_38, A2 => CONTROL_n_1, B => CONTROL_n_28, Z => CONTROL_n_39);
  CONTROL_g1345 : AOI31D0BWP7T port map(A1 => CONTROL_n_36, A2 => CONTROL_n_37, A3 => CONTROL_n_16, B => CONTROL_n_3, ZN => CONTROL_n_40);
  CONTROL_g1346 : ND3D0BWP7T port map(A1 => CONTROL_n_33, A2 => CONTROL_n_31, A3 => CONTROL_n_35, ZN => CONTROL_n_38);
  CONTROL_g1347 : AOI211XD0BWP7T port map(A1 => count_y(1), A2 => CONTROL_n_0, B => CONTROL_n_34, C => CONTROL_n_15, ZN => CONTROL_n_37);
  CONTROL_g1348 : OA211D0BWP7T port map(A1 => CONTROL_n_0, A2 => count_y(1), B => CONTROL_n_32, C => CONTROL_n_7, Z => CONTROL_n_36);
  CONTROL_g1349 : NR4D0BWP7T port map(A1 => CONTROL_n_17, A2 => CONTROL_n_18, A3 => CONTROL_n_19, A4 => CONTROL_n_27, ZN => CONTROL_n_35);
  CONTROL_g1350 : ND4D0BWP7T port map(A1 => CONTROL_n_14, A2 => CONTROL_n_13, A3 => CONTROL_n_12, A4 => CONTROL_n_11, ZN => CONTROL_n_34);
  CONTROL_g1351 : NR4D0BWP7T port map(A1 => CONTROL_n_6, A2 => CONTROL_n_8, A3 => CONTROL_n_9, A4 => CONTROL_n_10, ZN => CONTROL_n_33);
  CONTROL_g1352 : NR4D0BWP7T port map(A1 => CONTROL_n_25, A2 => CONTROL_n_26, A3 => CONTROL_n_20, A4 => CONTROL_n_22, ZN => CONTROL_n_32);
  CONTROL_g1353 : NR4D0BWP7T port map(A1 => CONTROL_n_23, A2 => CONTROL_n_24, A3 => CONTROL_n_4, A4 => CONTROL_n_5, ZN => CONTROL_n_31);
  CONTROL_g1354 : INVD0BWP7T port map(I => CONTROL_n_29, ZN => CONTROL_n_30);
  CONTROL_g1355 : NR3D0BWP7T port map(A1 => CONTROL_n_51, A2 => CONTROL_n_2, A3 => reset, ZN => CONTROL_n_29);
  CONTROL_g1356 : CKXOR2D1BWP7T port map(A1 => n_34, A2 => CONTROL_check_9_147, Z => CONTROL_n_27);
  CONTROL_g1357 : CKXOR2D1BWP7T port map(A1 => count_y(10), A2 => CONTROL_check_10_146, Z => CONTROL_n_26);
  CONTROL_g1358 : CKXOR2D1BWP7T port map(A1 => count_y(0), A2 => CONTROL_check_0_156, Z => CONTROL_n_25);
  CONTROL_g1359 : CKXOR2D1BWP7T port map(A1 => n_39, A2 => CONTROL_check_4_152, Z => CONTROL_n_24);
  CONTROL_g1360 : CKXOR2D1BWP7T port map(A1 => n_36, A2 => CONTROL_check_7_149, Z => CONTROL_n_23);
  CONTROL_g1361 : CKXOR2D1BWP7T port map(A1 => count_y(8), A2 => CONTROL_check_8_148, Z => CONTROL_n_22);
  CONTROL_g1362 : NR2D1BWP7T port map(A1 => CONTROL_n_3, A2 => pixel_ready, ZN => CONTROL_n_21);
  CONTROL_g1363 : CKXOR2D1BWP7T port map(A1 => count_y(9), A2 => CONTROL_check_9_147, Z => CONTROL_n_20);
  CONTROL_g1364 : CKXOR2D1BWP7T port map(A1 => n_33, A2 => CONTROL_check_10_146, Z => CONTROL_n_19);
  CONTROL_g1365 : CKXOR2D1BWP7T port map(A1 => n_35, A2 => CONTROL_check_8_148, Z => CONTROL_n_18);
  CONTROL_g1366 : CKXOR2D1BWP7T port map(A1 => n_32, A2 => CONTROL_check_11_145, Z => CONTROL_n_17);
  CONTROL_g1367 : INR2D1BWP7T port map(A1 => CONTROL_n_2, B1 => reset, ZN => CONTROL_n_28);
  CONTROL_g1368 : MOAI22D0BWP7T port map(A1 => count_y(3), A2 => CONTROL_check_3_153, B1 => count_y(3), B2 => CONTROL_check_3_153, ZN => CONTROL_n_16);
  CONTROL_g1369 : CKXOR2D1BWP7T port map(A1 => count_y(5), A2 => CONTROL_check_5_151, Z => CONTROL_n_15);
  CONTROL_g1370 : XNR2D1BWP7T port map(A1 => count_y(2), A2 => CONTROL_check_2_154, ZN => CONTROL_n_14);
  CONTROL_g1371 : XNR2D1BWP7T port map(A1 => count_y(4), A2 => CONTROL_check_4_152, ZN => CONTROL_n_13);
  CONTROL_g1372 : XNR2D1BWP7T port map(A1 => count_y(6), A2 => CONTROL_check_6_150, ZN => CONTROL_n_12);
  CONTROL_g1373 : XNR2D1BWP7T port map(A1 => count_y(7), A2 => CONTROL_check_7_149, ZN => CONTROL_n_11);
  CONTROL_g1374 : CKXOR2D1BWP7T port map(A1 => n_43, A2 => CONTROL_check_0_156, Z => CONTROL_n_10);
  CONTROL_g1375 : MOAI22D0BWP7T port map(A1 => n_42, A2 => CONTROL_n_0, B1 => n_42, B2 => CONTROL_n_0, ZN => CONTROL_n_9);
  CONTROL_g1376 : CKXOR2D1BWP7T port map(A1 => n_41, A2 => CONTROL_check_2_154, Z => CONTROL_n_8);
  CONTROL_g1377 : XNR2D1BWP7T port map(A1 => count_y(11), A2 => CONTROL_check_11_145, ZN => CONTROL_n_7);
  CONTROL_g1378 : CKXOR2D1BWP7T port map(A1 => n_40, A2 => CONTROL_check_3_153, Z => CONTROL_n_6);
  CONTROL_g1379 : CKXOR2D1BWP7T port map(A1 => n_38, A2 => CONTROL_check_5_151, Z => CONTROL_n_5);
  CONTROL_g1380 : CKXOR2D1BWP7T port map(A1 => n_37, A2 => CONTROL_check_6_150, Z => CONTROL_n_4);
  CONTROL_g1381 : IND2D1BWP7T port map(A1 => reset, B1 => CONTROL_n_51, ZN => CONTROL_n_3);
  CONTROL_g1382 : NR2D1BWP7T port map(A1 => CONTROL_n_47, A2 => CONTROL_n_48, ZN => CONTROL_n_2);
  CONTROL_g1383 : INVD0BWP7T port map(I => pixel_ready, ZN => CONTROL_n_1);
  CONTROL_g1384 : INVD1BWP7T port map(I => CONTROL_check_1_155, ZN => CONTROL_n_0);
  CONTROL_state_reg_0 : DFD1BWP7T port map(CP => clk, D => CONTROL_n_44, Q => CONTROL_state(0), QN => CONTROL_n_47);
  CONTROL_state_reg_1 : DFD1BWP7T port map(CP => clk, D => CONTROL_n_42, Q => CONTROL_state(1), QN => CONTROL_n_48);

end synthesised;
