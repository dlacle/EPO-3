
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of shift_sright is

  component OR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  signal MUX_n_0, MUX_n_1, MUX_n_2, MUX_n_3, MUX_n_4 : std_logic;
  signal MUX_n_5, MUX_n_6, MUX_n_7, MUX_n_8, MUX_n_9 : std_logic;
  signal MUX_n_10, MUX_n_11, MUX_n_12, MUX_n_13, MUX_n_14 : std_logic;
  signal MUX_n_15, MUX_n_17, MUX_n_18, MUX_n_19, MUX_n_20 : std_logic;
  signal MUX_n_21, MUX_n_22, MUX_n_24, MUX_n_25, MUX_n_26 : std_logic;
  signal MUX_n_27, MUX_n_28, MUX_n_30, MUX_n_31, MUX_n_32 : std_logic;
  signal MUX_n_34, MUX_n_35, MUX_n_36, MUX_n_37, MUX_n_38 : std_logic;
  signal MUX_n_39, MUX_n_40, MUX_n_41, MUX_n_42, MUX_n_43 : std_logic;

begin

  MUX_g739 : OR2D4BWP7T port map(A1 => MUX_n_41, A2 => MUX_n_40, Z => s_out(2));
  MUX_g740 : OR2D4BWP7T port map(A1 => MUX_n_39, A2 => MUX_n_42, Z => s_out(3));
  MUX_g741 : OR2D4BWP7T port map(A1 => MUX_n_37, A2 => MUX_n_30, Z => s_out(5));
  MUX_g742 : OR2D4BWP7T port map(A1 => MUX_n_36, A2 => MUX_n_38, Z => s_out(1));
  MUX_g743 : OR2D4BWP7T port map(A1 => MUX_n_28, A2 => MUX_n_22, Z => s_out(7));
  MUX_g744 : OR2D4BWP7T port map(A1 => MUX_n_34, A2 => MUX_n_31, Z => s_out(0));
  MUX_g745 : OR2D4BWP7T port map(A1 => MUX_n_35, A2 => MUX_n_32, Z => s_out(4));
  MUX_g746 : OR2D4BWP7T port map(A1 => MUX_n_43, A2 => MUX_n_27, Z => s_out(6));
  MUX_g747 : OAI22D0BWP7T port map(A1 => MUX_n_10, A2 => MUX_n_6, B1 => MUX_n_17, B2 => MUX_n_7, ZN => MUX_n_43);
  MUX_g748 : OAI22D0BWP7T port map(A1 => MUX_n_21, A2 => MUX_n_6, B1 => MUX_n_13, B2 => MUX_n_1, ZN => MUX_n_42);
  MUX_g749 : OAI22D0BWP7T port map(A1 => MUX_n_10, A2 => MUX_n_7, B1 => MUX_n_11, B2 => MUX_n_2, ZN => MUX_n_41);
  MUX_g750 : OAI22D0BWP7T port map(A1 => MUX_n_14, A2 => MUX_n_6, B1 => MUX_n_20, B2 => MUX_n_1, ZN => MUX_n_40);
  MUX_g751 : OAI22D0BWP7T port map(A1 => MUX_n_12, A2 => MUX_n_7, B1 => MUX_n_19, B2 => MUX_n_2, ZN => MUX_n_39);
  MUX_g752 : OAI22D0BWP7T port map(A1 => MUX_n_21, A2 => MUX_n_1, B1 => MUX_n_12, B2 => MUX_n_2, ZN => MUX_n_38);
  MUX_g753 : OAI22D0BWP7T port map(A1 => MUX_n_13, A2 => MUX_n_6, B1 => MUX_n_12, B2 => MUX_n_1, ZN => MUX_n_37);
  MUX_g754 : OAI22D0BWP7T port map(A1 => MUX_n_9, A2 => MUX_n_6, B1 => MUX_n_13, B2 => MUX_n_7, ZN => MUX_n_36);
  MUX_g755 : OAI22D0BWP7T port map(A1 => MUX_n_20, A2 => MUX_n_6, B1 => MUX_n_10, B2 => MUX_n_1, ZN => MUX_n_35);
  MUX_g756 : OAI22D0BWP7T port map(A1 => MUX_n_8, A2 => MUX_n_6, B1 => MUX_n_10, B2 => MUX_n_2, ZN => MUX_n_34);
  MUX_g757 : OR2D4BWP7T port map(A1 => MUX_n_24, A2 => MUX_n_25, Z => s_out(8));
  MUX_g758 : OAI22D0BWP7T port map(A1 => MUX_n_11, A2 => MUX_n_7, B1 => MUX_n_17, B2 => MUX_n_2, ZN => MUX_n_32);
  MUX_g759 : OAI22D0BWP7T port map(A1 => MUX_n_20, A2 => MUX_n_7, B1 => MUX_n_14, B2 => MUX_n_1, ZN => MUX_n_31);
  MUX_g760 : OAI22D0BWP7T port map(A1 => MUX_n_19, A2 => MUX_n_7, B1 => MUX_n_3, B2 => MUX_n_2, ZN => MUX_n_30);
  MUX_g761 : OR2D4BWP7T port map(A1 => MUX_n_26, A2 => MUX_n_15, Z => s_out(9));
  MUX_g762 : OAI22D0BWP7T port map(A1 => MUX_n_19, A2 => MUX_n_1, B1 => MUX_n_3, B2 => MUX_n_7, ZN => MUX_n_28);
  MUX_g763 : NR2D0BWP7T port map(A1 => MUX_n_11, A2 => MUX_n_1, ZN => MUX_n_27);
  MUX_g764 : NR2D0BWP7T port map(A1 => MUX_n_19, A2 => MUX_n_6, ZN => MUX_n_26);
  MUX_g765 : NR2D0BWP7T port map(A1 => MUX_n_17, A2 => MUX_n_1, ZN => MUX_n_25);
  MUX_g766 : NR2D0BWP7T port map(A1 => MUX_n_11, A2 => MUX_n_6, ZN => MUX_n_24);
  MUX_g767 : CKAN2D4BWP7T port map(A1 => MUX_n_18, A2 => MUX_n_5, Z => s_out(10));
  MUX_g768 : NR2D0BWP7T port map(A1 => MUX_n_12, A2 => MUX_n_6, ZN => MUX_n_22);
  MUX_g769 : CKND1BWP7T port map(I => MUX_n_17, ZN => MUX_n_18);
  MUX_g770 : CKAN2D4BWP7T port map(A1 => MUX_n_4, A2 => MUX_n_5, Z => s_out(11));
  MUX_g771 : NR2D0BWP7T port map(A1 => MUX_n_3, A2 => MUX_n_1, ZN => MUX_n_15);
  MUX_g772 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(3), B1 => s(0), B2 => s_in(4), ZN => MUX_n_21);
  MUX_g773 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(4), B1 => s(0), B2 => s_in(5), ZN => MUX_n_20);
  MUX_g774 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(9), B1 => s(0), B2 => s_in(10), ZN => MUX_n_19);
  MUX_g775 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(10), B1 => s(0), B2 => s_in(11), ZN => MUX_n_17);
  MUX_g776 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(1), B1 => s(0), B2 => s_in(2), ZN => MUX_n_9);
  MUX_g777 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(0), B1 => s(0), B2 => s_in(1), ZN => MUX_n_8);
  MUX_g778 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(2), B1 => s(0), B2 => s_in(3), ZN => MUX_n_14);
  MUX_g779 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(5), B1 => s(0), B2 => s_in(6), ZN => MUX_n_13);
  MUX_g780 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(7), B1 => s(0), B2 => s_in(8), ZN => MUX_n_12);
  MUX_g781 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(8), B1 => s(0), B2 => s_in(9), ZN => MUX_n_11);
  MUX_g782 : AOI22D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(6), B1 => s(0), B2 => s_in(7), ZN => MUX_n_10);
  MUX_g783 : INVD1BWP7T port map(I => MUX_n_6, ZN => MUX_n_5);
  MUX_g784 : IND2D0BWP7T port map(A1 => s(1), B1 => s(2), ZN => MUX_n_7);
  MUX_g785 : OR2D0BWP7T port map(A1 => s(1), A2 => s(2), Z => MUX_n_6);
  MUX_g786 : CKND1BWP7T port map(I => MUX_n_3, ZN => MUX_n_4);
  MUX_g787 : ND2D0BWP7T port map(A1 => MUX_n_0, A2 => s_in(11), ZN => MUX_n_3);
  MUX_g788 : ND2D0BWP7T port map(A1 => s(1), A2 => s(2), ZN => MUX_n_2);
  MUX_g789 : IND2D0BWP7T port map(A1 => s(2), B1 => s(1), ZN => MUX_n_1);
  MUX_g790 : INVD1BWP7T port map(I => s(0), ZN => MUX_n_0);

end synthesised;
