configuration main_behaviour_cfg of main is
   for behaviour
      for all: main_seq use configuration work.main_seq_behaviour_cfg;
      end for;
      for all: main_xtoa use configuration work.main_xtoa_behaviour_cfg;
      end for;
      for all: main_ytob use configuration work.main_ytob_behaviour_cfg;
      end for;
      for all: register_a use configuration work.register_a_structural_cfg;
      end for;
   end for;
end main_behaviour_cfg;
