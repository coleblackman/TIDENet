set_property SRC_FILE_INFO {cfile:/home/jmz8rm/tidenet/sim/lenet1_minimal.srcs/constrs_1/imports/timing/dma_timing.xdc rfile:../lenet1_minimal.srcs/constrs_1/imports/timing/dma_timing.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_nets {a0/afu0/acc_module/u_module/u0_ddr_read_delay/engine_ddr_read_addr_0_o[*]}] -setup 4
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_nets {a0/afu0/acc_module/u_module/u0_ddr_read_delay/engine_ddr_read_addr_0_o[*]}] -hold 1
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_nets {a0/afu0/acc_module/u_module/u0_ddr_read_delay/engine_ddr_read_addr_1_o[*]}] -setup 4
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_nets {a0/afu0/acc_module/u_module/u0_ddr_read_delay/engine_ddr_read_addr_1_o[*]}] -hold 1
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_nets {a0/afu0/acc_module/u_module/u0_ddr_read_delay/engine_ddr_read_addr_2_o[*]}] -setup 4
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_nets {a0/afu0/acc_module/u_module/u0_ddr_read_delay/engine_ddr_read_addr_2_o[*]}] -hold 1
