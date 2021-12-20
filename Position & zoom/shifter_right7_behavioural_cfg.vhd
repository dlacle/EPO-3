configuration shifter_right7_behavioural_cfg of shifter_right7 is
   for behavioural
      for all: shifter_right use configuration work.shifter_right_behavioural_cfg;
      end for;
      for all: shifter_right6 use configuration work.shifter_right6_behavioural_cfg;
      end for;
   end for;
end shifter_right7_behavioural_cfg;
