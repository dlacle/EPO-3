configuration shifter_right4_behavioural_cfg of shifter_right4 is
   for behavioural
      for all: shifter_right use configuration work.shifter_right_behavioural_cfg;
      end for;
      for all: shifter_right3 use configuration work.shifter_right3_behavioural_cfg;
      end for;
   end for;
end shifter_right4_behavioural_cfg;
