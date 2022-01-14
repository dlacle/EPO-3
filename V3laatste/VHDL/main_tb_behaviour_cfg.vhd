configuration main_tb_behaviour_cfg of main_tb is
   for behaviour
      for all: main use configuration work.main_synthesised_cfg;
      end for;
   end for;
end main_tb_behaviour_cfg;
