configuration main_seq_tb_behaviour_cfg of main_seq_tb is
   for behaviour
      for all: main_seq use configuration work.main_seq_synthesised_cfg;
      end for;
   end for;
end main_seq_tb_behaviour_cfg;
