configuration full_adder_3x_behavioral_cfg of full_adder_3x is
   for behavioral
      for all: ha use configuration work.ha_behavioral_cfg;
      end for;
      for all: fa use configuration work.fa_behavioral_cfg;
      end for;
   end for;
end full_adder_3x_behavioral_cfg;
