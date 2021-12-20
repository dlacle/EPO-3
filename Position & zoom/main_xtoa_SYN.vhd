
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of main_xtoa is

  component shifter_sright
    port(s     : in  std_logic_vector(2 downto 0);
         s_in  : in  std_logic_vector(11 downto 0);
         s_out : out std_logic_vector(11 downto 0));
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

  component FA1D0BWP7T
    port(A, B, CI : in std_logic; CO, S : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component HA1D0BWP7T
    port(A, B : in std_logic; CO, S : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal full_adder_x2 : std_logic_vector(11 downto 0);
  signal full_adder_x1 : std_logic_vector(11 downto 0);
  signal shifter_rightxout : std_logic_vector(11 downto 0);
  signal center_a : std_logic_vector(11 downto 0);
  signal C6 : std_logic_vector(11 downto 0);
  signal C7 : std_logic_vector(11 downto 0);
  signal C0 : std_logic_vector(11 downto 0);
  signal C1 : std_logic_vector(11 downto 0);
  signal C2 : std_logic_vector(11 downto 0);
  signal C3 : std_logic_vector(11 downto 0);
  signal C4 : std_logic_vector(11 downto 0);
  signal C5 : std_logic_vector(11 downto 0);
  signal FAx1_c : std_logic_vector(10 downto 0);
  signal hunderdmin : std_logic_vector(11 downto 0);
  signal FAx2_c : std_logic_vector(10 downto 0);
  signal FAx3_c : std_logic_vector(10 downto 0);
  signal FAx1_fa9_n_0, FAx2_fa11_n_0, FAx3_fa1_n_0, FAx3_fa2_n_0, FAx3_fa3_n_0 : std_logic;
  signal FAx3_fa4_n_0, FAx3_fa5_n_0, FAx3_fa6_n_0, FAx3_fa7_n_0, FAx3_fa8_n_0 : std_logic;
  signal FAx3_fa9_n_0, FAx3_fa10_n_0, FAx3_fa11_n_0, FAx3_fa11_n_1, FAx3_fa11_n_2 : std_logic;
  signal MUXx_n_0, MUXx_n_1, MUXx_n_2, MUXx_n_3, MUXx_n_4 : std_logic;
  signal MUXx_n_5, MUXx_n_6, MUXx_n_7, MUXx_n_8, MUXx_n_9 : std_logic;
  signal MUXx_n_10, MUXx_n_11, MUXx_n_12, MUXx_n_13, MUXx_n_14 : std_logic;
  signal MUXx_n_15, MUXx_n_16, MUXx_n_17, MUXx_n_18, MUXx_n_19 : std_logic;
  signal MUXx_n_20, MUXx_n_21, MUXx_n_22, MUXx_n_23, MUXx_n_24 : std_logic;
  signal MUXx_n_25, MUXx_n_26, MUXx_n_27, MUXx_n_28, MUXx_n_29 : std_logic;
  signal MUXx_n_30, MUXx_n_31, MUXx_n_32, MUXx_n_33, MUXx_n_34 : std_logic;
  signal MUXx_n_35, MUXx_n_36, MUXx_n_37, MUXx_n_38, MUXx_n_39 : std_logic;
  signal MUXx_n_40, MUXx_n_41, MUXx_n_42, MUXx_n_43, MUXx_n_44 : std_logic;
  signal MUXx_n_45, MUXx_n_46, MUXx_n_47, MUXx_n_48, MUXx_n_49 : std_logic;
  signal MUXx_n_50, MUXx_n_51, MUXx_n_52, MUXx_n_53, MUXx_n_54 : std_logic;
  signal MUXx_n_55, MUXx_n_56, MUXx_n_57, MUXx_n_58, MUXx_n_59 : std_logic;
  signal logic_0_1_net : std_logic;

begin

  SRx : shifter_sright port map(s => zoom, s_in(11) => full_adder_x2(11:4), s_in(10) => full_adder_x1(1:0), s_in(9) => logic_0_1_net, s_in(8) => logic_0_1_net, s_out => shifter_rightxout);
  MUXx_g1365 : ND4D0BWP7T port map(A1 => MUXx_n_30, A2 => MUXx_n_15, A3 => MUXx_n_13, A4 => MUXx_n_38, ZN => center_a(11));
  MUXx_g1366 : ND4D0BWP7T port map(A1 => MUXx_n_34, A2 => MUXx_n_25, A3 => MUXx_n_22, A4 => MUXx_n_42, ZN => center_a(10));
  MUXx_g1367 : ND4D0BWP7T port map(A1 => MUXx_n_53, A2 => MUXx_n_47, A3 => MUXx_n_46, A4 => MUXx_n_58, ZN => center_a(6));
  MUXx_g1368 : ND4D0BWP7T port map(A1 => MUXx_n_52, A2 => MUXx_n_50, A3 => MUXx_n_49, A4 => MUXx_n_54, ZN => center_a(0));
  MUXx_g1369 : ND4D0BWP7T port map(A1 => MUXx_n_43, A2 => MUXx_n_41, A3 => MUXx_n_40, A4 => MUXx_n_45, ZN => center_a(5));
  MUXx_g1370 : ND4D0BWP7T port map(A1 => MUXx_n_39, A2 => MUXx_n_36, A3 => MUXx_n_29, A4 => MUXx_n_32, ZN => center_a(8));
  MUXx_g1371 : ND4D0BWP7T port map(A1 => MUXx_n_35, A2 => MUXx_n_33, A3 => MUXx_n_31, A4 => MUXx_n_37, ZN => center_a(4));
  MUXx_g1372 : ND4D0BWP7T port map(A1 => MUXx_n_56, A2 => MUXx_n_51, A3 => MUXx_n_44, A4 => MUXx_n_48, ZN => center_a(9));
  MUXx_g1373 : ND4D0BWP7T port map(A1 => MUXx_n_21, A2 => MUXx_n_17, A3 => MUXx_n_12, A4 => MUXx_n_23, ZN => center_a(7));
  MUXx_g1374 : ND4D0BWP7T port map(A1 => MUXx_n_27, A2 => MUXx_n_26, A3 => MUXx_n_24, A4 => MUXx_n_28, ZN => center_a(3));
  MUXx_g1375 : ND4D0BWP7T port map(A1 => MUXx_n_20, A2 => MUXx_n_19, A3 => MUXx_n_16, A4 => MUXx_n_18, ZN => center_a(2));
  MUXx_g1376 : ND4D0BWP7T port map(A1 => MUXx_n_14, A2 => MUXx_n_55, A3 => MUXx_n_57, A4 => MUXx_n_59, ZN => center_a(1));
  MUXx_g1377 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(1), B1 => MUXx_n_5, B2 => C7(1), ZN => MUXx_n_59);
  MUXx_g1378 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(6), B1 => MUXx_n_5, B2 => C7(6), ZN => MUXx_n_58);
  MUXx_g1379 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(1), B1 => MUXx_n_9, B2 => C1(1), ZN => MUXx_n_57);
  MUXx_g1380 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(9), B1 => MUXx_n_8, B2 => C3(9), ZN => MUXx_n_56);
  MUXx_g1381 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(1), B1 => MUXx_n_6, B2 => C5(1), ZN => MUXx_n_55);
  MUXx_g1382 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(0), B1 => MUXx_n_5, B2 => C7(0), ZN => MUXx_n_54);
  MUXx_g1383 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(6), B1 => MUXx_n_8, B2 => C3(6), ZN => MUXx_n_53);
  MUXx_g1384 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(0), B1 => MUXx_n_6, B2 => C5(0), ZN => MUXx_n_52);
  MUXx_g1385 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(9), B1 => MUXx_n_6, B2 => C5(9), ZN => MUXx_n_51);
  MUXx_g1386 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(0), B1 => MUXx_n_8, B2 => C3(0), ZN => MUXx_n_50);
  MUXx_g1387 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(0), B1 => MUXx_n_9, B2 => C1(0), ZN => MUXx_n_49);
  MUXx_g1388 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(9), B1 => MUXx_n_5, B2 => C7(9), ZN => MUXx_n_48);
  MUXx_g1389 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(6), B1 => MUXx_n_6, B2 => C5(6), ZN => MUXx_n_47);
  MUXx_g1390 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(6), B1 => MUXx_n_9, B2 => C1(6), ZN => MUXx_n_46);
  MUXx_g1391 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(5), B1 => MUXx_n_5, B2 => C7(5), ZN => MUXx_n_45);
  MUXx_g1392 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(9), B1 => MUXx_n_9, B2 => C1(9), ZN => MUXx_n_44);
  MUXx_g1393 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(5), B1 => MUXx_n_6, B2 => C5(5), ZN => MUXx_n_43);
  MUXx_g1394 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(10), B1 => MUXx_n_5, B2 => C7(10), ZN => MUXx_n_42);
  MUXx_g1395 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(5), B1 => MUXx_n_8, B2 => C3(5), ZN => MUXx_n_41);
  MUXx_g1396 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(5), B1 => MUXx_n_9, B2 => C1(5), ZN => MUXx_n_40);
  MUXx_g1397 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(8), B1 => MUXx_n_8, B2 => C3(8), ZN => MUXx_n_39);
  MUXx_g1398 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(11), B1 => MUXx_n_5, B2 => C7(11), ZN => MUXx_n_38);
  MUXx_g1399 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(4), B1 => MUXx_n_5, B2 => C7(4), ZN => MUXx_n_37);
  MUXx_g1400 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(8), B1 => MUXx_n_6, B2 => C5(8), ZN => MUXx_n_36);
  MUXx_g1401 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(4), B1 => MUXx_n_6, B2 => C5(4), ZN => MUXx_n_35);
  MUXx_g1402 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(10), B1 => MUXx_n_6, B2 => C5(10), ZN => MUXx_n_34);
  MUXx_g1403 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(4), B1 => MUXx_n_8, B2 => C3(4), ZN => MUXx_n_33);
  MUXx_g1404 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(8), B1 => MUXx_n_5, B2 => C7(8), ZN => MUXx_n_32);
  MUXx_g1405 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(4), B1 => MUXx_n_9, B2 => C1(4), ZN => MUXx_n_31);
  MUXx_g1406 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(11), B1 => MUXx_n_8, B2 => C3(11), ZN => MUXx_n_30);
  MUXx_g1407 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(8), B1 => MUXx_n_9, B2 => C1(8), ZN => MUXx_n_29);
  MUXx_g1408 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(3), B1 => MUXx_n_5, B2 => C7(3), ZN => MUXx_n_28);
  MUXx_g1409 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(3), B1 => MUXx_n_6, B2 => C5(3), ZN => MUXx_n_27);
  MUXx_g1410 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(3), B1 => MUXx_n_8, B2 => C3(3), ZN => MUXx_n_26);
  MUXx_g1411 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(10), B1 => MUXx_n_8, B2 => C3(10), ZN => MUXx_n_25);
  MUXx_g1412 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(3), B1 => MUXx_n_9, B2 => C1(3), ZN => MUXx_n_24);
  MUXx_g1413 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(7), B1 => MUXx_n_5, B2 => C7(7), ZN => MUXx_n_23);
  MUXx_g1414 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(10), B1 => MUXx_n_9, B2 => C1(10), ZN => MUXx_n_22);
  MUXx_g1415 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(7), B1 => MUXx_n_6, B2 => C5(7), ZN => MUXx_n_21);
  MUXx_g1416 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(2), B1 => MUXx_n_8, B2 => C3(2), ZN => MUXx_n_20);
  MUXx_g1417 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(2), B1 => MUXx_n_6, B2 => C5(2), ZN => MUXx_n_19);
  MUXx_g1418 : AOI22D0BWP7T port map(A1 => MUXx_n_7, A2 => C6(2), B1 => MUXx_n_5, B2 => C7(2), ZN => MUXx_n_18);
  MUXx_g1419 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(7), B1 => MUXx_n_8, B2 => C3(7), ZN => MUXx_n_17);
  MUXx_g1420 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(2), B1 => MUXx_n_9, B2 => C1(2), ZN => MUXx_n_16);
  MUXx_g1421 : AOI22D0BWP7T port map(A1 => MUXx_n_11, A2 => C4(11), B1 => MUXx_n_6, B2 => C5(11), ZN => MUXx_n_15);
  MUXx_g1422 : AOI22D0BWP7T port map(A1 => MUXx_n_4, A2 => C2(1), B1 => MUXx_n_8, B2 => C3(1), ZN => MUXx_n_14);
  MUXx_g1423 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(11), B1 => MUXx_n_9, B2 => C1(11), ZN => MUXx_n_13);
  MUXx_g1424 : AOI22D0BWP7T port map(A1 => MUXx_n_10, A2 => C0(7), B1 => MUXx_n_9, B2 => C1(7), ZN => MUXx_n_12);
  MUXx_g1425 : NR2D0BWP7T port map(A1 => MUXx_n_2, A2 => position(0), ZN => MUXx_n_11);
  MUXx_g1426 : INR2D0BWP7T port map(A1 => MUXx_n_1, B1 => position(0), ZN => MUXx_n_10);
  MUXx_g1427 : AN2D1BWP7T port map(A1 => MUXx_n_1, A2 => position(0), Z => MUXx_n_9);
  MUXx_g1428 : INR2D0BWP7T port map(A1 => position(0), B1 => MUXx_n_3, ZN => MUXx_n_8);
  MUXx_g1429 : NR2D0BWP7T port map(A1 => MUXx_n_0, A2 => position(0), ZN => MUXx_n_7);
  MUXx_g1430 : INR2D0BWP7T port map(A1 => position(0), B1 => MUXx_n_2, ZN => MUXx_n_6);
  MUXx_g1431 : INR2D0BWP7T port map(A1 => position(0), B1 => MUXx_n_0, ZN => MUXx_n_5);
  MUXx_g1432 : NR2D0BWP7T port map(A1 => MUXx_n_3, A2 => position(0), ZN => MUXx_n_4);
  MUXx_g1433 : IND2D0BWP7T port map(A1 => position(2), B1 => position(1), ZN => MUXx_n_3);
  MUXx_g1434 : IND2D0BWP7T port map(A1 => position(1), B1 => position(2), ZN => MUXx_n_2);
  MUXx_g1435 : NR2D0BWP7T port map(A1 => position(1), A2 => position(2), ZN => MUXx_n_1);
  MUXx_g1436 : ND2D0BWP7T port map(A1 => position(1), A2 => position(2), ZN => MUXx_n_0);
  FAx1_fa4_g2 : FA1D0BWP7T port map(A => FAx1_c(3), B => hunderdmin(4), CI => pixel_x(4), CO => FAx1_c(4), S => full_adder_x1(4));
  FAx1_fa5_g2 : FA1D0BWP7T port map(A => FAx1_c(4), B => hunderdmin(5), CI => pixel_x(5), CO => FAx1_c(5), S => full_adder_x1(5));
  FAx1_fa6_g2 : FA1D0BWP7T port map(A => FAx1_c(5), B => hunderdmin(6), CI => pixel_x(6), CO => FAx1_c(6), S => full_adder_x1(6));
  FAx1_fa7_g2 : FA1D0BWP7T port map(A => FAx1_c(6), B => hunderdmin(7), CI => pixel_x(7), CO => FAx1_c(7), S => full_adder_x1(7));
  FAx1_fa8_g2 : FA1D0BWP7T port map(A => FAx1_c(7), B => hunderdmin(8), CI => pixel_x(8), CO => FAx1_c(8), S => full_adder_x1(8));
  FAx1_fa9_g31 : MOAI22D0BWP7T port map(A1 => FAx1_c(8), A2 => FAx1_fa9_n_0, B1 => FAx1_c(8), B2 => FAx1_fa9_n_0, ZN => full_adder_x1(9));
  FAx1_fa9_g32 : XNR2D1BWP7T port map(A1 => pixel_x(9), A2 => hunderdmin(9), ZN => FAx1_fa9_n_0);
  FAx2_fa10_g2 : FA1D0BWP7T port map(A => FAx2_c(9), B => full_adder_x1(6), CI => full_adder_x1(8), CO => FAx2_c(10), S => full_adder_x2(10));
  FAx2_fa11_g31 : MOAI22D0BWP7T port map(A1 => FAx2_c(10), A2 => FAx2_fa11_n_0, B1 => FAx2_c(10), B2 => FAx2_fa11_n_0, ZN => full_adder_x2(11));
  FAx2_fa11_g32 : XNR2D1BWP7T port map(A1 => full_adder_x1(9), A2 => full_adder_x1(7), ZN => FAx2_fa11_n_0);
  FAx2_fa4_g21 : HA1D0BWP7T port map(A => full_adder_x1(0), B => full_adder_x1(2), CO => FAx2_c(4), S => full_adder_x2(4));
  FAx3_fa2_g41 : AO22D0BWP7T port map(A1 => FAx3_c(1), A2 => FAx3_fa2_n_0, B1 => shifter_rightxout(2), B2 => center_a(2), Z => FAx3_c(2));
  FAx3_fa2_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(2), A2 => center_a(2), Z => FAx3_fa2_n_0);
  FAx3_fa2_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(1), A2 => FAx3_fa2_n_0, Z => a(2));
  FAx3_ha1_g17 : CKXOR2D4BWP7T port map(A1 => center_a(0), A2 => shifter_rightxout(0), Z => a(0));
  FAx3_ha1_g18 : AN2D1BWP7T port map(A1 => center_a(0), A2 => shifter_rightxout(0), Z => FAx3_c(0));
  FAx3_fa3_g41 : AO22D0BWP7T port map(A1 => FAx3_c(2), A2 => FAx3_fa3_n_0, B1 => shifter_rightxout(3), B2 => center_a(3), Z => FAx3_c(3));
  FAx3_fa3_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(3), A2 => center_a(3), Z => FAx3_fa3_n_0);
  FAx3_fa3_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(2), A2 => FAx3_fa3_n_0, Z => a(3));
  FAx3_fa4_g41 : AO22D0BWP7T port map(A1 => FAx3_c(3), A2 => FAx3_fa4_n_0, B1 => shifter_rightxout(4), B2 => center_a(4), Z => FAx3_c(4));
  FAx3_fa4_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(4), A2 => center_a(4), Z => FAx3_fa4_n_0);
  FAx3_fa4_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(3), A2 => FAx3_fa4_n_0, Z => a(4));
  FAx3_fa5_g41 : AO22D0BWP7T port map(A1 => FAx3_c(4), A2 => FAx3_fa5_n_0, B1 => shifter_rightxout(5), B2 => center_a(5), Z => FAx3_c(5));
  FAx3_fa5_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(5), A2 => center_a(5), Z => FAx3_fa5_n_0);
  FAx3_fa5_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(4), A2 => FAx3_fa5_n_0, Z => a(5));
  FAx3_fa6_g41 : AO22D0BWP7T port map(A1 => FAx3_c(5), A2 => FAx3_fa6_n_0, B1 => shifter_rightxout(6), B2 => center_a(6), Z => FAx3_c(6));
  FAx3_fa6_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(6), A2 => center_a(6), Z => FAx3_fa6_n_0);
  FAx3_fa6_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(5), A2 => FAx3_fa6_n_0, Z => a(6));
  FAx3_fa7_g41 : AO22D0BWP7T port map(A1 => FAx3_c(6), A2 => FAx3_fa7_n_0, B1 => shifter_rightxout(7), B2 => center_a(7), Z => FAx3_c(7));
  FAx3_fa7_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(7), A2 => center_a(7), Z => FAx3_fa7_n_0);
  FAx3_fa7_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(6), A2 => FAx3_fa7_n_0, Z => a(7));
  FAx3_fa8_g41 : AO22D0BWP7T port map(A1 => FAx3_c(7), A2 => FAx3_fa8_n_0, B1 => shifter_rightxout(8), B2 => center_a(8), Z => FAx3_c(8));
  FAx3_fa8_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(8), A2 => center_a(8), Z => FAx3_fa8_n_0);
  FAx3_fa8_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(7), A2 => FAx3_fa8_n_0, Z => a(8));
  FAx3_fa10_g41 : AO22D0BWP7T port map(A1 => FAx3_c(9), A2 => FAx3_fa10_n_0, B1 => shifter_rightxout(10), B2 => center_a(10), Z => FAx3_c(10));
  FAx3_fa10_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(10), A2 => center_a(10), Z => FAx3_fa10_n_0);
  FAx3_fa10_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(9), A2 => FAx3_fa10_n_0, Z => a(10));
  FAx3_fa9_g41 : AO22D0BWP7T port map(A1 => FAx3_c(8), A2 => FAx3_fa9_n_0, B1 => shifter_rightxout(9), B2 => center_a(9), Z => FAx3_c(9));
  FAx3_fa9_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(9), A2 => center_a(9), Z => FAx3_fa9_n_0);
  FAx3_fa9_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(8), A2 => FAx3_fa9_n_0, Z => a(9));
  FAx3_fa11_g31 : OR2D4BWP7T port map(A1 => FAx3_fa11_n_1, A2 => FAx3_fa11_n_2, Z => a(11));
  FAx3_fa11_g32 : NR2D0BWP7T port map(A1 => FAx3_c(10), A2 => FAx3_fa11_n_0, ZN => FAx3_fa11_n_2);
  FAx3_fa11_g33 : AN2D1BWP7T port map(A1 => FAx3_c(10), A2 => FAx3_fa11_n_0, Z => FAx3_fa11_n_1);
  FAx3_fa11_g34 : XNR2D1BWP7T port map(A1 => center_a(11), A2 => shifter_rightxout(11), ZN => FAx3_fa11_n_0);
  FAx2_fa5_g2 : FA1D0BWP7T port map(A => full_adder_x1(1), B => full_adder_x1(3), CI => FAx2_c(4), CO => FAx2_c(5), S => full_adder_x2(5));
  FAx2_fa6_g2 : FA1D0BWP7T port map(A => full_adder_x1(2), B => full_adder_x1(4), CI => FAx2_c(5), CO => FAx2_c(6), S => full_adder_x2(6));
  FAx2_fa7_g2 : FA1D0BWP7T port map(A => FAx2_c(6), B => full_adder_x1(3), CI => full_adder_x1(5), CO => FAx2_c(7), S => full_adder_x2(7));
  FAx2_fa8_g2 : FA1D0BWP7T port map(A => FAx2_c(7), B => full_adder_x1(4), CI => full_adder_x1(6), CO => FAx2_c(8), S => full_adder_x2(8));
  FAx1_fa1_g2 : FA1D0BWP7T port map(A => hunderdmin(1), B => pixel_x(1), CI => FAx1_c(0), CO => FAx1_c(1), S => full_adder_x1(1));
  FAx2_fa9_g2 : FA1D0BWP7T port map(A => FAx2_c(8), B => full_adder_x1(5), CI => full_adder_x1(7), CO => FAx2_c(9), S => full_adder_x2(9));
  FAx1_fa2_g2 : FA1D0BWP7T port map(A => FAx1_c(1), B => hunderdmin(2), CI => pixel_x(2), CO => FAx1_c(2), S => full_adder_x1(2));
  FAx3_fa1_g41 : AO22D0BWP7T port map(A1 => FAx3_fa1_n_0, A2 => FAx3_c(0), B1 => shifter_rightxout(1), B2 => center_a(1), Z => FAx3_c(1));
  FAx3_fa1_g45 : CKXOR2D0BWP7T port map(A1 => shifter_rightxout(1), A2 => center_a(1), Z => FAx3_fa1_n_0);
  FAx3_fa1_g2 : CKXOR2D4BWP7T port map(A1 => FAx3_c(0), A2 => FAx3_fa1_n_0, Z => a(1));
  FAx1_fa3_g2 : FA1D0BWP7T port map(A => FAx1_c(2), B => hunderdmin(3), CI => pixel_x(3), CO => FAx1_c(3), S => full_adder_x1(3));
  FAx1_ha1_g17 : HA1D0BWP7T port map(A => hunderdmin(0), B => pixel_x(0), CO => FAx1_c(0), S => full_adder_x1(0));
  tie_0_cell : TIELBWP7T port map(ZN => logic_0_1_net);

end synthesised;
