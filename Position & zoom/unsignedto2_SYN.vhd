
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of unsignedto2 is

  component CKND4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component LHD1BWP7T
    port(E, D : in std_logic; Q, QN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  signal UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2, UNCONNECTED3 : std_logic;
  signal UNCONNECTED4, UNCONNECTED5, UNCONNECTED6, UNCONNECTED7, UNCONNECTED8 : std_logic;
  signal UNCONNECTED9, UNCONNECTED10, n_1, n_2, n_3 : std_logic;
  signal n_5, n_6, n_8, n_9, n_11 : std_logic;
  signal n_12, n_14, n_15, n_17, n_18 : std_logic;
  signal n_20, n_21, n_23, n_24, n_26 : std_logic;
  signal n_27, n_29, n_30, n_33, n_34 : std_logic;
  signal n_35, n_36, n_37, n_38, n_39 : std_logic;
  signal n_40, n_41, n_42, n_43, n_44 : std_logic;

begin

  g215 : CKND4BWP7T port map(I => n_44, ZN => count_y_2s(11));
  count_y_2s_reg_11 : LHD1BWP7T port map(E => count_y(11), D => n_30, Q => UNCONNECTED, QN => n_44);
  g218 : CKND4BWP7T port map(I => n_43, ZN => count_y_2s(10));
  count_y_2s_reg_10 : LHD1BWP7T port map(E => count_y(11), D => n_27, Q => UNCONNECTED0, QN => n_43);
  g216 : MOAI22D0BWP7T port map(A1 => n_29, A2 => count_y(11), B1 => n_29, B2 => count_y(11), ZN => n_30);
  g221 : CKND4BWP7T port map(I => n_42, ZN => count_y_2s(9));
  count_y_2s_reg_9 : LHD1BWP7T port map(E => count_y(11), D => n_24, Q => UNCONNECTED1, QN => n_42);
  g219 : MOAI22D0BWP7T port map(A1 => n_26, A2 => count_y(10), B1 => n_26, B2 => count_y(10), ZN => n_27);
  g225 : CKND4BWP7T port map(I => n_41, ZN => count_y_2s(8));
  g222 : INR2D0BWP7T port map(A1 => n_26, B1 => count_y(10), ZN => n_29);
  count_y_2s_reg_8 : LHD1BWP7T port map(E => count_y(11), D => n_21, Q => UNCONNECTED2, QN => n_41);
  g223 : MOAI22D0BWP7T port map(A1 => n_23, A2 => count_y(9), B1 => n_23, B2 => count_y(9), ZN => n_24);
  g226 : INR2D0BWP7T port map(A1 => n_23, B1 => count_y(9), ZN => n_26);
  g229 : CKND4BWP7T port map(I => n_40, ZN => count_y_2s(7));
  g227 : MOAI22D0BWP7T port map(A1 => n_20, A2 => count_y(8), B1 => n_20, B2 => count_y(8), ZN => n_21);
  count_y_2s_reg_7 : LHD1BWP7T port map(E => count_y(11), D => n_18, Q => UNCONNECTED3, QN => n_40);
  g230 : INR2D0BWP7T port map(A1 => n_20, B1 => count_y(8), ZN => n_23);
  g233 : CKND4BWP7T port map(I => n_39, ZN => count_y_2s(6));
  g231 : MOAI22D0BWP7T port map(A1 => n_17, A2 => count_y(7), B1 => n_17, B2 => count_y(7), ZN => n_18);
  count_y_2s_reg_6 : LHD1BWP7T port map(E => count_y(11), D => n_15, Q => UNCONNECTED4, QN => n_39);
  g237 : CKND4BWP7T port map(I => n_38, ZN => count_y_2s(5));
  g234 : INR2D0BWP7T port map(A1 => n_17, B1 => count_y(7), ZN => n_20);
  g235 : MOAI22D0BWP7T port map(A1 => n_14, A2 => count_y(6), B1 => n_14, B2 => count_y(6), ZN => n_15);
  count_y_2s_reg_5 : LHD1BWP7T port map(E => count_y(11), D => n_12, Q => UNCONNECTED5, QN => n_38);
  g238 : INR2D0BWP7T port map(A1 => n_14, B1 => count_y(6), ZN => n_17);
  g241 : CKND4BWP7T port map(I => n_37, ZN => count_y_2s(4));
  g239 : MOAI22D0BWP7T port map(A1 => n_11, A2 => count_y(5), B1 => n_11, B2 => count_y(5), ZN => n_12);
  count_y_2s_reg_4 : LHD1BWP7T port map(E => count_y(11), D => n_9, Q => UNCONNECTED6, QN => n_37);
  g242 : INR2D0BWP7T port map(A1 => n_11, B1 => count_y(5), ZN => n_14);
  g245 : CKND4BWP7T port map(I => n_36, ZN => count_y_2s(3));
  g243 : MOAI22D0BWP7T port map(A1 => n_8, A2 => count_y(4), B1 => n_8, B2 => count_y(4), ZN => n_9);
  count_y_2s_reg_3 : LHD1BWP7T port map(E => count_y(11), D => n_6, Q => UNCONNECTED7, QN => n_36);
  g246 : INR2D0BWP7T port map(A1 => n_8, B1 => count_y(4), ZN => n_11);
  g249 : CKND4BWP7T port map(I => n_35, ZN => count_y_2s(2));
  g247 : MOAI22D0BWP7T port map(A1 => n_5, A2 => count_y(3), B1 => n_5, B2 => count_y(3), ZN => n_6);
  count_y_2s_reg_2 : LHD1BWP7T port map(E => count_y(11), D => n_3, Q => UNCONNECTED8, QN => n_35);
  g250 : INR2D0BWP7T port map(A1 => n_5, B1 => count_y(3), ZN => n_8);
  g253 : CKND4BWP7T port map(I => n_34, ZN => count_y_2s(1));
  count_y_2s_reg_1 : LHD1BWP7T port map(E => count_y(11), D => n_1, Q => UNCONNECTED9, QN => n_34);
  g251 : MOAI22D0BWP7T port map(A1 => n_2, A2 => count_y(2), B1 => n_2, B2 => count_y(2), ZN => n_3);
  g254 : INR2D0BWP7T port map(A1 => n_2, B1 => count_y(2), ZN => n_5);
  g255 : CKXOR2D0BWP7T port map(A1 => count_y(0), A2 => count_y(1), Z => n_1);
  g257 : CKND4BWP7T port map(I => n_33, ZN => count_y_2s(0));
  count_y_2s_reg_0 : LHD1BWP7T port map(E => count_y(11), D => count_y(0), Q => UNCONNECTED10, QN => n_33);
  g258 : NR2D0BWP7T port map(A1 => count_y(0), A2 => count_y(1), ZN => n_2);

end synthesised;
