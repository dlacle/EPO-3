configuration shifter_right_tb_behaviour_cfg of shifter_right_tb is
   for behaviour
      for all: shifter_right use configuration work.shifter_right_synthesised_cfg;
      end for;
   end for;
end shifter_right_tb_behaviour_cfg;
