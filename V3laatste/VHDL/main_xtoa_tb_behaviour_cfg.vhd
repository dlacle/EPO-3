configuration main_xtoa_tb_behaviour_cfg of main_xtoa_tb is
   for behaviour
      for all: main_xtoa use configuration work.main_xtoa_synthesised_cfg;
      end for;
   end for;
end main_xtoa_tb_behaviour_cfg;
