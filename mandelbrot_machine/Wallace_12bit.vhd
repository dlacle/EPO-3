library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use UNISIM.VComponents.all;

entity wallace_12bit is
    Port ( a : in  STD_LOGIC_VECTOR (11 downto 0);
           b : in  STD_LOGIC_VECTOR (11 downto 0);
           output : out  STD_LOGIC_VECTOR (23 downto 0));
end wallace_12bit;

architecture wallace_12bit_arch of wallace_12bit is

component fa
   Port ( a : in  STD_LOGIC;
          b : in  STD_LOGIC;
          cin : in  STD_LOGIC;
          s : out  STD_LOGIC;
          cout : out  STD_LOGIC);
end component;

component ha
	    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

signal s: std_logic_vector(23 downto 0);

signal s1_1: STD_LOGIC_vector(12 downto 1);
signal s1_2: std_logic_vector(13 downto 2);
signal s1_3: std_logic_vector(14 downto 3);
signal s1_4: std_logic_vector(15 downto 4);
signal s1_5: std_logic_vector(16 downto 5);
signal s1_6: std_logic_vector(17 downto 6);
signal s1_7: std_logic_vector(18 downto 7);
signal s1_8: std_logic_vector(19 downto 8);
signal s1_9: std_logic_vector(20 downto 9);
signal s1_10: std_logic_vector(21 downto 10);
signal s1_11: std_logic_vector(22 downto 11);
signal s1_12: std_logic_vector(23 downto 12);


signal s2_1: std_logic_vector(14 downto 3);
signal s2_2: std_logic_vector(14 downto 3);
signal s2_3: std_logic_vector(17 downto 4);
signal s2_4: std_logic_vector(17 downto 6);
signal s2_5: std_logic_vector(20 downto 7);
signal s2_6: std_logic_vector(20 downto 9);
signal s2_7: std_logic_vector(23 downto 10);
signal s2_8: std_logic_vector(23 downto 12);


signal s3_1: std_logic_vector(15 downto 4);
signal s3_2: std_logic_vector(17 downto 4);
signal s3_3: std_logic_vector(20 downto 6);
signal s3_4: std_logic_vector(21 downto 8);
signal s3_5: std_logic_vector(23 downto 10);
signal s3_6: std_logic_vector(23 downto 12);


signal s4_1: std_logic_vector(18 downto 5);
signal s4_2: std_logic_vector(20 downto 5);
signal s4_3: std_logic_vector(23 downto 8);
signal s4_4: std_logic_vector(24 downto 11);


signal s5_1: std_logic_vector(21 downto 6);
signal s5_2: std_logic_vector(23 downto 6);
signal s5_3: std_logic_vector(24 downto 11);

signal s6_1: std_logic_vector(24 downto 7);
signal s6_2: std_logic_vector(24 downto 7);

signal c : std_logic_vector(17 downto 0);






begin
process(a,b)
	begin
	
		for j in 0 to 11 loop
			s1_1(j+1) <= a(0) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_2(j+2) <= a(1) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_3(j+3) <= a(2) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_4(j+4) <= a(3) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_5(j+5) <= a(4) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_6(j+6) <= a(5) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_7(j+7) <= a(6) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_8(j+8) <= a(7) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_9(j+9) <= a(8) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_10(j+10) <= a(9) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_11(j+11) <= a(10) and b(j);
		end loop;
		
		for j in 0 to 11 loop
			s1_12(j+12) <= a(11) and b(j);
		end loop;
	
end process;
 
	--STAGE 1
	--1
	s(0) <= s1_1(1);
	--2
	ha1: ha port map (a => s1_1(2), b => s1_2(2), s => s(1), c => s2_1(3));
	--3
	fa1: fa port map (a => s1_1(3), b => s1_2(3), cin => s1_3(3), s => s2_2(3), cout => s2_1(4));
	--4
	s2_3(4)<=s1_4(4);
	fa2: fa port map (a => s1_3(4), b => s1_2(4), cin => s1_1(4), s => s2_2(4), cout => s2_1(5));
	--5
	fa3: fa port map (a => s1_3(5), b => s1_2(5), cin => s1_1(5), s => s2_2(5), cout => s2_1(6));
	ha2: ha port map (a => s1_5(5), b => s1_4(5), s => s2_3(5), c => s2_2(6));
	--6
	fa4: fa port map (a => s1_3(6), b => s1_2(6), cin => s1_1(6), s => s2_3(6), cout => s2_1(7));
	fa5: fa port map (a => s1_6(6), b => s1_5(6), cin => s1_4(6), s => s2_4(6), cout => s2_2(7));
	--7
	s2_5(7) <= s1_7(7);
	fa6: fa port map (a => s1_3(7), b => s1_2(7), cin => s1_1(7), s => s2_3(7), cout => s2_1(8));
	fa7: fa port map (a => s1_6(7), b => s1_5(7), cin => s1_4(7), s => s2_4(7), cout => s2_2(8));
	--8
	fa8: fa port map (a => s1_3(8), b => s1_2(8), cin => s1_1(8), s => s2_3(8), cout => s2_1(9));
	fa9: fa port map (a => s1_6(8), b => s1_5(8), cin => s1_4(8), s => s2_4(8), cout => s2_2(9));
	ha3: ha port map (a => s1_8(8), b => s1_7(8), s => s2_5(8), c => s2_3(9));
	--9
	fa10: fa port map (a => s1_3(9), b => s1_2(9), cin => s1_1(9), s => s2_4(9), cout => s2_1(10));
	fa11: fa port map (a => s1_6(9), b => s1_5(9), cin => s1_4(9), s => s2_5(9), cout => s2_2(10));
	fa12: fa port map (a => s1_9(9), b => s1_8(9), cin => s1_7(9), s => s2_6(9), cout => s2_3(10));
	--10
	s2_7(10) <= s1_10(10);
	fa13: fa port map (a => s1_3(10), b => s1_2(10), cin => s1_1(10), s => s2_4(10), cout => s2_1(11));
	fa14: fa port map (a => s1_6(10), b => s1_5(10), cin => s1_4(10), s => s2_5(10), cout => s2_2(11));
	fa15: fa port map (a => s1_9(10), b => s1_8(10), cin => s1_7(10), s => s2_6(10), cout => s2_3(11));
	--11
	fa16: fa port map (a => s1_3(11), b => s1_2(11), cin => s1_1(11), s => s2_4(11), cout => s2_1(12));
	fa17: fa port map (a => s1_6(11), b => s1_5(11), cin => s1_4(11), s => s2_5(11), cout => s2_2(12));
	fa18: fa port map (a => s1_9(11), b => s1_8(11), cin => s1_7(11), s => s2_6(11), cout => s2_3(12));
	ha4: ha port map (a => s1_11(11), b => s1_10(11), s => s2_7(11), c => s2_4(12));
	--12
	fa19: fa port map (a => s1_3(12), b => s1_2(12), cin => s1_1(12), s => s2_5(12), cout => s2_1(13));
	fa20: fa port map (a => s1_6(12), b => s1_5(12), cin => s1_4(12), s => s2_6(12), cout => s2_2(13));
	fa21: fa port map (a => s1_9(12), b => s1_8(12), cin => s1_7(12), s => s2_7(12), cout => s2_3(13));
	fa22: fa port map (a => s1_12(12), b => s1_11(12), cin => s1_10(12), s => s2_8(12), cout => s2_4(13));
	--13
	ha5: ha port map (a => s1_3(13), b => s1_2(13), s => s2_5(13), c => s2_1(14));
	fa23: fa port map (a => s1_6(13), b => s1_5(13), cin => s1_4(13), s => s2_6(13), cout => s2_2(14));
	fa24: fa port map (a => s1_9(13), b => s1_8(13), cin => s1_7(13), s => s2_7(13), cout => s2_3(14));
	fa25: fa port map (a => s1_12(13), b => s1_11(13), cin => s1_10(13), s => s2_8(13), cout => s2_4(14));
	--14
	s2_5(14) <= s1_3(14);
	fa26: fa port map (a => s1_6(14), b => s1_5(14), cin => s1_4(14), s => s2_6(14), cout => s2_3(15));
	fa27: fa port map (a => s1_9(14), b => s1_8(14), cin => s1_7(14), s => s2_7(14), cout => s2_4(15));
	fa28: fa port map (a => s1_12(14), b => s1_11(14), cin => s1_10(14), s => s2_8(14), cout => s2_5(15));
	--15
	fa29: fa port map (a => s1_6(15), b => s1_5(15), cin => s1_4(15), s => s2_6(15), cout => s2_3(16));
	fa30: fa port map (a => s1_9(15), b => s1_8(15), cin => s1_7(15), s => s2_7(15), cout => s2_4(16));
	fa31: fa port map (a => s1_12(15), b => s1_11(15), cin => s1_10(15), s => s2_8(15), cout => s2_5(16));
	--16
	ha6: ha port map (a => s1_6(16), b => s1_5(16), s => s2_6(16), c => s2_3(17));
	fa32: fa port map (a => s1_9(16), b => s1_8(16), cin => s1_7(16), s => s2_7(16), cout => s2_4(17));
	fa33: fa port map (a => s1_12(16), b => s1_11(16), cin => s1_10(16), s => s2_8(16), cout => s2_5(17));
	--17
	s2_6(17) <= s1_6(17);
	fa34: fa port map (a => s1_9(17), b => s1_8(17), cin => s1_7(17), s => s2_7(17), cout => s2_5(18));
	fa35: fa port map (a => s1_12(17), b => s1_11(17), cin => s1_10(17), s => s2_8(17), cout => s2_6(18));
	--18
	fa36: fa port map (a => s1_9(18), b => s1_8(18), cin => s1_7(18), s => s2_7(18), cout => s2_5(19));
	fa37: fa port map (a => s1_12(18), b => s1_11(18), cin => s1_10(18), s => s2_8(18), cout => s2_6(19));
	--19
	ha7: ha port map (a => s1_9(19), b => s1_8(19), s => s2_7(19), c => s2_5(20));
	fa38: fa port map (a => s1_12(19), b => s1_11(19), cin => s1_10(19), s => s2_8(19), cout => s2_6(20));
	--20
	s2_7(20) <= s1_9(20);
	fa39: fa port map (a => s1_12(20), b => s1_11(20), cin => s1_10(20), s => s2_8(20), cout => s2_7(21));
	--21
	fa40: fa port map (a => s1_12(21), b => s1_11(21), cin => s1_10(21), s => s2_8(21), cout => s2_7(22));
	--22
	ha8: ha port map (a => s1_12(22), b => s1_11(22),  s => s2_8(22), c => s2_7(23));
	--23
	s2_8(23) <= s1_12(23);
	
	--STAGE 2
	--3
	ha9: ha port map (a => s2_2(3), b => s2_1(3),  s => s(2), c => s3_1(4));
	--4
	fa41: fa port map (a => s2_3(4), b => s2_2(4), cin => s2_1(4), s => s3_2(4), cout => s3_1(5));
	--5
	fa42: fa port map (a => s2_3(5), b => s2_2(5), cin => s2_1(5), s => s3_2(5), cout => s3_1(6));
	--6
	s3_3(6) <= s2_4(6);
	fa43: fa port map (a => s2_3(6), b => s2_2(6), cin => s2_1(6), s => s3_2(6), cout => s3_1(7));
	--7
	fa44: fa port map (a => s2_3(7), b => s2_2(7), cin => s2_1(7), s => s3_2(7), cout => s3_1(8));
	ha10: ha port map (a => s2_5(7), b => s2_4(7), s => s3_3(7), c => s3_2(8));
	--8
	fa45: fa port map (a => s2_3(8), b => s2_2(8), cin => s2_1(8), s => s3_3(8), cout => s3_1(9));
	ha11: ha port map (a => s2_5(8), b => s2_4(8), s => s3_4(8), c => s3_2(9));
	--9
	fa46: fa port map (a => s2_3(9), b => s2_2(9), cin => s2_1(9), s => s3_3(9), cout => s3_1(10));
	fa47: fa port map (a => s2_6(9), b => s2_5(9), cin => s2_4(9), s => s3_4(9), cout => s3_2(10));
	--10
	fa48: fa port map (a => s2_3(10), b => s2_2(10), cin => s2_1(10), s => s3_3(10), cout => s3_1(11));
	fa49: fa port map (a => s2_6(10), b => s2_5(10), cin => s2_4(10), s => s3_4(10), cout => s3_2(11));
	--11
	fa50: fa port map (a => s2_3(11), b => s2_2(11), cin => s2_1(11), s => s3_3(11), cout => s3_1(12));
	fa51: fa port map (a => s2_6(11), b => s2_5(11), cin => s2_4(11), s => s3_4(11), cout => s3_2(12));
	--12
	fa52: fa port map (a => s2_3(12), b => s2_2(12), cin => s2_1(12), s => s3_3(12), cout => s3_1(13));
	fa53: fa port map (a => s2_6(12), b => s2_5(12), cin => s2_4(12), s => s3_4(12), cout => s3_2(13));
	--13
	fa54: fa port map (a => s2_3(13), b => s2_2(13), cin => s2_1(13), s => s3_3(13), cout => s3_1(14));
	fa55: fa port map (a => s2_6(13), b => s2_5(13), cin => s2_4(13), s => s3_4(13), cout => s3_2(14));
	--14
	fa56: fa port map (a => s2_3(14), b => s2_2(14), cin => s2_1(14), s => s3_3(14), cout => s3_1(15));
	fa57: fa port map (a => s2_6(14), b => s2_5(14), cin => s2_4(14), s => s3_4(14), cout => s3_2(15));
	--15
	s3_3(15) <= s2_3(15);
	fa58: fa port map (a => s2_6(15), b => s2_5(15), cin => s2_4(15), s => s3_4(15), cout => s3_2(16));
	--16
	s3_3(16) <= s2_3(16);
	fa59: fa port map (a => s2_6(16), b => s2_5(16), cin => s2_4(16), s => s3_4(16), cout => s3_2(17));
	--17
	s3_3(17) <= s2_3(17);
	fa60: fa port map (a => s2_6(17), b => s2_5(17), cin => s2_4(17), s => s3_4(17), cout => s3_3(18));
	--18
	ha12: ha port map (a => s2_6(18), b => s2_5(18), s => s3_4(18), c => s3_3(19));
	--19
	ha13: ha port map (a => s2_6(19), b => s2_5(19), s => s3_4(19), c => s3_3(20));
	--20
	ha14: ha port map (a => s2_6(20), b => s2_5(20), s => s3_4(20), c => s3_4(21));
	--21
	--22
	--23
	
	--
	s3_5 <= s2_7;
	s3_6 <= s2_8;
	
	--STAGE 3
	--4
	ha15: ha port map (a => s3_2(4), b => s3_1(4),  s => s(3), c => s4_1(5));
	--5
	ha16: ha port map (a => s3_2(5), b => s3_1(5),  s => s4_2(5), c => s4_1(6));
	--6
	fa61: fa port map (a => s3_3(6), b => s3_2(6), cin => s3_1(6), s => s4_2(6), cout => s4_1(7));
	--7
	fa62: fa port map (a => s3_3(7), b => s3_2(7), cin => s3_1(7), s => s4_2(7), cout => s4_1(8));
	--8
	s4_3(8) <= s3_4(8);
	fa63: fa port map (a => s3_3(8), b => s3_2(8), cin => s3_1(8), s => s4_2(8), cout => s4_1(9));
	--9
	s4_3(9) <= s3_4(9);
	fa64: fa port map (a => s3_3(9), b => s3_2(9), cin => s3_1(9), s => s4_2(9), cout => s4_1(10));
	--10
	fa65: fa port map (a => s3_3(10), b => s3_2(10), cin => s3_1(10), s => s4_2(10), cout => s4_1(11));
	ha17: ha port map (a => s3_5(10), b => s3_4(10),  s => s4_3(10), c => s4_2(11));
	--11
	fa66: fa port map (a => s3_3(11), b => s3_2(11), cin => s3_1(11), s => s4_3(11), cout => s4_1(12));
	ha18: ha port map (a => s3_5(11), b => s3_4(11),  s => s4_4(11), c => s4_2(12));
	--12
	fa67: fa port map (a => s3_3(12), b => s3_2(12), cin => s3_1(12), s => s4_3(12), cout => s4_1(13));
	fa68: fa port map (a => s3_6(12), b => s3_5(12), cin => s3_4(12), s => s4_4(12), cout => s4_2(13));
	--13
	fa69: fa port map (a => s3_3(13), b => s3_2(13), cin => s3_1(13), s => s4_3(13), cout => s4_1(14));
	fa70: fa port map (a => s3_6(13), b => s3_5(13), cin => s3_4(13), s => s4_4(13), cout => s4_2(14));
	--14
	fa71: fa port map (a => s3_3(14), b => s3_2(14), cin => s3_1(14), s => s4_3(14), cout => s4_1(15));
	fa72: fa port map (a => s3_6(14), b => s3_5(14), cin => s3_4(14), s => s4_4(14), cout => s4_2(15));
	--15
	fa73: fa port map (a => s3_3(15), b => s3_2(15), cin => s3_1(15), s => s4_3(15), cout => s4_1(16));
	fa74: fa port map (a => s3_6(15), b => s3_5(15), cin => s3_4(15), s => s4_4(15), cout => s4_2(16));
	--16
	ha19: ha port map (a => s3_3(16), b => s3_2(16), s => s4_3(16), c => s4_1(17));
	fa75: fa port map (a => s3_6(16), b => s3_5(16), cin => s3_4(16), s => s4_4(16), cout => s4_2(17));
	--17
	ha20: ha port map (a => s3_3(17), b => s3_2(17), s => s4_3(17), c => s4_1(18));
	fa76: fa port map (a => s3_6(17), b => s3_5(17), cin => s3_4(17), s => s4_4(17), cout => s4_2(18));
	--18
	s4_3(18) <= s3_3(18);
	fa77: fa port map (a => s3_6(18), b => s3_5(18), cin => s3_4(18), s => s4_4(18), cout => s4_2(19));
	--19
	s4_3(19) <= s3_3(19);
	fa78: fa port map (a => s3_6(19), b => s3_5(19), cin => s3_4(19), s => s4_4(19), cout => s4_2(20));
	--20
	s4_3(20) <= s3_3(20);
	fa79: fa port map (a => s3_6(20), b => s3_5(20), cin => s3_4(20), s => s4_4(20), cout => s4_3(21));
	--21
	fa80: fa port map (a => s3_6(21), b => s3_5(21), cin => s3_4(21), s => s4_4(21), cout => s4_3(22));
	--22
	ha21: ha port map (a => s3_6(22), b => s3_5(22), s => s4_4(22), c => s4_3(23));
	--23
	ha22: ha port map (a => s3_6(23), b => s3_5(23), s => s4_4(23), c => s4_4(24));
	
	
	--STAGE 4
	--5
	ha23: ha port map (a => s4_2(5), b => s4_1(5),  s => s(4), c => s5_1(6));
	--6
	ha24: ha port map (a => s4_2(6), b => s4_1(6),  s => s5_2(6), c => s5_1(7));
	--7
	ha25: ha port map (a => s4_2(7), b => s4_1(7),  s => s5_2(7), c => s5_1(8));
	--8
	fa81: fa port map (a => s4_3(8), b => s4_2(8), cin => s4_1(8), s => s5_2(8), cout => s5_1(9));
	--9
	fa82: fa port map (a => s4_3(9), b => s4_2(9), cin => s4_1(9), s => s5_2(9), cout => s5_1(10));
	--10
	fa83: fa port map (a => s4_3(10), b => s4_2(10), cin => s4_1(10), s => s5_2(10), cout => s5_1(11));
	--11
	fa84: fa port map (a => s4_3(11), b => s4_2(11), cin => s4_1(11), s => s5_2(11), cout => s5_1(12));
	--12
	fa85: fa port map (a => s4_3(12), b => s4_2(12), cin => s4_1(12), s => s5_2(12), cout => s5_1(13));
	--13
	fa86: fa port map (a => s4_3(13), b => s4_2(13), cin => s4_1(13), s => s5_2(13), cout => s5_1(14));
	--14
	fa87: fa port map (a => s4_3(14), b => s4_2(14), cin => s4_1(14), s => s5_2(14), cout => s5_1(15));
	--15
	fa88: fa port map (a => s4_3(15), b => s4_2(15), cin => s4_1(15), s => s5_2(15), cout => s5_1(16));
	--16
	fa89: fa port map (a => s4_3(16), b => s4_2(16), cin => s4_1(16), s => s5_2(16), cout => s5_1(17));
	--17
	fa90: fa port map (a => s4_3(17), b => s4_2(17), cin => s4_1(17), s => s5_2(17), cout => s5_1(18));
	--18
	fa91: fa port map (a => s4_3(18), b => s4_2(18), cin => s4_1(18), s => s5_2(18), cout => s5_1(19));
	--19
	ha26: ha port map (a => s4_3(19), b => s4_2(19), s => s5_2(19), c => s5_1(20));
	--20
	ha27: ha port map (a => s4_3(20), b => s4_2(20), s => s5_2(20), c => s5_1(21));
	--21
	--22
	--23
	--24
	s5_2(23 downto 21) <= s4_3(23 downto 21);
	s5_3 <= s4_4;
	--STAGE 5
	--6
	ha28: ha port map (a => s5_2(6), b => s5_1(6),  s => s(5), c => s6_1(7));
	--7
	ha29: ha port map (a => s5_2(7), b => s5_1(7),  s => s6_2(7), c => s6_1(8));
	--8
	ha30: ha port map (a => s5_2(8), b => s5_1(8),  s => s6_2(8), c => s6_1(9));
	--9
	ha31: ha port map (a => s5_2(9), b => s5_1(9),  s => s6_2(9), c => s6_1(10));
	--10
	ha32: ha port map (a => s5_2(10), b => s5_1(10),  s => s6_2(10), c => s6_1(11));
	--11
	fa92: fa port map (a => s5_3(11), b => s5_2(11), cin => s5_1(11), s => s6_2(11), cout => s6_1(12));
	--12
	fa93: fa port map (a => s5_3(12), b => s5_2(12), cin => s5_1(12), s => s6_2(12), cout => s6_1(13));
	--13
	fa94: fa port map (a => s5_3(13), b => s5_2(13), cin => s5_1(13), s => s6_2(13), cout => s6_1(14));
	--14
	fa95: fa port map (a => s5_3(14), b => s5_2(14), cin => s5_1(14), s => s6_2(14), cout => s6_1(15));
	--15
	fa96: fa port map (a => s5_3(15), b => s5_2(15), cin => s5_1(15), s => s6_2(15), cout => s6_1(16));
	--16
	fa97: fa port map (a => s5_3(16), b => s5_2(16), cin => s5_1(16), s => s6_2(16), cout => s6_1(17));
	--17
	fa98: fa port map (a => s5_3(17), b => s5_2(17), cin => s5_1(17), s => s6_2(17), cout => s6_1(18));
	--18
	fa99: fa port map (a => s5_3(18), b => s5_2(18), cin => s5_1(18), s => s6_2(18), cout => s6_1(19));
	--19
	fa100: fa port map (a => s5_3(19), b => s5_2(19), cin => s5_1(19), s => s6_2(19), cout => s6_1(20));
	--20
	fa101: fa port map (a => s5_3(20), b => s5_2(20), cin => s5_1(20), s => s6_2(20), cout => s6_1(21));
	--21
	fa102: fa port map (a => s5_3(21), b => s5_2(21), cin => s5_1(21), s => s6_2(21), cout => s6_1(22));
	--22
	ha33: ha port map (a => s5_2(22), b => s5_3(22),  s => s6_2(22), c => s6_1(23));
	--23
	ha34: ha port map (a => s5_2(23), b => s5_3(23),  s => s6_2(23), c => s6_1(24));
	--24
	s6_2(24) <= s5_3(24);
	
	-- ADDER ROWS
	--7
	ha35: ha port map (a => s6_1(7), b => s6_2(7),  s => s(6), c => c(0));
	--8
	fa103: fa port map (a => s6_1(8), b => s6_2(8), cin => c(0), s => s(7), cout => c(1));
	--9
	fa104: fa port map (a => s6_1(9), b => s6_2(9), cin => c(1), s => s(8), cout => c(2));
	--10
	fa105: fa port map (a => s6_1(10), b => s6_2(10), cin => c(2), s => s(9), cout => c(3));
	--11
	fa106: fa port map (a => s6_1(11), b => s6_2(11), cin => c(3), s => s(10), cout => c(4));
	--12
	fa107: fa port map (a => s6_1(12), b => s6_2(12), cin => c(4), s => s(11), cout => c(5));
	--13
	fa108: fa port map (a => s6_1(13), b => s6_2(13), cin => c(5), s => s(12), cout => c(6));
	--14
	fa109: fa port map (a => s6_1(14), b => s6_2(14), cin => c(6), s => s(13), cout => c(7));
	--15
	fa110: fa port map (a => s6_1(15), b => s6_2(15), cin => c(7), s => s(14), cout => c(8));
	--16
	fa111: fa port map (a => s6_1(16), b => s6_2(16), cin => c(8), s => s(15), cout => c(9));
	--17
	fa112: fa port map (a => s6_1(17), b => s6_2(17), cin => c(9), s => s(16), cout => c(10));
	--18
	fa113: fa port map (a => s6_1(18), b => s6_2(18), cin => c(10), s => s(17), cout => c(11));
	--19
	fa114: fa port map (a => s6_1(19), b => s6_2(19), cin => c(11), s => s(18), cout => c(12));
	--20
	fa115: fa port map (a => s6_1(20), b => s6_2(20), cin => c(12), s => s(19), cout => c(13));
	--21
	fa116: fa port map (a => s6_1(21), b => s6_2(21), cin => c(13), s => s(20), cout => c(14));
	--22
	fa117: fa port map (a => s6_1(22), b => s6_2(22), cin => c(14), s => s(21), cout => c(15));
	--23
	fa118: fa port map (a => s6_1(23), b => s6_2(23), cin => c(15), s => s(22), cout => c(16));
	--24
	fa119: fa port map (a => s6_1(24), b => s6_2(24), cin => c(16), s => s(23), cout => c(17));
	
	output <= s;

end architecture;