configuration shifter_right5_behavioural_cfg of shifter_right5 is
   for behavioural
      for all: shifter_right use configuration work.shifter_right_behavioural_cfg;
      end for;
      for all: shifter_right4 use configuration work.shifter_right4_behavioural_cfg;
      end for;
   end for;
end shifter_right5_behavioural_cfg;
