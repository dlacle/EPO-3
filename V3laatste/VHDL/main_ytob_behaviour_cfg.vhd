configuration main_ytob_behaviour_cfg of main_ytob is
   for behaviour
      for all: full_adder_3x use configuration work.full_adder_3x_behavioral_cfg;
      end for;
      for all: shifter_left_4 use configuration work.shifter_left_4_behavioural_cfg;
      end for;
      for all: shifter_left_2 use configuration work.shifter_left_2_behavioural_cfg;
      end for;
      for all: shift_sright use configuration work.shift_sright_behaviour_cfg;
      end for;
      for all: mux_position use configuration work.mux_position_behavioural_cfg;
      end for;
   end for;
end main_ytob_behaviour_cfg;
