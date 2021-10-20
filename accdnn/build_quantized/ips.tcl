set project_name ips_prj
set project_path ./build/ips_prj
set src_path ./build/ips_prj/ips_prj.srcs
set sim_path ./build/ips_prj/ips_prj.ip_user_files/sim_scripts
create_project $project_name $project_path -part xc7vx690tffg1157-2
create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv1_rm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {16} CONFIG.Write_Depth_A {768} CONFIG.Write_Width_B {64} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips conv1_rm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv1_rm_ram/conv1_rm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv1_rm_ram/conv1_rm_ram.xci]
launch_run  conv1_rm_ram_synth_1
wait_on_run conv1_rm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv1_wm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {512} CONFIG.Write_Depth_A {26} CONFIG.Write_Width_B {256} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips conv1_wm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv1_wm_ram/conv1_wm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv1_wm_ram/conv1_wm_ram.xci]
launch_run  conv1_wm_ram_synth_1
wait_on_run conv1_wm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv1_bm_ram
set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {4} CONFIG.Enable_A {Always_Enabled} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../coe//conv1_bm_ram.coe} CONFIG.Fill_Remaining_Memory_Locations {true}] [get_ips conv1_bm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv1_bm_ram/conv1_bm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv1_bm_ram/conv1_bm_ram.xci]
launch_run  conv1_bm_ram_synth_1
wait_on_run conv1_bm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name pool1_rm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {640} CONFIG.Write_Width_B {64} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips pool1_rm_ram]
generate_target all [get_files  $src_path/sources_1/ip/pool1_rm_ram/pool1_rm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/pool1_rm_ram/pool1_rm_ram.xci]
launch_run  pool1_rm_ram_synth_1
wait_on_run pool1_rm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv2_rm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {384} CONFIG.Write_Width_B {64} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips conv2_rm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv2_rm_ram/conv2_rm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv2_rm_ram/conv2_rm_ram.xci]
launch_run  conv2_rm_ram_synth_1
wait_on_run conv2_rm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv2_wm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {512} CONFIG.Write_Depth_A {200} CONFIG.Write_Width_B {512} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips conv2_wm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv2_wm_ram/conv2_wm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv2_wm_ram/conv2_wm_ram.xci]
launch_run  conv2_wm_ram_synth_1
wait_on_run conv2_wm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv2_bm_ram
set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {4} CONFIG.Enable_A {Always_Enabled} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../coe//conv2_bm_ram.coe} CONFIG.Fill_Remaining_Memory_Locations {true}] [get_ips conv2_bm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv2_bm_ram/conv2_bm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv2_bm_ram/conv2_bm_ram.xci]
launch_run  conv2_bm_ram_synth_1
wait_on_run conv2_bm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name pool2_rm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {320} CONFIG.Write_Width_B {64} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips pool2_rm_ram]
generate_target all [get_files  $src_path/sources_1/ip/pool2_rm_ram/pool2_rm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/pool2_rm_ram/pool2_rm_ram.xci]
launch_run  pool2_rm_ram_synth_1
wait_on_run pool2_rm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv3_rm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {192} CONFIG.Write_Width_B {64} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips conv3_rm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv3_rm_ram/conv3_rm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv3_rm_ram/conv3_rm_ram.xci]
launch_run  conv3_rm_ram_synth_1
wait_on_run conv3_rm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv3_wm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {512} CONFIG.Write_Depth_A {100} CONFIG.Write_Width_B {256} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips conv3_wm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv3_wm_ram/conv3_wm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv3_wm_ram/conv3_wm_ram.xci]
launch_run  conv3_wm_ram_synth_1
wait_on_run conv3_wm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name conv3_bm_ram
set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Write_Width_A {32} CONFIG.Write_Depth_A {16} CONFIG.Enable_A {Always_Enabled} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../coe//conv3_bm_ram.coe} CONFIG.Fill_Remaining_Memory_Locations {true}] [get_ips conv3_bm_ram]
generate_target all [get_files  $src_path/sources_1/ip/conv3_bm_ram/conv3_bm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/conv3_bm_ram/conv3_bm_ram.xci]
launch_run  conv3_bm_ram_synth_1
wait_on_run conv3_bm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name pool3_rm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {32} CONFIG.Write_Depth_A {640} CONFIG.Write_Width_B {256} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips pool3_rm_ram]
generate_target all [get_files  $src_path/sources_1/ip/pool3_rm_ram/pool3_rm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/pool3_rm_ram/pool3_rm_ram.xci]
launch_run  pool3_rm_ram_synth_1
wait_on_run pool3_rm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name ip1_rm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {256} CONFIG.Write_Depth_A {64} CONFIG.Write_Width_B {32} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips ip1_rm_ram]
generate_target all [get_files  $src_path/sources_1/ip/ip1_rm_ram/ip1_rm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/ip1_rm_ram/ip1_rm_ram.xci]
launch_run  ip1_rm_ram_synth_1
wait_on_run ip1_rm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name ip1_wm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {512} CONFIG.Write_Depth_A {128} CONFIG.Write_Width_B {128} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips ip1_wm_ram]
generate_target all [get_files  $src_path/sources_1/ip/ip1_wm_ram/ip1_wm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/ip1_wm_ram/ip1_wm_ram.xci]
launch_run  ip1_wm_ram_synth_1
wait_on_run ip1_wm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name ip1_bm_ram
set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Write_Width_A {32} CONFIG.Write_Depth_A {16} CONFIG.Enable_A {Always_Enabled} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../coe//ip1_bm_ram.coe} CONFIG.Fill_Remaining_Memory_Locations {true}] [get_ips ip1_bm_ram]
generate_target all [get_files  $src_path/sources_1/ip/ip1_bm_ram/ip1_bm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/ip1_bm_ram/ip1_bm_ram.xci]
launch_run  ip1_bm_ram_synth_1
wait_on_run ip1_bm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name ip2_rm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {32} CONFIG.Write_Depth_A {32} CONFIG.Write_Width_B {32} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips ip2_rm_ram]
generate_target all [get_files  $src_path/sources_1/ip/ip2_rm_ram/ip2_rm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/ip2_rm_ram/ip2_rm_ram.xci]
launch_run  ip2_rm_ram_synth_1
wait_on_run ip2_rm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name ip2_wm_ram
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Width_A {512} CONFIG.Write_Depth_A {4} CONFIG.Write_Width_B {64} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled}] [get_ips ip2_wm_ram]
generate_target all [get_files  $src_path/sources_1/ip/ip2_wm_ram/ip2_wm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/ip2_wm_ram/ip2_wm_ram.xci]
launch_run  ip2_wm_ram_synth_1
wait_on_run ip2_wm_ram_synth_1

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name ip2_bm_ram
set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Write_Width_A {16} CONFIG.Write_Depth_A {5} CONFIG.Enable_A {Always_Enabled} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../coe//ip2_bm_ram.coe} CONFIG.Fill_Remaining_Memory_Locations {true}] [get_ips ip2_bm_ram]
generate_target all [get_files  $src_path/sources_1/ip/ip2_bm_ram/ip2_bm_ram.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $src_path/sources_1/ip/ip2_bm_ram/ip2_bm_ram.xci]
launch_run  ip2_bm_ram_synth_1
wait_on_run ip2_bm_ram_synth_1

