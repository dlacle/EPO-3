
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of main is

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component INR3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component CKXOR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component FA1D0BWP7T
    port(A, B, CI : in std_logic; CO, S : out std_logic);
  end component;

  component HA1D0BWP7T
    port(A, B : in std_logic; CO, S : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component MAOI222D1BWP7T
    port(A, B, C : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OA32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  component DFQD0BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component OR4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IINR4D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D0BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component AOI211XD0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component OA22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component CKND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  signal a_int : std_logic_vector(11 downto 0);
  signal Oa_int_a_out : std_logic_vector(11 downto 0);
  signal Oa_state : std_logic_vector(1 downto 0);
  signal pixel_x : std_logic_vector(11 downto 0);
  signal b_int : std_logic_vector(11 downto 0);
  signal Ob_int_a_out : std_logic_vector(11 downto 0);
  signal Ob_state : std_logic_vector(1 downto 0);
  signal pixel_y : std_logic_vector(11 downto 0);
  signal I2S_count_y : std_logic_vector(11 downto 0);
  signal I2S_CONTROL_state : std_logic_vector(3 downto 0);
  signal I2S_count_x2 : std_logic_vector(11 downto 0);
  signal I2S_CONTROL_n_37, I2S_CONTROL_n_44, I2S_n_0, I2S_n_1, I2S_n_2 : std_logic;
  signal I2S_n_3, I2S_n_4, I2S_n_5, I2S_n_6, I2S_n_7 : std_logic;
  signal I2S_n_8, I2S_n_9, I2S_n_10, I2S_n_11, I2S_n_12 : std_logic;
  signal I2S_n_13, I2S_n_14, I2S_n_15, I2S_n_16, I2S_n_17 : std_logic;
  signal I2S_n_18, I2S_n_19, I2S_n_20, I2S_n_21, I2S_n_22 : std_logic;
  signal I2S_n_23, I2S_n_24, I2S_n_25, I2S_n_26, I2S_n_27 : std_logic;
  signal I2S_n_28, I2S_n_29, I2S_n_30, I2S_n_31, I2S_n_32 : std_logic;
  signal I2S_n_33, I2S_n_34, I2S_n_35, I2S_n_36, I2S_n_37 : std_logic;
  signal I2S_n_38, I2S_n_39, I2S_n_40, I2S_n_41, I2S_n_42 : std_logic;
  signal I2S_n_43, I2S_n_44, I2S_n_45, I2S_n_46, I2S_n_47 : std_logic;
  signal I2S_n_48, I2S_n_49, I2S_n_50, I2S_n_51, I2S_n_52 : std_logic;
  signal I2S_n_53, I2S_n_54, I2S_n_55, I2S_n_56, I2S_n_57 : std_logic;
  signal I2S_n_58, I2S_n_59, I2S_n_60, I2S_n_61, I2S_n_62 : std_logic;
  signal I2S_n_63, I2S_n_64, I2S_n_65, I2S_n_66, I2S_n_67 : std_logic;
  signal I2S_n_68, I2S_n_69, I2S_n_70, I2S_n_71, I2S_n_72 : std_logic;
  signal I2S_n_73, I2S_n_74, I2S_n_75, I2S_n_76, I2S_n_77 : std_logic;
  signal I2S_n_78, I2S_n_79, I2S_n_80, I2S_n_81, I2S_n_82 : std_logic;
  signal I2S_n_83, I2S_n_84, I2S_n_85, I2S_n_86, I2S_n_87 : std_logic;
  signal I2S_n_88, I2S_n_89, I2S_n_90, I2S_n_91, I2S_n_92 : std_logic;
  signal I2S_n_93, I2S_n_94, I2S_n_95, I2S_n_96, I2S_n_97 : std_logic;
  signal I2S_n_98, I2S_n_99, I2S_n_100, I2S_n_101, I2S_n_102 : std_logic;
  signal I2S_n_103, I2S_n_104, I2S_n_107, I2S_n_108, I2S_n_109 : std_logic;
  signal I2S_n_110, I2S_n_111, I2S_n_112, I2S_n_113, I2S_n_114 : std_logic;
  signal I2S_n_115, I2S_n_116, I2S_n_117, I2S_n_120, I2S_n_121 : std_logic;
  signal I2S_n_122, I2S_n_123, I2S_n_124, I2S_n_125, I2S_n_126 : std_logic;
  signal I2S_n_127, I2S_n_128, I2S_n_129, I2S_n_130, I2S_n_131 : std_logic;
  signal I2S_n_132, I2S_n_133, I2S_n_134, I2S_n_135, I2S_n_136 : std_logic;
  signal I2S_n_137, I2S_n_138, I2S_n_139, I2S_n_140, I2S_n_141 : std_logic;
  signal I2S_n_142, I2S_n_143, I2S_n_159, I2S_n_160, Oa_n_0 : std_logic;
  signal Oa_n_2, Oa_n_4, Oa_n_6, Oa_n_8, Oa_n_10 : std_logic;
  signal Oa_n_12, Oa_n_14, Oa_n_16, Oa_n_18, Oa_n_20 : std_logic;
  signal Oa_n_22, Oa_n_24, Oa_n_25, Oa_n_26, Oa_n_27 : std_logic;
  signal Oa_n_28, Oa_n_29, Oa_n_30, Oa_n_31, Oa_n_32 : std_logic;
  signal Oa_n_33, Oa_n_34, Oa_n_35, Oa_n_36, Oa_n_37 : std_logic;
  signal Oa_n_38, Ob_n_0, Ob_n_2, Ob_n_4, Ob_n_6 : std_logic;
  signal Ob_n_8, Ob_n_10, Ob_n_12, Ob_n_14, Ob_n_16 : std_logic;
  signal Ob_n_18, Ob_n_20, Ob_n_22, Ob_n_24, Ob_n_25 : std_logic;
  signal Ob_n_26, Ob_n_27, Ob_n_28, Ob_n_29, Ob_n_30 : std_logic;
  signal Ob_n_31, Ob_n_32, Ob_n_33, Ob_n_34, Ob_n_35 : std_logic;
  signal Ob_n_36, Ob_n_37, Ob_n_38, S2X_n_1, S2X_n_2 : std_logic;
  signal S2X_n_3, S2X_n_4, S2X_n_5, S2X_n_6, S2X_n_7 : std_logic;
  signal S2X_n_8, S2X_n_9, S2X_n_10, S2X_n_11, S2X_n_12 : std_logic;
  signal S2X_n_13, S2X_n_14, S2X_n_15, S2X_n_16, S2X_n_17 : std_logic;
  signal S2X_n_18, S2X_n_19, S2X_n_20, S2X_n_21, S2X_n_22 : std_logic;
  signal S2X_n_23, S2X_n_24, S2X_n_25, S2X_n_26, S2X_n_27 : std_logic;
  signal S2X_n_28, S2X_n_29, S2X_n_30, S2X_n_31, S2X_n_32 : std_logic;
  signal S2X_n_33, S2X_n_34, S2X_n_35, S2X_n_36, S2X_n_37 : std_logic;
  signal S2X_n_38, S2X_n_39, S2X_n_40, S2X_n_41, S2X_n_42 : std_logic;
  signal S2X_n_43, S2X_n_44, S2X_n_45, S2X_n_46, S2X_n_47 : std_logic;
  signal S2X_n_48, S2X_n_49, S2X_n_50, S2X_n_51, S2X_n_52 : std_logic;
  signal S2X_n_53, S2X_n_54, S2X_n_55, S2X_n_56, S2X_n_57 : std_logic;
  signal S2X_n_59, S2X_n_60, S2X_n_61, S2X_n_62, S2X_n_63 : std_logic;
  signal S2X_n_64, S2X_n_65, S2X_n_66, S2X_n_67, S2X_n_68 : std_logic;
  signal S2X_n_69, S2X_n_70, S2X_n_72, S2X_n_73, S2X_n_74 : std_logic;
  signal S2X_n_75, S2X_n_76, S2X_n_77, S2X_n_78, S2X_n_79 : std_logic;
  signal S2X_n_80, S2X_n_81, S2X_n_82, S2X_n_83, S2X_n_84 : std_logic;
  signal S2X_n_85, S2X_n_86, S2X_n_87, S2X_n_88, S2X_n_89 : std_logic;
  signal S2X_n_91, S2X_n_92, S2X_n_93, S2X_n_94, S2X_n_95 : std_logic;
  signal S2X_n_96, S2X_n_97, S2X_n_98, S2X_n_99, S2X_n_100 : std_logic;
  signal S2X_n_101, S2X_n_102, S2X_n_103, S2X_n_104, S2X_n_105 : std_logic;
  signal S2X_n_106, S2X_n_108, S2X_n_110, S2X_n_112, S2X_n_114 : std_logic;
  signal S2X_n_116, S2X_n_118, S2X_n_120, S2X_n_122, S2Y_n_1 : std_logic;
  signal S2Y_n_3, S2Y_n_4, S2Y_n_5, S2Y_n_6, S2Y_n_7 : std_logic;
  signal S2Y_n_8, S2Y_n_10, S2Y_n_11, S2Y_n_12, S2Y_n_13 : std_logic;
  signal S2Y_n_14, S2Y_n_15, S2Y_n_16, S2Y_n_17, S2Y_n_18 : std_logic;
  signal S2Y_n_19, S2Y_n_20, S2Y_n_21, S2Y_n_22, S2Y_n_23 : std_logic;
  signal S2Y_n_24, S2Y_n_25, S2Y_n_26, S2Y_n_27, S2Y_n_29 : std_logic;
  signal S2Y_n_30, S2Y_n_31, S2Y_n_32, S2Y_n_33, S2Y_n_34 : std_logic;
  signal S2Y_n_35, S2Y_n_36, S2Y_n_37, S2Y_n_38, S2Y_n_40 : std_logic;
  signal S2Y_n_41, S2Y_n_42, S2Y_n_43, S2Y_n_45, S2Y_n_46 : std_logic;
  signal S2Y_n_47, S2Y_n_48, S2Y_n_49, S2Y_n_50, S2Y_n_51 : std_logic;
  signal S2Y_n_52, S2Y_n_53, S2Y_n_55, S2Y_n_56, S2Y_n_57 : std_logic;
  signal S2Y_n_58, S2Y_n_59, S2Y_n_60, S2Y_n_61, S2Y_n_62 : std_logic;
  signal S2Y_n_64, S2Y_n_65, S2Y_n_66, S2Y_n_67, S2Y_n_68 : std_logic;
  signal S2Y_n_69, S2Y_n_70, S2Y_n_71, S2Y_n_72, S2Y_n_73 : std_logic;
  signal S2Y_n_74, S2Y_n_75, S2Y_n_76, S2Y_n_77, S2Y_n_78 : std_logic;
  signal S2Y_n_79, S2Y_n_80, S2Y_n_81, S2Y_n_82, S2Y_n_83 : std_logic;
  signal S2Y_n_84, S2Y_n_85, S2Y_n_86, S2Y_n_87, S2Y_n_89 : std_logic;
  signal S2Y_n_90, S2Y_n_91, S2Y_n_92, S2Y_n_95, S2Y_n_97 : std_logic;
  signal S2Y_n_99, S2Y_n_101, S2Y_n_103, S2Y_n_105, S2Y_n_123 : std_logic;
  signal S2Y_n_124, UNCONNECTED, UNCONNECTED0 : std_logic;

begin

  Oa_g412 : AO22D0BWP7T port map(A1 => a_int(9), A2 => Oa_n_25, B1 => Oa_int_a_out(9), B2 => Oa_n_24, Z => Oa_n_38);
  Oa_g413 : AO22D0BWP7T port map(A1 => a_int(1), A2 => Oa_n_25, B1 => Oa_int_a_out(1), B2 => Oa_n_24, Z => Oa_n_37);
  Oa_g414 : AO22D0BWP7T port map(A1 => a_int(8), A2 => Oa_n_25, B1 => Oa_int_a_out(8), B2 => Oa_n_24, Z => Oa_n_36);
  Oa_g415 : AO22D0BWP7T port map(A1 => a_int(10), A2 => Oa_n_25, B1 => Oa_int_a_out(10), B2 => Oa_n_24, Z => Oa_n_35);
  Oa_g416 : AO22D0BWP7T port map(A1 => a_int(11), A2 => Oa_n_25, B1 => Oa_int_a_out(11), B2 => Oa_n_24, Z => Oa_n_34);
  Oa_state_reg_0 : DFQD1BWP7T port map(CP => clk, D => Oa_n_26, Q => Oa_state(0));
  Oa_g418 : AO22D0BWP7T port map(A1 => a_int(7), A2 => Oa_n_25, B1 => Oa_int_a_out(7), B2 => Oa_n_24, Z => Oa_n_33);
  Oa_g419 : AO22D0BWP7T port map(A1 => a_int(0), A2 => Oa_n_25, B1 => Oa_int_a_out(0), B2 => Oa_n_24, Z => Oa_n_32);
  Oa_g420 : AO22D0BWP7T port map(A1 => a_int(3), A2 => Oa_n_25, B1 => Oa_int_a_out(3), B2 => Oa_n_24, Z => Oa_n_31);
  Oa_g421 : AO22D0BWP7T port map(A1 => a_int(4), A2 => Oa_n_25, B1 => Oa_int_a_out(4), B2 => Oa_n_24, Z => Oa_n_30);
  Oa_g422 : AO22D0BWP7T port map(A1 => a_int(5), A2 => Oa_n_25, B1 => Oa_int_a_out(5), B2 => Oa_n_24, Z => Oa_n_29);
  Oa_g423 : AO22D0BWP7T port map(A1 => a_int(6), A2 => Oa_n_25, B1 => Oa_int_a_out(6), B2 => Oa_n_24, Z => Oa_n_28);
  Oa_g424 : AO22D0BWP7T port map(A1 => a_int(2), A2 => Oa_n_25, B1 => Oa_int_a_out(2), B2 => Oa_n_24, Z => Oa_n_27);
  Oa_g425 : AOI31D0BWP7T port map(A1 => Oa_state(0), A2 => Oa_state(1), A3 => pixel_ready, B => reset, ZN => Oa_n_26);
  Oa_g426 : INR3D0BWP7T port map(A1 => Oa_state(1), B1 => reset, B2 => Oa_state(0), ZN => Oa_n_25);
  Oa_state_reg_1 : DFD1BWP7T port map(CP => clk, D => reset, Q => UNCONNECTED, QN => Oa_state(1));
  Oa_g428 : INR2D1BWP7T port map(A1 => Oa_state(0), B1 => reset, ZN => Oa_n_24);
  Oa_drc_bufs429 : INVD4BWP7T port map(I => Oa_n_22, ZN => a(0));
  Oa_drc_bufs433 : INVD4BWP7T port map(I => Oa_n_20, ZN => a(11));
  Oa_drc_bufs437 : INVD4BWP7T port map(I => Oa_n_18, ZN => a(10));
  Oa_drc_bufs441 : INVD4BWP7T port map(I => Oa_n_16, ZN => a(9));
  Oa_drc_bufs445 : INVD4BWP7T port map(I => Oa_n_14, ZN => a(8));
  Oa_drc_bufs449 : INVD4BWP7T port map(I => Oa_n_12, ZN => a(7));
  Oa_drc_bufs453 : INVD4BWP7T port map(I => Oa_n_10, ZN => a(6));
  Oa_drc_bufs457 : INVD4BWP7T port map(I => Oa_n_8, ZN => a(5));
  Oa_drc_bufs461 : INVD4BWP7T port map(I => Oa_n_6, ZN => a(4));
  Oa_drc_bufs465 : INVD4BWP7T port map(I => Oa_n_4, ZN => a(3));
  Oa_drc_bufs469 : INVD4BWP7T port map(I => Oa_n_2, ZN => a(2));
  Oa_drc_bufs473 : INVD4BWP7T port map(I => Oa_n_0, ZN => a(1));
  Oa_int_a_out_reg_0 : DFD1BWP7T port map(CP => clk, D => Oa_n_32, Q => Oa_int_a_out(0), QN => Oa_n_22);
  Oa_int_a_out_reg_11 : DFD1BWP7T port map(CP => clk, D => Oa_n_34, Q => Oa_int_a_out(11), QN => Oa_n_20);
  Oa_int_a_out_reg_10 : DFD1BWP7T port map(CP => clk, D => Oa_n_35, Q => Oa_int_a_out(10), QN => Oa_n_18);
  Oa_int_a_out_reg_9 : DFD1BWP7T port map(CP => clk, D => Oa_n_38, Q => Oa_int_a_out(9), QN => Oa_n_16);
  Oa_int_a_out_reg_8 : DFD1BWP7T port map(CP => clk, D => Oa_n_36, Q => Oa_int_a_out(8), QN => Oa_n_14);
  Oa_int_a_out_reg_7 : DFD1BWP7T port map(CP => clk, D => Oa_n_33, Q => Oa_int_a_out(7), QN => Oa_n_12);
  Oa_int_a_out_reg_6 : DFD1BWP7T port map(CP => clk, D => Oa_n_28, Q => Oa_int_a_out(6), QN => Oa_n_10);
  Oa_int_a_out_reg_5 : DFD1BWP7T port map(CP => clk, D => Oa_n_29, Q => Oa_int_a_out(5), QN => Oa_n_8);
  Oa_int_a_out_reg_4 : DFD1BWP7T port map(CP => clk, D => Oa_n_30, Q => Oa_int_a_out(4), QN => Oa_n_6);
  Oa_int_a_out_reg_3 : DFD1BWP7T port map(CP => clk, D => Oa_n_31, Q => Oa_int_a_out(3), QN => Oa_n_4);
  Oa_int_a_out_reg_2 : DFD1BWP7T port map(CP => clk, D => Oa_n_27, Q => Oa_int_a_out(2), QN => Oa_n_2);
  Oa_int_a_out_reg_1 : DFD1BWP7T port map(CP => clk, D => Oa_n_37, Q => Oa_int_a_out(1), QN => Oa_n_0);
  S2X_g2761 : MOAI22D0BWP7T port map(A1 => S2X_n_122, A2 => S2X_n_77, B1 => S2X_n_122, B2 => S2X_n_77, ZN => a_int(11));
  S2X_g2762 : AOI22D0BWP7T port map(A1 => S2X_n_120, A2 => S2X_n_103, B1 => S2X_n_91, B2 => S2X_n_26, ZN => S2X_n_122);
  S2X_g2763 : CKXOR2D1BWP7T port map(A1 => S2X_n_120, A2 => S2X_n_103, Z => a_int(10));
  S2X_g2764 : MOAI22D0BWP7T port map(A1 => S2X_n_118, A2 => S2X_n_101, B1 => S2X_n_92, B2 => S2X_n_28, ZN => S2X_n_120);
  S2X_g2765 : CKXOR2D1BWP7T port map(A1 => S2X_n_118, A2 => S2X_n_101, Z => a_int(9));
  S2X_g2766 : AOI22D0BWP7T port map(A1 => S2X_n_116, A2 => S2X_n_102, B1 => S2X_n_94, B2 => S2X_n_32, ZN => S2X_n_118);
  S2X_g2767 : CKXOR2D1BWP7T port map(A1 => S2X_n_116, A2 => S2X_n_102, Z => a_int(8));
  S2X_g2768 : MOAI22D0BWP7T port map(A1 => S2X_n_114, A2 => S2X_n_106, B1 => S2X_n_97, B2 => S2X_n_7, ZN => S2X_n_116);
  S2X_g2769 : CKXOR2D1BWP7T port map(A1 => S2X_n_114, A2 => S2X_n_106, Z => a_int(7));
  S2X_g2770 : AOI22D0BWP7T port map(A1 => S2X_n_112, A2 => S2X_n_100, B1 => S2X_n_98, B2 => S2X_n_18, ZN => S2X_n_114);
  S2X_g2771 : CKXOR2D1BWP7T port map(A1 => S2X_n_112, A2 => S2X_n_100, Z => a_int(6));
  S2X_g2772 : OAI22D0BWP7T port map(A1 => S2X_n_110, A2 => S2X_n_105, B1 => S2X_n_96, B2 => S2X_n_19, ZN => S2X_n_112);
  S2X_g2773 : CKXOR2D1BWP7T port map(A1 => S2X_n_110, A2 => S2X_n_105, Z => a_int(5));
  S2X_g2774 : AOI22D0BWP7T port map(A1 => S2X_n_108, A2 => S2X_n_104, B1 => S2X_n_93, B2 => S2X_n_31, ZN => S2X_n_110);
  S2X_g2775 : CKXOR2D1BWP7T port map(A1 => S2X_n_108, A2 => S2X_n_104, Z => a_int(4));
  S2X_g2776 : OAI22D0BWP7T port map(A1 => S2X_n_99, A2 => S2X_n_89, B1 => S2X_n_82, B2 => S2X_n_27, ZN => S2X_n_108);
  S2X_g2777 : CKXOR2D1BWP7T port map(A1 => S2X_n_99, A2 => S2X_n_89, Z => a_int(3));
  S2X_g2778 : MAOI22D0BWP7T port map(A1 => S2X_n_97, A2 => S2X_n_21, B1 => S2X_n_97, B2 => S2X_n_21, ZN => S2X_n_106);
  S2X_g2779 : MAOI22D0BWP7T port map(A1 => S2X_n_95, A2 => S2X_n_19, B1 => S2X_n_95, B2 => S2X_n_19, ZN => S2X_n_105);
  S2X_g2780 : CKXOR2D1BWP7T port map(A1 => S2X_n_93, A2 => S2X_n_31, Z => S2X_n_104);
  S2X_g2781 : CKXOR2D1BWP7T port map(A1 => S2X_n_91, A2 => S2X_n_26, Z => S2X_n_103);
  S2X_g2782 : CKXOR2D1BWP7T port map(A1 => S2X_n_94, A2 => S2X_n_32, Z => S2X_n_102);
  S2X_g2783 : XNR2D1BWP7T port map(A1 => S2X_n_92, A2 => S2X_n_28, ZN => S2X_n_101);
  S2X_g2784 : CKXOR2D1BWP7T port map(A1 => S2X_n_98, A2 => S2X_n_18, Z => S2X_n_100);
  S2X_g2785 : AOI22D0BWP7T port map(A1 => S2X_n_76, A2 => S2X_n_70, B1 => S2X_n_73, B2 => S2X_n_25, ZN => S2X_n_99);
  S2X_g2786 : INVD0BWP7T port map(I => S2X_n_95, ZN => S2X_n_96);
  S2X_g2787 : OAI22D0BWP7T port map(A1 => S2X_n_87, A2 => S2X_n_1, B1 => S2X_n_86, B2 => zoom(0), ZN => S2X_n_98);
  S2X_g2788 : OAI22D0BWP7T port map(A1 => S2X_n_88, A2 => S2X_n_1, B1 => S2X_n_87, B2 => zoom(0), ZN => S2X_n_97);
  S2X_g2789 : OAI22D0BWP7T port map(A1 => S2X_n_86, A2 => S2X_n_1, B1 => S2X_n_83, B2 => zoom(0), ZN => S2X_n_95);
  S2X_g2790 : OAI22D0BWP7T port map(A1 => S2X_n_88, A2 => zoom(0), B1 => S2X_n_84, B2 => S2X_n_1, ZN => S2X_n_94);
  S2X_g2791 : OAI22D0BWP7T port map(A1 => S2X_n_83, A2 => S2X_n_1, B1 => S2X_n_74, B2 => zoom(0), ZN => S2X_n_93);
  S2X_g2792 : OAI22D0BWP7T port map(A1 => S2X_n_84, A2 => zoom(0), B1 => S2X_n_85, B2 => S2X_n_1, ZN => S2X_n_92);
  S2X_g2793 : OAI22D0BWP7T port map(A1 => S2X_n_85, A2 => zoom(0), B1 => S2X_n_72, B2 => S2X_n_1, ZN => S2X_n_91);
  S2X_g2794 : CKXOR2D1BWP7T port map(A1 => S2X_n_76, A2 => S2X_n_70, Z => a_int(2));
  S2X_g2795 : XNR2D1BWP7T port map(A1 => S2X_n_82, A2 => S2X_n_27, ZN => S2X_n_89);
  S2X_g2796 : OAI22D0BWP7T port map(A1 => S2X_n_79, A2 => S2X_n_3, B1 => S2X_n_81, B2 => zoom(1), ZN => S2X_n_88);
  S2X_g2797 : OAI22D0BWP7T port map(A1 => S2X_n_78, A2 => S2X_n_3, B1 => S2X_n_80, B2 => zoom(1), ZN => S2X_n_87);
  S2X_g2798 : OAI22D0BWP7T port map(A1 => S2X_n_81, A2 => S2X_n_3, B1 => S2X_n_69, B2 => zoom(1), ZN => S2X_n_86);
  S2X_g2799 : MAOI22D0BWP7T port map(A1 => S2X_n_79, A2 => S2X_n_3, B1 => S2X_n_72, B2 => S2X_n_3, ZN => S2X_n_85);
  S2X_g2800 : MOAI22D0BWP7T port map(A1 => S2X_n_78, A2 => zoom(1), B1 => S2X_n_72, B2 => zoom(1), ZN => S2X_n_84);
  S2X_g2801 : OAI22D0BWP7T port map(A1 => S2X_n_80, A2 => S2X_n_3, B1 => S2X_n_63, B2 => zoom(1), ZN => S2X_n_83);
  S2X_g2802 : MAOI22D0BWP7T port map(A1 => S2X_n_67, A2 => S2X_n_1, B1 => S2X_n_74, B2 => S2X_n_1, ZN => S2X_n_82);
  S2X_g2803 : OAI21D0BWP7T port map(A1 => S2X_n_54, A2 => zoom(2), B => S2X_n_75, ZN => S2X_n_81);
  S2X_g2804 : OAI21D0BWP7T port map(A1 => S2X_n_50, A2 => zoom(2), B => S2X_n_75, ZN => S2X_n_80);
  S2X_g2805 : OAI21D0BWP7T port map(A1 => S2X_n_66, A2 => zoom(2), B => S2X_n_75, ZN => S2X_n_79);
  S2X_g2806 : OAI21D0BWP7T port map(A1 => S2X_n_61, A2 => zoom(2), B => S2X_n_75, ZN => S2X_n_78);
  S2X_g2807 : MAOI22D0BWP7T port map(A1 => S2X_n_72, A2 => S2X_n_20, B1 => S2X_n_72, B2 => S2X_n_20, ZN => S2X_n_77);
  S2X_g2808 : CKXOR2D1BWP7T port map(A1 => S2X_n_73, A2 => S2X_n_25, Z => S2X_n_76);
  S2X_g2809 : IND2D1BWP7T port map(A1 => S2X_n_72, B1 => zoom(2), ZN => S2X_n_75);
  S2X_g2810 : AOI22D0BWP7T port map(A1 => S2X_n_69, A2 => zoom(1), B1 => S2X_n_56, B2 => S2X_n_3, ZN => S2X_n_74);
  S2X_g2811 : MOAI22D0BWP7T port map(A1 => S2X_n_57, A2 => zoom(0), B1 => S2X_n_67, B2 => zoom(0), ZN => S2X_n_73);
  S2X_g2812 : MOAI22D0BWP7T port map(A1 => S2X_n_64, A2 => S2X_n_59, B1 => S2X_n_64, B2 => S2X_n_59, ZN => a_int(1));
  S2X_g2813 : MAOI22D0BWP7T port map(A1 => S2X_n_68, A2 => S2X_n_45, B1 => S2X_n_68, B2 => S2X_n_45, ZN => S2X_n_72);
  S2X_g2814 : AO21D0BWP7T port map(A1 => S2X_n_62, A2 => S2X_n_12, B => S2X_n_59, Z => S2X_n_70);
  S2X_g2815 : AOI22D0BWP7T port map(A1 => S2X_n_66, A2 => zoom(2), B1 => S2X_n_43, B2 => S2X_n_4, ZN => S2X_n_69);
  S2X_g2816 : NR2XD0BWP7T port map(A1 => S2X_n_65, A2 => S2X_n_47, ZN => S2X_n_68);
  S2X_g2817 : MOAI22D0BWP7T port map(A1 => S2X_n_51, A2 => zoom(1), B1 => S2X_n_63, B2 => zoom(1), ZN => S2X_n_67);
  S2X_g2818 : FA1D0BWP7T port map(A => S2X_n_48, B => S2X_n_39, CI => S2X_n_60, CO => S2X_n_65, S => S2X_n_66);
  S2X_g2819 : MAOI22D0BWP7T port map(A1 => S2X_n_62, A2 => S2X_n_13, B1 => S2X_n_62, B2 => S2X_n_13, ZN => S2X_n_64);
  S2X_g2820 : MAOI22D0BWP7T port map(A1 => S2X_n_61, A2 => zoom(2), B1 => S2X_n_35, B2 => zoom(2), ZN => S2X_n_63);
  S2X_g2821 : MOAI22D0BWP7T port map(A1 => S2X_n_57, A2 => S2X_n_1, B1 => S2X_n_52, B2 => S2X_n_1, ZN => S2X_n_62);
  S2X_g2822 : FA1D0BWP7T port map(A => S2X_n_41, B => S2X_n_34, CI => S2X_n_53, CO => S2X_n_60, S => S2X_n_61);
  S2X_g2823 : HA1D0BWP7T port map(A => S2X_n_7, B => S2X_n_55, CO => S2X_n_59, S => a_int(0));
  S2X_g2824 : AOI22D0BWP7T port map(A1 => S2X_n_56, A2 => zoom(1), B1 => S2X_n_44, B2 => S2X_n_3, ZN => S2X_n_57);
  S2X_g2825 : AOI22D0BWP7T port map(A1 => S2X_n_54, A2 => zoom(2), B1 => S2X_n_15, B2 => S2X_n_4, ZN => S2X_n_56);
  S2X_g2826 : MOAI22D0BWP7T port map(A1 => S2X_n_46, A2 => zoom(0), B1 => S2X_n_52, B2 => zoom(0), ZN => S2X_n_55);
  S2X_g2827 : FA1D0BWP7T port map(A => S2X_n_39, B => S2X_n_30, CI => S2X_n_49, CO => S2X_n_53, S => S2X_n_54);
  S2X_g2828 : AOI22D0BWP7T port map(A1 => S2X_n_51, A2 => zoom(1), B1 => S2X_n_37, B2 => S2X_n_3, ZN => S2X_n_52);
  S2X_g2829 : MAOI22D0BWP7T port map(A1 => pixel_x(1), A2 => S2X_n_4, B1 => S2X_n_50, B2 => S2X_n_4, ZN => S2X_n_51);
  S2X_g2830 : FA1D0BWP7T port map(A => S2X_n_34, B => S2X_n_22, CI => S2X_n_42, CO => S2X_n_49, S => S2X_n_50);
  S2X_g2831 : HA1D0BWP7T port map(A => S2X_n_6, B => S2X_n_40, CO => S2X_n_47, S => S2X_n_48);
  S2X_g2832 : AOI22D0BWP7T port map(A1 => S2X_n_44, A2 => zoom(1), B1 => S2X_n_23, B2 => zoom(2), ZN => S2X_n_46);
  S2X_g2833 : CKXOR2D1BWP7T port map(A1 => S2X_n_41, A2 => pixel_x(9), Z => S2X_n_45);
  S2X_g2834 : MOAI22D0BWP7T port map(A1 => S2X_n_43, A2 => S2X_n_4, B1 => pixel_x(0), B2 => S2X_n_4, ZN => S2X_n_44);
  S2X_g2835 : FA1D0BWP7T port map(A => S2X_n_30, B => pixel_x(2), CI => S2X_n_36, CO => S2X_n_42, S => S2X_n_43);
  S2X_g2836 : AOI21D0BWP7T port map(A1 => S2X_n_38, A2 => pixel_x(7), B => S2X_n_40, ZN => S2X_n_41);
  S2X_g2837 : NR2XD0BWP7T port map(A1 => S2X_n_38, A2 => pixel_x(7), ZN => S2X_n_40);
  S2X_g2838 : MAOI22D0BWP7T port map(A1 => S2X_n_33, A2 => pixel_x(6), B1 => S2X_n_33, B2 => pixel_x(6), ZN => S2X_n_39);
  S2X_g2839 : INR2XD0BWP7T port map(A1 => pixel_x(6), B1 => S2X_n_33, ZN => S2X_n_38);
  S2X_g2840 : ND2D1BWP7T port map(A1 => S2X_n_35, A2 => zoom(2), ZN => S2X_n_37);
  S2X_g2841 : MAOI222D1BWP7T port map(A => S2X_n_17, B => S2X_n_8, C => pixel_x(1), ZN => S2X_n_36);
  S2X_g2842 : MOAI22D0BWP7T port map(A1 => S2X_n_29, A2 => S2X_n_22, B1 => S2X_n_29, B2 => S2X_n_22, ZN => S2X_n_35);
  S2X_g2843 : MAOI22D0BWP7T port map(A1 => S2X_n_24, A2 => pixel_x(5), B1 => S2X_n_24, B2 => pixel_x(5), ZN => S2X_n_34);
  S2X_g2844 : IND2D1BWP7T port map(A1 => S2X_n_24, B1 => pixel_x(5), ZN => S2X_n_33);
  S2X_g2845 : IND2D1BWP7T port map(A1 => S2X_n_25, B1 => S2X_n_14, ZN => S2X_n_32);
  S2X_g2846 : AO21D0BWP7T port map(A1 => S2X_n_13, A2 => position(0), B => S2X_n_25, Z => S2X_n_31);
  S2X_g2847 : AOI21D0BWP7T port map(A1 => S2X_n_9, A2 => pixel_x(4), B => S2X_n_24, ZN => S2X_n_30);
  S2X_g2848 : CKXOR2D1BWP7T port map(A1 => S2X_n_8, A2 => pixel_x(1), Z => S2X_n_29);
  S2X_g2849 : OAI21D0BWP7T port map(A1 => S2X_n_16, A2 => S2X_n_2, B => S2X_n_10, ZN => S2X_n_28);
  S2X_g2850 : MAOI22D0BWP7T port map(A1 => S2X_n_21, A2 => position(0), B1 => S2X_n_10, B2 => position(2), ZN => S2X_n_27);
  S2X_g2851 : OAI22D0BWP7T port map(A1 => position(0), A2 => S2X_n_21, B1 => S2X_n_2, B2 => position(2), ZN => S2X_n_26);
  S2X_g2852 : NR2XD0BWP7T port map(A1 => S2X_n_16, A2 => position(0), ZN => S2X_n_25);
  S2X_g2853 : NR2D0BWP7T port map(A1 => S2X_n_15, A2 => zoom(1), ZN => S2X_n_23);
  S2X_g2854 : NR2XD0BWP7T port map(A1 => S2X_n_9, A2 => pixel_x(4), ZN => S2X_n_24);
  S2X_g2855 : INVD1BWP7T port map(I => S2X_n_17, ZN => S2X_n_22);
  S2X_g2856 : INVD0BWP7T port map(I => S2X_n_7, ZN => S2X_n_21);
  S2X_g2857 : AOI22D0BWP7T port map(A1 => S2X_n_12, A2 => S2X_n_2, B1 => position(0), B2 => S2X_n_11, ZN => S2X_n_20);
  S2X_g2858 : MAOI22D0BWP7T port map(A1 => S2X_n_12, A2 => position(0), B1 => S2X_n_10, B2 => S2X_n_5, ZN => S2X_n_19);
  S2X_g2859 : OAI21D0BWP7T port map(A1 => position(0), A2 => S2X_n_5, B => S2X_n_14, ZN => S2X_n_18);
  S2X_g2860 : IOA21D1BWP7T port map(A1 => pixel_x(2), A2 => pixel_x(3), B => S2X_n_9, ZN => S2X_n_17);
  S2X_g2861 : AOI21D0BWP7T port map(A1 => S2X_n_5, A2 => position(1), B => S2X_n_7, ZN => S2X_n_16);
  S2X_g2862 : MAOI22D0BWP7T port map(A1 => pixel_x(2), A2 => pixel_x(0), B1 => pixel_x(2), B2 => pixel_x(0), ZN => S2X_n_15);
  S2X_g2863 : INVD1BWP7T port map(I => S2X_n_13, ZN => S2X_n_12);
  S2X_g2864 : ND2D0BWP7T port map(A1 => position(1), A2 => position(2), ZN => S2X_n_11);
  S2X_g2865 : ND2D0BWP7T port map(A1 => position(0), A2 => position(1), ZN => S2X_n_14);
  S2X_g2866 : NR2XD0BWP7T port map(A1 => position(1), A2 => position(2), ZN => S2X_n_13);
  S2X_g2867 : ND2D1BWP7T port map(A1 => S2X_n_2, A2 => position(1), ZN => S2X_n_10);
  S2X_g2868 : OR2D1BWP7T port map(A1 => pixel_x(2), A2 => pixel_x(3), Z => S2X_n_9);
  S2X_g2869 : INR2XD0BWP7T port map(A1 => pixel_x(0), B1 => pixel_x(2), ZN => S2X_n_8);
  S2X_g2870 : NR2XD0BWP7T port map(A1 => position(1), A2 => S2X_n_5, ZN => S2X_n_7);
  S2X_g2871 : INVD0BWP7T port map(I => pixel_x(8), ZN => S2X_n_6);
  S2X_g2872 : INVD1BWP7T port map(I => position(2), ZN => S2X_n_5);
  S2X_g2873 : INVD1BWP7T port map(I => zoom(2), ZN => S2X_n_4);
  S2X_g2874 : INVD1BWP7T port map(I => zoom(1), ZN => S2X_n_3);
  S2X_g2875 : INVD1BWP7T port map(I => position(0), ZN => S2X_n_2);
  S2X_g2876 : INVD1BWP7T port map(I => zoom(0), ZN => S2X_n_1);
  Ob_g412 : AO22D0BWP7T port map(A1 => b_int(9), A2 => Ob_n_25, B1 => Ob_int_a_out(9), B2 => Ob_n_24, Z => Ob_n_38);
  Ob_g413 : AO22D0BWP7T port map(A1 => b_int(1), A2 => Ob_n_25, B1 => Ob_int_a_out(1), B2 => Ob_n_24, Z => Ob_n_37);
  Ob_g414 : AO22D0BWP7T port map(A1 => b_int(8), A2 => Ob_n_25, B1 => Ob_int_a_out(8), B2 => Ob_n_24, Z => Ob_n_36);
  Ob_g415 : AO22D0BWP7T port map(A1 => b_int(10), A2 => Ob_n_25, B1 => Ob_int_a_out(10), B2 => Ob_n_24, Z => Ob_n_35);
  Ob_g416 : AO22D0BWP7T port map(A1 => b_int(11), A2 => Ob_n_25, B1 => Ob_int_a_out(11), B2 => Ob_n_24, Z => Ob_n_34);
  Ob_state_reg_0 : DFQD1BWP7T port map(CP => clk, D => Ob_n_26, Q => Ob_state(0));
  Ob_g418 : AO22D0BWP7T port map(A1 => b_int(7), A2 => Ob_n_25, B1 => Ob_int_a_out(7), B2 => Ob_n_24, Z => Ob_n_33);
  Ob_g419 : AO22D0BWP7T port map(A1 => b_int(0), A2 => Ob_n_25, B1 => Ob_int_a_out(0), B2 => Ob_n_24, Z => Ob_n_32);
  Ob_g420 : AO22D0BWP7T port map(A1 => b_int(3), A2 => Ob_n_25, B1 => Ob_int_a_out(3), B2 => Ob_n_24, Z => Ob_n_31);
  Ob_g421 : AO22D0BWP7T port map(A1 => b_int(4), A2 => Ob_n_25, B1 => Ob_int_a_out(4), B2 => Ob_n_24, Z => Ob_n_30);
  Ob_g422 : AO22D0BWP7T port map(A1 => b_int(5), A2 => Ob_n_25, B1 => Ob_int_a_out(5), B2 => Ob_n_24, Z => Ob_n_29);
  Ob_g423 : AO22D0BWP7T port map(A1 => b_int(6), A2 => Ob_n_25, B1 => Ob_int_a_out(6), B2 => Ob_n_24, Z => Ob_n_28);
  Ob_g424 : AO22D0BWP7T port map(A1 => b_int(2), A2 => Ob_n_25, B1 => Ob_int_a_out(2), B2 => Ob_n_24, Z => Ob_n_27);
  Ob_g425 : AOI31D0BWP7T port map(A1 => Ob_state(0), A2 => Ob_state(1), A3 => pixel_ready, B => reset, ZN => Ob_n_26);
  Ob_g426 : INR3D0BWP7T port map(A1 => Ob_state(1), B1 => reset, B2 => Ob_state(0), ZN => Ob_n_25);
  Ob_state_reg_1 : DFD1BWP7T port map(CP => clk, D => reset, Q => UNCONNECTED0, QN => Ob_state(1));
  Ob_g428 : INR2D1BWP7T port map(A1 => Ob_state(0), B1 => reset, ZN => Ob_n_24);
  Ob_drc_bufs429 : INVD4BWP7T port map(I => Ob_n_22, ZN => b(0));
  Ob_drc_bufs433 : INVD4BWP7T port map(I => Ob_n_20, ZN => b(11));
  Ob_drc_bufs437 : INVD4BWP7T port map(I => Ob_n_18, ZN => b(10));
  Ob_drc_bufs441 : INVD4BWP7T port map(I => Ob_n_16, ZN => b(9));
  Ob_drc_bufs445 : INVD4BWP7T port map(I => Ob_n_14, ZN => b(8));
  Ob_drc_bufs449 : INVD4BWP7T port map(I => Ob_n_12, ZN => b(7));
  Ob_drc_bufs453 : INVD4BWP7T port map(I => Ob_n_10, ZN => b(6));
  Ob_drc_bufs457 : INVD4BWP7T port map(I => Ob_n_8, ZN => b(5));
  Ob_drc_bufs461 : INVD4BWP7T port map(I => Ob_n_6, ZN => b(4));
  Ob_drc_bufs465 : INVD4BWP7T port map(I => Ob_n_4, ZN => b(3));
  Ob_drc_bufs469 : INVD4BWP7T port map(I => Ob_n_2, ZN => b(2));
  Ob_drc_bufs473 : INVD4BWP7T port map(I => Ob_n_0, ZN => b(1));
  Ob_int_a_out_reg_0 : DFD1BWP7T port map(CP => clk, D => Ob_n_32, Q => Ob_int_a_out(0), QN => Ob_n_22);
  Ob_int_a_out_reg_11 : DFD1BWP7T port map(CP => clk, D => Ob_n_34, Q => Ob_int_a_out(11), QN => Ob_n_20);
  Ob_int_a_out_reg_10 : DFD1BWP7T port map(CP => clk, D => Ob_n_35, Q => Ob_int_a_out(10), QN => Ob_n_18);
  Ob_int_a_out_reg_9 : DFD1BWP7T port map(CP => clk, D => Ob_n_38, Q => Ob_int_a_out(9), QN => Ob_n_16);
  Ob_int_a_out_reg_8 : DFD1BWP7T port map(CP => clk, D => Ob_n_36, Q => Ob_int_a_out(8), QN => Ob_n_14);
  Ob_int_a_out_reg_7 : DFD1BWP7T port map(CP => clk, D => Ob_n_33, Q => Ob_int_a_out(7), QN => Ob_n_12);
  Ob_int_a_out_reg_6 : DFD1BWP7T port map(CP => clk, D => Ob_n_28, Q => Ob_int_a_out(6), QN => Ob_n_10);
  Ob_int_a_out_reg_5 : DFD1BWP7T port map(CP => clk, D => Ob_n_29, Q => Ob_int_a_out(5), QN => Ob_n_8);
  Ob_int_a_out_reg_4 : DFD1BWP7T port map(CP => clk, D => Ob_n_30, Q => Ob_int_a_out(4), QN => Ob_n_6);
  Ob_int_a_out_reg_3 : DFD1BWP7T port map(CP => clk, D => Ob_n_31, Q => Ob_int_a_out(3), QN => Ob_n_4);
  Ob_int_a_out_reg_2 : DFD1BWP7T port map(CP => clk, D => Ob_n_27, Q => Ob_int_a_out(2), QN => Ob_n_2);
  Ob_int_a_out_reg_1 : DFD1BWP7T port map(CP => clk, D => Ob_n_37, Q => Ob_int_a_out(1), QN => Ob_n_0);
  S2Y_g2371 : MOAI22D0BWP7T port map(A1 => S2Y_n_105, A2 => S2Y_n_64, B1 => S2Y_n_105, B2 => S2Y_n_64, ZN => b_int(11));
  S2Y_g2372 : AOI22D0BWP7T port map(A1 => S2Y_n_103, A2 => S2Y_n_85, B1 => S2Y_n_77, B2 => S2Y_n_12, ZN => S2Y_n_105);
  S2Y_g2373 : CKXOR2D1BWP7T port map(A1 => S2Y_n_103, A2 => S2Y_n_85, Z => b_int(10));
  S2Y_g2374 : MOAI22D0BWP7T port map(A1 => S2Y_n_101, A2 => S2Y_n_90, B1 => S2Y_n_78, B2 => S2Y_n_5, ZN => S2Y_n_103);
  S2Y_g2375 : CKXOR2D1BWP7T port map(A1 => S2Y_n_101, A2 => S2Y_n_90, Z => b_int(9));
  S2Y_g2376 : AOI22D0BWP7T port map(A1 => S2Y_n_99, A2 => S2Y_n_84, B1 => S2Y_n_80, B2 => S2Y_n_13, ZN => S2Y_n_101);
  S2Y_g2377 : CKXOR2D1BWP7T port map(A1 => S2Y_n_99, A2 => S2Y_n_84, Z => b_int(8));
  S2Y_g2378 : MOAI22D0BWP7T port map(A1 => S2Y_n_97, A2 => S2Y_n_86, B1 => S2Y_n_83, B2 => S2Y_n_12, ZN => S2Y_n_99);
  S2Y_g2379 : CKXOR2D1BWP7T port map(A1 => S2Y_n_97, A2 => S2Y_n_86, Z => b_int(7));
  S2Y_g2380 : AOI22D0BWP7T port map(A1 => S2Y_n_95, A2 => S2Y_n_89, B1 => S2Y_n_82, B2 => S2Y_n_5, ZN => S2Y_n_97);
  S2Y_g2381 : CKXOR2D1BWP7T port map(A1 => S2Y_n_95, A2 => S2Y_n_89, Z => b_int(6));
  S2Y_g2382 : HA1D0BWP7T port map(A => S2Y_n_81, B => S2Y_n_92, CO => S2Y_n_95, S => b_int(5));
  S2Y_g2383 : MOAI22D0BWP7T port map(A1 => S2Y_n_87, A2 => S2Y_n_91, B1 => S2Y_n_87, B2 => S2Y_n_91, ZN => b_int(4));
  S2Y_g2384 : AO21D0BWP7T port map(A1 => S2Y_n_79, A2 => S2Y_n_15, B => S2Y_n_91, Z => S2Y_n_92);
  S2Y_g2385 : OAI22D0BWP7T port map(A1 => S2Y_n_76, A2 => S2Y_n_60, B1 => S2Y_n_69, B2 => S2Y_n_14, ZN => S2Y_n_91);
  S2Y_g2386 : CKXOR2D1BWP7T port map(A1 => S2Y_n_76, A2 => S2Y_n_60, Z => b_int(3));
  S2Y_g2387 : MAOI22D0BWP7T port map(A1 => S2Y_n_78, A2 => S2Y_n_6, B1 => S2Y_n_78, B2 => S2Y_n_6, ZN => S2Y_n_90);
  S2Y_g2388 : MOAI22D0BWP7T port map(A1 => S2Y_n_82, A2 => S2Y_n_6, B1 => S2Y_n_82, B2 => S2Y_n_6, ZN => S2Y_n_89);
  S2Y_g2389 : XNR2D1BWP7T port map(A1 => S2Y_n_79, A2 => S2Y_n_15, ZN => S2Y_n_87);
  S2Y_g2390 : MAOI22D0BWP7T port map(A1 => S2Y_n_83, A2 => S2Y_n_11, B1 => S2Y_n_83, B2 => S2Y_n_11, ZN => S2Y_n_86);
  S2Y_g2391 : MOAI22D0BWP7T port map(A1 => S2Y_n_77, A2 => S2Y_n_11, B1 => S2Y_n_77, B2 => S2Y_n_11, ZN => S2Y_n_85);
  S2Y_g2392 : CKXOR2D1BWP7T port map(A1 => S2Y_n_80, A2 => S2Y_n_13, Z => S2Y_n_84);
  S2Y_g2393 : OAI22D0BWP7T port map(A1 => S2Y_n_73, A2 => S2Y_n_3, B1 => S2Y_n_75, B2 => zoom(0), ZN => S2Y_n_83);
  S2Y_g2394 : OAI22D0BWP7T port map(A1 => S2Y_n_75, A2 => S2Y_n_3, B1 => S2Y_n_74, B2 => zoom(0), ZN => S2Y_n_82);
  S2Y_g2395 : OAI22D0BWP7T port map(A1 => S2Y_n_74, A2 => S2Y_n_3, B1 => S2Y_n_70, B2 => zoom(0), ZN => S2Y_n_81);
  S2Y_g2396 : OAI22D0BWP7T port map(A1 => S2Y_n_73, A2 => zoom(0), B1 => S2Y_n_71, B2 => S2Y_n_3, ZN => S2Y_n_80);
  S2Y_g2397 : OAI22D0BWP7T port map(A1 => S2Y_n_70, A2 => S2Y_n_3, B1 => S2Y_n_61, B2 => zoom(0), ZN => S2Y_n_79);
  S2Y_g2398 : OAI22D0BWP7T port map(A1 => S2Y_n_71, A2 => zoom(0), B1 => S2Y_n_72, B2 => S2Y_n_3, ZN => S2Y_n_78);
  S2Y_g2399 : OAI22D0BWP7T port map(A1 => S2Y_n_72, A2 => zoom(0), B1 => S2Y_n_59, B2 => S2Y_n_3, ZN => S2Y_n_77);
  S2Y_g2400 : XNR2D1BWP7T port map(A1 => S2Y_n_69, A2 => S2Y_n_14, ZN => S2Y_n_76);
  S2Y_g2401 : OAI22D0BWP7T port map(A1 => S2Y_n_65, A2 => S2Y_n_4, B1 => S2Y_n_67, B2 => zoom(1), ZN => S2Y_n_75);
  S2Y_g2402 : OAI22D0BWP7T port map(A1 => S2Y_n_68, A2 => S2Y_n_4, B1 => S2Y_n_57, B2 => zoom(1), ZN => S2Y_n_74);
  S2Y_g2403 : OAI22D0BWP7T port map(A1 => S2Y_n_66, A2 => S2Y_n_4, B1 => S2Y_n_68, B2 => zoom(1), ZN => S2Y_n_73);
  S2Y_g2404 : MAOI22D0BWP7T port map(A1 => S2Y_n_66, A2 => S2Y_n_4, B1 => S2Y_n_59, B2 => S2Y_n_4, ZN => S2Y_n_72);
  S2Y_g2405 : MOAI22D0BWP7T port map(A1 => S2Y_n_65, A2 => zoom(1), B1 => S2Y_n_59, B2 => zoom(1), ZN => S2Y_n_71);
  S2Y_g2406 : OAI22D0BWP7T port map(A1 => S2Y_n_67, A2 => S2Y_n_4, B1 => S2Y_n_50, B2 => zoom(1), ZN => S2Y_n_70);
  S2Y_g2407 : MAOI22D0BWP7T port map(A1 => S2Y_n_53, A2 => S2Y_n_3, B1 => S2Y_n_61, B2 => S2Y_n_3, ZN => S2Y_n_69);
  S2Y_g2408 : OAI21D0BWP7T port map(A1 => S2Y_n_43, A2 => zoom(2), B => S2Y_n_62, ZN => S2Y_n_68);
  S2Y_g2409 : OAI21D0BWP7T port map(A1 => S2Y_n_38, A2 => zoom(2), B => S2Y_n_62, ZN => S2Y_n_67);
  S2Y_g2410 : OAI21D0BWP7T port map(A1 => S2Y_n_51, A2 => zoom(2), B => S2Y_n_62, ZN => S2Y_n_66);
  S2Y_g2411 : MOAI22D0BWP7T port map(A1 => S2Y_n_58, A2 => S2Y_n_56, B1 => S2Y_n_58, B2 => S2Y_n_56, ZN => b_int(2));
  S2Y_g2412 : OAI21D0BWP7T port map(A1 => S2Y_n_48, A2 => zoom(2), B => S2Y_n_62, ZN => S2Y_n_65);
  S2Y_g2413 : MAOI22D0BWP7T port map(A1 => S2Y_n_59, A2 => S2Y_n_11, B1 => S2Y_n_59, B2 => S2Y_n_11, ZN => S2Y_n_64);
  S2Y_g2414 : IND2D1BWP7T port map(A1 => S2Y_n_59, B1 => zoom(2), ZN => S2Y_n_62);
  S2Y_g2415 : AOI22D0BWP7T port map(A1 => S2Y_n_57, A2 => zoom(1), B1 => S2Y_n_45, B2 => S2Y_n_4, ZN => S2Y_n_61);
  S2Y_g2416 : IND2D1BWP7T port map(A1 => S2Y_n_58, B1 => S2Y_n_56, ZN => S2Y_n_60);
  S2Y_g2417 : MAOI22D0BWP7T port map(A1 => S2Y_n_55, A2 => S2Y_n_34, B1 => S2Y_n_55, B2 => S2Y_n_34, ZN => S2Y_n_59);
  S2Y_g2418 : AOI22D0BWP7T port map(A1 => S2Y_n_53, A2 => zoom(0), B1 => S2Y_n_46, B2 => S2Y_n_3, ZN => S2Y_n_58);
  S2Y_g2419 : AOI22D0BWP7T port map(A1 => S2Y_n_51, A2 => zoom(2), B1 => S2Y_n_32, B2 => S2Y_n_1, ZN => S2Y_n_57);
  S2Y_g2420 : HA1D0BWP7T port map(A => S2Y_n_13, B => S2Y_n_49, CO => S2Y_n_56, S => b_int(1));
  S2Y_g2421 : AOI21D0BWP7T port map(A1 => S2Y_n_29, A2 => pixel_y(8), B => S2Y_n_52, ZN => S2Y_n_55);
  S2Y_g2422 : MOAI22D0BWP7T port map(A1 => S2Y_n_40, A2 => zoom(1), B1 => S2Y_n_50, B2 => zoom(1), ZN => S2Y_n_53);
  S2Y_g2423 : MAOI222D1BWP7T port map(A => S2Y_n_47, B => S2Y_n_35, C => S2Y_n_27, ZN => S2Y_n_52);
  S2Y_g2424 : MAOI22D0BWP7T port map(A1 => S2Y_n_123, A2 => S2Y_n_47, B1 => S2Y_n_123, B2 => S2Y_n_47, ZN => S2Y_n_51);
  S2Y_g2425 : MAOI22D0BWP7T port map(A1 => S2Y_n_48, A2 => zoom(2), B1 => S2Y_n_23, B2 => zoom(2), ZN => S2Y_n_50);
  S2Y_g2426 : AO22D0BWP7T port map(A1 => S2Y_n_46, A2 => zoom(0), B1 => S2Y_n_3, B2 => S2Y_n_41, Z => S2Y_n_49);
  S2Y_g2427 : FA1D0BWP7T port map(A => S2Y_n_30, B => S2Y_n_24, CI => S2Y_n_42, CO => S2Y_n_47, S => S2Y_n_48);
  S2Y_g2428 : MOAI22D0BWP7T port map(A1 => S2Y_n_33, A2 => zoom(1), B1 => S2Y_n_45, B2 => zoom(1), ZN => S2Y_n_46);
  S2Y_g2429 : AOI22D0BWP7T port map(A1 => S2Y_n_43, A2 => zoom(2), B1 => S2Y_n_10, B2 => S2Y_n_1, ZN => S2Y_n_45);
  S2Y_g2430 : MOAI22D0BWP7T port map(A1 => S2Y_n_36, A2 => zoom(0), B1 => S2Y_n_41, B2 => zoom(0), ZN => b_int(0));
  S2Y_g2431 : FA1D0BWP7T port map(A => S2Y_n_27, B => S2Y_n_18, CI => S2Y_n_37, CO => S2Y_n_42, S => S2Y_n_43);
  S2Y_g2432 : AOI22D0BWP7T port map(A1 => S2Y_n_40, A2 => zoom(1), B1 => S2Y_n_25, B2 => S2Y_n_4, ZN => S2Y_n_41);
  S2Y_g2433 : MAOI22D0BWP7T port map(A1 => pixel_y(1), A2 => S2Y_n_1, B1 => S2Y_n_38, B2 => S2Y_n_1, ZN => S2Y_n_40);
  S2Y_g2435 : FA1D0BWP7T port map(A => S2Y_n_24, B => S2Y_n_16, CI => S2Y_n_31, CO => S2Y_n_37, S => S2Y_n_38);
  S2Y_g2436 : OA32D1BWP7T port map(A1 => S2Y_n_1, A2 => zoom(1), A3 => S2Y_n_10, B1 => S2Y_n_4, B2 => S2Y_n_33, Z => S2Y_n_36);
  S2Y_g2437 : XNR2D1BWP7T port map(A1 => S2Y_n_29, A2 => pixel_y(8), ZN => S2Y_n_35);
  S2Y_g2438 : MOAI22D0BWP7T port map(A1 => S2Y_n_30, A2 => pixel_y(9), B1 => S2Y_n_30, B2 => pixel_y(9), ZN => S2Y_n_34);
  S2Y_g2439 : MAOI22D0BWP7T port map(A1 => pixel_y(0), A2 => S2Y_n_1, B1 => S2Y_n_32, B2 => S2Y_n_1, ZN => S2Y_n_33);
  S2Y_g2440 : FA1D0BWP7T port map(A => S2Y_n_18, B => pixel_y(2), CI => S2Y_n_22, CO => S2Y_n_31, S => S2Y_n_32);
  S2Y_g2441 : MAOI22D0BWP7T port map(A1 => pixel_y(7), A2 => S2Y_n_26, B1 => pixel_y(7), B2 => S2Y_n_26, ZN => S2Y_n_30);
  S2Y_g2442 : INR2XD0BWP7T port map(A1 => pixel_y(7), B1 => S2Y_n_26, ZN => S2Y_n_29);
  S2Y_g2444 : AOI21D0BWP7T port map(A1 => pixel_y(6), A2 => S2Y_n_21, B => S2Y_n_26, ZN => S2Y_n_27);
  S2Y_g2445 : NR2D1BWP7T port map(A1 => pixel_y(6), A2 => S2Y_n_21, ZN => S2Y_n_26);
  S2Y_g2446 : ND2D1BWP7T port map(A1 => S2Y_n_23, A2 => zoom(2), ZN => S2Y_n_25);
  S2Y_g2447 : AOI21D0BWP7T port map(A1 => S2Y_n_17, A2 => pixel_y(5), B => S2Y_n_20, ZN => S2Y_n_24);
  S2Y_g2448 : MOAI22D0BWP7T port map(A1 => S2Y_n_16, A2 => S2Y_n_19, B1 => S2Y_n_16, B2 => S2Y_n_19, ZN => S2Y_n_23);
  S2Y_g2449 : MAOI222D1BWP7T port map(A => S2Y_n_124, B => S2Y_n_7, C => pixel_y(1), ZN => S2Y_n_22);
  S2Y_g2450 : INVD0BWP7T port map(I => S2Y_n_20, ZN => S2Y_n_21);
  S2Y_g2451 : NR2D1BWP7T port map(A1 => S2Y_n_17, A2 => pixel_y(5), ZN => S2Y_n_20);
  S2Y_g2452 : CKXOR2D1BWP7T port map(A1 => S2Y_n_7, A2 => pixel_y(1), Z => S2Y_n_19);
  S2Y_g2453 : MAOI22D0BWP7T port map(A1 => pixel_y(4), A2 => S2Y_n_8, B1 => pixel_y(4), B2 => S2Y_n_8, ZN => S2Y_n_18);
  S2Y_g2454 : INR2XD0BWP7T port map(A1 => pixel_y(4), B1 => S2Y_n_8, ZN => S2Y_n_17);
  S2Y_g2455 : INVD0BWP7T port map(I => S2Y_n_124, ZN => S2Y_n_16);
  S2Y_g2456 : ND2D1BWP7T port map(A1 => S2Y_n_11, A2 => S2Y_n_6, ZN => S2Y_n_15);
  S2Y_g2457 : AOI21D0BWP7T port map(A1 => S2Y_n_5, A2 => position(2), B => S2Y_n_12, ZN => S2Y_n_14);
  S2Y_g2458 : OAI21D0BWP7T port map(A1 => S2Y_n_6, A2 => position(2), B => S2Y_n_11, ZN => S2Y_n_13);
  S2Y_g2459 : INVD1BWP7T port map(I => S2Y_n_12, ZN => S2Y_n_11);
  S2Y_g2460 : INR3D0BWP7T port map(A1 => position(2), B1 => position(0), B2 => position(1), ZN => S2Y_n_12);
  S2Y_g2461 : MAOI22D0BWP7T port map(A1 => pixel_y(2), A2 => pixel_y(0), B1 => pixel_y(2), B2 => pixel_y(0), ZN => S2Y_n_10);
  S2Y_g2463 : ND2D1BWP7T port map(A1 => pixel_y(3), A2 => pixel_y(2), ZN => S2Y_n_8);
  S2Y_g2464 : INVD1BWP7T port map(I => S2Y_n_6, ZN => S2Y_n_5);
  S2Y_g2465 : INR2XD0BWP7T port map(A1 => pixel_y(0), B1 => pixel_y(2), ZN => S2Y_n_7);
  S2Y_g2466 : ND2D1BWP7T port map(A1 => position(1), A2 => position(0), ZN => S2Y_n_6);
  S2Y_g2467 : INVD1BWP7T port map(I => zoom(1), ZN => S2Y_n_4);
  S2Y_g2468 : INVD1BWP7T port map(I => zoom(0), ZN => S2Y_n_3);
  S2Y_g2470 : INVD1BWP7T port map(I => zoom(2), ZN => S2Y_n_1);
  S2Y_g2 : CKXOR2D1BWP7T port map(A1 => S2Y_n_35, A2 => S2Y_n_27, Z => S2Y_n_123);
  S2Y_g2471 : CKXOR2D1BWP7T port map(A1 => pixel_y(3), A2 => pixel_y(2), Z => S2Y_n_124);
  I2S_g1262 : MOAI22D0BWP7T port map(A1 => I2S_n_143, A2 => I2S_count_y(9), B1 => I2S_n_143, B2 => I2S_count_y(9), ZN => pixel_y(9));
  I2S_g1263 : MOAI22D0BWP7T port map(A1 => I2S_n_142, A2 => I2S_count_y(8), B1 => I2S_n_142, B2 => I2S_count_y(8), ZN => pixel_y(8));
  I2S_g1264 : INR2XD0BWP7T port map(A1 => I2S_n_142, B1 => I2S_count_y(8), ZN => I2S_n_143);
  I2S_g1265 : MOAI22D0BWP7T port map(A1 => I2S_n_141, A2 => I2S_count_y(7), B1 => I2S_n_141, B2 => I2S_count_y(7), ZN => pixel_y(7));
  I2S_g1266 : INR2XD0BWP7T port map(A1 => I2S_n_141, B1 => I2S_count_y(7), ZN => I2S_n_142);
  I2S_g1267 : MOAI22D0BWP7T port map(A1 => I2S_n_140, A2 => I2S_count_y(6), B1 => I2S_n_140, B2 => I2S_count_y(6), ZN => pixel_y(6));
  I2S_g1268 : INR2XD0BWP7T port map(A1 => I2S_n_140, B1 => I2S_count_y(6), ZN => I2S_n_141);
  I2S_g1269 : MOAI22D0BWP7T port map(A1 => I2S_n_139, A2 => I2S_count_y(5), B1 => I2S_n_139, B2 => I2S_count_y(5), ZN => pixel_y(5));
  I2S_g1270 : INR2XD0BWP7T port map(A1 => I2S_n_139, B1 => I2S_count_y(5), ZN => I2S_n_140);
  I2S_g1271 : MOAI22D0BWP7T port map(A1 => I2S_n_138, A2 => I2S_count_y(4), B1 => I2S_n_138, B2 => I2S_count_y(4), ZN => pixel_y(4));
  I2S_g1272 : INR2XD0BWP7T port map(A1 => I2S_n_138, B1 => I2S_count_y(4), ZN => I2S_n_139);
  I2S_g1273 : MOAI22D0BWP7T port map(A1 => I2S_n_137, A2 => I2S_count_y(3), B1 => I2S_n_137, B2 => I2S_count_y(3), ZN => pixel_y(3));
  I2S_g1274 : INR2XD0BWP7T port map(A1 => I2S_n_137, B1 => I2S_count_y(3), ZN => I2S_n_138);
  I2S_g1275 : MOAI22D0BWP7T port map(A1 => I2S_n_136, A2 => I2S_count_y(2), B1 => I2S_n_136, B2 => I2S_count_y(2), ZN => pixel_y(2));
  I2S_g1276 : INR2XD0BWP7T port map(A1 => I2S_n_136, B1 => I2S_count_y(2), ZN => I2S_n_137);
  I2S_g1277 : CKAN2D4BWP7T port map(A1 => I2S_CONTROL_n_44, A2 => I2S_CONTROL_n_37, Z => frame_ready);
  I2S_g1278 : CKXOR2D1BWP7T port map(A1 => pixel_y(0), A2 => I2S_count_y(1), Z => pixel_y(1));
  I2S_g1279 : AN2D4BWP7T port map(A1 => I2S_CONTROL_state(1), A2 => I2S_CONTROL_state(2), Z => new_coordinate);
  I2S_g1280 : NR2D1BWP7T port map(A1 => I2S_CONTROL_state(2), A2 => I2S_CONTROL_state(3), ZN => I2S_CONTROL_n_37);
  I2S_g1281 : NR2D1BWP7T port map(A1 => I2S_CONTROL_state(1), A2 => I2S_CONTROL_state(0), ZN => I2S_CONTROL_n_44);
  I2S_g1282 : NR2XD0BWP7T port map(A1 => pixel_y(0), A2 => I2S_count_y(1), ZN => I2S_n_136);
  I2S_CONTROL_state_reg_2 : DFQD1BWP7T port map(CP => clk, D => I2S_n_134, Q => I2S_CONTROL_state(2));
  I2S_CONTROL_state_reg_3 : DFKCNQD1BWP7T port map(CP => clk, CN => I2S_n_21, D => I2S_n_56, Q => I2S_CONTROL_state(3));
  I2S_K1_count_reg_1 : DFQD1BWP7T port map(CP => clk, D => I2S_n_62, Q => pixel_x(1));
  I2S_K1_count_reg_2 : DFQD1BWP7T port map(CP => clk, D => I2S_n_59, Q => pixel_x(2));
  I2S_K1_count_reg_4 : DFQD1BWP7T port map(CP => clk, D => I2S_n_72, Q => pixel_x(4));
  I2S_K1_count_reg_5 : DFQD1BWP7T port map(CP => clk, D => I2S_n_80, Q => pixel_x(5));
  I2S_K1_count_reg_6 : DFQD1BWP7T port map(CP => clk, D => I2S_n_89, Q => pixel_x(6));
  I2S_K1_count_reg_7 : DFQD1BWP7T port map(CP => clk, D => I2S_n_97, Q => pixel_x(7));
  I2S_K1_count_reg_8 : DFQD1BWP7T port map(CP => clk, D => I2S_n_107, Q => pixel_x(8));
  I2S_K1_count_reg_9 : DFQD0BWP7T port map(CP => clk, D => I2S_n_112, Q => pixel_x(9));
  I2S_K1_count_reg_11 : DFQD1BWP7T port map(CP => clk, D => I2S_n_126, Q => I2S_count_x2(11));
  I2S_K2_count_reg_1 : DFQD1BWP7T port map(CP => clk, D => I2S_n_40, Q => I2S_count_y(1));
  I2S_K2_count_reg_2 : DFQD1BWP7T port map(CP => clk, D => I2S_n_49, Q => I2S_count_y(2));
  I2S_K2_count_reg_3 : DFQD1BWP7T port map(CP => clk, D => I2S_n_60, Q => I2S_count_y(3));
  I2S_K2_count_reg_4 : DFQD1BWP7T port map(CP => clk, D => I2S_n_75, Q => I2S_count_y(4));
  I2S_K2_count_reg_5 : DFQD1BWP7T port map(CP => clk, D => I2S_n_79, Q => I2S_count_y(5));
  I2S_K2_count_reg_6 : DFQD1BWP7T port map(CP => clk, D => I2S_n_90, Q => I2S_count_y(6));
  I2S_K2_count_reg_7 : DFQD1BWP7T port map(CP => clk, D => I2S_n_98, Q => I2S_count_y(7));
  I2S_K2_count_reg_8 : DFQD1BWP7T port map(CP => clk, D => I2S_n_108, Q => I2S_count_y(8));
  I2S_K2_count_reg_9 : DFQD1BWP7T port map(CP => clk, D => I2S_n_113, Q => I2S_count_y(9));
  I2S_K2_count_reg_11 : DFQD1BWP7T port map(CP => clk, D => I2S_n_127, Q => I2S_count_y(11));
  I2S_g2813 : AO211D0BWP7T port map(A1 => I2S_n_26, A2 => I2S_n_11, B => I2S_n_132, C => I2S_n_32, Z => I2S_n_135);
  I2S_g2814 : OAI211D1BWP7T port map(A1 => I2S_n_6, A2 => I2S_n_55, B => I2S_n_131, C => I2S_n_77, ZN => I2S_n_134);
  I2S_g2815 : OAI31D0BWP7T port map(A1 => I2S_n_12, A2 => I2S_n_56, A3 => I2S_n_129, B => I2S_n_77, ZN => I2S_n_133);
  I2S_g2816 : OAI22D0BWP7T port map(A1 => I2S_n_130, A2 => reset, B1 => I2S_n_55, B2 => I2S_n_9, ZN => I2S_n_132);
  I2S_g2817 : AO211D0BWP7T port map(A1 => I2S_n_128, A2 => I2S_n_41, B => I2S_n_56, C => I2S_n_32, Z => I2S_n_131);
  I2S_g2820 : AOI21D0BWP7T port map(A1 => I2S_n_125, A2 => pixel_ready, B => I2S_n_121, ZN => I2S_n_130);
  I2S_g2821 : AOI32D1BWP7T port map(A1 => I2S_n_120, A2 => I2S_n_8, A3 => pixel_ready, B1 => I2S_n_24, B2 => I2S_n_11, ZN => I2S_n_129);
  I2S_g2824 : IND2D1BWP7T port map(A1 => I2S_n_26, B1 => I2S_n_124, ZN => I2S_n_128);
  I2S_g2825 : AO21D0BWP7T port map(A1 => I2S_n_117, A2 => I2S_count_y(11), B => I2S_n_114, Z => I2S_n_127);
  I2S_g2826 : AO21D0BWP7T port map(A1 => I2S_n_116, A2 => I2S_count_x2(11), B => I2S_n_115, Z => I2S_n_126);
  I2S_g2827 : OAI21D0BWP7T port map(A1 => I2S_n_109, A2 => I2S_n_13, B => I2S_n_24, ZN => I2S_n_125);
  I2S_g2830 : OAI21D0BWP7T port map(A1 => I2S_n_109, A2 => reset, B => I2S_n_10, ZN => I2S_n_124);
  I2S_g2831 : OAI31D0BWP7T port map(A1 => I2S_count_y(10), A2 => I2S_n_23, A3 => I2S_n_96, B => I2S_n_159, ZN => I2S_n_123);
  I2S_g2832 : OAI31D0BWP7T port map(A1 => I2S_count_x2(10), A2 => I2S_n_44, A3 => I2S_n_93, B => I2S_n_160, ZN => I2S_n_122);
  I2S_g2833 : INVD1BWP7T port map(I => I2S_n_120, ZN => I2S_n_121);
  I2S_g2836 : OAI31D0BWP7T port map(A1 => pixel_x(0), A2 => pixel_x(2), A3 => I2S_n_91, B => I2S_n_26, ZN => I2S_n_120);
  I2S_g2839 : OAI211D1BWP7T port map(A1 => I2S_count_y(10), A2 => frame_ready, B => I2S_n_101, C => I2S_n_15, ZN => I2S_n_117);
  I2S_g2840 : OAI211D1BWP7T port map(A1 => I2S_count_x2(10), A2 => I2S_n_16, B => I2S_n_104, C => I2S_n_31, ZN => I2S_n_116);
  I2S_g2841 : NR4D0BWP7T port map(A1 => I2S_n_93, A2 => I2S_n_44, A3 => I2S_n_4, A4 => I2S_count_x2(11), ZN => I2S_n_115);
  I2S_g2842 : NR4D0BWP7T port map(A1 => I2S_n_96, A2 => I2S_n_23, A3 => I2S_n_5, A4 => I2S_count_y(11), ZN => I2S_n_114);
  I2S_g2843 : OAI31D0BWP7T port map(A1 => I2S_count_y(9), A2 => I2S_n_23, A3 => I2S_n_87, B => I2S_n_111, ZN => I2S_n_113);
  I2S_g2844 : OAI31D0BWP7T port map(A1 => pixel_x(9), A2 => I2S_n_44, A3 => I2S_n_88, B => I2S_n_110, ZN => I2S_n_112);
  I2S_g2845 : ND2D1BWP7T port map(A1 => I2S_n_99, A2 => I2S_count_y(9), ZN => I2S_n_111);
  I2S_g2846 : ND2D1BWP7T port map(A1 => I2S_n_100, A2 => pixel_x(9), ZN => I2S_n_110);
  I2S_g2849 : OAI31D0BWP7T port map(A1 => I2S_count_y(8), A2 => I2S_n_23, A3 => I2S_n_78, B => I2S_n_103, ZN => I2S_n_108);
  I2S_g2850 : OAI31D0BWP7T port map(A1 => pixel_x(8), A2 => I2S_n_44, A3 => I2S_n_76, B => I2S_n_102, ZN => I2S_n_107);
  I2S_g2851 : NR4D0BWP7T port map(A1 => I2S_n_83, A2 => pixel_y(0), A3 => I2S_count_y(10), A4 => I2S_count_y(9), ZN => I2S_n_109);
  I2S_g2854 : ND2D1BWP7T port map(A1 => I2S_n_92, A2 => I2S_count_y(8), ZN => I2S_n_103);
  I2S_g2855 : ND2D1BWP7T port map(A1 => I2S_n_93, A2 => I2S_n_17, ZN => I2S_n_104);
  I2S_g2856 : IOA21D1BWP7T port map(A1 => I2S_n_86, A2 => I2S_n_31, B => pixel_x(8), ZN => I2S_n_102);
  I2S_g2859 : IOA21D1BWP7T port map(A1 => I2S_n_88, A2 => I2S_n_17, B => I2S_n_31, ZN => I2S_n_100);
  I2S_g2860 : IOA21D1BWP7T port map(A1 => I2S_n_87, A2 => I2S_n_7, B => I2S_n_15, ZN => I2S_n_99);
  I2S_g2861 : ND2D1BWP7T port map(A1 => I2S_n_96, A2 => I2S_n_7, ZN => I2S_n_101);
  I2S_g2862 : OAI31D0BWP7T port map(A1 => I2S_count_y(7), A2 => I2S_n_23, A3 => I2S_n_69, B => I2S_n_95, ZN => I2S_n_98);
  I2S_g2863 : OAI31D0BWP7T port map(A1 => pixel_x(7), A2 => I2S_n_44, A3 => I2S_n_70, B => I2S_n_94, ZN => I2S_n_97);
  I2S_g2864 : ND2D1BWP7T port map(A1 => I2S_n_82, A2 => I2S_count_y(7), ZN => I2S_n_95);
  I2S_g2865 : ND2D1BWP7T port map(A1 => I2S_n_81, A2 => pixel_x(7), ZN => I2S_n_94);
  I2S_g2866 : IND2D1BWP7T port map(A1 => I2S_n_87, B1 => I2S_count_y(9), ZN => I2S_n_96);
  I2S_g2869 : IOA21D1BWP7T port map(A1 => I2S_n_78, A2 => I2S_n_7, B => I2S_n_15, ZN => I2S_n_92);
  I2S_g2870 : OR4D1BWP7T port map(A1 => pixel_x(1), A2 => I2S_count_x2(10), A3 => pixel_x(9), A4 => I2S_n_68, Z => I2S_n_91);
  I2S_g2871 : OAI31D0BWP7T port map(A1 => I2S_count_y(6), A2 => I2S_n_52, A3 => I2S_n_23, B => I2S_n_84, ZN => I2S_n_90);
  I2S_g2872 : OAI31D0BWP7T port map(A1 => pixel_x(6), A2 => I2S_n_57, A3 => I2S_n_44, B => I2S_n_85, ZN => I2S_n_89);
  I2S_g2873 : IND2D1BWP7T port map(A1 => I2S_n_88, B1 => pixel_x(9), ZN => I2S_n_93);
  I2S_g2874 : ND2D1BWP7T port map(A1 => I2S_n_76, A2 => I2S_n_17, ZN => I2S_n_86);
  I2S_g2875 : IOA21D1BWP7T port map(A1 => I2S_n_66, A2 => I2S_n_31, B => pixel_x(6), ZN => I2S_n_85);
  I2S_g2876 : IND2D1BWP7T port map(A1 => I2S_n_76, B1 => pixel_x(8), ZN => I2S_n_88);
  I2S_g2877 : IND2D1BWP7T port map(A1 => I2S_n_78, B1 => I2S_count_y(8), ZN => I2S_n_87);
  I2S_g2880 : ND2D1BWP7T port map(A1 => I2S_n_71, A2 => I2S_count_y(6), ZN => I2S_n_84);
  I2S_g2881 : IND4D0BWP7T port map(A1 => I2S_count_y(8), B1 => I2S_count_y(6), B2 => I2S_count_y(7), B3 => I2S_n_48, ZN => I2S_n_83);
  I2S_g2882 : IOA21D1BWP7T port map(A1 => I2S_n_69, A2 => I2S_n_7, B => I2S_n_15, ZN => I2S_n_82);
  I2S_g2883 : IOA21D1BWP7T port map(A1 => I2S_n_70, A2 => I2S_n_17, B => I2S_n_31, ZN => I2S_n_81);
  I2S_g2884 : OAI31D0BWP7T port map(A1 => pixel_x(5), A2 => I2S_n_46, A3 => I2S_n_44, B => I2S_n_74, ZN => I2S_n_80);
  I2S_g2885 : OAI31D0BWP7T port map(A1 => I2S_count_y(5), A2 => I2S_n_45, A3 => I2S_n_23, B => I2S_n_73, ZN => I2S_n_79);
  I2S_g2886 : IND2D1BWP7T port map(A1 => I2S_n_69, B1 => I2S_count_y(7), ZN => I2S_n_78);
  I2S_g2893 : OAI31D0BWP7T port map(A1 => I2S_count_y(4), A2 => I2S_n_34, A3 => I2S_n_23, B => I2S_n_67, ZN => I2S_n_75);
  I2S_g2894 : ND2D1BWP7T port map(A1 => I2S_n_63, A2 => pixel_x(5), ZN => I2S_n_74);
  I2S_g2895 : ND2D1BWP7T port map(A1 => I2S_n_58, A2 => I2S_count_y(5), ZN => I2S_n_73);
  I2S_g2896 : OAI31D0BWP7T port map(A1 => pixel_x(4), A2 => I2S_n_35, A3 => I2S_n_44, B => I2S_n_65, ZN => I2S_n_72);
  I2S_g2897 : IOA21D1BWP7T port map(A1 => I2S_n_52, A2 => I2S_n_7, B => I2S_n_15, ZN => I2S_n_71);
  I2S_g2898 : ND3D0BWP7T port map(A1 => I2S_n_56, A2 => I2S_CONTROL_state(3), A3 => I2S_CONTROL_state(0), ZN => I2S_n_77);
  I2S_g2899 : IND2D1BWP7T port map(A1 => I2S_n_70, B1 => pixel_x(7), ZN => I2S_n_76);
  I2S_g2900 : IND4D0BWP7T port map(A1 => pixel_x(8), B1 => pixel_x(6), B2 => pixel_x(7), B3 => I2S_n_30, ZN => I2S_n_68);
  I2S_g2901 : ND2D1BWP7T port map(A1 => I2S_n_47, A2 => I2S_count_y(4), ZN => I2S_n_67);
  I2S_g2902 : ND2D1BWP7T port map(A1 => I2S_n_57, A2 => I2S_n_17, ZN => I2S_n_66);
  I2S_g2903 : IOA21D1BWP7T port map(A1 => I2S_n_43, A2 => I2S_n_31, B => pixel_x(4), ZN => I2S_n_65);
  I2S_g2904 : IND2D1BWP7T port map(A1 => I2S_n_57, B1 => pixel_x(6), ZN => I2S_n_70);
  I2S_g2905 : IND2D1BWP7T port map(A1 => I2S_n_52, B1 => I2S_count_y(6), ZN => I2S_n_69);
  I2S_g2907 : OAI22D0BWP7T port map(A1 => I2S_n_44, A2 => pixel_x(0), B1 => I2S_n_31, B2 => I2S_n_3, ZN => I2S_n_64);
  I2S_g2908 : IOA21D0BWP7T port map(A1 => I2S_n_17, A2 => I2S_n_46, B => I2S_n_31, ZN => I2S_n_63);
  I2S_g2909 : OAI31D0BWP7T port map(A1 => pixel_x(1), A2 => I2S_n_3, A3 => I2S_n_44, B => I2S_n_53, ZN => I2S_n_62);
  I2S_g2910 : OAI31D0BWP7T port map(A1 => pixel_x(3), A2 => I2S_n_28, A3 => I2S_n_44, B => I2S_n_54, ZN => I2S_n_61);
  I2S_g2911 : OAI31D0BWP7T port map(A1 => I2S_count_y(3), A2 => I2S_n_27, A3 => I2S_n_23, B => I2S_n_51, ZN => I2S_n_60);
  I2S_g2912 : OAI31D0BWP7T port map(A1 => pixel_x(2), A2 => I2S_n_19, A3 => I2S_n_44, B => I2S_n_50, ZN => I2S_n_59);
  I2S_g2913 : IOA21D1BWP7T port map(A1 => I2S_n_45, A2 => I2S_n_7, B => I2S_n_15, ZN => I2S_n_58);
  I2S_g2914 : INVD0BWP7T port map(I => I2S_n_56, ZN => I2S_n_55);
  I2S_g2915 : ND2D1BWP7T port map(A1 => I2S_n_37, A2 => pixel_x(3), ZN => I2S_n_54);
  I2S_g2916 : ND2D1BWP7T port map(A1 => I2S_n_38, A2 => pixel_x(1), ZN => I2S_n_53);
  I2S_g2917 : IND2D1BWP7T port map(A1 => I2S_n_46, B1 => pixel_x(5), ZN => I2S_n_57);
  I2S_g2919 : NR2D1BWP7T port map(A1 => I2S_n_41, A2 => new_coordinate, ZN => I2S_n_56);
  I2S_g2921 : ND2D1BWP7T port map(A1 => I2S_n_39, A2 => I2S_count_y(3), ZN => I2S_n_51);
  I2S_g2922 : IOA21D1BWP7T port map(A1 => I2S_n_25, A2 => I2S_n_31, B => pixel_x(2), ZN => I2S_n_50);
  I2S_g2923 : OAI31D0BWP7T port map(A1 => I2S_count_y(2), A2 => I2S_n_14, A3 => I2S_n_23, B => I2S_n_42, ZN => I2S_n_49);
  I2S_g2924 : IINR4D0BWP7T port map(A1 => I2S_n_22, A2 => I2S_count_y(3), B1 => I2S_count_y(5), B2 => I2S_count_y(4), ZN => I2S_n_48);
  I2S_g2925 : IOA21D0BWP7T port map(A1 => I2S_n_7, A2 => I2S_n_34, B => I2S_n_15, ZN => I2S_n_47);
  I2S_g2926 : IND2D1BWP7T port map(A1 => I2S_n_45, B1 => I2S_count_y(5), ZN => I2S_n_52);
  I2S_g2927 : ND2D0BWP7T port map(A1 => I2S_n_17, A2 => I2S_n_35, ZN => I2S_n_43);
  I2S_g2928 : ND2D1BWP7T port map(A1 => I2S_n_29, A2 => I2S_count_y(2), ZN => I2S_n_42);
  I2S_g2929 : IND2D1BWP7T port map(A1 => I2S_n_35, B1 => pixel_x(4), ZN => I2S_n_46);
  I2S_g2930 : IND2D1BWP7T port map(A1 => I2S_n_34, B1 => I2S_count_y(4), ZN => I2S_n_45);
  I2S_g2931 : ND2D1BWP7T port map(A1 => I2S_n_17, A2 => I2S_n_31, ZN => I2S_n_44);
  I2S_g2932 : OAI31D0BWP7T port map(A1 => I2S_count_y(1), A2 => I2S_n_0, A3 => I2S_n_23, B => I2S_n_33, ZN => I2S_n_40);
  I2S_g2933 : IOA21D0BWP7T port map(A1 => I2S_n_7, A2 => I2S_n_27, B => I2S_n_15, ZN => I2S_n_39);
  I2S_g2934 : OAI21D0BWP7T port map(A1 => I2S_n_16, A2 => pixel_x(0), B => I2S_n_31, ZN => I2S_n_38);
  I2S_g2935 : IOA21D0BWP7T port map(A1 => I2S_n_17, A2 => I2S_n_28, B => I2S_n_31, ZN => I2S_n_37);
  I2S_g2936 : OAI22D0BWP7T port map(A1 => I2S_n_23, A2 => pixel_y(0), B1 => I2S_n_15, B2 => I2S_n_0, ZN => I2S_n_36);
  I2S_g2937 : IND3D1BWP7T port map(A1 => I2S_n_26, B1 => I2S_n_8, B2 => I2S_n_13, ZN => I2S_n_41);
  I2S_g2938 : ND2D1BWP7T port map(A1 => I2S_n_20, A2 => I2S_count_y(1), ZN => I2S_n_33);
  I2S_g2939 : IND2D1BWP7T port map(A1 => I2S_n_28, B1 => pixel_x(3), ZN => I2S_n_35);
  I2S_g2940 : IND2D1BWP7T port map(A1 => I2S_n_27, B1 => I2S_count_y(3), ZN => I2S_n_34);
  I2S_g2941 : NR4D0BWP7T port map(A1 => I2S_n_1, A2 => pixel_x(5), A3 => pixel_x(4), A4 => I2S_count_x2(11), ZN => I2S_n_30);
  I2S_g2942 : IOA21D0BWP7T port map(A1 => I2S_n_7, A2 => I2S_n_14, B => I2S_n_15, ZN => I2S_n_29);
  I2S_g2943 : AN3D0BWP7T port map(A1 => new_coordinate, A2 => I2S_n_18, A3 => I2S_n_11, Z => I2S_n_32);
  I2S_g2944 : AOI211XD0BWP7T port map(A1 => I2S_n_2, A2 => I2S_CONTROL_state(2), B => I2S_CONTROL_state(3), C => I2S_CONTROL_state(1), ZN => I2S_n_31);
  I2S_g2945 : ND2D0BWP7T port map(A1 => I2S_n_17, A2 => I2S_n_19, ZN => I2S_n_25);
  I2S_g2946 : IND2D1BWP7T port map(A1 => I2S_n_19, B1 => pixel_x(2), ZN => I2S_n_28);
  I2S_g2947 : IND2D1BWP7T port map(A1 => I2S_n_14, B1 => I2S_count_y(2), ZN => I2S_n_27);
  I2S_g2948 : NR2XD0BWP7T port map(A1 => new_coordinate, A2 => I2S_n_18, ZN => I2S_n_26);
  I2S_g2949 : NR3D0BWP7T port map(A1 => I2S_count_y(2), A2 => I2S_count_y(1), A3 => I2S_count_y(11), ZN => I2S_n_22);
  I2S_g2950 : OA22D0BWP7T port map(A1 => I2S_CONTROL_state(0), A2 => I2S_CONTROL_state(3), B1 => I2S_n_2, B2 => I2S_CONTROL_n_37, Z => I2S_n_21);
  I2S_g2951 : OAI21D0BWP7T port map(A1 => frame_ready, A2 => pixel_y(0), B => I2S_n_15, ZN => I2S_n_20);
  I2S_g2952 : IND2D1BWP7T port map(A1 => I2S_n_18, B1 => new_coordinate, ZN => I2S_n_24);
  I2S_g2953 : ND2D1BWP7T port map(A1 => I2S_n_7, A2 => I2S_n_15, ZN => I2S_n_23);
  I2S_g2954 : INVD0BWP7T port map(I => I2S_n_17, ZN => I2S_n_16);
  I2S_g2955 : ND2D1BWP7T port map(A1 => pixel_x(1), A2 => pixel_x(0), ZN => I2S_n_19);
  I2S_g2956 : CKND2D1BWP7T port map(A1 => I2S_CONTROL_state(0), A2 => I2S_CONTROL_state(1), ZN => I2S_n_18);
  I2S_g2957 : NR2XD0BWP7T port map(A1 => frame_ready, A2 => I2S_CONTROL_state(2), ZN => I2S_n_17);
  I2S_g2958 : CKAN2D1BWP7T port map(A1 => I2S_CONTROL_n_37, A2 => I2S_n_2, Z => I2S_n_15);
  I2S_g2959 : INVD0BWP7T port map(I => I2S_n_13, ZN => I2S_n_12);
  I2S_g2960 : INVD0BWP7T port map(I => I2S_n_11, ZN => I2S_n_10);
  I2S_g2961 : NR2XD0BWP7T port map(A1 => I2S_CONTROL_n_44, A2 => I2S_CONTROL_state(2), ZN => I2S_n_9);
  I2S_g2962 : ND2D1BWP7T port map(A1 => I2S_count_y(1), A2 => pixel_y(0), ZN => I2S_n_14);
  I2S_g2963 : ND2D1BWP7T port map(A1 => I2S_CONTROL_n_44, A2 => I2S_CONTROL_state(2), ZN => I2S_n_13);
  I2S_g2964 : NR2D1BWP7T port map(A1 => reset, A2 => pixel_ready, ZN => I2S_n_11);
  I2S_g2981 : INVD1BWP7T port map(I => reset, ZN => I2S_n_8);
  I2S_g3085 : INVD1BWP7T port map(I => frame_ready, ZN => I2S_n_7);
  I2S_CONTROL_state_reg_0 : DFD1BWP7T port map(CP => clk, D => I2S_n_135, Q => I2S_CONTROL_state(0), QN => I2S_n_2);
  I2S_CONTROL_state_reg_1 : DFD1BWP7T port map(CP => clk, D => I2S_n_133, Q => I2S_CONTROL_state(1), QN => I2S_n_6);
  I2S_K1_count_reg_0 : DFD1BWP7T port map(CP => clk, D => I2S_n_64, Q => pixel_x(0), QN => I2S_n_3);
  I2S_K1_count_reg_3 : DFD1BWP7T port map(CP => clk, D => I2S_n_61, Q => pixel_x(3), QN => I2S_n_1);
  I2S_K1_count_reg_10 : DFD1BWP7T port map(CP => clk, D => I2S_n_122, Q => I2S_count_x2(10), QN => I2S_n_4);
  I2S_K2_count_reg_0 : DFD1BWP7T port map(CP => clk, D => I2S_n_36, Q => pixel_y(0), QN => I2S_n_0);
  I2S_K2_count_reg_10 : DFD1BWP7T port map(CP => clk, D => I2S_n_123, Q => I2S_count_y(10), QN => I2S_n_5);
  I2S_g2 : IOA21D0BWP7T port map(A1 => I2S_n_101, A2 => I2S_n_15, B => I2S_count_y(10), ZN => I2S_n_159);
  I2S_g3100 : IOA21D0BWP7T port map(A1 => I2S_n_104, A2 => I2S_n_31, B => I2S_count_x2(10), ZN => I2S_n_160);

end synthesised;
