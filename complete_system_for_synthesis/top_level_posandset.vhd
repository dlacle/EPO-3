library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_top_level is
    Port (reset : in std_logic;
      clk : in std_logic;
      pos : in std_logic_vector (2 downto 0);
      zoom : in std_logic_vector (2 downto 0);
      cs        : out std_logic;
      sck       : out std_logic;
      mosi      : out std_logic;
      miso      : in  std_logic;
      h_sync     : out std_logic;
      v_sync     : out std_logic;
      red       : out std_logic;
      green     : out std_logic;
      blue      : out std_logic;
      frame_ready: out std_logic
      );
end top_top_level;

architecture behavior of top_top_level is
  component top_level is
    Port (reset : in std_logic;
      clk : in std_logic;
			c : in std_logic_vector (11 downto 0);
			d : in std_logic_vector (11 downto 0);
			newcoordinate_given : in std_logic;
			memory_ready: in std_logic;
      output : out  STD_LOGIC_VECTOR (2 downto 0);
      final_iteration : out  STD_LOGIC);
  end component;

  component main is
    port(clk : in  std_logic;
	   reset: in std_logic;
	   zoom	: in std_logic_vector(2 downto 0);
	   position : in std_logic_vector(2 downto 0);
	   pixel_ready : in std_logic;
	   new_coordinate : out std_logic;
	   a	: out std_logic_vector(11 downto 0);
	   b	: out std_logic_vector(11 downto 0);
	   frame_ready : out std_logic
	 );
  end component;
  
  component main_fsm_top is
	  port (
	      clk     : in  std_logic;
        reset     : in  std_logic;

        cs        : out std_logic;
        sck       : out std_logic;
        mosi      : out std_logic;
        miso      : in  std_logic;
        
        color_in  : in std_logic_vector(2 downto 0);
        color_valid : in std_logic;
        memory_ready : out std_logic;
		  reset_poszoom : out std_logic;

        h_sync     : out std_logic;
        v_sync     : out std_logic;
        red       : out std_logic;
        green     : out std_logic;
        blue      : out std_logic
      );
  end component;


signal c_tussen, d_tussen : std_logic_vector(11 downto 0);
signal final_itt : std_logic;
signal new_coordinate_tussen, memory_ready_tussen, reset_poszoom : std_logic;
signal color : std_logic_vector (2 downto 0);

begin 

setcalc:top_level port map (
      reset => reset, 
      clk => clk,
      c => c_tussen, 
      d => d_tussen, 
      newcoordinate_given => new_coordinate_tussen,
      memory_ready => memory_ready_tussen,
      output => color,
      final_iteration => final_itt
      );
      
poszoom:main port map (
      clk => clk,
      reset=>reset, 
      zoom => zoom, 
      position => pos, 
      pixel_ready => final_itt, 
      new_coordinate => new_coordinate_tussen,
      a => c_tussen,
      b => d_tussen,
      frame_ready => frame_ready
      );

memoryvga:main_fsm_top port map (
      clk => clk, 
      reset => reset, 
      cs => cs, 
      sck => sck,
      mosi => mosi, 
      miso => miso,
      color_in => color,
      color_valid => final_itt, 
      memory_ready => memory_ready_tussen,
		reset_poszoom => reset_poszoom,
      h_sync => h_sync, 
      v_sync => v_sync, 
      red => red, 
      green => green, 
      blue => blue
      );

end behavior;



