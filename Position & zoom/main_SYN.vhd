
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of main is

  component shifter_sright
    port(s     : in  std_logic_vector(2 downto 0);
         s_in  : in  std_logic_vector(11 downto 0);
         s_out : out std_logic_vector(11 downto 0));
  end component;

  component shift_sright
    port(s     : in  std_logic_vector(2 downto 0);
         s_in  : in  std_logic_vector(11 downto 0);
         s_out : out std_logic_vector(11 downto 0));
  end component;

  component FA1D0BWP7T
    port(A, B, CI : in std_logic; CO, S : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component HA1D0BWP7T
    port(A, B : in std_logic; CO, S : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
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

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component CKXOR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component LND1BWP7T
    port(EN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKSND1BWP7T
    port(CP, D, SN : in std_logic; Q, QN : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFXD1BWP7T
    port(CP, DA, DB, SA : in std_logic; Q, QN : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal S2X_full_adder_x2 : std_logic_vector(11 downto 0);
  signal S2X_full_adder_x1 : std_logic_vector(11 downto 0);
  signal S2X_shifter_rightxout : std_logic_vector(11 downto 0);
  signal S2X_FAx2_c : std_logic_vector(10 downto 0);
  signal S2X_center_a : std_logic_vector(11 downto 0);
  signal S2X_FAx3_c : std_logic_vector(10 downto 0);
  signal a_int : std_logic_vector(11 downto 0);
  signal S2Y_full_adder_y2 : std_logic_vector(11 downto 0);
  signal S2Y_full_adder_y1 : std_logic_vector(11 downto 0);
  signal S2Y_shifter_rightyout : std_logic_vector(11 downto 0);
  signal S2Y_center_b : std_logic_vector(11 downto 0);
  signal S2Y_C6 : std_logic_vector(11 downto 0);
  signal S2Y_C7 : std_logic_vector(11 downto 0);
  signal S2Y_C0 : std_logic_vector(11 downto 0);
  signal S2Y_C1 : std_logic_vector(11 downto 0);
  signal S2Y_C2 : std_logic_vector(11 downto 0);
  signal S2Y_C3 : std_logic_vector(11 downto 0);
  signal S2Y_C4 : std_logic_vector(11 downto 0);
  signal S2Y_C5 : std_logic_vector(11 downto 0);
  signal S2X_hunderdmin : std_logic_vector(11 downto 0);
  signal pixel_x : std_logic_vector(11 downto 0);
  signal S2X_FAx1_c : std_logic_vector(10 downto 0);
  signal I2S_CONTROL_state : std_logic_vector(2 downto 0);
  signal I2S_count_y : std_logic_vector(11 downto 0);
  signal pixel_y : std_logic_vector(11 downto 0);
  signal b_int : std_logic_vector(11 downto 0);
  signal S2Y_hunderd : std_logic_vector(11 downto 0);
  signal S2Y_FAy1_c : std_logic_vector(10 downto 0);
  signal S2X_C6 : std_logic_vector(11 downto 0);
  signal S2X_C7 : std_logic_vector(11 downto 0);
  signal S2X_C0 : std_logic_vector(11 downto 0);
  signal S2X_C1 : std_logic_vector(11 downto 0);
  signal S2X_C2 : std_logic_vector(11 downto 0);
  signal S2X_C3 : std_logic_vector(11 downto 0);
  signal S2X_C4 : std_logic_vector(11 downto 0);
  signal S2X_C5 : std_logic_vector(11 downto 0);
  signal S2Y_FAy2_c : std_logic_vector(10 downto 0);
  signal S2Y_FAy3_c : std_logic_vector(10 downto 0);
  signal I2S_CONTROL_check_0_156, I2S_CONTROL_check_1_155, I2S_CONTROL_check_2_154, I2S_CONTROL_check_3_153, I2S_CONTROL_check_4_152 : std_logic;
  signal I2S_CONTROL_check_5_151, I2S_CONTROL_check_6_150, I2S_CONTROL_check_7_149, I2S_CONTROL_check_8_148, I2S_CONTROL_check_9_147 : std_logic;
  signal I2S_CONTROL_check_10_146, I2S_CONTROL_check_11_145, I2S_CONTROL_n_0, I2S_CONTROL_n_1, I2S_CONTROL_n_2 : std_logic;
  signal I2S_CONTROL_n_3, I2S_CONTROL_n_4, I2S_CONTROL_n_5, I2S_CONTROL_n_6, I2S_CONTROL_n_7 : std_logic;
  signal I2S_CONTROL_n_8, I2S_CONTROL_n_9, I2S_CONTROL_n_10, I2S_CONTROL_n_11, I2S_CONTROL_n_12 : std_logic;
  signal I2S_CONTROL_n_13, I2S_CONTROL_n_14, I2S_CONTROL_n_15, I2S_CONTROL_n_16, I2S_CONTROL_n_17 : std_logic;
  signal I2S_CONTROL_n_18, I2S_CONTROL_n_19, I2S_CONTROL_n_20, I2S_CONTROL_n_21, I2S_CONTROL_n_22 : std_logic;
  signal I2S_CONTROL_n_23, I2S_CONTROL_n_24, I2S_CONTROL_n_25, I2S_CONTROL_n_26, I2S_CONTROL_n_27 : std_logic;
  signal I2S_CONTROL_n_28, I2S_CONTROL_n_29, I2S_CONTROL_n_30, I2S_CONTROL_n_31, I2S_CONTROL_n_32 : std_logic;
  signal I2S_CONTROL_n_33, I2S_CONTROL_n_34, I2S_CONTROL_n_35, I2S_CONTROL_n_36, I2S_CONTROL_n_37 : std_logic;
  signal I2S_CONTROL_n_38, I2S_CONTROL_n_39, I2S_CONTROL_n_40, I2S_CONTROL_n_41, I2S_CONTROL_n_42 : std_logic;
  signal I2S_CONTROL_n_43, I2S_CONTROL_n_44, I2S_CONTROL_n_45, I2S_CONTROL_n_47, I2S_CONTROL_n_48 : std_logic;
  signal I2S_CONTROL_n_51, I2S_CONVERTER_n_1, I2S_CONVERTER_n_3, I2S_CONVERTER_n_5, I2S_CONVERTER_n_7 : std_logic;
  signal I2S_CONVERTER_n_9, I2S_CONVERTER_n_11, I2S_CONVERTER_n_13, I2S_CONVERTER_n_15, I2S_K1_n_0 : std_logic;
  signal I2S_K1_n_1, I2S_K1_n_2, I2S_K1_n_3, I2S_K1_n_4, I2S_K1_n_5 : std_logic;
  signal I2S_K1_n_6, I2S_K1_n_7, I2S_K1_n_8, I2S_K1_n_9, I2S_K1_n_10 : std_logic;
  signal I2S_K1_n_11, I2S_K1_n_12, I2S_K1_n_13, I2S_K1_n_14, I2S_K1_n_15 : std_logic;
  signal I2S_K1_n_16, I2S_K1_n_17, I2S_K1_n_18, I2S_K1_n_19, I2S_K1_n_20 : std_logic;
  signal I2S_K1_n_21, I2S_K1_n_22, I2S_K1_n_23, I2S_K1_n_24, I2S_K1_n_25 : std_logic;
  signal I2S_K1_n_26, I2S_K1_n_27, I2S_K1_n_28, I2S_K1_n_29, I2S_K1_n_30 : std_logic;
  signal I2S_K1_n_31, I2S_K1_n_32, I2S_K1_n_33, I2S_K1_n_34, I2S_K1_n_35 : std_logic;
  signal I2S_K1_n_36, I2S_K1_n_37, I2S_K1_n_38, I2S_K1_n_39, I2S_K1_n_40 : std_logic;
  signal I2S_K1_n_41, I2S_K1_n_42, I2S_K1_n_43, I2S_K1_n_44, I2S_K1_n_45 : std_logic;
  signal I2S_K2_n_0, I2S_K2_n_1, I2S_K2_n_2, I2S_K2_n_3, I2S_K2_n_4 : std_logic;
  signal I2S_K2_n_5, I2S_K2_n_6, I2S_K2_n_7, I2S_K2_n_8, I2S_K2_n_9 : std_logic;
  signal I2S_K2_n_10, I2S_K2_n_11, I2S_K2_n_12, I2S_K2_n_13, I2S_K2_n_14 : std_logic;
  signal I2S_K2_n_15, I2S_K2_n_16, I2S_K2_n_17, I2S_K2_n_18, I2S_K2_n_19 : std_logic;
  signal I2S_K2_n_20, I2S_K2_n_21, I2S_K2_n_22, I2S_K2_n_23, I2S_K2_n_24 : std_logic;
  signal I2S_K2_n_25, I2S_K2_n_26, I2S_K2_n_27, I2S_K2_n_28, I2S_K2_n_29 : std_logic;
  signal I2S_K2_n_30, I2S_K2_n_31, I2S_K2_n_32, I2S_K2_n_33, I2S_K2_n_34 : std_logic;
  signal I2S_K2_n_35, I2S_K2_n_36, I2S_K2_n_37, I2S_K2_n_38, I2S_K2_n_39 : std_logic;
  signal I2S_K2_n_40, I2S_K2_n_41, I2S_K2_n_42, I2S_K2_n_43, I2S_K2_n_44 : std_logic;
  signal I2S_K2_n_45, I2S_n_17, I2S_n_18, I2S_pause_x, I2S_pause_y : std_logic;
  signal I2S_reset_x, Oa_n_0, Oa_n_1, Oa_n_2, Oa_n_3 : std_logic;
  signal Oa_n_4, Oa_n_5, Oa_n_6, Oa_n_7, Oa_n_8 : std_logic;
  signal Oa_n_9, Oa_n_10, Oa_n_11, Oa_n_12, Oa_state : std_logic;
  signal Ob_n_0, Ob_n_1, Ob_n_2, Ob_n_3, Ob_n_4 : std_logic;
  signal Ob_n_5, Ob_n_6, Ob_n_7, Ob_n_8, Ob_n_9 : std_logic;
  signal Ob_n_10, Ob_n_11, Ob_n_12, Ob_state, S2X_FAx1_fa9_n_0 : std_logic;
  signal S2X_FAx2_fa11_n_0, S2X_FAx3_fa11_n_0, S2X_MUXx_n_0, S2X_MUXx_n_1, S2X_MUXx_n_2 : std_logic;
  signal S2X_MUXx_n_3, S2X_MUXx_n_4, S2X_MUXx_n_5, S2X_MUXx_n_6, S2X_MUXx_n_7 : std_logic;
  signal S2X_MUXx_n_8, S2X_MUXx_n_9, S2X_MUXx_n_10, S2X_MUXx_n_11, S2X_MUXx_n_12 : std_logic;
  signal S2X_MUXx_n_13, S2X_MUXx_n_14, S2X_MUXx_n_15, S2X_MUXx_n_16, S2X_MUXx_n_17 : std_logic;
  signal S2X_MUXx_n_18, S2X_MUXx_n_19, S2X_MUXx_n_20, S2X_MUXx_n_21, S2X_MUXx_n_22 : std_logic;
  signal S2X_MUXx_n_23, S2X_MUXx_n_24, S2X_MUXx_n_25, S2X_MUXx_n_26, S2X_MUXx_n_27 : std_logic;
  signal S2X_MUXx_n_28, S2X_MUXx_n_29, S2X_MUXx_n_30, S2X_MUXx_n_31, S2X_MUXx_n_32 : std_logic;
  signal S2X_MUXx_n_33, S2X_MUXx_n_34, S2X_MUXx_n_35, S2X_MUXx_n_36, S2X_MUXx_n_37 : std_logic;
  signal S2X_MUXx_n_38, S2X_MUXx_n_39, S2X_MUXx_n_40, S2X_MUXx_n_41, S2X_MUXx_n_42 : std_logic;
  signal S2X_MUXx_n_43, S2X_MUXx_n_44, S2X_MUXx_n_45, S2X_MUXx_n_46, S2X_MUXx_n_47 : std_logic;
  signal S2X_MUXx_n_48, S2X_MUXx_n_49, S2X_MUXx_n_50, S2X_MUXx_n_51, S2X_MUXx_n_52 : std_logic;
  signal S2X_MUXx_n_53, S2X_MUXx_n_54, S2X_MUXx_n_55, S2X_MUXx_n_56, S2X_MUXx_n_57 : std_logic;
  signal S2X_MUXx_n_58, S2X_MUXx_n_59, S2Y_FAy1_fa9_n_0, S2Y_FAy2_fa11_n_0, S2Y_FAy3_fa11_n_0 : std_logic;
  signal S2Y_MUXy_n_0, S2Y_MUXy_n_1, S2Y_MUXy_n_2, S2Y_MUXy_n_3, S2Y_MUXy_n_4 : std_logic;
  signal S2Y_MUXy_n_5, S2Y_MUXy_n_6, S2Y_MUXy_n_7, S2Y_MUXy_n_8, S2Y_MUXy_n_9 : std_logic;
  signal S2Y_MUXy_n_10, S2Y_MUXy_n_11, S2Y_MUXy_n_12, S2Y_MUXy_n_13, S2Y_MUXy_n_14 : std_logic;
  signal S2Y_MUXy_n_15, S2Y_MUXy_n_16, S2Y_MUXy_n_17, S2Y_MUXy_n_18, S2Y_MUXy_n_19 : std_logic;
  signal S2Y_MUXy_n_20, S2Y_MUXy_n_21, S2Y_MUXy_n_22, S2Y_MUXy_n_23, S2Y_MUXy_n_24 : std_logic;
  signal S2Y_MUXy_n_25, S2Y_MUXy_n_26, S2Y_MUXy_n_27, S2Y_MUXy_n_28, S2Y_MUXy_n_29 : std_logic;
  signal S2Y_MUXy_n_30, S2Y_MUXy_n_31, S2Y_MUXy_n_32, S2Y_MUXy_n_33, S2Y_MUXy_n_34 : std_logic;
  signal S2Y_MUXy_n_35, S2Y_MUXy_n_36, S2Y_MUXy_n_37, S2Y_MUXy_n_38, S2Y_MUXy_n_39 : std_logic;
  signal S2Y_MUXy_n_40, S2Y_MUXy_n_41, S2Y_MUXy_n_42, S2Y_MUXy_n_43, S2Y_MUXy_n_44 : std_logic;
  signal S2Y_MUXy_n_45, S2Y_MUXy_n_46, S2Y_MUXy_n_47, S2Y_MUXy_n_48, S2Y_MUXy_n_49 : std_logic;
  signal S2Y_MUXy_n_50, S2Y_MUXy_n_51, S2Y_MUXy_n_52, S2Y_MUXy_n_53, S2Y_MUXy_n_54 : std_logic;
  signal S2Y_MUXy_n_55, S2Y_MUXy_n_56, S2Y_MUXy_n_57, S2Y_MUXy_n_58, S2Y_MUXy_n_59 : std_logic;
  signal UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2, UNCONNECTED3 : std_logic;
  signal UNCONNECTED4, UNCONNECTED5, UNCONNECTED6, UNCONNECTED7, UNCONNECTED8 : std_logic;
  signal UNCONNECTED9, UNCONNECTED10, UNCONNECTED11, UNCONNECTED12, UNCONNECTED13 : std_logic;
  signal UNCONNECTED14, UNCONNECTED15, UNCONNECTED16, UNCONNECTED17, UNCONNECTED18 : std_logic;
  signal UNCONNECTED19, UNCONNECTED20, UNCONNECTED21, UNCONNECTED22, logic_0_1_net : std_logic;

begin

  S2X_SRx : shifter_sright port map(s => zoom, s_in(11) => S2X_full_adder_x2(11:4), s_in(10) => S2X_full_adder_x1(1:0), s_in(9) => logic_0_1_net, s_in(8) => logic_0_1_net, s_out => S2X_shifter_rightxout);
  S2Y_SRy : shift_sright port map(s => zoom, s_in(11) => S2Y_full_adder_y2(11:4), s_in(10) => S2Y_full_adder_y1(1:0), s_in(9) => logic_0_1_net, s_in(8) => logic_0_1_net, s_out => S2Y_shifter_rightyout);
  S2X_FAx2_fa10_g2 : FA1D0BWP7T port map(A => S2X_FAx2_c(9), B => S2X_full_adder_x1(6), CI => S2X_full_adder_x1(8), CO => S2X_FAx2_c(10), S => S2X_full_adder_x2(10));
  S2X_FAx2_fa11_g31 : MOAI22D0BWP7T port map(A1 => S2X_FAx2_c(10), A2 => S2X_FAx2_fa11_n_0, B1 => S2X_FAx2_c(10), B2 => S2X_FAx2_fa11_n_0, ZN => S2X_full_adder_x2(11));
  S2X_FAx2_fa11_g32 : XNR2D1BWP7T port map(A1 => S2X_full_adder_x1(9), A2 => S2X_full_adder_x1(7), ZN => S2X_FAx2_fa11_n_0);
  S2X_FAx3_fa1_g2 : FA1D0BWP7T port map(A => S2X_shifter_rightxout(1), B => S2X_center_a(1), CI => S2X_FAx3_c(0), CO => S2X_FAx3_c(1), S => a_int(1));
  S2X_FAx3_fa2_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(1), B => S2X_shifter_rightxout(2), CI => S2X_center_a(2), CO => S2X_FAx3_c(2), S => a_int(2));
  S2X_FAx3_fa3_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(2), B => S2X_shifter_rightxout(3), CI => S2X_center_a(3), CO => S2X_FAx3_c(3), S => a_int(3));
  S2X_FAx3_fa4_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(3), B => S2X_shifter_rightxout(4), CI => S2X_center_a(4), CO => S2X_FAx3_c(4), S => a_int(4));
  S2X_FAx3_fa5_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(4), B => S2X_shifter_rightxout(5), CI => S2X_center_a(5), CO => S2X_FAx3_c(5), S => a_int(5));
  S2X_FAx3_fa6_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(5), B => S2X_shifter_rightxout(6), CI => S2X_center_a(6), CO => S2X_FAx3_c(6), S => a_int(6));
  S2X_FAx3_fa7_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(6), B => S2X_shifter_rightxout(7), CI => S2X_center_a(7), CO => S2X_FAx3_c(7), S => a_int(7));
  S2X_FAx3_fa8_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(7), B => S2X_shifter_rightxout(8), CI => S2X_center_a(8), CO => S2X_FAx3_c(8), S => a_int(8));
  S2X_FAx3_fa9_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(8), B => S2X_shifter_rightxout(9), CI => S2X_center_a(9), CO => S2X_FAx3_c(9), S => a_int(9));
  S2Y_MUXy_g1365 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_30, A2 => S2Y_MUXy_n_15, A3 => S2Y_MUXy_n_38, A4 => S2Y_MUXy_n_13, ZN => S2Y_center_b(11));
  S2Y_MUXy_g1366 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_34, A2 => S2Y_MUXy_n_25, A3 => S2Y_MUXy_n_42, A4 => S2Y_MUXy_n_22, ZN => S2Y_center_b(10));
  S2Y_MUXy_g1367 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_53, A2 => S2Y_MUXy_n_47, A3 => S2Y_MUXy_n_58, A4 => S2Y_MUXy_n_46, ZN => S2Y_center_b(6));
  S2Y_MUXy_g1368 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_52, A2 => S2Y_MUXy_n_50, A3 => S2Y_MUXy_n_54, A4 => S2Y_MUXy_n_49, ZN => S2Y_center_b(0));
  S2Y_MUXy_g1369 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_43, A2 => S2Y_MUXy_n_41, A3 => S2Y_MUXy_n_45, A4 => S2Y_MUXy_n_40, ZN => S2Y_center_b(5));
  S2Y_MUXy_g1370 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_39, A2 => S2Y_MUXy_n_36, A3 => S2Y_MUXy_n_32, A4 => S2Y_MUXy_n_29, ZN => S2Y_center_b(8));
  S2Y_MUXy_g1371 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_35, A2 => S2Y_MUXy_n_33, A3 => S2Y_MUXy_n_37, A4 => S2Y_MUXy_n_31, ZN => S2Y_center_b(4));
  S2Y_MUXy_g1372 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_56, A2 => S2Y_MUXy_n_51, A3 => S2Y_MUXy_n_48, A4 => S2Y_MUXy_n_44, ZN => S2Y_center_b(9));
  S2Y_MUXy_g1373 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_21, A2 => S2Y_MUXy_n_17, A3 => S2Y_MUXy_n_23, A4 => S2Y_MUXy_n_12, ZN => S2Y_center_b(7));
  S2Y_MUXy_g1374 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_27, A2 => S2Y_MUXy_n_26, A3 => S2Y_MUXy_n_28, A4 => S2Y_MUXy_n_24, ZN => S2Y_center_b(3));
  S2Y_MUXy_g1375 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_20, A2 => S2Y_MUXy_n_19, A3 => S2Y_MUXy_n_18, A4 => S2Y_MUXy_n_16, ZN => S2Y_center_b(2));
  S2Y_MUXy_g1376 : ND4D0BWP7T port map(A1 => S2Y_MUXy_n_14, A2 => S2Y_MUXy_n_55, A3 => S2Y_MUXy_n_59, A4 => S2Y_MUXy_n_57, ZN => S2Y_center_b(1));
  S2Y_MUXy_g1377 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(1), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(1), ZN => S2Y_MUXy_n_59);
  S2Y_MUXy_g1378 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(6), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(6), ZN => S2Y_MUXy_n_58);
  S2Y_MUXy_g1379 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(1), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(1), ZN => S2Y_MUXy_n_57);
  S2Y_MUXy_g1380 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(9), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(9), ZN => S2Y_MUXy_n_56);
  S2Y_MUXy_g1381 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(1), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(1), ZN => S2Y_MUXy_n_55);
  S2Y_MUXy_g1382 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(0), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(0), ZN => S2Y_MUXy_n_54);
  S2Y_MUXy_g1383 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(6), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(6), ZN => S2Y_MUXy_n_53);
  S2Y_MUXy_g1384 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(0), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(0), ZN => S2Y_MUXy_n_52);
  S2Y_MUXy_g1385 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(9), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(9), ZN => S2Y_MUXy_n_51);
  S2Y_MUXy_g1386 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(0), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(0), ZN => S2Y_MUXy_n_50);
  S2Y_MUXy_g1387 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(0), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(0), ZN => S2Y_MUXy_n_49);
  S2Y_MUXy_g1388 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(9), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(9), ZN => S2Y_MUXy_n_48);
  S2Y_MUXy_g1389 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(6), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(6), ZN => S2Y_MUXy_n_47);
  S2Y_MUXy_g1390 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(6), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(6), ZN => S2Y_MUXy_n_46);
  S2Y_MUXy_g1391 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(5), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(5), ZN => S2Y_MUXy_n_45);
  S2Y_MUXy_g1392 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(9), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(9), ZN => S2Y_MUXy_n_44);
  S2Y_MUXy_g1393 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(5), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(5), ZN => S2Y_MUXy_n_43);
  S2Y_MUXy_g1394 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(10), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(10), ZN => S2Y_MUXy_n_42);
  S2Y_MUXy_g1395 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(5), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(5), ZN => S2Y_MUXy_n_41);
  S2Y_MUXy_g1396 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(5), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(5), ZN => S2Y_MUXy_n_40);
  S2Y_MUXy_g1397 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(8), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(8), ZN => S2Y_MUXy_n_39);
  S2Y_MUXy_g1398 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(11), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(11), ZN => S2Y_MUXy_n_38);
  S2Y_MUXy_g1399 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(4), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(4), ZN => S2Y_MUXy_n_37);
  S2Y_MUXy_g1400 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(8), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(8), ZN => S2Y_MUXy_n_36);
  S2Y_MUXy_g1401 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(4), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(4), ZN => S2Y_MUXy_n_35);
  S2Y_MUXy_g1402 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(10), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(10), ZN => S2Y_MUXy_n_34);
  S2Y_MUXy_g1403 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(4), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(4), ZN => S2Y_MUXy_n_33);
  S2Y_MUXy_g1404 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(8), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(8), ZN => S2Y_MUXy_n_32);
  S2Y_MUXy_g1405 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(4), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(4), ZN => S2Y_MUXy_n_31);
  S2Y_MUXy_g1406 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(11), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(11), ZN => S2Y_MUXy_n_30);
  S2Y_MUXy_g1407 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(8), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(8), ZN => S2Y_MUXy_n_29);
  S2Y_MUXy_g1408 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(3), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(3), ZN => S2Y_MUXy_n_28);
  S2Y_MUXy_g1409 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(3), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(3), ZN => S2Y_MUXy_n_27);
  S2Y_MUXy_g1410 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(3), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(3), ZN => S2Y_MUXy_n_26);
  S2Y_MUXy_g1411 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(10), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(10), ZN => S2Y_MUXy_n_25);
  S2Y_MUXy_g1412 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(3), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(3), ZN => S2Y_MUXy_n_24);
  S2Y_MUXy_g1413 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(7), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(7), ZN => S2Y_MUXy_n_23);
  S2Y_MUXy_g1414 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(10), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(10), ZN => S2Y_MUXy_n_22);
  S2Y_MUXy_g1415 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(7), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(7), ZN => S2Y_MUXy_n_21);
  S2Y_MUXy_g1416 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(2), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(2), ZN => S2Y_MUXy_n_20);
  S2Y_MUXy_g1417 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(2), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(2), ZN => S2Y_MUXy_n_19);
  S2Y_MUXy_g1418 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_7, A2 => S2Y_C6(2), B1 => S2Y_MUXy_n_5, B2 => S2Y_C7(2), ZN => S2Y_MUXy_n_18);
  S2Y_MUXy_g1419 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(7), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(7), ZN => S2Y_MUXy_n_17);
  S2Y_MUXy_g1420 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(2), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(2), ZN => S2Y_MUXy_n_16);
  S2Y_MUXy_g1421 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_11, A2 => S2Y_C4(11), B1 => S2Y_MUXy_n_6, B2 => S2Y_C5(11), ZN => S2Y_MUXy_n_15);
  S2Y_MUXy_g1422 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_4, A2 => S2Y_C2(1), B1 => S2Y_MUXy_n_8, B2 => S2Y_C3(1), ZN => S2Y_MUXy_n_14);
  S2Y_MUXy_g1423 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(11), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(11), ZN => S2Y_MUXy_n_13);
  S2Y_MUXy_g1424 : AOI22D0BWP7T port map(A1 => S2Y_MUXy_n_10, A2 => S2Y_C0(7), B1 => S2Y_MUXy_n_9, B2 => S2Y_C1(7), ZN => S2Y_MUXy_n_12);
  S2Y_MUXy_g1425 : NR2D0BWP7T port map(A1 => S2Y_MUXy_n_2, A2 => position(0), ZN => S2Y_MUXy_n_11);
  S2Y_MUXy_g1426 : INR2D0BWP7T port map(A1 => S2Y_MUXy_n_1, B1 => position(0), ZN => S2Y_MUXy_n_10);
  S2Y_MUXy_g1427 : AN2D1BWP7T port map(A1 => S2Y_MUXy_n_1, A2 => position(0), Z => S2Y_MUXy_n_9);
  S2Y_MUXy_g1428 : INR2D0BWP7T port map(A1 => position(0), B1 => S2Y_MUXy_n_3, ZN => S2Y_MUXy_n_8);
  S2Y_MUXy_g1429 : NR2D0BWP7T port map(A1 => S2Y_MUXy_n_0, A2 => position(0), ZN => S2Y_MUXy_n_7);
  S2Y_MUXy_g1430 : INR2D0BWP7T port map(A1 => position(0), B1 => S2Y_MUXy_n_2, ZN => S2Y_MUXy_n_6);
  S2Y_MUXy_g1431 : INR2D0BWP7T port map(A1 => position(0), B1 => S2Y_MUXy_n_0, ZN => S2Y_MUXy_n_5);
  S2Y_MUXy_g1432 : NR2D0BWP7T port map(A1 => S2Y_MUXy_n_3, A2 => position(0), ZN => S2Y_MUXy_n_4);
  S2Y_MUXy_g1433 : IND2D0BWP7T port map(A1 => position(2), B1 => position(1), ZN => S2Y_MUXy_n_3);
  S2Y_MUXy_g1434 : IND2D0BWP7T port map(A1 => position(1), B1 => position(2), ZN => S2Y_MUXy_n_2);
  S2Y_MUXy_g1435 : NR2D0BWP7T port map(A1 => position(1), A2 => position(2), ZN => S2Y_MUXy_n_1);
  S2Y_MUXy_g1436 : ND2D0BWP7T port map(A1 => position(2), A2 => position(1), ZN => S2Y_MUXy_n_0);
  S2X_FAx1_fa1_g2 : FA1D0BWP7T port map(A => S2X_hunderdmin(1), B => pixel_x(1), CI => S2X_FAx1_c(0), CO => S2X_FAx1_c(1), S => S2X_full_adder_x1(1));
  S2X_FAx1_fa2_g2 : FA1D0BWP7T port map(A => S2X_FAx1_c(1), B => S2X_hunderdmin(2), CI => pixel_x(2), CO => S2X_FAx1_c(2), S => S2X_full_adder_x1(2));
  S2X_FAx1_fa3_g2 : FA1D0BWP7T port map(A => S2X_FAx1_c(2), B => S2X_hunderdmin(3), CI => pixel_x(3), CO => S2X_FAx1_c(3), S => S2X_full_adder_x1(3));
  S2X_FAx1_fa4_g2 : FA1D0BWP7T port map(A => S2X_FAx1_c(3), B => S2X_hunderdmin(4), CI => pixel_x(4), CO => S2X_FAx1_c(4), S => S2X_full_adder_x1(4));
  S2X_FAx1_fa5_g2 : FA1D0BWP7T port map(A => S2X_FAx1_c(4), B => S2X_hunderdmin(5), CI => pixel_x(5), CO => S2X_FAx1_c(5), S => S2X_full_adder_x1(5));
  S2X_FAx1_fa6_g2 : FA1D0BWP7T port map(A => S2X_FAx1_c(5), B => S2X_hunderdmin(6), CI => pixel_x(6), CO => S2X_FAx1_c(6), S => S2X_full_adder_x1(6));
  S2X_FAx1_fa7_g2 : FA1D0BWP7T port map(A => S2X_FAx1_c(6), B => S2X_hunderdmin(7), CI => pixel_x(7), CO => S2X_FAx1_c(7), S => S2X_full_adder_x1(7));
  S2X_FAx1_fa8_g2 : FA1D0BWP7T port map(A => S2X_FAx1_c(7), B => S2X_hunderdmin(8), CI => pixel_x(8), CO => S2X_FAx1_c(8), S => S2X_full_adder_x1(8));
  S2X_FAx1_fa9_g31 : MOAI22D0BWP7T port map(A1 => S2X_FAx1_c(8), A2 => S2X_FAx1_fa9_n_0, B1 => S2X_FAx1_c(8), B2 => S2X_FAx1_fa9_n_0, ZN => S2X_full_adder_x1(9));
  S2X_FAx1_fa9_g32 : XNR2D1BWP7T port map(A1 => pixel_x(9), A2 => S2X_hunderdmin(9), ZN => S2X_FAx1_fa9_n_0);
  S2X_FAx3_fa10_g2 : FA1D0BWP7T port map(A => S2X_FAx3_c(9), B => S2X_shifter_rightxout(10), CI => S2X_center_a(10), CO => S2X_FAx3_c(10), S => a_int(10));
  S2X_FAx3_fa11_g31 : MOAI22D0BWP7T port map(A1 => S2X_FAx3_c(10), A2 => S2X_FAx3_fa11_n_0, B1 => S2X_FAx3_c(10), B2 => S2X_FAx3_fa11_n_0, ZN => a_int(11));
  S2X_FAx3_fa11_g32 : XNR2D1BWP7T port map(A1 => S2X_center_a(11), A2 => S2X_shifter_rightxout(11), ZN => S2X_FAx3_fa11_n_0);
  S2X_FAx3_ha1_g17 : HA1D0BWP7T port map(A => S2X_shifter_rightxout(0), B => S2X_center_a(0), CO => S2X_FAx3_c(0), S => a_int(0));
  I2S_CONTROL_g412 : AO21D0BWP7T port map(A1 => I2S_CONTROL_state(2), A2 => I2S_CONTROL_state(0), B => frame_ready, Z => I2S_reset_x);
  I2S_CONTROL_g413 : AN2D4BWP7T port map(A1 => I2S_CONTROL_n_45, A2 => I2S_CONTROL_n_48, Z => frame_ready);
  I2S_CONTROL_g414 : OR2D1BWP7T port map(A1 => I2S_CONTROL_n_51, A2 => I2S_CONTROL_state(1), Z => I2S_pause_x);
  I2S_CONTROL_g415 : CKAN2D1BWP7T port map(A1 => I2S_CONTROL_n_47, A2 => I2S_CONTROL_state(2), Z => I2S_CONTROL_n_51);
  I2S_CONTROL_g416 : INVD1BWP7T port map(I => I2S_CONTROL_n_45, ZN => I2S_pause_y);
  I2S_CONTROL_g417 : NR2XD0BWP7T port map(A1 => I2S_CONTROL_state(2), A2 => I2S_CONTROL_state(0), ZN => I2S_CONTROL_n_45);
  I2S_CONTROL_g1338 : AO221D0BWP7T port map(A1 => I2S_CONTROL_n_29, A2 => I2S_CONTROL_n_48, B1 => I2S_CONTROL_n_40, B2 => pixel_ready, C => I2S_CONTROL_n_39, Z => I2S_CONTROL_n_44);
  I2S_CONTROL_state_reg_2 : DFQD1BWP7T port map(CP => clk, D => I2S_CONTROL_n_43, Q => I2S_CONTROL_state(2));
  I2S_CONTROL_g1341 : AO211D0BWP7T port map(A1 => I2S_CONTROL_n_29, A2 => I2S_CONTROL_state(1), B => I2S_CONTROL_n_40, C => I2S_CONTROL_n_21, Z => I2S_CONTROL_n_43);
  I2S_CONTROL_g1342 : OAI31D0BWP7T port map(A1 => I2S_CONTROL_state(2), A2 => I2S_CONTROL_n_47, A3 => I2S_CONTROL_n_30, B => I2S_CONTROL_n_41, ZN => I2S_CONTROL_n_42);
  I2S_CONTROL_g1343 : IOA21D1BWP7T port map(A1 => I2S_CONTROL_n_38, A2 => pixel_ready, B => I2S_CONTROL_n_28, ZN => I2S_CONTROL_n_41);
  I2S_CONTROL_g1344 : OA21D0BWP7T port map(A1 => I2S_CONTROL_n_38, A2 => I2S_CONTROL_n_1, B => I2S_CONTROL_n_28, Z => I2S_CONTROL_n_39);
  I2S_CONTROL_g1345 : AOI31D0BWP7T port map(A1 => I2S_CONTROL_n_36, A2 => I2S_CONTROL_n_37, A3 => I2S_CONTROL_n_16, B => I2S_CONTROL_n_3, ZN => I2S_CONTROL_n_40);
  I2S_CONTROL_g1346 : ND3D0BWP7T port map(A1 => I2S_CONTROL_n_33, A2 => I2S_CONTROL_n_31, A3 => I2S_CONTROL_n_35, ZN => I2S_CONTROL_n_38);
  I2S_CONTROL_g1347 : AOI211XD0BWP7T port map(A1 => I2S_count_y(1), A2 => I2S_CONTROL_n_0, B => I2S_CONTROL_n_34, C => I2S_CONTROL_n_15, ZN => I2S_CONTROL_n_37);
  I2S_CONTROL_g1348 : OA211D0BWP7T port map(A1 => I2S_CONTROL_n_0, A2 => I2S_count_y(1), B => I2S_CONTROL_n_32, C => I2S_CONTROL_n_7, Z => I2S_CONTROL_n_36);
  I2S_CONTROL_g1349 : NR4D0BWP7T port map(A1 => I2S_CONTROL_n_17, A2 => I2S_CONTROL_n_18, A3 => I2S_CONTROL_n_19, A4 => I2S_CONTROL_n_27, ZN => I2S_CONTROL_n_35);
  I2S_CONTROL_g1350 : ND4D0BWP7T port map(A1 => I2S_CONTROL_n_14, A2 => I2S_CONTROL_n_13, A3 => I2S_CONTROL_n_12, A4 => I2S_CONTROL_n_11, ZN => I2S_CONTROL_n_34);
  I2S_CONTROL_g1351 : NR4D0BWP7T port map(A1 => I2S_CONTROL_n_6, A2 => I2S_CONTROL_n_8, A3 => I2S_CONTROL_n_9, A4 => I2S_CONTROL_n_10, ZN => I2S_CONTROL_n_33);
  I2S_CONTROL_g1352 : NR4D0BWP7T port map(A1 => I2S_CONTROL_n_25, A2 => I2S_CONTROL_n_20, A3 => I2S_CONTROL_n_22, A4 => I2S_CONTROL_n_26, ZN => I2S_CONTROL_n_32);
  I2S_CONTROL_g1353 : NR4D0BWP7T port map(A1 => I2S_CONTROL_n_23, A2 => I2S_CONTROL_n_24, A3 => I2S_CONTROL_n_4, A4 => I2S_CONTROL_n_5, ZN => I2S_CONTROL_n_31);
  I2S_CONTROL_g1354 : INVD0BWP7T port map(I => I2S_CONTROL_n_29, ZN => I2S_CONTROL_n_30);
  I2S_CONTROL_g1355 : NR3D0BWP7T port map(A1 => I2S_CONTROL_n_51, A2 => I2S_CONTROL_n_2, A3 => reset, ZN => I2S_CONTROL_n_29);
  I2S_CONTROL_g1356 : CKXOR2D1BWP7T port map(A1 => pixel_x(9), A2 => I2S_CONTROL_check_9_147, Z => I2S_CONTROL_n_27);
  I2S_CONTROL_g1357 : CKXOR2D1BWP7T port map(A1 => I2S_count_y(10), A2 => I2S_CONTROL_check_10_146, Z => I2S_CONTROL_n_26);
  I2S_CONTROL_g1358 : CKXOR2D1BWP7T port map(A1 => pixel_y(0), A2 => I2S_CONTROL_check_0_156, Z => I2S_CONTROL_n_25);
  I2S_CONTROL_g1359 : CKXOR2D1BWP7T port map(A1 => pixel_x(4), A2 => I2S_CONTROL_check_4_152, Z => I2S_CONTROL_n_24);
  I2S_CONTROL_g1360 : CKXOR2D1BWP7T port map(A1 => pixel_x(7), A2 => I2S_CONTROL_check_7_149, Z => I2S_CONTROL_n_23);
  I2S_CONTROL_g1361 : CKXOR2D1BWP7T port map(A1 => I2S_count_y(8), A2 => I2S_CONTROL_check_8_148, Z => I2S_CONTROL_n_22);
  I2S_CONTROL_g1362 : NR2D1BWP7T port map(A1 => I2S_CONTROL_n_3, A2 => pixel_ready, ZN => I2S_CONTROL_n_21);
  I2S_CONTROL_g1363 : CKXOR2D1BWP7T port map(A1 => I2S_count_y(9), A2 => I2S_CONTROL_check_9_147, Z => I2S_CONTROL_n_20);
  I2S_CONTROL_g1364 : CKXOR2D1BWP7T port map(A1 => I2S_n_18, A2 => I2S_CONTROL_check_10_146, Z => I2S_CONTROL_n_19);
  I2S_CONTROL_g1365 : CKXOR2D1BWP7T port map(A1 => pixel_x(8), A2 => I2S_CONTROL_check_8_148, Z => I2S_CONTROL_n_18);
  I2S_CONTROL_g1366 : CKXOR2D1BWP7T port map(A1 => I2S_n_17, A2 => I2S_CONTROL_check_11_145, Z => I2S_CONTROL_n_17);
  I2S_CONTROL_g1367 : INR2D1BWP7T port map(A1 => I2S_CONTROL_n_2, B1 => reset, ZN => I2S_CONTROL_n_28);
  I2S_CONTROL_g1368 : MOAI22D0BWP7T port map(A1 => I2S_count_y(3), A2 => I2S_CONTROL_check_3_153, B1 => I2S_count_y(3), B2 => I2S_CONTROL_check_3_153, ZN => I2S_CONTROL_n_16);
  I2S_CONTROL_g1369 : CKXOR2D1BWP7T port map(A1 => I2S_count_y(5), A2 => I2S_CONTROL_check_5_151, Z => I2S_CONTROL_n_15);
  I2S_CONTROL_g1370 : XNR2D1BWP7T port map(A1 => I2S_count_y(2), A2 => I2S_CONTROL_check_2_154, ZN => I2S_CONTROL_n_14);
  I2S_CONTROL_g1371 : XNR2D1BWP7T port map(A1 => I2S_count_y(4), A2 => I2S_CONTROL_check_4_152, ZN => I2S_CONTROL_n_13);
  I2S_CONTROL_g1372 : XNR2D1BWP7T port map(A1 => I2S_count_y(6), A2 => I2S_CONTROL_check_6_150, ZN => I2S_CONTROL_n_12);
  I2S_CONTROL_g1373 : XNR2D1BWP7T port map(A1 => I2S_count_y(7), A2 => I2S_CONTROL_check_7_149, ZN => I2S_CONTROL_n_11);
  I2S_CONTROL_g1374 : CKXOR2D1BWP7T port map(A1 => pixel_x(0), A2 => I2S_CONTROL_check_0_156, Z => I2S_CONTROL_n_10);
  I2S_CONTROL_g1375 : MOAI22D0BWP7T port map(A1 => pixel_x(1), A2 => I2S_CONTROL_n_0, B1 => pixel_x(1), B2 => I2S_CONTROL_n_0, ZN => I2S_CONTROL_n_9);
  I2S_CONTROL_g1376 : CKXOR2D1BWP7T port map(A1 => pixel_x(2), A2 => I2S_CONTROL_check_2_154, Z => I2S_CONTROL_n_8);
  I2S_CONTROL_g1377 : XNR2D1BWP7T port map(A1 => I2S_count_y(11), A2 => I2S_CONTROL_check_11_145, ZN => I2S_CONTROL_n_7);
  I2S_CONTROL_g1378 : CKXOR2D1BWP7T port map(A1 => pixel_x(3), A2 => I2S_CONTROL_check_3_153, Z => I2S_CONTROL_n_6);
  I2S_CONTROL_g1379 : CKXOR2D1BWP7T port map(A1 => pixel_x(5), A2 => I2S_CONTROL_check_5_151, Z => I2S_CONTROL_n_5);
  I2S_CONTROL_g1380 : CKXOR2D1BWP7T port map(A1 => pixel_x(6), A2 => I2S_CONTROL_check_6_150, Z => I2S_CONTROL_n_4);
  I2S_CONTROL_g1381 : IND2D1BWP7T port map(A1 => reset, B1 => I2S_CONTROL_n_51, ZN => I2S_CONTROL_n_3);
  I2S_CONTROL_g1382 : NR2D1BWP7T port map(A1 => I2S_CONTROL_n_47, A2 => I2S_CONTROL_n_48, ZN => I2S_CONTROL_n_2);
  I2S_CONTROL_g1383 : INVD0BWP7T port map(I => pixel_ready, ZN => I2S_CONTROL_n_1);
  I2S_CONTROL_g1384 : INVD1BWP7T port map(I => I2S_CONTROL_check_1_155, ZN => I2S_CONTROL_n_0);
  I2S_CONTROL_state_reg_0 : DFD1BWP7T port map(CP => clk, D => I2S_CONTROL_n_44, Q => I2S_CONTROL_state(0), QN => I2S_CONTROL_n_47);
  I2S_CONTROL_state_reg_1 : DFD1BWP7T port map(CP => clk, D => I2S_CONTROL_n_42, Q => I2S_CONTROL_state(1), QN => I2S_CONTROL_n_48);
  Oa_a_out_reg_11 : LND1BWP7T port map(EN => Oa_state, D => a_int(11), Q => UNCONNECTED, QN => Oa_n_11);
  Oa_g28 : INVD4BWP7T port map(I => Oa_n_11, ZN => a(11));
  Oa_a_out_reg_10 : LND1BWP7T port map(EN => Oa_state, D => a_int(10), Q => UNCONNECTED0, QN => Oa_n_10);
  Oa_g30 : INVD4BWP7T port map(I => Oa_n_10, ZN => a(10));
  Oa_a_out_reg_8 : LND1BWP7T port map(EN => Oa_state, D => a_int(8), Q => UNCONNECTED1, QN => Oa_n_9);
  Oa_g32 : INVD4BWP7T port map(I => Oa_n_9, ZN => a(8));
  Oa_a_out_reg_4 : LND1BWP7T port map(EN => Oa_state, D => a_int(4), Q => UNCONNECTED2, QN => Oa_n_8);
  Oa_g34 : INVD4BWP7T port map(I => Oa_n_8, ZN => a(4));
  Oa_a_out_reg_3 : LND1BWP7T port map(EN => Oa_state, D => a_int(3), Q => UNCONNECTED3, QN => Oa_n_7);
  Oa_g36 : INVD4BWP7T port map(I => Oa_n_7, ZN => a(3));
  Oa_a_out_reg_7 : LND1BWP7T port map(EN => Oa_state, D => a_int(7), Q => UNCONNECTED4, QN => Oa_n_6);
  Oa_g38 : INVD4BWP7T port map(I => Oa_n_6, ZN => a(7));
  Oa_a_out_reg_2 : LND1BWP7T port map(EN => Oa_state, D => a_int(2), Q => UNCONNECTED5, QN => Oa_n_5);
  Oa_g40 : INVD4BWP7T port map(I => Oa_n_5, ZN => a(2));
  Oa_a_out_reg_1 : LND1BWP7T port map(EN => Oa_state, D => a_int(1), Q => UNCONNECTED6, QN => Oa_n_4);
  Oa_g42 : INVD4BWP7T port map(I => Oa_n_4, ZN => a(1));
  Oa_a_out_reg_9 : LND1BWP7T port map(EN => Oa_state, D => a_int(9), Q => UNCONNECTED7, QN => Oa_n_3);
  Oa_g44 : INVD4BWP7T port map(I => Oa_n_3, ZN => a(9));
  Oa_a_out_reg_6 : LND1BWP7T port map(EN => Oa_state, D => a_int(6), Q => UNCONNECTED8, QN => Oa_n_2);
  Oa_g46 : INVD4BWP7T port map(I => Oa_n_2, ZN => a(6));
  Oa_a_out_reg_0 : LND1BWP7T port map(EN => Oa_state, D => a_int(0), Q => UNCONNECTED9, QN => Oa_n_1);
  Oa_g48 : INVD4BWP7T port map(I => Oa_n_1, ZN => a(0));
  Oa_a_out_reg_5 : LND1BWP7T port map(EN => Oa_state, D => a_int(5), Q => UNCONNECTED10, QN => Oa_n_0);
  Oa_g50 : INVD4BWP7T port map(I => Oa_n_0, ZN => a(5));
  Oa_state_reg : DFKSND1BWP7T port map(CP => clk, D => Oa_n_12, SN => pixel_ready, Q => Oa_state, QN => Oa_n_12);
  Ob_a_out_reg_11 : LND1BWP7T port map(EN => Ob_state, D => b_int(11), Q => UNCONNECTED11, QN => Ob_n_11);
  Ob_g28 : INVD4BWP7T port map(I => Ob_n_11, ZN => b(11));
  Ob_a_out_reg_10 : LND1BWP7T port map(EN => Ob_state, D => b_int(10), Q => UNCONNECTED12, QN => Ob_n_10);
  Ob_g30 : INVD4BWP7T port map(I => Ob_n_10, ZN => b(10));
  Ob_a_out_reg_8 : LND1BWP7T port map(EN => Ob_state, D => b_int(8), Q => UNCONNECTED13, QN => Ob_n_9);
  Ob_g32 : INVD4BWP7T port map(I => Ob_n_9, ZN => b(8));
  Ob_a_out_reg_4 : LND1BWP7T port map(EN => Ob_state, D => b_int(4), Q => UNCONNECTED14, QN => Ob_n_8);
  Ob_g34 : INVD4BWP7T port map(I => Ob_n_8, ZN => b(4));
  Ob_a_out_reg_3 : LND1BWP7T port map(EN => Ob_state, D => b_int(3), Q => UNCONNECTED15, QN => Ob_n_7);
  Ob_g36 : INVD4BWP7T port map(I => Ob_n_7, ZN => b(3));
  Ob_a_out_reg_7 : LND1BWP7T port map(EN => Ob_state, D => b_int(7), Q => UNCONNECTED16, QN => Ob_n_6);
  Ob_g38 : INVD4BWP7T port map(I => Ob_n_6, ZN => b(7));
  Ob_a_out_reg_2 : LND1BWP7T port map(EN => Ob_state, D => b_int(2), Q => UNCONNECTED17, QN => Ob_n_5);
  Ob_g40 : INVD4BWP7T port map(I => Ob_n_5, ZN => b(2));
  Ob_a_out_reg_1 : LND1BWP7T port map(EN => Ob_state, D => b_int(1), Q => UNCONNECTED18, QN => Ob_n_4);
  Ob_g42 : INVD4BWP7T port map(I => Ob_n_4, ZN => b(1));
  Ob_a_out_reg_9 : LND1BWP7T port map(EN => Ob_state, D => b_int(9), Q => UNCONNECTED19, QN => Ob_n_3);
  Ob_g44 : INVD4BWP7T port map(I => Ob_n_3, ZN => b(9));
  Ob_a_out_reg_6 : LND1BWP7T port map(EN => Ob_state, D => b_int(6), Q => UNCONNECTED20, QN => Ob_n_2);
  Ob_g46 : INVD4BWP7T port map(I => Ob_n_2, ZN => b(6));
  Ob_a_out_reg_0 : LND1BWP7T port map(EN => Ob_state, D => b_int(0), Q => UNCONNECTED21, QN => Ob_n_1);
  Ob_g48 : INVD4BWP7T port map(I => Ob_n_1, ZN => b(0));
  Ob_a_out_reg_5 : LND1BWP7T port map(EN => Ob_state, D => b_int(5), Q => UNCONNECTED22, QN => Ob_n_0);
  Ob_g50 : INVD4BWP7T port map(I => Ob_n_0, ZN => b(5));
  Ob_state_reg : DFKSND1BWP7T port map(CP => clk, D => Ob_n_12, SN => pixel_ready, Q => Ob_state, QN => Ob_n_12);
  I2S_CONVERTER_g187 : MOAI22D0BWP7T port map(A1 => I2S_CONVERTER_n_15, A2 => I2S_count_y(9), B1 => I2S_CONVERTER_n_15, B2 => I2S_count_y(9), ZN => pixel_y(9));
  I2S_CONVERTER_g188 : MOAI22D0BWP7T port map(A1 => I2S_CONVERTER_n_13, A2 => I2S_count_y(8), B1 => I2S_CONVERTER_n_13, B2 => I2S_count_y(8), ZN => pixel_y(8));
  I2S_CONVERTER_g189 : INR2D0BWP7T port map(A1 => I2S_CONVERTER_n_13, B1 => I2S_count_y(8), ZN => I2S_CONVERTER_n_15);
  I2S_CONVERTER_g190 : MOAI22D0BWP7T port map(A1 => I2S_CONVERTER_n_11, A2 => I2S_count_y(7), B1 => I2S_CONVERTER_n_11, B2 => I2S_count_y(7), ZN => pixel_y(7));
  I2S_CONVERTER_g191 : INR2D0BWP7T port map(A1 => I2S_CONVERTER_n_11, B1 => I2S_count_y(7), ZN => I2S_CONVERTER_n_13);
  I2S_CONVERTER_g192 : MOAI22D0BWP7T port map(A1 => I2S_CONVERTER_n_9, A2 => I2S_count_y(6), B1 => I2S_CONVERTER_n_9, B2 => I2S_count_y(6), ZN => pixel_y(6));
  I2S_CONVERTER_g193 : INR2D0BWP7T port map(A1 => I2S_CONVERTER_n_9, B1 => I2S_count_y(6), ZN => I2S_CONVERTER_n_11);
  I2S_CONVERTER_g194 : MOAI22D0BWP7T port map(A1 => I2S_CONVERTER_n_7, A2 => I2S_count_y(5), B1 => I2S_CONVERTER_n_7, B2 => I2S_count_y(5), ZN => pixel_y(5));
  I2S_CONVERTER_g195 : INR2D0BWP7T port map(A1 => I2S_CONVERTER_n_7, B1 => I2S_count_y(5), ZN => I2S_CONVERTER_n_9);
  I2S_CONVERTER_g196 : MOAI22D0BWP7T port map(A1 => I2S_CONVERTER_n_5, A2 => I2S_count_y(4), B1 => I2S_CONVERTER_n_5, B2 => I2S_count_y(4), ZN => pixel_y(4));
  I2S_CONVERTER_g197 : INR2D0BWP7T port map(A1 => I2S_CONVERTER_n_5, B1 => I2S_count_y(4), ZN => I2S_CONVERTER_n_7);
  I2S_CONVERTER_g198 : MOAI22D0BWP7T port map(A1 => I2S_CONVERTER_n_3, A2 => I2S_count_y(3), B1 => I2S_CONVERTER_n_3, B2 => I2S_count_y(3), ZN => pixel_y(3));
  I2S_CONVERTER_g199 : INR2D0BWP7T port map(A1 => I2S_CONVERTER_n_3, B1 => I2S_count_y(3), ZN => I2S_CONVERTER_n_5);
  I2S_CONVERTER_g200 : MOAI22D0BWP7T port map(A1 => I2S_CONVERTER_n_1, A2 => I2S_count_y(2), B1 => I2S_CONVERTER_n_1, B2 => I2S_count_y(2), ZN => pixel_y(2));
  I2S_CONVERTER_g201 : INR2D0BWP7T port map(A1 => I2S_CONVERTER_n_1, B1 => I2S_count_y(2), ZN => I2S_CONVERTER_n_3);
  I2S_CONVERTER_g202 : CKXOR2D0BWP7T port map(A1 => pixel_y(0), A2 => I2S_count_y(1), Z => pixel_y(1));
  I2S_CONVERTER_g203 : NR2D0BWP7T port map(A1 => pixel_y(0), A2 => I2S_count_y(1), ZN => I2S_CONVERTER_n_1);
  S2X_FAx2_fa4_g21 : HA1D0BWP7T port map(A => S2X_full_adder_x1(0), B => S2X_full_adder_x1(2), CO => S2X_FAx2_c(4), S => S2X_full_adder_x2(4));
  S2Y_FAy1_ha1_g17 : HA1D0BWP7T port map(A => S2Y_hunderd(0), B => pixel_y(0), CO => S2Y_FAy1_c(0), S => S2Y_full_adder_y1(0));
  S2Y_FAy1_fa1_g2 : FA1D0BWP7T port map(A => S2Y_hunderd(1), B => pixel_y(1), CI => S2Y_FAy1_c(0), CO => S2Y_FAy1_c(1), S => S2Y_full_adder_y1(1));
  S2Y_FAy1_fa2_g2 : FA1D0BWP7T port map(A => S2Y_FAy1_c(1), B => S2Y_hunderd(2), CI => pixel_y(2), CO => S2Y_FAy1_c(2), S => S2Y_full_adder_y1(2));
  S2Y_FAy1_fa3_g2 : FA1D0BWP7T port map(A => S2Y_FAy1_c(2), B => S2Y_hunderd(3), CI => pixel_y(3), CO => S2Y_FAy1_c(3), S => S2Y_full_adder_y1(3));
  S2X_FAx2_fa5_g2 : FA1D0BWP7T port map(A => S2X_full_adder_x1(1), B => S2X_full_adder_x1(3), CI => S2X_FAx2_c(4), CO => S2X_FAx2_c(5), S => S2X_full_adder_x2(5));
  S2X_MUXx_g1365 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_30, A2 => S2X_MUXx_n_15, A3 => S2X_MUXx_n_38, A4 => S2X_MUXx_n_13, ZN => S2X_center_a(11));
  S2X_MUXx_g1366 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_34, A2 => S2X_MUXx_n_25, A3 => S2X_MUXx_n_42, A4 => S2X_MUXx_n_22, ZN => S2X_center_a(10));
  S2X_MUXx_g1367 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_53, A2 => S2X_MUXx_n_47, A3 => S2X_MUXx_n_58, A4 => S2X_MUXx_n_46, ZN => S2X_center_a(6));
  S2X_MUXx_g1368 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_52, A2 => S2X_MUXx_n_50, A3 => S2X_MUXx_n_54, A4 => S2X_MUXx_n_49, ZN => S2X_center_a(0));
  S2X_MUXx_g1369 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_43, A2 => S2X_MUXx_n_41, A3 => S2X_MUXx_n_45, A4 => S2X_MUXx_n_40, ZN => S2X_center_a(5));
  S2X_MUXx_g1370 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_39, A2 => S2X_MUXx_n_36, A3 => S2X_MUXx_n_32, A4 => S2X_MUXx_n_29, ZN => S2X_center_a(8));
  S2X_MUXx_g1371 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_35, A2 => S2X_MUXx_n_33, A3 => S2X_MUXx_n_37, A4 => S2X_MUXx_n_31, ZN => S2X_center_a(4));
  S2X_MUXx_g1372 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_56, A2 => S2X_MUXx_n_51, A3 => S2X_MUXx_n_48, A4 => S2X_MUXx_n_44, ZN => S2X_center_a(9));
  S2X_MUXx_g1373 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_21, A2 => S2X_MUXx_n_17, A3 => S2X_MUXx_n_23, A4 => S2X_MUXx_n_12, ZN => S2X_center_a(7));
  S2X_MUXx_g1374 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_27, A2 => S2X_MUXx_n_26, A3 => S2X_MUXx_n_28, A4 => S2X_MUXx_n_24, ZN => S2X_center_a(3));
  S2X_MUXx_g1375 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_20, A2 => S2X_MUXx_n_19, A3 => S2X_MUXx_n_18, A4 => S2X_MUXx_n_16, ZN => S2X_center_a(2));
  S2X_MUXx_g1376 : ND4D0BWP7T port map(A1 => S2X_MUXx_n_14, A2 => S2X_MUXx_n_55, A3 => S2X_MUXx_n_59, A4 => S2X_MUXx_n_57, ZN => S2X_center_a(1));
  S2X_MUXx_g1377 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(1), B1 => S2X_MUXx_n_5, B2 => S2X_C7(1), ZN => S2X_MUXx_n_59);
  S2X_MUXx_g1378 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(6), B1 => S2X_MUXx_n_5, B2 => S2X_C7(6), ZN => S2X_MUXx_n_58);
  S2X_MUXx_g1379 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(1), B1 => S2X_MUXx_n_9, B2 => S2X_C1(1), ZN => S2X_MUXx_n_57);
  S2X_MUXx_g1380 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(9), B1 => S2X_MUXx_n_8, B2 => S2X_C3(9), ZN => S2X_MUXx_n_56);
  S2X_MUXx_g1381 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(1), B1 => S2X_MUXx_n_6, B2 => S2X_C5(1), ZN => S2X_MUXx_n_55);
  S2X_MUXx_g1382 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(0), B1 => S2X_MUXx_n_5, B2 => S2X_C7(0), ZN => S2X_MUXx_n_54);
  S2X_MUXx_g1383 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(6), B1 => S2X_MUXx_n_8, B2 => S2X_C3(6), ZN => S2X_MUXx_n_53);
  S2X_MUXx_g1384 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(0), B1 => S2X_MUXx_n_6, B2 => S2X_C5(0), ZN => S2X_MUXx_n_52);
  S2X_MUXx_g1385 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(9), B1 => S2X_MUXx_n_6, B2 => S2X_C5(9), ZN => S2X_MUXx_n_51);
  S2X_MUXx_g1386 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(0), B1 => S2X_MUXx_n_8, B2 => S2X_C3(0), ZN => S2X_MUXx_n_50);
  S2X_MUXx_g1387 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(0), B1 => S2X_MUXx_n_9, B2 => S2X_C1(0), ZN => S2X_MUXx_n_49);
  S2X_MUXx_g1388 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(9), B1 => S2X_MUXx_n_5, B2 => S2X_C7(9), ZN => S2X_MUXx_n_48);
  S2X_MUXx_g1389 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(6), B1 => S2X_MUXx_n_6, B2 => S2X_C5(6), ZN => S2X_MUXx_n_47);
  S2X_MUXx_g1390 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(6), B1 => S2X_MUXx_n_9, B2 => S2X_C1(6), ZN => S2X_MUXx_n_46);
  S2X_MUXx_g1391 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(5), B1 => S2X_MUXx_n_5, B2 => S2X_C7(5), ZN => S2X_MUXx_n_45);
  S2X_MUXx_g1392 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(9), B1 => S2X_MUXx_n_9, B2 => S2X_C1(9), ZN => S2X_MUXx_n_44);
  S2X_MUXx_g1393 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(5), B1 => S2X_MUXx_n_6, B2 => S2X_C5(5), ZN => S2X_MUXx_n_43);
  S2X_MUXx_g1394 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(10), B1 => S2X_MUXx_n_5, B2 => S2X_C7(10), ZN => S2X_MUXx_n_42);
  S2X_MUXx_g1395 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(5), B1 => S2X_MUXx_n_8, B2 => S2X_C3(5), ZN => S2X_MUXx_n_41);
  S2X_MUXx_g1396 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(5), B1 => S2X_MUXx_n_9, B2 => S2X_C1(5), ZN => S2X_MUXx_n_40);
  S2X_MUXx_g1397 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(8), B1 => S2X_MUXx_n_8, B2 => S2X_C3(8), ZN => S2X_MUXx_n_39);
  S2X_MUXx_g1398 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(11), B1 => S2X_MUXx_n_5, B2 => S2X_C7(11), ZN => S2X_MUXx_n_38);
  S2X_MUXx_g1399 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(4), B1 => S2X_MUXx_n_5, B2 => S2X_C7(4), ZN => S2X_MUXx_n_37);
  S2X_MUXx_g1400 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(8), B1 => S2X_MUXx_n_6, B2 => S2X_C5(8), ZN => S2X_MUXx_n_36);
  S2X_MUXx_g1401 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(4), B1 => S2X_MUXx_n_6, B2 => S2X_C5(4), ZN => S2X_MUXx_n_35);
  S2X_MUXx_g1402 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(10), B1 => S2X_MUXx_n_6, B2 => S2X_C5(10), ZN => S2X_MUXx_n_34);
  S2X_MUXx_g1403 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(4), B1 => S2X_MUXx_n_8, B2 => S2X_C3(4), ZN => S2X_MUXx_n_33);
  S2X_MUXx_g1404 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(8), B1 => S2X_MUXx_n_5, B2 => S2X_C7(8), ZN => S2X_MUXx_n_32);
  S2X_MUXx_g1405 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(4), B1 => S2X_MUXx_n_9, B2 => S2X_C1(4), ZN => S2X_MUXx_n_31);
  S2X_MUXx_g1406 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(11), B1 => S2X_MUXx_n_8, B2 => S2X_C3(11), ZN => S2X_MUXx_n_30);
  S2X_MUXx_g1407 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(8), B1 => S2X_MUXx_n_9, B2 => S2X_C1(8), ZN => S2X_MUXx_n_29);
  S2X_MUXx_g1408 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(3), B1 => S2X_MUXx_n_5, B2 => S2X_C7(3), ZN => S2X_MUXx_n_28);
  S2X_MUXx_g1409 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(3), B1 => S2X_MUXx_n_6, B2 => S2X_C5(3), ZN => S2X_MUXx_n_27);
  S2X_MUXx_g1410 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(3), B1 => S2X_MUXx_n_8, B2 => S2X_C3(3), ZN => S2X_MUXx_n_26);
  S2X_MUXx_g1411 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(10), B1 => S2X_MUXx_n_8, B2 => S2X_C3(10), ZN => S2X_MUXx_n_25);
  S2X_MUXx_g1412 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(3), B1 => S2X_MUXx_n_9, B2 => S2X_C1(3), ZN => S2X_MUXx_n_24);
  S2X_MUXx_g1413 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(7), B1 => S2X_MUXx_n_5, B2 => S2X_C7(7), ZN => S2X_MUXx_n_23);
  S2X_MUXx_g1414 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(10), B1 => S2X_MUXx_n_9, B2 => S2X_C1(10), ZN => S2X_MUXx_n_22);
  S2X_MUXx_g1415 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(7), B1 => S2X_MUXx_n_6, B2 => S2X_C5(7), ZN => S2X_MUXx_n_21);
  S2X_MUXx_g1416 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(2), B1 => S2X_MUXx_n_8, B2 => S2X_C3(2), ZN => S2X_MUXx_n_20);
  S2X_MUXx_g1417 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(2), B1 => S2X_MUXx_n_6, B2 => S2X_C5(2), ZN => S2X_MUXx_n_19);
  S2X_MUXx_g1418 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_7, A2 => S2X_C6(2), B1 => S2X_MUXx_n_5, B2 => S2X_C7(2), ZN => S2X_MUXx_n_18);
  S2X_MUXx_g1419 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(7), B1 => S2X_MUXx_n_8, B2 => S2X_C3(7), ZN => S2X_MUXx_n_17);
  S2X_MUXx_g1420 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(2), B1 => S2X_MUXx_n_9, B2 => S2X_C1(2), ZN => S2X_MUXx_n_16);
  S2X_MUXx_g1421 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_11, A2 => S2X_C4(11), B1 => S2X_MUXx_n_6, B2 => S2X_C5(11), ZN => S2X_MUXx_n_15);
  S2X_MUXx_g1422 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_4, A2 => S2X_C2(1), B1 => S2X_MUXx_n_8, B2 => S2X_C3(1), ZN => S2X_MUXx_n_14);
  S2X_MUXx_g1423 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(11), B1 => S2X_MUXx_n_9, B2 => S2X_C1(11), ZN => S2X_MUXx_n_13);
  S2X_MUXx_g1424 : AOI22D0BWP7T port map(A1 => S2X_MUXx_n_10, A2 => S2X_C0(7), B1 => S2X_MUXx_n_9, B2 => S2X_C1(7), ZN => S2X_MUXx_n_12);
  S2X_MUXx_g1425 : NR2D0BWP7T port map(A1 => S2X_MUXx_n_2, A2 => position(0), ZN => S2X_MUXx_n_11);
  S2X_MUXx_g1426 : INR2D0BWP7T port map(A1 => S2X_MUXx_n_1, B1 => position(0), ZN => S2X_MUXx_n_10);
  S2X_MUXx_g1427 : AN2D1BWP7T port map(A1 => S2X_MUXx_n_1, A2 => position(0), Z => S2X_MUXx_n_9);
  S2X_MUXx_g1428 : INR2D0BWP7T port map(A1 => position(0), B1 => S2X_MUXx_n_3, ZN => S2X_MUXx_n_8);
  S2X_MUXx_g1429 : NR2D0BWP7T port map(A1 => S2X_MUXx_n_0, A2 => position(0), ZN => S2X_MUXx_n_7);
  S2X_MUXx_g1430 : INR2D0BWP7T port map(A1 => position(0), B1 => S2X_MUXx_n_2, ZN => S2X_MUXx_n_6);
  S2X_MUXx_g1431 : INR2D0BWP7T port map(A1 => position(0), B1 => S2X_MUXx_n_0, ZN => S2X_MUXx_n_5);
  S2X_MUXx_g1432 : NR2D0BWP7T port map(A1 => S2X_MUXx_n_3, A2 => position(0), ZN => S2X_MUXx_n_4);
  S2X_MUXx_g1433 : IND2D0BWP7T port map(A1 => position(2), B1 => position(1), ZN => S2X_MUXx_n_3);
  S2X_MUXx_g1434 : IND2D0BWP7T port map(A1 => position(1), B1 => position(2), ZN => S2X_MUXx_n_2);
  S2X_MUXx_g1435 : NR2D0BWP7T port map(A1 => position(1), A2 => position(2), ZN => S2X_MUXx_n_1);
  S2X_MUXx_g1436 : ND2D0BWP7T port map(A1 => position(2), A2 => position(1), ZN => S2X_MUXx_n_0);
  S2Y_FAy1_fa4_g2 : FA1D0BWP7T port map(A => S2Y_FAy1_c(3), B => S2Y_hunderd(4), CI => pixel_y(4), CO => S2Y_FAy1_c(4), S => S2Y_full_adder_y1(4));
  S2Y_FAy2_fa4_g21 : HA1D0BWP7T port map(A => S2Y_full_adder_y1(0), B => S2Y_full_adder_y1(2), CO => S2Y_FAy2_c(4), S => S2Y_full_adder_y2(4));
  S2Y_FAy2_fa5_g2 : FA1D0BWP7T port map(A => S2Y_full_adder_y1(1), B => S2Y_full_adder_y1(3), CI => S2Y_FAy2_c(4), CO => S2Y_FAy2_c(5), S => S2Y_full_adder_y2(5));
  S2Y_FAy2_fa6_g2 : FA1D0BWP7T port map(A => S2Y_full_adder_y1(2), B => S2Y_full_adder_y1(4), CI => S2Y_FAy2_c(5), CO => S2Y_FAy2_c(6), S => S2Y_full_adder_y2(6));
  S2Y_FAy2_fa7_g2 : FA1D0BWP7T port map(A => S2Y_FAy2_c(6), B => S2Y_full_adder_y1(3), CI => S2Y_full_adder_y1(5), CO => S2Y_FAy2_c(7), S => S2Y_full_adder_y2(7));
  S2Y_FAy2_fa8_g2 : FA1D0BWP7T port map(A => S2Y_FAy2_c(7), B => S2Y_full_adder_y1(4), CI => S2Y_full_adder_y1(6), CO => S2Y_FAy2_c(8), S => S2Y_full_adder_y2(8));
  S2Y_FAy2_fa9_g2 : FA1D0BWP7T port map(A => S2Y_FAy2_c(8), B => S2Y_full_adder_y1(5), CI => S2Y_full_adder_y1(7), CO => S2Y_FAy2_c(9), S => S2Y_full_adder_y2(9));
  S2Y_FAy2_fa10_g2 : FA1D0BWP7T port map(A => S2Y_FAy2_c(9), B => S2Y_full_adder_y1(6), CI => S2Y_full_adder_y1(8), CO => S2Y_FAy2_c(10), S => S2Y_full_adder_y2(10));
  S2Y_FAy2_fa11_g31 : MOAI22D0BWP7T port map(A1 => S2Y_FAy2_c(10), A2 => S2Y_FAy2_fa11_n_0, B1 => S2Y_FAy2_c(10), B2 => S2Y_FAy2_fa11_n_0, ZN => S2Y_full_adder_y2(11));
  S2Y_FAy2_fa11_g32 : XNR2D1BWP7T port map(A1 => S2Y_full_adder_y1(9), A2 => S2Y_full_adder_y1(7), ZN => S2Y_FAy2_fa11_n_0);
  S2X_FAx2_fa6_g2 : FA1D0BWP7T port map(A => S2X_FAx2_c(5), B => S2X_full_adder_x1(2), CI => S2X_full_adder_x1(4), CO => S2X_FAx2_c(6), S => S2X_full_adder_x2(6));
  S2Y_FAy1_fa5_g2 : FA1D0BWP7T port map(A => S2Y_FAy1_c(4), B => S2Y_hunderd(5), CI => pixel_y(5), CO => S2Y_FAy1_c(5), S => S2Y_full_adder_y1(5));
  S2Y_FAy3_ha1_g17 : HA1D0BWP7T port map(A => S2Y_shifter_rightyout(0), B => S2Y_center_b(0), CO => S2Y_FAy3_c(0), S => b_int(0));
  S2Y_FAy3_fa10_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(9), B => S2Y_shifter_rightyout(10), CI => S2Y_center_b(10), CO => S2Y_FAy3_c(10), S => b_int(10));
  S2Y_FAy3_fa11_g31 : MOAI22D0BWP7T port map(A1 => S2Y_FAy3_c(10), A2 => S2Y_FAy3_fa11_n_0, B1 => S2Y_FAy3_c(10), B2 => S2Y_FAy3_fa11_n_0, ZN => b_int(11));
  S2Y_FAy3_fa11_g32 : XNR2D1BWP7T port map(A1 => S2Y_center_b(11), A2 => S2Y_shifter_rightyout(11), ZN => S2Y_FAy3_fa11_n_0);
  S2Y_FAy3_fa1_g2 : FA1D0BWP7T port map(A => S2Y_shifter_rightyout(1), B => S2Y_center_b(1), CI => S2Y_FAy3_c(0), CO => S2Y_FAy3_c(1), S => b_int(1));
  S2Y_FAy3_fa2_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(1), B => S2Y_shifter_rightyout(2), CI => S2Y_center_b(2), CO => S2Y_FAy3_c(2), S => b_int(2));
  S2Y_FAy3_fa3_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(2), B => S2Y_shifter_rightyout(3), CI => S2Y_center_b(3), CO => S2Y_FAy3_c(3), S => b_int(3));
  S2Y_FAy3_fa4_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(3), B => S2Y_shifter_rightyout(4), CI => S2Y_center_b(4), CO => S2Y_FAy3_c(4), S => b_int(4));
  S2Y_FAy3_fa5_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(4), B => S2Y_shifter_rightyout(5), CI => S2Y_center_b(5), CO => S2Y_FAy3_c(5), S => b_int(5));
  S2Y_FAy3_fa6_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(5), B => S2Y_shifter_rightyout(6), CI => S2Y_center_b(6), CO => S2Y_FAy3_c(6), S => b_int(6));
  S2Y_FAy3_fa7_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(6), B => S2Y_shifter_rightyout(7), CI => S2Y_center_b(7), CO => S2Y_FAy3_c(7), S => b_int(7));
  S2Y_FAy3_fa8_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(7), B => S2Y_shifter_rightyout(8), CI => S2Y_center_b(8), CO => S2Y_FAy3_c(8), S => b_int(8));
  S2Y_FAy3_fa9_g2 : FA1D0BWP7T port map(A => S2Y_FAy3_c(8), B => S2Y_shifter_rightyout(9), CI => S2Y_center_b(9), CO => S2Y_FAy3_c(9), S => b_int(9));
  S2Y_FAy1_fa6_g2 : FA1D0BWP7T port map(A => S2Y_FAy1_c(5), B => S2Y_hunderd(6), CI => pixel_y(6), CO => S2Y_FAy1_c(6), S => S2Y_full_adder_y1(6));
  S2X_FAx2_fa7_g2 : FA1D0BWP7T port map(A => S2X_FAx2_c(6), B => S2X_full_adder_x1(3), CI => S2X_full_adder_x1(5), CO => S2X_FAx2_c(7), S => S2X_full_adder_x2(7));
  S2Y_FAy1_fa7_g2 : FA1D0BWP7T port map(A => S2Y_FAy1_c(6), B => S2Y_hunderd(7), CI => pixel_y(7), CO => S2Y_FAy1_c(7), S => S2Y_full_adder_y1(7));
  S2X_FAx2_fa8_g2 : FA1D0BWP7T port map(A => S2X_FAx2_c(7), B => S2X_full_adder_x1(4), CI => S2X_full_adder_x1(6), CO => S2X_FAx2_c(8), S => S2X_full_adder_x2(8));
  S2Y_FAy1_fa8_g2 : FA1D0BWP7T port map(A => S2Y_FAy1_c(7), B => S2Y_hunderd(8), CI => pixel_y(8), CO => S2Y_FAy1_c(8), S => S2Y_full_adder_y1(8));
  S2X_FAx2_fa9_g2 : FA1D0BWP7T port map(A => S2X_FAx2_c(8), B => S2X_full_adder_x1(5), CI => S2X_full_adder_x1(7), CO => S2X_FAx2_c(9), S => S2X_full_adder_x2(9));
  S2Y_FAy1_fa9_g31 : MOAI22D0BWP7T port map(A1 => S2Y_FAy1_c(8), A2 => S2Y_FAy1_fa9_n_0, B1 => S2Y_FAy1_c(8), B2 => S2Y_FAy1_fa9_n_0, ZN => S2Y_full_adder_y1(9));
  S2Y_FAy1_fa9_g32 : XNR2D1BWP7T port map(A1 => pixel_y(9), A2 => S2Y_hunderd(9), ZN => S2Y_FAy1_fa9_n_0);
  S2X_FAx1_ha1_g17 : HA1D0BWP7T port map(A => S2X_hunderdmin(0), B => pixel_x(0), CO => S2X_FAx1_c(0), S => S2X_full_adder_x1(0));
  I2S_K1_count_reg_11 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_45, Q => I2S_n_17);
  I2S_K1_g647 : AO21D0BWP7T port map(A1 => I2S_K1_n_43, A2 => I2S_n_17, B => I2S_K1_n_41, Z => I2S_K1_n_45);
  I2S_K1_count_reg_9 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_42, Q => pixel_x(9));
  I2S_K1_g649 : OAI32D1BWP7T port map(A1 => I2S_n_18, A2 => I2S_K1_n_0, A3 => I2S_K1_n_35, B1 => I2S_K1_n_2, B2 => I2S_K1_n_39, ZN => I2S_K1_n_44);
  I2S_K1_g650 : OAI21D0BWP7T port map(A1 => I2S_reset_x, A2 => I2S_n_18, B => I2S_K1_n_39, ZN => I2S_K1_n_43);
  I2S_K1_count_reg_8 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_38, Q => pixel_x(8));
  I2S_K1_g652 : OAI31D0BWP7T port map(A1 => pixel_x(9), A2 => I2S_K1_n_0, A3 => I2S_K1_n_30, B => I2S_K1_n_40, ZN => I2S_K1_n_42);
  I2S_K1_g653 : NR4D0BWP7T port map(A1 => I2S_K1_n_35, A2 => I2S_K1_n_0, A3 => I2S_K1_n_2, A4 => I2S_n_17, ZN => I2S_K1_n_41);
  I2S_K1_g654 : OAI21D0BWP7T port map(A1 => I2S_K1_n_34, A2 => I2S_pause_x, B => pixel_x(9), ZN => I2S_K1_n_40);
  I2S_K1_count_reg_7 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_36, Q => pixel_x(7));
  I2S_K1_g656 : OAI31D0BWP7T port map(A1 => pixel_x(8), A2 => I2S_K1_n_0, A3 => I2S_K1_n_27, B => I2S_K1_n_37, ZN => I2S_K1_n_38);
  I2S_K1_g657 : AOI21D0BWP7T port map(A1 => I2S_K1_n_35, A2 => I2S_K1_n_3, B => I2S_pause_x, ZN => I2S_K1_n_39);
  I2S_K1_count_reg_6 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_32, Q => pixel_x(6));
  I2S_K1_g659 : OAI21D0BWP7T port map(A1 => I2S_K1_n_31, A2 => I2S_pause_x, B => pixel_x(8), ZN => I2S_K1_n_37);
  I2S_K1_g660 : OAI31D0BWP7T port map(A1 => pixel_x(7), A2 => I2S_K1_n_0, A3 => I2S_K1_n_22, B => I2S_K1_n_33, ZN => I2S_K1_n_36);
  I2S_K1_g661 : IND2D1BWP7T port map(A1 => I2S_K1_n_30, B1 => pixel_x(9), ZN => I2S_K1_n_35);
  I2S_K1_count_reg_5 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_28, Q => pixel_x(5));
  I2S_K1_g663 : AN2D0BWP7T port map(A1 => I2S_K1_n_30, A2 => I2S_K1_n_3, Z => I2S_K1_n_34);
  I2S_K1_g664 : OAI21D0BWP7T port map(A1 => I2S_K1_n_26, A2 => I2S_pause_x, B => pixel_x(7), ZN => I2S_K1_n_33);
  I2S_K1_g665 : OAI31D0BWP7T port map(A1 => pixel_x(6), A2 => I2S_K1_n_19, A3 => I2S_K1_n_0, B => I2S_K1_n_29, ZN => I2S_K1_n_32);
  I2S_K1_g666 : AN2D0BWP7T port map(A1 => I2S_K1_n_27, A2 => I2S_K1_n_3, Z => I2S_K1_n_31);
  I2S_K1_count_reg_4 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_24, Q => pixel_x(4));
  I2S_K1_g668 : OAI21D0BWP7T port map(A1 => I2S_K1_n_23, A2 => I2S_pause_x, B => pixel_x(6), ZN => I2S_K1_n_29);
  I2S_K1_g669 : OAI31D0BWP7T port map(A1 => pixel_x(5), A2 => I2S_K1_n_14, A3 => I2S_K1_n_0, B => I2S_K1_n_25, ZN => I2S_K1_n_28);
  I2S_K1_g670 : IND2D1BWP7T port map(A1 => I2S_K1_n_27, B1 => pixel_x(8), ZN => I2S_K1_n_30);
  I2S_K1_g671 : IND2D1BWP7T port map(A1 => I2S_K1_n_22, B1 => pixel_x(7), ZN => I2S_K1_n_27);
  I2S_K1_count_reg_3 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_20, Q => pixel_x(3));
  I2S_K1_g673 : AN2D0BWP7T port map(A1 => I2S_K1_n_22, A2 => I2S_K1_n_3, Z => I2S_K1_n_26);
  I2S_K1_g674 : OAI21D0BWP7T port map(A1 => I2S_K1_n_18, A2 => I2S_pause_x, B => pixel_x(5), ZN => I2S_K1_n_25);
  I2S_K1_g675 : OAI31D0BWP7T port map(A1 => pixel_x(4), A2 => I2S_K1_n_11, A3 => I2S_K1_n_0, B => I2S_K1_n_21, ZN => I2S_K1_n_24);
  I2S_K1_g676 : AN2D0BWP7T port map(A1 => I2S_K1_n_19, A2 => I2S_K1_n_3, Z => I2S_K1_n_23);
  I2S_K1_count_reg_2 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_16, Q => pixel_x(2));
  I2S_K1_g678 : OAI21D0BWP7T port map(A1 => I2S_K1_n_15, A2 => I2S_pause_x, B => pixel_x(4), ZN => I2S_K1_n_21);
  I2S_K1_g679 : OAI31D0BWP7T port map(A1 => pixel_x(3), A2 => I2S_K1_n_7, A3 => I2S_K1_n_0, B => I2S_K1_n_17, ZN => I2S_K1_n_20);
  I2S_K1_g680 : IND2D1BWP7T port map(A1 => I2S_K1_n_19, B1 => pixel_x(6), ZN => I2S_K1_n_22);
  I2S_K1_g681 : IND2D1BWP7T port map(A1 => I2S_K1_n_14, B1 => pixel_x(5), ZN => I2S_K1_n_19);
  I2S_K1_count_reg_1 : DFQD1BWP7T port map(CP => clk, D => I2S_K1_n_12, Q => pixel_x(1));
  I2S_K1_g683 : INR2D1BWP7T port map(A1 => I2S_K1_n_14, B1 => I2S_reset_x, ZN => I2S_K1_n_18);
  I2S_K1_g684 : OAI21D0BWP7T port map(A1 => I2S_K1_n_10, A2 => I2S_pause_x, B => pixel_x(3), ZN => I2S_K1_n_17);
  I2S_K1_g685 : OAI31D0BWP7T port map(A1 => pixel_x(2), A2 => I2S_K1_n_6, A3 => I2S_K1_n_0, B => I2S_K1_n_13, ZN => I2S_K1_n_16);
  I2S_K1_g686 : INR2D1BWP7T port map(A1 => I2S_K1_n_11, B1 => I2S_reset_x, ZN => I2S_K1_n_15);
  I2S_K1_g688 : OAI21D0BWP7T port map(A1 => I2S_K1_n_8, A2 => I2S_pause_x, B => pixel_x(2), ZN => I2S_K1_n_13);
  I2S_K1_g689 : OAI31D0BWP7T port map(A1 => pixel_x(1), A2 => I2S_K1_n_1, A3 => I2S_K1_n_0, B => I2S_K1_n_9, ZN => I2S_K1_n_12);
  I2S_K1_g690 : IND2D1BWP7T port map(A1 => I2S_K1_n_11, B1 => pixel_x(4), ZN => I2S_K1_n_14);
  I2S_K1_g691 : IND2D1BWP7T port map(A1 => I2S_K1_n_7, B1 => pixel_x(3), ZN => I2S_K1_n_11);
  I2S_K1_g692 : INR2D1BWP7T port map(A1 => I2S_K1_n_7, B1 => I2S_reset_x, ZN => I2S_K1_n_10);
  I2S_K1_g693 : OAI21D0BWP7T port map(A1 => I2S_K1_n_4, A2 => I2S_pause_x, B => pixel_x(1), ZN => I2S_K1_n_9);
  I2S_K1_g694 : INR2D1BWP7T port map(A1 => I2S_K1_n_6, B1 => I2S_reset_x, ZN => I2S_K1_n_8);
  I2S_K1_g695 : IND2D1BWP7T port map(A1 => I2S_K1_n_6, B1 => pixel_x(2), ZN => I2S_K1_n_7);
  I2S_K1_g696 : ND2D1BWP7T port map(A1 => pixel_x(1), A2 => pixel_x(0), ZN => I2S_K1_n_6);
  I2S_K1_g697 : INVD0BWP7T port map(I => I2S_K1_n_0, ZN => I2S_K1_n_5);
  I2S_K1_g698 : NR2D1BWP7T port map(A1 => I2S_reset_x, A2 => pixel_x(0), ZN => I2S_K1_n_4);
  I2S_K1_g721 : INVD1BWP7T port map(I => I2S_reset_x, ZN => I2S_K1_n_3);
  I2S_K1_g2 : IND2D1BWP7T port map(A1 => I2S_pause_x, B1 => I2S_K1_n_3, ZN => I2S_K1_n_0);
  I2S_K1_count_reg_10 : DFD1BWP7T port map(CP => clk, D => I2S_K1_n_44, Q => I2S_n_18, QN => I2S_K1_n_2);
  I2S_K1_count_reg_0 : DFXD1BWP7T port map(CP => clk, DA => I2S_pause_x, DB => I2S_K1_n_5, SA => pixel_x(0), Q => pixel_x(0), QN => I2S_K1_n_1);
  I2S_K2_count_reg_11 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_45, Q => I2S_count_y(11));
  I2S_K2_g655 : AO21D0BWP7T port map(A1 => I2S_K2_n_43, A2 => I2S_count_y(11), B => I2S_K2_n_41, Z => I2S_K2_n_45);
  I2S_K2_count_reg_9 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_42, Q => I2S_count_y(9));
  I2S_K2_g657 : OAI32D1BWP7T port map(A1 => I2S_count_y(10), A2 => I2S_K2_n_0, A3 => I2S_K2_n_35, B1 => I2S_K2_n_2, B2 => I2S_K2_n_39, ZN => I2S_K2_n_44);
  I2S_K2_g658 : OAI21D0BWP7T port map(A1 => frame_ready, A2 => I2S_count_y(10), B => I2S_K2_n_39, ZN => I2S_K2_n_43);
  I2S_K2_count_reg_8 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_38, Q => I2S_count_y(8));
  I2S_K2_g660 : OAI31D0BWP7T port map(A1 => I2S_count_y(9), A2 => I2S_K2_n_0, A3 => I2S_K2_n_30, B => I2S_K2_n_40, ZN => I2S_K2_n_42);
  I2S_K2_g661 : NR4D0BWP7T port map(A1 => I2S_K2_n_35, A2 => I2S_K2_n_0, A3 => I2S_K2_n_2, A4 => I2S_count_y(11), ZN => I2S_K2_n_41);
  I2S_K2_g662 : OAI21D0BWP7T port map(A1 => I2S_K2_n_34, A2 => I2S_pause_y, B => I2S_count_y(9), ZN => I2S_K2_n_40);
  I2S_K2_count_reg_7 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_36, Q => I2S_count_y(7));
  I2S_K2_g664 : OAI31D0BWP7T port map(A1 => I2S_count_y(8), A2 => I2S_K2_n_0, A3 => I2S_K2_n_27, B => I2S_K2_n_37, ZN => I2S_K2_n_38);
  I2S_K2_g665 : AOI21D0BWP7T port map(A1 => I2S_K2_n_35, A2 => I2S_K2_n_3, B => I2S_pause_y, ZN => I2S_K2_n_39);
  I2S_K2_count_reg_6 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_32, Q => I2S_count_y(6));
  I2S_K2_g667 : OAI21D0BWP7T port map(A1 => I2S_K2_n_31, A2 => I2S_pause_y, B => I2S_count_y(8), ZN => I2S_K2_n_37);
  I2S_K2_g668 : OAI31D0BWP7T port map(A1 => I2S_count_y(7), A2 => I2S_K2_n_0, A3 => I2S_K2_n_22, B => I2S_K2_n_33, ZN => I2S_K2_n_36);
  I2S_K2_g669 : IND2D1BWP7T port map(A1 => I2S_K2_n_30, B1 => I2S_count_y(9), ZN => I2S_K2_n_35);
  I2S_K2_count_reg_5 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_28, Q => I2S_count_y(5));
  I2S_K2_g671 : AN2D0BWP7T port map(A1 => I2S_K2_n_30, A2 => I2S_K2_n_3, Z => I2S_K2_n_34);
  I2S_K2_g672 : OAI21D0BWP7T port map(A1 => I2S_K2_n_26, A2 => I2S_pause_y, B => I2S_count_y(7), ZN => I2S_K2_n_33);
  I2S_K2_g673 : OAI31D0BWP7T port map(A1 => I2S_count_y(6), A2 => I2S_K2_n_19, A3 => I2S_K2_n_0, B => I2S_K2_n_29, ZN => I2S_K2_n_32);
  I2S_K2_g674 : AN2D0BWP7T port map(A1 => I2S_K2_n_27, A2 => I2S_K2_n_3, Z => I2S_K2_n_31);
  I2S_K2_count_reg_4 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_24, Q => I2S_count_y(4));
  I2S_K2_g676 : OAI21D0BWP7T port map(A1 => I2S_K2_n_23, A2 => I2S_pause_y, B => I2S_count_y(6), ZN => I2S_K2_n_29);
  I2S_K2_g677 : OAI31D0BWP7T port map(A1 => I2S_count_y(5), A2 => I2S_K2_n_14, A3 => I2S_K2_n_0, B => I2S_K2_n_25, ZN => I2S_K2_n_28);
  I2S_K2_g678 : IND2D1BWP7T port map(A1 => I2S_K2_n_27, B1 => I2S_count_y(8), ZN => I2S_K2_n_30);
  I2S_K2_g679 : IND2D1BWP7T port map(A1 => I2S_K2_n_22, B1 => I2S_count_y(7), ZN => I2S_K2_n_27);
  I2S_K2_count_reg_3 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_20, Q => I2S_count_y(3));
  I2S_K2_g681 : AN2D0BWP7T port map(A1 => I2S_K2_n_22, A2 => I2S_K2_n_3, Z => I2S_K2_n_26);
  I2S_K2_g682 : OAI21D0BWP7T port map(A1 => I2S_K2_n_18, A2 => I2S_pause_y, B => I2S_count_y(5), ZN => I2S_K2_n_25);
  I2S_K2_g683 : OAI31D0BWP7T port map(A1 => I2S_count_y(4), A2 => I2S_K2_n_11, A3 => I2S_K2_n_0, B => I2S_K2_n_21, ZN => I2S_K2_n_24);
  I2S_K2_g684 : AN2D0BWP7T port map(A1 => I2S_K2_n_19, A2 => I2S_K2_n_3, Z => I2S_K2_n_23);
  I2S_K2_count_reg_2 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_16, Q => I2S_count_y(2));
  I2S_K2_g686 : OAI21D0BWP7T port map(A1 => I2S_K2_n_15, A2 => I2S_pause_y, B => I2S_count_y(4), ZN => I2S_K2_n_21);
  I2S_K2_g687 : OAI31D0BWP7T port map(A1 => I2S_count_y(3), A2 => I2S_K2_n_7, A3 => I2S_K2_n_0, B => I2S_K2_n_17, ZN => I2S_K2_n_20);
  I2S_K2_g688 : IND2D1BWP7T port map(A1 => I2S_K2_n_19, B1 => I2S_count_y(6), ZN => I2S_K2_n_22);
  I2S_K2_g689 : IND2D1BWP7T port map(A1 => I2S_K2_n_14, B1 => I2S_count_y(5), ZN => I2S_K2_n_19);
  I2S_K2_count_reg_1 : DFQD1BWP7T port map(CP => clk, D => I2S_K2_n_12, Q => I2S_count_y(1));
  I2S_K2_g691 : AN2D0BWP7T port map(A1 => I2S_K2_n_14, A2 => I2S_K2_n_3, Z => I2S_K2_n_18);
  I2S_K2_g692 : OAI21D0BWP7T port map(A1 => I2S_K2_n_10, A2 => I2S_pause_y, B => I2S_count_y(3), ZN => I2S_K2_n_17);
  I2S_K2_g693 : OAI31D0BWP7T port map(A1 => I2S_count_y(2), A2 => I2S_K2_n_6, A3 => I2S_K2_n_0, B => I2S_K2_n_13, ZN => I2S_K2_n_16);
  I2S_K2_g694 : INR2D1BWP7T port map(A1 => I2S_K2_n_11, B1 => frame_ready, ZN => I2S_K2_n_15);
  I2S_K2_g696 : OAI21D0BWP7T port map(A1 => I2S_K2_n_8, A2 => I2S_pause_y, B => I2S_count_y(2), ZN => I2S_K2_n_13);
  I2S_K2_g697 : OAI31D0BWP7T port map(A1 => I2S_count_y(1), A2 => I2S_K2_n_1, A3 => I2S_K2_n_0, B => I2S_K2_n_9, ZN => I2S_K2_n_12);
  I2S_K2_g698 : IND2D1BWP7T port map(A1 => I2S_K2_n_11, B1 => I2S_count_y(4), ZN => I2S_K2_n_14);
  I2S_K2_g699 : IND2D1BWP7T port map(A1 => I2S_K2_n_7, B1 => I2S_count_y(3), ZN => I2S_K2_n_11);
  I2S_K2_g700 : INR2D1BWP7T port map(A1 => I2S_K2_n_7, B1 => frame_ready, ZN => I2S_K2_n_10);
  I2S_K2_g701 : OAI21D0BWP7T port map(A1 => I2S_K2_n_4, A2 => I2S_pause_y, B => I2S_count_y(1), ZN => I2S_K2_n_9);
  I2S_K2_g702 : INR2D1BWP7T port map(A1 => I2S_K2_n_6, B1 => frame_ready, ZN => I2S_K2_n_8);
  I2S_K2_g703 : IND2D1BWP7T port map(A1 => I2S_K2_n_6, B1 => I2S_count_y(2), ZN => I2S_K2_n_7);
  I2S_K2_g704 : ND2D1BWP7T port map(A1 => I2S_count_y(1), A2 => pixel_y(0), ZN => I2S_K2_n_6);
  I2S_K2_g705 : INVD0BWP7T port map(I => I2S_K2_n_0, ZN => I2S_K2_n_5);
  I2S_K2_g706 : NR2D1BWP7T port map(A1 => frame_ready, A2 => pixel_y(0), ZN => I2S_K2_n_4);
  I2S_K2_g729 : INVD1BWP7T port map(I => frame_ready, ZN => I2S_K2_n_3);
  I2S_K2_g2 : IND2D1BWP7T port map(A1 => I2S_pause_y, B1 => I2S_K2_n_3, ZN => I2S_K2_n_0);
  I2S_K2_count_reg_10 : DFD1BWP7T port map(CP => clk, D => I2S_K2_n_44, Q => I2S_count_y(10), QN => I2S_K2_n_2);
  I2S_K2_count_reg_0 : DFXD1BWP7T port map(CP => clk, DA => I2S_pause_y, DB => I2S_K2_n_5, SA => pixel_y(0), Q => pixel_y(0), QN => I2S_K2_n_1);
  tie_0_cell : TIELBWP7T port map(ZN => logic_0_1_net);

end synthesised;
