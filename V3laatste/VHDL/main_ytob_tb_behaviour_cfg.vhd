configuration main_ytob_tb_behaviour_cfg of main_ytob_tb is
   for behaviour
      for all: main_ytob use configuration work.main_ytob_synthesised_cfg;
      end for;
   end for;
end main_ytob_tb_behaviour_cfg;
