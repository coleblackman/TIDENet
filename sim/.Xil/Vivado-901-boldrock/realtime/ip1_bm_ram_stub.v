// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4.1" *)
module ip1_bm_ram(clka, addra, douta);
  input clka;
  input [3:0]addra;
  output [15:0]douta;
endmodule
