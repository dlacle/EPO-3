#*********************************************************
# synthesize script for cell: main
# company: ontwerp_practicum
# designer: marickvermeule
#*********************************************************
set_db lib_search_path /data/designkit/tsmc-180nm/lib/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/
set_db init_hdl_search_path ../../../VHDL/
set_db library {tcb018gbwp7twc.lib}
set_db use_scan_seqs_for_non_dft false

#include backend/syn/tcl/read_hdl.tcl
read_hdl -vhdl {main.vhd}
read_hdl -vhdl {main_seq-behaviour.vhd}
read_hdl -vhdl {main_xtoa.vhd}
read_hdl -vhdl {main_ytob.vhd}
read_hdl -vhdl {buffer.vhd}
read_hdl -vhdl {main-behaviour.vhd}
read_hdl -vhdl {main_seq_SYN.vhd}
read_hdl -vhdl {main_xtoa_SYN.vhd}
read_hdl -vhdl {main_ytob_SYN.vhd}
read_hdl -vhdl {register_a_structural_cfg.vhd}
read_hdl -vhdl {main_ytob_synthesised_cfg.vhd}
read_hdl -vhdl {main_xtoa_synthesised_cfg.vhd}
read_hdl -vhdl {main_seq_synthesised_cfg.vhd}
read_hdl -vhdl {main_behaviour_cfg.vhd}
#endincl

elaborate main_behaviour_cfg

#include backend/syn/in/main.sdc
# We will use a 25 MHz clock, 
# but use 33 MHz as constraint to be more sure it works.
dc::create_clock -name clk -period 30 -waveform {0 15} [dc::get_ports clk]
dc::set_driving_cell -cell INVD0BWP7T [dc::all_inputs]
dc::set_input_delay  .2 -clock clk [dc::all_inputs]
dc::set_output_delay .5 -clock clk [dc::all_outputs]
dc::set_load 1 [dc::all_outputs]
#endincl

synthesize -to_mapped
#set_db syn_generic_effort medium
#syn_generic
#syn_map

ungroup -all -flat
insert_tiehilo_cells
write_hdl -mapped > ../out/main.v
write_sdf > ../out/main.sdf
write_sdc > ../out/main.sdc

report timing
report gates

gui_show


