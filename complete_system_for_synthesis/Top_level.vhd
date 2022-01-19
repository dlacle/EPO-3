library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    Port (reset : in std_logic;
      clk : in std_logic;
			c : in std_logic_vector (11 downto 0);
			d : in std_logic_vector (11 downto 0);
			newcoordinate_given : in std_logic;
			memory_ready: in std_logic;
      output : out  STD_LOGIC_VECTOR (2 downto 0);
      final_iteration : out  STD_LOGIC);
end top_level;

architecture behavior of top_level is
  component imaginary_calc is
		port(reset: in std_logic;
      a : in std_logic_vector(11 downto 0);
      b : in std_logic_vector(11 downto 0);
      d : in std_logic_vector(11 downto 0);
      outputimaginary : out std_logic_vector(11 downto 0);
      div : out std_logic);
	end component;

  component real_calc is
    port(reset: in std_logic;
      a : in std_logic_vector(11 downto 0);
      b : in std_logic_vector(11 downto 0);
      c : in std_logic_vector(11 downto 0);
      outputreal : out std_logic_vector(11 downto 0);
      div : out std_logic);
  end component;

  component counter is
    port(		
      reset : in std_logic;
      real_out : in std_logic_vector (11 downto 0);
      imaginary_out : in std_logic_vector (11 downto 0);
      clk : in std_logic;
      newcoordinate_given : in std_logic;
      memory_ready : in STD_LOGIC;
      diverged : in std_logic;
      real_in : out std_logic_vector (11 downto 0);
      imaginary_in : out std_logic_vector (11 downto 0);
      final_iteration : out  STD_LOGIC;
      counts : out  STD_LOGIC_vector(6 downto 0));
  end component;

  component color_calc is
    port(iterations : in std_logic_vector(6 downto 0);
      color : out std_logic_vector(2 downto 0));
  end component;
  
  component pos_zoom_sim is
    port (clk : in std_logic;
        reset : in std_logic;
        dip : in std_logic_vector (2 downto 0);
        c :  out std_logic_vector (11 downto 0);
        d :  out std_logic_vector (11 downto 0)
    );
  end component; 

signal real_out : std_logic_vector(11 downto 0);
signal imaginary_out: std_logic_vector(11 downto 0);
signal real_in: std_logic_vector(11 downto 0) ;
signal imaginary_in: std_logic_vector(11 downto 0);

signal iterations: std_logic_vector(6 downto 0);
signal real_div, imaginary_div, diverged: std_logic;

signal c_tussen, d_tussen : std_logic_vector(11 downto 0);

begin 

diverged <= real_div or imaginary_div;

imaginary:imaginary_calc port map (
      reset=>reset, 
      a=>real_in, 
      b=>imaginary_in, 
      d=>d, 
      outputimaginary => imaginary_out, 
      div=>imaginary_div
      );
      
reall:real_calc port map (
      reset=>reset, 
      a=>real_in, 
      b=>imaginary_in,
      c=>c, 
      outputreal=>real_out, 
      div=>real_div
      );
      
countyboi: counter port map (
      reset=>reset, 
      real_out=>real_out, 
      imaginary_out => imaginary_out, 
      clk=>clk, 
      newcoordinate_given=>newcoordinate_given, 
      memory_ready=>memory_ready, 
      diverged=>diverged, 
      real_in=>real_in, 
      imaginary_in=>imaginary_in, 
      final_iteration=>final_iteration, 
      counts=> iterations
      ); -- out and in are with reference to the combinatorial circuits

color: color_calc port map(
      iterations, 
      output
      );

end behavior;

