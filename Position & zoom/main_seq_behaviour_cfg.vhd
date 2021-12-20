configuration main_seq_behaviour_cfg of main_seq is
   for behaviour
      for all: zoomandposition_control use configuration work.zoomandposition_control_behavioural_cfg;
      end for;
      for all: ycounter use configuration work.ycounter_behavioural_cfg;
      end for;
      for all: unsignedto2 use configuration work.unsignedto2_behaviour_cfg;
      end for;
   end for;
end main_seq_behaviour_cfg;
