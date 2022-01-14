configuration shift_sright_behaviour_cfg of shift_sright is
   for behaviour
      for all: shifter_right use configuration work.shifter_right_behavioural_cfg;
      end for;
      for all: shifter_right2 use configuration work.shifter_right2_behavioural_cfg;
      end for;
      for all: shifter_right3 use configuration work.shifter_right3_behavioural_cfg;
      end for;
      for all: shifter_right4 use configuration work.shifter_right4_behavioural_cfg;
      end for;
      for all: shifter_right5 use configuration work.shifter_right5_behavioural_cfg;
      end for;
      for all: shifter_right6 use configuration work.shifter_right6_behavioural_cfg;
      end for;
      for all: shifter_right7 use configuration work.shifter_right7_behavioural_cfg;
      end for;
      for all: mux_position use configuration work.mux_position_behavioural_cfg;
      end for;
   end for;
end shift_sright_behaviour_cfg;
