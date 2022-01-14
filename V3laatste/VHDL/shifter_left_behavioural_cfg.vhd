configuration shifter_left_behavioural_cfg of shifter_left is
   for behavioural
      for all: shifter_left_2 use configuration work.shifter_left_2_behavioural_cfg;
      end for;
   end for;
end shifter_left_behavioural_cfg;
