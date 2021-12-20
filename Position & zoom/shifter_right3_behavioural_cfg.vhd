configuration shifter_right3_behavioural_cfg of shifter_right3 is
   for behavioural
      for all: shifter_right use configuration work.shifter_right_behavioural_cfg;
      end for;
      for all: shifter_right2 use configuration work.shifter_right2_behavioural_cfg;
      end for;
   end for;
end shifter_right3_behavioural_cfg;
