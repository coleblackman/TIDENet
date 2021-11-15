**************************************************
* OpenRAM generated memory.
* Words: 16
* Data bits: 16
* Banks: 1
* Column mux: 1:1
* Trimmed: False
* LVS: False
**************************************************
* NGSPICE file created from cell_1rw.ext - technology: sky130A

.subckt cell_1rw bl br wl vdd gnd
X0 bl wl Q gnd sky130_fd_pr__nfet_01v8 ad=1.428e+11p pd=1.52e+06u as=7.728e+11p ps=4.2e+06u w=420000u l=150000u
X1 br wl Q_bar gnd sky130_fd_pr__nfet_01v8 ad=1.428e+11p pd=1.52e+06u as=7.728e+11p ps=4.2e+06u w=420000u l=150000u
X2 Q Q_bar vdd vdd sky130_fd_pr__pfet_01v8 ad=1.925e+11p pd=1.8e+06u as=3.85e+11p ps=3.6e+06u w=550000u l=150000u
X3 Q_bar Q gnd gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=4.41e+11p ps=3.22e+06u w=1.26e+06u l=150000u
X4 vdd Q Q_bar vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.925e+11p ps=1.8e+06u w=550000u l=150000u
X5 gnd Q_bar Q gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.26e+06u l=150000u
.ends


.SUBCKT bitcell_array bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
*.PININFO bl_0_0:B br_0_0:B bl_0_1:B br_0_1:B bl_0_2:B br_0_2:B bl_0_3:B br_0_3:B bl_0_4:B br_0_4:B bl_0_5:B br_0_5:B bl_0_6:B br_0_6:B bl_0_7:B br_0_7:B bl_0_8:B br_0_8:B bl_0_9:B br_0_9:B bl_0_10:B br_0_10:B bl_0_11:B br_0_11:B bl_0_12:B br_0_12:B bl_0_13:B br_0_13:B bl_0_14:B br_0_14:B bl_0_15:B br_0_15:B wl_0_0:I wl_0_1:I wl_0_2:I wl_0_3:I wl_0_4:I wl_0_5:I wl_0_6:I wl_0_7:I wl_0_8:I wl_0_9:I wl_0_10:I wl_0_11:I wl_0_12:I wl_0_13:I wl_0_14:I wl_0_15:I vdd:B gnd:B
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 16
Xbit_r0_c0 bl_0_0 br_0_0 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c0 bl_0_0 br_0_0 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c0 bl_0_0 br_0_0 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c0 bl_0_0 br_0_0 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c0 bl_0_0 br_0_0 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c0 bl_0_0 br_0_0 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c0 bl_0_0 br_0_0 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c0 bl_0_0 br_0_0 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c0 bl_0_0 br_0_0 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c0 bl_0_0 br_0_0 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c0 bl_0_0 br_0_0 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c0 bl_0_0 br_0_0 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c0 bl_0_0 br_0_0 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c0 bl_0_0 br_0_0 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c0 bl_0_0 br_0_0 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c0 bl_0_0 br_0_0 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c1 bl_0_1 br_0_1 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c1 bl_0_1 br_0_1 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c1 bl_0_1 br_0_1 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c1 bl_0_1 br_0_1 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c1 bl_0_1 br_0_1 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c1 bl_0_1 br_0_1 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c1 bl_0_1 br_0_1 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c1 bl_0_1 br_0_1 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c1 bl_0_1 br_0_1 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c1 bl_0_1 br_0_1 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c1 bl_0_1 br_0_1 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c1 bl_0_1 br_0_1 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c1 bl_0_1 br_0_1 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c1 bl_0_1 br_0_1 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c1 bl_0_1 br_0_1 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c1 bl_0_1 br_0_1 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c2 bl_0_2 br_0_2 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c2 bl_0_2 br_0_2 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c2 bl_0_2 br_0_2 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c2 bl_0_2 br_0_2 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c2 bl_0_2 br_0_2 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c2 bl_0_2 br_0_2 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c2 bl_0_2 br_0_2 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c2 bl_0_2 br_0_2 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c2 bl_0_2 br_0_2 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c2 bl_0_2 br_0_2 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c2 bl_0_2 br_0_2 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c2 bl_0_2 br_0_2 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c2 bl_0_2 br_0_2 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c2 bl_0_2 br_0_2 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c2 bl_0_2 br_0_2 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c2 bl_0_2 br_0_2 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c3 bl_0_3 br_0_3 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c3 bl_0_3 br_0_3 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c3 bl_0_3 br_0_3 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c3 bl_0_3 br_0_3 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c3 bl_0_3 br_0_3 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c3 bl_0_3 br_0_3 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c3 bl_0_3 br_0_3 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c3 bl_0_3 br_0_3 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c3 bl_0_3 br_0_3 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c3 bl_0_3 br_0_3 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c3 bl_0_3 br_0_3 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c3 bl_0_3 br_0_3 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c3 bl_0_3 br_0_3 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c3 bl_0_3 br_0_3 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c3 bl_0_3 br_0_3 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c3 bl_0_3 br_0_3 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c4 bl_0_4 br_0_4 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c4 bl_0_4 br_0_4 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c4 bl_0_4 br_0_4 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c4 bl_0_4 br_0_4 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c4 bl_0_4 br_0_4 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c4 bl_0_4 br_0_4 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c4 bl_0_4 br_0_4 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c4 bl_0_4 br_0_4 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c4 bl_0_4 br_0_4 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c4 bl_0_4 br_0_4 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c4 bl_0_4 br_0_4 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c4 bl_0_4 br_0_4 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c4 bl_0_4 br_0_4 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c4 bl_0_4 br_0_4 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c4 bl_0_4 br_0_4 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c4 bl_0_4 br_0_4 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c5 bl_0_5 br_0_5 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c5 bl_0_5 br_0_5 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c5 bl_0_5 br_0_5 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c5 bl_0_5 br_0_5 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c5 bl_0_5 br_0_5 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c5 bl_0_5 br_0_5 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c5 bl_0_5 br_0_5 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c5 bl_0_5 br_0_5 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c5 bl_0_5 br_0_5 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c5 bl_0_5 br_0_5 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c5 bl_0_5 br_0_5 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c5 bl_0_5 br_0_5 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c5 bl_0_5 br_0_5 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c5 bl_0_5 br_0_5 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c5 bl_0_5 br_0_5 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c5 bl_0_5 br_0_5 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c6 bl_0_6 br_0_6 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c6 bl_0_6 br_0_6 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c6 bl_0_6 br_0_6 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c6 bl_0_6 br_0_6 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c6 bl_0_6 br_0_6 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c6 bl_0_6 br_0_6 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c6 bl_0_6 br_0_6 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c6 bl_0_6 br_0_6 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c6 bl_0_6 br_0_6 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c6 bl_0_6 br_0_6 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c6 bl_0_6 br_0_6 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c6 bl_0_6 br_0_6 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c6 bl_0_6 br_0_6 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c6 bl_0_6 br_0_6 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c6 bl_0_6 br_0_6 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c6 bl_0_6 br_0_6 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c7 bl_0_7 br_0_7 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c7 bl_0_7 br_0_7 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c7 bl_0_7 br_0_7 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c7 bl_0_7 br_0_7 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c7 bl_0_7 br_0_7 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c7 bl_0_7 br_0_7 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c7 bl_0_7 br_0_7 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c7 bl_0_7 br_0_7 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c7 bl_0_7 br_0_7 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c7 bl_0_7 br_0_7 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c7 bl_0_7 br_0_7 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c7 bl_0_7 br_0_7 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c7 bl_0_7 br_0_7 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c7 bl_0_7 br_0_7 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c7 bl_0_7 br_0_7 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c7 bl_0_7 br_0_7 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c8 bl_0_8 br_0_8 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c8 bl_0_8 br_0_8 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c8 bl_0_8 br_0_8 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c8 bl_0_8 br_0_8 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c8 bl_0_8 br_0_8 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c8 bl_0_8 br_0_8 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c8 bl_0_8 br_0_8 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c8 bl_0_8 br_0_8 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c8 bl_0_8 br_0_8 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c8 bl_0_8 br_0_8 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c8 bl_0_8 br_0_8 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c8 bl_0_8 br_0_8 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c8 bl_0_8 br_0_8 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c8 bl_0_8 br_0_8 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c8 bl_0_8 br_0_8 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c8 bl_0_8 br_0_8 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c9 bl_0_9 br_0_9 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c9 bl_0_9 br_0_9 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c9 bl_0_9 br_0_9 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c9 bl_0_9 br_0_9 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c9 bl_0_9 br_0_9 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c9 bl_0_9 br_0_9 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c9 bl_0_9 br_0_9 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c9 bl_0_9 br_0_9 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c9 bl_0_9 br_0_9 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c9 bl_0_9 br_0_9 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c9 bl_0_9 br_0_9 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c9 bl_0_9 br_0_9 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c9 bl_0_9 br_0_9 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c9 bl_0_9 br_0_9 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c9 bl_0_9 br_0_9 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c9 bl_0_9 br_0_9 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c10 bl_0_10 br_0_10 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c10 bl_0_10 br_0_10 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c10 bl_0_10 br_0_10 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c10 bl_0_10 br_0_10 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c10 bl_0_10 br_0_10 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c10 bl_0_10 br_0_10 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c10 bl_0_10 br_0_10 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c10 bl_0_10 br_0_10 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c10 bl_0_10 br_0_10 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c10 bl_0_10 br_0_10 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c10 bl_0_10 br_0_10 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c10 bl_0_10 br_0_10 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c10 bl_0_10 br_0_10 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c10 bl_0_10 br_0_10 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c10 bl_0_10 br_0_10 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c10 bl_0_10 br_0_10 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c11 bl_0_11 br_0_11 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c11 bl_0_11 br_0_11 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c11 bl_0_11 br_0_11 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c11 bl_0_11 br_0_11 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c11 bl_0_11 br_0_11 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c11 bl_0_11 br_0_11 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c11 bl_0_11 br_0_11 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c11 bl_0_11 br_0_11 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c11 bl_0_11 br_0_11 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c11 bl_0_11 br_0_11 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c11 bl_0_11 br_0_11 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c11 bl_0_11 br_0_11 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c11 bl_0_11 br_0_11 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c11 bl_0_11 br_0_11 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c11 bl_0_11 br_0_11 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c11 bl_0_11 br_0_11 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c12 bl_0_12 br_0_12 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c12 bl_0_12 br_0_12 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c12 bl_0_12 br_0_12 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c12 bl_0_12 br_0_12 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c12 bl_0_12 br_0_12 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c12 bl_0_12 br_0_12 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c12 bl_0_12 br_0_12 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c12 bl_0_12 br_0_12 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c12 bl_0_12 br_0_12 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c12 bl_0_12 br_0_12 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c12 bl_0_12 br_0_12 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c12 bl_0_12 br_0_12 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c12 bl_0_12 br_0_12 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c12 bl_0_12 br_0_12 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c12 bl_0_12 br_0_12 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c12 bl_0_12 br_0_12 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c13 bl_0_13 br_0_13 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c13 bl_0_13 br_0_13 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c13 bl_0_13 br_0_13 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c13 bl_0_13 br_0_13 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c13 bl_0_13 br_0_13 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c13 bl_0_13 br_0_13 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c13 bl_0_13 br_0_13 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c13 bl_0_13 br_0_13 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c13 bl_0_13 br_0_13 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c13 bl_0_13 br_0_13 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c13 bl_0_13 br_0_13 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c13 bl_0_13 br_0_13 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c13 bl_0_13 br_0_13 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c13 bl_0_13 br_0_13 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c13 bl_0_13 br_0_13 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c13 bl_0_13 br_0_13 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c14 bl_0_14 br_0_14 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c14 bl_0_14 br_0_14 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c14 bl_0_14 br_0_14 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c14 bl_0_14 br_0_14 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c14 bl_0_14 br_0_14 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c14 bl_0_14 br_0_14 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c14 bl_0_14 br_0_14 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c14 bl_0_14 br_0_14 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c14 bl_0_14 br_0_14 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c14 bl_0_14 br_0_14 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c14 bl_0_14 br_0_14 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c14 bl_0_14 br_0_14 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c14 bl_0_14 br_0_14 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c14 bl_0_14 br_0_14 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c14 bl_0_14 br_0_14 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c14 bl_0_14 br_0_14 wl_0_15 vdd gnd cell_1rw
Xbit_r0_c15 bl_0_15 br_0_15 wl_0_0 vdd gnd cell_1rw
Xbit_r1_c15 bl_0_15 br_0_15 wl_0_1 vdd gnd cell_1rw
Xbit_r2_c15 bl_0_15 br_0_15 wl_0_2 vdd gnd cell_1rw
Xbit_r3_c15 bl_0_15 br_0_15 wl_0_3 vdd gnd cell_1rw
Xbit_r4_c15 bl_0_15 br_0_15 wl_0_4 vdd gnd cell_1rw
Xbit_r5_c15 bl_0_15 br_0_15 wl_0_5 vdd gnd cell_1rw
Xbit_r6_c15 bl_0_15 br_0_15 wl_0_6 vdd gnd cell_1rw
Xbit_r7_c15 bl_0_15 br_0_15 wl_0_7 vdd gnd cell_1rw
Xbit_r8_c15 bl_0_15 br_0_15 wl_0_8 vdd gnd cell_1rw
Xbit_r9_c15 bl_0_15 br_0_15 wl_0_9 vdd gnd cell_1rw
Xbit_r10_c15 bl_0_15 br_0_15 wl_0_10 vdd gnd cell_1rw
Xbit_r11_c15 bl_0_15 br_0_15 wl_0_11 vdd gnd cell_1rw
Xbit_r12_c15 bl_0_15 br_0_15 wl_0_12 vdd gnd cell_1rw
Xbit_r13_c15 bl_0_15 br_0_15 wl_0_13 vdd gnd cell_1rw
Xbit_r14_c15 bl_0_15 br_0_15 wl_0_14 vdd gnd cell_1rw
Xbit_r15_c15 bl_0_15 br_0_15 wl_0_15 vdd gnd cell_1rw
.ENDS bitcell_array
* NGSPICE file created from replica_cell_1rw.ext - technology: sky130A

.subckt replica_cell_1rw bl br wl vdd gnd
X0 bl wl Q gnd sky130_fd_pr__nfet_01v8 ad=1.428e+11p pd=1.52e+06u as=7.728e+11p ps=4.2e+06u w=420000u l=150000u
X1 br wl Q_bar gnd sky130_fd_pr__nfet_01v8 ad=1.428e+11p pd=1.52e+06u as=7.728e+11p ps=4.2e+06u w=420000u l=150000u
X2 Q Q_bar vdd vdd sky130_fd_pr__pfet_01v8 ad=1.925e+11p pd=1.8e+06u as=3.85e+11p ps=3.6e+06u w=550000u l=150000u
X3 Q_bar Q gnd gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=4.41e+11p ps=3.22e+06u w=1.26e+06u l=150000u
X4 vdd Q Q_bar vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.925e+11p ps=1.8e+06u w=550000u l=150000u
X5 gnd Q_bar Q gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.26e+06u l=150000u
.ends

* NGSPICE file created from dummy_cell_1rw.ext - technology: sky130A

.subckt dummy_cell_1rw bl br wl vdd gnd
X0 bl wl Q gnd sky130_fd_pr__nfet_01v8 ad=1.428e+11p pd=1.52e+06u as=7.728e+11p ps=4.2e+06u w=420000u l=150000u
X1 br wl Q_bar gnd sky130_fd_pr__nfet_01v8 ad=1.428e+11p pd=1.52e+06u as=7.728e+11p ps=4.2e+06u w=420000u l=150000u
X2 Q Q_bar vdd vdd sky130_fd_pr__pfet_01v8 ad=1.925e+11p pd=1.8e+06u as=3.85e+11p ps=3.6e+06u w=550000u l=150000u
X3 Q_bar Q gnd gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=4.41e+11p ps=3.22e+06u w=1.26e+06u l=150000u
X4 vdd Q Q_bar vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.925e+11p ps=1.8e+06u w=550000u l=150000u
X5 gnd Q_bar Q gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.26e+06u l=150000u
.ends


.SUBCKT replica_column bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 vdd gnd
*.PININFO bl_0_0:O br_0_0:O wl_0_0:I wl_0_1:I wl_0_2:I wl_0_3:I wl_0_4:I wl_0_5:I wl_0_6:I wl_0_7:I wl_0_8:I wl_0_9:I wl_0_10:I wl_0_11:I wl_0_12:I wl_0_13:I wl_0_14:I wl_0_15:I wl_0_16:I wl_0_17:I wl_0_18:I vdd:B gnd:B
* OUTPUT: bl_0_0 
* OUTPUT: br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0 bl_0_0 br_0_0 wl_0_0 vdd gnd dummy_cell_1rw
Xrbc_1 bl_0_0 br_0_0 wl_0_1 vdd gnd replica_cell_1rw
Xrbc_2 bl_0_0 br_0_0 wl_0_2 vdd gnd replica_cell_1rw
Xrbc_3 bl_0_0 br_0_0 wl_0_3 vdd gnd replica_cell_1rw
Xrbc_4 bl_0_0 br_0_0 wl_0_4 vdd gnd replica_cell_1rw
Xrbc_5 bl_0_0 br_0_0 wl_0_5 vdd gnd replica_cell_1rw
Xrbc_6 bl_0_0 br_0_0 wl_0_6 vdd gnd replica_cell_1rw
Xrbc_7 bl_0_0 br_0_0 wl_0_7 vdd gnd replica_cell_1rw
Xrbc_8 bl_0_0 br_0_0 wl_0_8 vdd gnd replica_cell_1rw
Xrbc_9 bl_0_0 br_0_0 wl_0_9 vdd gnd replica_cell_1rw
Xrbc_10 bl_0_0 br_0_0 wl_0_10 vdd gnd replica_cell_1rw
Xrbc_11 bl_0_0 br_0_0 wl_0_11 vdd gnd replica_cell_1rw
Xrbc_12 bl_0_0 br_0_0 wl_0_12 vdd gnd replica_cell_1rw
Xrbc_13 bl_0_0 br_0_0 wl_0_13 vdd gnd replica_cell_1rw
Xrbc_14 bl_0_0 br_0_0 wl_0_14 vdd gnd replica_cell_1rw
Xrbc_15 bl_0_0 br_0_0 wl_0_15 vdd gnd replica_cell_1rw
Xrbc_16 bl_0_0 br_0_0 wl_0_16 vdd gnd replica_cell_1rw
Xrbc_17 bl_0_0 br_0_0 wl_0_17 vdd gnd replica_cell_1rw
Xrbc_18 bl_0_0 br_0_0 wl_0_18 vdd gnd dummy_cell_1rw
.ENDS replica_column

.SUBCKT dummy_array bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 wl_0_0 vdd gnd
*.PININFO bl_0_0:B br_0_0:B bl_0_1:B br_0_1:B bl_0_2:B br_0_2:B bl_0_3:B br_0_3:B bl_0_4:B br_0_4:B bl_0_5:B br_0_5:B bl_0_6:B br_0_6:B bl_0_7:B br_0_7:B bl_0_8:B br_0_8:B bl_0_9:B br_0_9:B bl_0_10:B br_0_10:B bl_0_11:B br_0_11:B bl_0_12:B br_0_12:B bl_0_13:B br_0_13:B bl_0_14:B br_0_14:B bl_0_15:B br_0_15:B wl_0_0:I vdd:B gnd:B
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0 bl_0_0 br_0_0 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c1 bl_0_1 br_0_1 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c2 bl_0_2 br_0_2 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c3 bl_0_3 br_0_3 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c4 bl_0_4 br_0_4 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c5 bl_0_5 br_0_5 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c6 bl_0_6 br_0_6 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c7 bl_0_7 br_0_7 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c8 bl_0_8 br_0_8 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c9 bl_0_9 br_0_9 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c10 bl_0_10 br_0_10 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c11 bl_0_11 br_0_11 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c12 bl_0_12 br_0_12 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c13 bl_0_13 br_0_13 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c14 bl_0_14 br_0_14 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c15 bl_0_15 br_0_15 wl_0_0 vdd gnd dummy_cell_1rw
.ENDS dummy_array

.SUBCKT dummy_array_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 wl_0_0 vdd gnd
*.PININFO bl_0_0:B br_0_0:B bl_0_1:B br_0_1:B bl_0_2:B br_0_2:B bl_0_3:B br_0_3:B bl_0_4:B br_0_4:B bl_0_5:B br_0_5:B bl_0_6:B br_0_6:B bl_0_7:B br_0_7:B bl_0_8:B br_0_8:B bl_0_9:B br_0_9:B bl_0_10:B br_0_10:B bl_0_11:B br_0_11:B bl_0_12:B br_0_12:B bl_0_13:B br_0_13:B bl_0_14:B br_0_14:B bl_0_15:B br_0_15:B wl_0_0:I vdd:B gnd:B
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0 bl_0_0 br_0_0 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c1 bl_0_1 br_0_1 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c2 bl_0_2 br_0_2 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c3 bl_0_3 br_0_3 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c4 bl_0_4 br_0_4 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c5 bl_0_5 br_0_5 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c6 bl_0_6 br_0_6 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c7 bl_0_7 br_0_7 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c8 bl_0_8 br_0_8 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c9 bl_0_9 br_0_9 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c10 bl_0_10 br_0_10 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c11 bl_0_11 br_0_11 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c12 bl_0_12 br_0_12 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c13 bl_0_13 br_0_13 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c14 bl_0_14 br_0_14 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c15 bl_0_15 br_0_15 wl_0_0 vdd gnd dummy_cell_1rw
.ENDS dummy_array_0

.SUBCKT dummy_array_1 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 wl_0_0 vdd gnd
*.PININFO bl_0_0:B br_0_0:B bl_0_1:B br_0_1:B bl_0_2:B br_0_2:B bl_0_3:B br_0_3:B bl_0_4:B br_0_4:B bl_0_5:B br_0_5:B bl_0_6:B br_0_6:B bl_0_7:B br_0_7:B bl_0_8:B br_0_8:B bl_0_9:B br_0_9:B bl_0_10:B br_0_10:B bl_0_11:B br_0_11:B bl_0_12:B br_0_12:B bl_0_13:B br_0_13:B bl_0_14:B br_0_14:B bl_0_15:B br_0_15:B wl_0_0:I vdd:B gnd:B
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0 bl_0_0 br_0_0 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c1 bl_0_1 br_0_1 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c2 bl_0_2 br_0_2 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c3 bl_0_3 br_0_3 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c4 bl_0_4 br_0_4 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c5 bl_0_5 br_0_5 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c6 bl_0_6 br_0_6 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c7 bl_0_7 br_0_7 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c8 bl_0_8 br_0_8 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c9 bl_0_9 br_0_9 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c10 bl_0_10 br_0_10 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c11 bl_0_11 br_0_11 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c12 bl_0_12 br_0_12 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c13 bl_0_13 br_0_13 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c14 bl_0_14 br_0_14 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r0_c15 bl_0_15 br_0_15 wl_0_0 vdd gnd dummy_cell_1rw
.ENDS dummy_array_1

.SUBCKT dummy_array_2 bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 vdd gnd
*.PININFO bl_0_0:B br_0_0:B wl_0_0:I wl_0_1:I wl_0_2:I wl_0_3:I wl_0_4:I wl_0_5:I wl_0_6:I wl_0_7:I wl_0_8:I wl_0_9:I wl_0_10:I wl_0_11:I wl_0_12:I wl_0_13:I wl_0_14:I wl_0_15:I wl_0_16:I wl_0_17:I wl_0_18:I vdd:B gnd:B
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0 bl_0_0 br_0_0 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r1_c0 bl_0_0 br_0_0 wl_0_1 vdd gnd dummy_cell_1rw
Xbit_r2_c0 bl_0_0 br_0_0 wl_0_2 vdd gnd dummy_cell_1rw
Xbit_r3_c0 bl_0_0 br_0_0 wl_0_3 vdd gnd dummy_cell_1rw
Xbit_r4_c0 bl_0_0 br_0_0 wl_0_4 vdd gnd dummy_cell_1rw
Xbit_r5_c0 bl_0_0 br_0_0 wl_0_5 vdd gnd dummy_cell_1rw
Xbit_r6_c0 bl_0_0 br_0_0 wl_0_6 vdd gnd dummy_cell_1rw
Xbit_r7_c0 bl_0_0 br_0_0 wl_0_7 vdd gnd dummy_cell_1rw
Xbit_r8_c0 bl_0_0 br_0_0 wl_0_8 vdd gnd dummy_cell_1rw
Xbit_r9_c0 bl_0_0 br_0_0 wl_0_9 vdd gnd dummy_cell_1rw
Xbit_r10_c0 bl_0_0 br_0_0 wl_0_10 vdd gnd dummy_cell_1rw
Xbit_r11_c0 bl_0_0 br_0_0 wl_0_11 vdd gnd dummy_cell_1rw
Xbit_r12_c0 bl_0_0 br_0_0 wl_0_12 vdd gnd dummy_cell_1rw
Xbit_r13_c0 bl_0_0 br_0_0 wl_0_13 vdd gnd dummy_cell_1rw
Xbit_r14_c0 bl_0_0 br_0_0 wl_0_14 vdd gnd dummy_cell_1rw
Xbit_r15_c0 bl_0_0 br_0_0 wl_0_15 vdd gnd dummy_cell_1rw
Xbit_r16_c0 bl_0_0 br_0_0 wl_0_16 vdd gnd dummy_cell_1rw
Xbit_r17_c0 bl_0_0 br_0_0 wl_0_17 vdd gnd dummy_cell_1rw
Xbit_r18_c0 bl_0_0 br_0_0 wl_0_18 vdd gnd dummy_cell_1rw
.ENDS dummy_array_2

.SUBCKT dummy_array_3 bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 vdd gnd
*.PININFO bl_0_0:B br_0_0:B wl_0_0:I wl_0_1:I wl_0_2:I wl_0_3:I wl_0_4:I wl_0_5:I wl_0_6:I wl_0_7:I wl_0_8:I wl_0_9:I wl_0_10:I wl_0_11:I wl_0_12:I wl_0_13:I wl_0_14:I wl_0_15:I wl_0_16:I wl_0_17:I wl_0_18:I vdd:B gnd:B
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0 bl_0_0 br_0_0 wl_0_0 vdd gnd dummy_cell_1rw
Xbit_r1_c0 bl_0_0 br_0_0 wl_0_1 vdd gnd dummy_cell_1rw
Xbit_r2_c0 bl_0_0 br_0_0 wl_0_2 vdd gnd dummy_cell_1rw
Xbit_r3_c0 bl_0_0 br_0_0 wl_0_3 vdd gnd dummy_cell_1rw
Xbit_r4_c0 bl_0_0 br_0_0 wl_0_4 vdd gnd dummy_cell_1rw
Xbit_r5_c0 bl_0_0 br_0_0 wl_0_5 vdd gnd dummy_cell_1rw
Xbit_r6_c0 bl_0_0 br_0_0 wl_0_6 vdd gnd dummy_cell_1rw
Xbit_r7_c0 bl_0_0 br_0_0 wl_0_7 vdd gnd dummy_cell_1rw
Xbit_r8_c0 bl_0_0 br_0_0 wl_0_8 vdd gnd dummy_cell_1rw
Xbit_r9_c0 bl_0_0 br_0_0 wl_0_9 vdd gnd dummy_cell_1rw
Xbit_r10_c0 bl_0_0 br_0_0 wl_0_10 vdd gnd dummy_cell_1rw
Xbit_r11_c0 bl_0_0 br_0_0 wl_0_11 vdd gnd dummy_cell_1rw
Xbit_r12_c0 bl_0_0 br_0_0 wl_0_12 vdd gnd dummy_cell_1rw
Xbit_r13_c0 bl_0_0 br_0_0 wl_0_13 vdd gnd dummy_cell_1rw
Xbit_r14_c0 bl_0_0 br_0_0 wl_0_14 vdd gnd dummy_cell_1rw
Xbit_r15_c0 bl_0_0 br_0_0 wl_0_15 vdd gnd dummy_cell_1rw
Xbit_r16_c0 bl_0_0 br_0_0 wl_0_16 vdd gnd dummy_cell_1rw
Xbit_r17_c0 bl_0_0 br_0_0 wl_0_17 vdd gnd dummy_cell_1rw
Xbit_r18_c0 bl_0_0 br_0_0 wl_0_18 vdd gnd dummy_cell_1rw
.ENDS dummy_array_3

.SUBCKT replica_bitcell_array rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
*.PININFO rbl_bl_0_0:B rbl_br_0_0:B bl_0_0:B br_0_0:B bl_0_1:B br_0_1:B bl_0_2:B br_0_2:B bl_0_3:B br_0_3:B bl_0_4:B br_0_4:B bl_0_5:B br_0_5:B bl_0_6:B br_0_6:B bl_0_7:B br_0_7:B bl_0_8:B br_0_8:B bl_0_9:B br_0_9:B bl_0_10:B br_0_10:B bl_0_11:B br_0_11:B bl_0_12:B br_0_12:B bl_0_13:B br_0_13:B bl_0_14:B br_0_14:B bl_0_15:B br_0_15:B rbl_wl_0_0:I wl_0_0:I wl_0_1:I wl_0_2:I wl_0_3:I wl_0_4:I wl_0_5:I wl_0_6:I wl_0_7:I wl_0_8:I wl_0_9:I wl_0_10:I wl_0_11:I wl_0_12:I wl_0_13:I wl_0_14:I wl_0_15:I vdd:B gnd:B
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* POWER : vdd 
* GROUND: gnd 
* rbl: None left_rbl: None right_rbl: None
Xbitcell_array bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd bitcell_array
Xreplica_col_0 rbl_bl_0_0 rbl_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd replica_column
Xdummy_row_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 rbl_wl_0_0 vdd gnd dummy_array
Xdummy_row_bot bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 gnd vdd gnd dummy_array_1
Xdummy_row_top bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 gnd vdd gnd dummy_array_0
Xdummy_col_left dummy_left_bl_0_0 dummy_left_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd dummy_array_2
Xdummy_col_right dummy_right_bl_0_0 dummy_right_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd dummy_array_3
.ENDS replica_bitcell_array

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p

.SUBCKT pnand2 A B Z vdd gnd
*.PININFO A:I B:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
.ENDS pnand2

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.42u l=0.15u pd=1.14u ps=1.14u as=0.16p ad=0.16p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p

.SUBCKT pinv A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.42u l=0.15u pd=1.14u ps=1.14u as=0.16p ad=0.16p
.ENDS pinv

.SUBCKT and2_dec A B Z vdd gnd
*.PININFO A:I B:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand A B zb_int vdd gnd pnand2
Xpand2_dec_inv zb_int Z vdd gnd pinv
.ENDS and2_dec

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p

.SUBCKT pnand3 A B C Z vdd gnd
*.PININFO A:I B:I C:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand3_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_pmos3 Z C vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_nmos1 Z C net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_nmos2 net1 B net2 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_nmos3 net2 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
.ENDS pnand3

.SUBCKT and3_dec A B C Z vdd gnd
*.PININFO A:I B:I C:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand3_dec_nand A B C zb_int vdd gnd pnand3
Xpand3_dec_inv zb_int Z vdd gnd pinv
.ENDS and3_dec

.SUBCKT hierarchical_predecode2x4 in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
*.PININFO in_0:I in_1:I out_0:O out_1:O out_2:O out_3:O vdd:B gnd:B
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0 in_0 inbar_0 vdd gnd pinv
Xpre_inv_1 in_1 inbar_1 vdd gnd pinv
XXpre2x4_and_0 inbar_0 inbar_1 out_0 vdd gnd and2_dec
XXpre2x4_and_1 in_0 inbar_1 out_1 vdd gnd and2_dec
XXpre2x4_and_2 inbar_0 in_1 out_2 vdd gnd and2_dec
XXpre2x4_and_3 in_0 in_1 out_3 vdd gnd and2_dec
.ENDS hierarchical_predecode2x4

.SUBCKT hierarchical_predecode3x8 in_0 in_1 in_2 out_0 out_1 out_2 out_3 out_4 out_5 out_6 out_7 vdd gnd
*.PININFO in_0:I in_1:I in_2:I out_0:O out_1:O out_2:O out_3:O out_4:O out_5:O out_6:O out_7:O vdd:B gnd:B
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* OUTPUT: out_4 
* OUTPUT: out_5 
* OUTPUT: out_6 
* OUTPUT: out_7 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0 in_0 inbar_0 vdd gnd pinv
Xpre_inv_1 in_1 inbar_1 vdd gnd pinv
Xpre_inv_2 in_2 inbar_2 vdd gnd pinv
XXpre3x8_and_0 inbar_0 inbar_1 inbar_2 out_0 vdd gnd and3_dec
XXpre3x8_and_1 in_0 inbar_1 inbar_2 out_1 vdd gnd and3_dec
XXpre3x8_and_2 inbar_0 in_1 inbar_2 out_2 vdd gnd and3_dec
XXpre3x8_and_3 in_0 in_1 inbar_2 out_3 vdd gnd and3_dec
XXpre3x8_and_4 inbar_0 inbar_1 in_2 out_4 vdd gnd and3_dec
XXpre3x8_and_5 in_0 inbar_1 in_2 out_5 vdd gnd and3_dec
XXpre3x8_and_6 inbar_0 in_1 in_2 out_6 vdd gnd and3_dec
XXpre3x8_and_7 in_0 in_1 in_2 out_7 vdd gnd and3_dec
.ENDS hierarchical_predecode3x8

.SUBCKT pnand4 A B C D Z vdd gnd
*.PININFO A:I B:I C:I D:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* INPUT : C 
* INPUT : D 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand4_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand4_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand4_pmos3 Z C vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand4_pmos4 Z D vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand4_nmos1 Z D net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand4_nmos2 net1 C net2 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand4_nmos3 net2 B net3 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand4_nmos4 net3 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
.ENDS pnand4

.SUBCKT and4_dec A B C D Z vdd gnd
*.PININFO A:I B:I C:I D:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* INPUT : C 
* INPUT : D 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand4_dec_nand A B C D zb_int vdd gnd pnand4
Xpand4_dec_inv zb_int Z vdd gnd pinv
.ENDS and4_dec

.SUBCKT hierarchical_predecode4x16 in_0 in_1 in_2 in_3 out_0 out_1 out_2 out_3 out_4 out_5 out_6 out_7 out_8 out_9 out_10 out_11 out_12 out_13 out_14 out_15 vdd gnd
*.PININFO in_0:I in_1:I in_2:I in_3:I out_0:O out_1:O out_2:O out_3:O out_4:O out_5:O out_6:O out_7:O out_8:O out_9:O out_10:O out_11:O out_12:O out_13:O out_14:O out_15:O vdd:B gnd:B
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* OUTPUT: out_4 
* OUTPUT: out_5 
* OUTPUT: out_6 
* OUTPUT: out_7 
* OUTPUT: out_8 
* OUTPUT: out_9 
* OUTPUT: out_10 
* OUTPUT: out_11 
* OUTPUT: out_12 
* OUTPUT: out_13 
* OUTPUT: out_14 
* OUTPUT: out_15 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0 in_0 inbar_0 vdd gnd pinv
Xpre_inv_1 in_1 inbar_1 vdd gnd pinv
Xpre_inv_2 in_2 inbar_2 vdd gnd pinv
Xpre_inv_3 in_3 inbar_3 vdd gnd pinv
XXpre4x16_and_0 inbar_0 inbar_1 inbar_2 inbar_3 out_0 vdd gnd and4_dec
XXpre4x16_and_1 in_0 inbar_1 inbar_2 inbar_3 out_1 vdd gnd and4_dec
XXpre4x16_and_2 inbar_0 in_1 inbar_2 inbar_3 out_2 vdd gnd and4_dec
XXpre4x16_and_3 in_0 in_1 inbar_2 inbar_3 out_3 vdd gnd and4_dec
XXpre4x16_and_4 inbar_0 inbar_1 in_2 inbar_3 out_4 vdd gnd and4_dec
XXpre4x16_and_5 in_0 inbar_1 in_2 inbar_3 out_5 vdd gnd and4_dec
XXpre4x16_and_6 inbar_0 in_1 in_2 inbar_3 out_6 vdd gnd and4_dec
XXpre4x16_and_7 in_0 in_1 in_2 inbar_3 out_7 vdd gnd and4_dec
XXpre4x16_and_8 inbar_0 inbar_1 inbar_2 in_3 out_8 vdd gnd and4_dec
XXpre4x16_and_9 in_0 inbar_1 inbar_2 in_3 out_9 vdd gnd and4_dec
XXpre4x16_and_10 inbar_0 in_1 inbar_2 in_3 out_10 vdd gnd and4_dec
XXpre4x16_and_11 in_0 in_1 inbar_2 in_3 out_11 vdd gnd and4_dec
XXpre4x16_and_12 inbar_0 inbar_1 in_2 in_3 out_12 vdd gnd and4_dec
XXpre4x16_and_13 in_0 inbar_1 in_2 in_3 out_13 vdd gnd and4_dec
XXpre4x16_and_14 inbar_0 in_1 in_2 in_3 out_14 vdd gnd and4_dec
XXpre4x16_and_15 in_0 in_1 in_2 in_3 out_15 vdd gnd and4_dec
.ENDS hierarchical_predecode4x16

.SUBCKT hierarchical_decoder addr_0 addr_1 addr_2 addr_3 decode_0 decode_1 decode_2 decode_3 decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10 decode_11 decode_12 decode_13 decode_14 decode_15 vdd gnd
*.PININFO addr_0:I addr_1:I addr_2:I addr_3:I decode_0:O decode_1:O decode_2:O decode_3:O decode_4:O decode_5:O decode_6:O decode_7:O decode_8:O decode_9:O decode_10:O decode_11:O decode_12:O decode_13:O decode_14:O decode_15:O vdd:B gnd:B
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* POWER : vdd 
* GROUND: gnd 
Xpre_0 addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd hierarchical_predecode2x4
Xpre_1 addr_2 addr_3 out_4 out_5 out_6 out_7 vdd gnd hierarchical_predecode2x4
XDEC_AND_0 out_0 out_4 decode_0 vdd gnd and2_dec
XDEC_AND_4 out_0 out_5 decode_4 vdd gnd and2_dec
XDEC_AND_8 out_0 out_6 decode_8 vdd gnd and2_dec
XDEC_AND_12 out_0 out_7 decode_12 vdd gnd and2_dec
XDEC_AND_1 out_1 out_4 decode_1 vdd gnd and2_dec
XDEC_AND_5 out_1 out_5 decode_5 vdd gnd and2_dec
XDEC_AND_9 out_1 out_6 decode_9 vdd gnd and2_dec
XDEC_AND_13 out_1 out_7 decode_13 vdd gnd and2_dec
XDEC_AND_2 out_2 out_4 decode_2 vdd gnd and2_dec
XDEC_AND_6 out_2 out_5 decode_6 vdd gnd and2_dec
XDEC_AND_10 out_2 out_6 decode_10 vdd gnd and2_dec
XDEC_AND_14 out_2 out_7 decode_14 vdd gnd and2_dec
XDEC_AND_3 out_3 out_4 decode_3 vdd gnd and2_dec
XDEC_AND_7 out_3 out_5 decode_7 vdd gnd and2_dec
XDEC_AND_11 out_3 out_6 decode_11 vdd gnd and2_dec
XDEC_AND_15 out_3 out_7 decode_15 vdd gnd and2_dec
.ENDS hierarchical_decoder

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=2 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=2 w=1.68u l=0.15u pd=3.66u ps=3.66u as=0.63p ad=0.63p

.SUBCKT pinv_0 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=1.68u l=0.15u pd=3.66u ps=3.66u as=0.63p ad=0.63p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
.ENDS pinv_0

.SUBCKT wordline_driver A B Z vdd gnd
*.PININFO A:I B:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xwld_nand A B zb_int vdd gnd pnand2
Xwl_driver zb_int Z vdd gnd pinv_0
.ENDS wordline_driver

.SUBCKT wordline_driver_array in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12 in_13 in_14 in_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 en vdd gnd
*.PININFO in_0:I in_1:I in_2:I in_3:I in_4:I in_5:I in_6:I in_7:I in_8:I in_9:I in_10:I in_11:I in_12:I in_13:I in_14:I in_15:I wl_0:O wl_1:O wl_2:O wl_3:O wl_4:O wl_5:O wl_6:O wl_7:O wl_8:O wl_9:O wl_10:O wl_11:O wl_12:O wl_13:O wl_14:O wl_15:O en:I vdd:B gnd:B
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 16
Xwl_driver_and0 in_0 en wl_0 vdd gnd wordline_driver
Xwl_driver_and1 in_1 en wl_1 vdd gnd wordline_driver
Xwl_driver_and2 in_2 en wl_2 vdd gnd wordline_driver
Xwl_driver_and3 in_3 en wl_3 vdd gnd wordline_driver
Xwl_driver_and4 in_4 en wl_4 vdd gnd wordline_driver
Xwl_driver_and5 in_5 en wl_5 vdd gnd wordline_driver
Xwl_driver_and6 in_6 en wl_6 vdd gnd wordline_driver
Xwl_driver_and7 in_7 en wl_7 vdd gnd wordline_driver
Xwl_driver_and8 in_8 en wl_8 vdd gnd wordline_driver
Xwl_driver_and9 in_9 en wl_9 vdd gnd wordline_driver
Xwl_driver_and10 in_10 en wl_10 vdd gnd wordline_driver
Xwl_driver_and11 in_11 en wl_11 vdd gnd wordline_driver
Xwl_driver_and12 in_12 en wl_12 vdd gnd wordline_driver
Xwl_driver_and13 in_13 en wl_13 vdd gnd wordline_driver
Xwl_driver_and14 in_14 en wl_14 vdd gnd wordline_driver
Xwl_driver_and15 in_15 en wl_15 vdd gnd wordline_driver
.ENDS wordline_driver_array

.SUBCKT and2_dec_0 A B Z vdd gnd
*.PININFO A:I B:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Xpand2_dec_nand A B zb_int vdd gnd pnand2
Xpand2_dec_inv zb_int Z vdd gnd pinv_0
.ENDS and2_dec_0

.SUBCKT port_address addr_0 addr_1 addr_2 addr_3 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 rbl_wl vdd gnd
*.PININFO addr_0:I addr_1:I addr_2:I addr_3:I wl_en:I wl_0:O wl_1:O wl_2:O wl_3:O wl_4:O wl_5:O wl_6:O wl_7:O wl_8:O wl_9:O wl_10:O wl_11:O wl_12:O wl_13:O wl_14:O wl_15:O rbl_wl:O vdd:B gnd:B
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder addr_0 addr_1 addr_2 addr_3 dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 vdd gnd hierarchical_decoder
Xwordline_driver dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_en vdd gnd wordline_driver_array
Xrbl_driver wl_en vdd rbl_wl vdd gnd and2_dec_0
.ENDS port_address

.SUBCKT precharge_0 bl br en_bar vdd
*.PININFO bl:O br:O en_bar:I vdd:B
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mupper_pmos1 bl en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mupper_pmos2 br en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
.ENDS precharge_0

.SUBCKT precharge_array bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 en_bar vdd
*.PININFO bl_0:O br_0:O bl_1:O br_1:O bl_2:O br_2:O bl_3:O br_3:O bl_4:O br_4:O bl_5:O br_5:O bl_6:O br_6:O bl_7:O br_7:O bl_8:O br_8:O bl_9:O br_9:O bl_10:O br_10:O bl_11:O br_11:O bl_12:O br_12:O bl_13:O br_13:O bl_14:O br_14:O bl_15:O br_15:O bl_16:O br_16:O en_bar:I vdd:B
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* INPUT : en_bar 
* POWER : vdd 
* cols: 17 size: 1 bl: bl br: br
Xpre_column_0 bl_0 br_0 en_bar vdd precharge_0
Xpre_column_1 bl_1 br_1 en_bar vdd precharge_0
Xpre_column_2 bl_2 br_2 en_bar vdd precharge_0
Xpre_column_3 bl_3 br_3 en_bar vdd precharge_0
Xpre_column_4 bl_4 br_4 en_bar vdd precharge_0
Xpre_column_5 bl_5 br_5 en_bar vdd precharge_0
Xpre_column_6 bl_6 br_6 en_bar vdd precharge_0
Xpre_column_7 bl_7 br_7 en_bar vdd precharge_0
Xpre_column_8 bl_8 br_8 en_bar vdd precharge_0
Xpre_column_9 bl_9 br_9 en_bar vdd precharge_0
Xpre_column_10 bl_10 br_10 en_bar vdd precharge_0
Xpre_column_11 bl_11 br_11 en_bar vdd precharge_0
Xpre_column_12 bl_12 br_12 en_bar vdd precharge_0
Xpre_column_13 bl_13 br_13 en_bar vdd precharge_0
Xpre_column_14 bl_14 br_14 en_bar vdd precharge_0
Xpre_column_15 bl_15 br_15 en_bar vdd precharge_0
Xpre_column_16 bl_16 br_16 en_bar vdd precharge_0
.ENDS precharge_array
* NGSPICE file created from sense_amp.ext - technology: sky130A

.subckt sense_amp bl br dout en vdd gnd
X0 a_47_208# bl a_8_72# gnd sky130_fd_pr__nfet_01v8 ad=1.428e+11p pd=1.52e+06u as=6.012e+11p ps=4.46e+06u w=420000u l=150000u
X1 a_47_208# a_152_291# vdd vdd sky130_fd_pr__pfet_01v8 ad=3.7e+11p pd=2.74e+06u as=8.355e+11p ps=5.5e+06u w=1e+06u l=150000u
X2 vdd a_152_291# a_152_291# vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.87e+11p ps=1.78e+06u w=550000u l=150000u
X3 vdd a_47_208# dout vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=2.2e+11p ps=1.9e+06u w=550000u l=150000u
X4 gnd a_47_208# dout gnd sky130_fd_pr__nfet_01v8 ad=5.89e+11p pd=4.54e+06u as=1.68e+11p ps=1.64e+06u w=420000u l=150000u
X5 gnd en a_8_72# gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
X6 a_8_72# br a_152_291# gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=1.47e+11p ps=1.54e+06u w=420000u l=150000u
.ends


.SUBCKT sense_amp_array data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3 data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7 data_8 bl_8 br_8 data_9 bl_9 br_9 data_10 bl_10 br_10 data_11 bl_11 br_11 data_12 bl_12 br_12 data_13 bl_13 br_13 data_14 bl_14 br_14 data_15 bl_15 br_15 en vdd gnd
*.PININFO data_0:O bl_0:I br_0:I data_1:O bl_1:I br_1:I data_2:O bl_2:I br_2:I data_3:O bl_3:I br_3:I data_4:O bl_4:I br_4:I data_5:O bl_5:I br_5:I data_6:O bl_6:I br_6:I data_7:O bl_7:I br_7:I data_8:O bl_8:I br_8:I data_9:O bl_9:I br_9:I data_10:O bl_10:I br_10:I data_11:O bl_11:I br_11:I data_12:O bl_12:I br_12:I data_13:O bl_13:I br_13:I data_14:O bl_14:I br_14:I data_15:O bl_15:I br_15:I en:I vdd:B gnd:B
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* OUTPUT: data_2 
* INPUT : bl_2 
* INPUT : br_2 
* OUTPUT: data_3 
* INPUT : bl_3 
* INPUT : br_3 
* OUTPUT: data_4 
* INPUT : bl_4 
* INPUT : br_4 
* OUTPUT: data_5 
* INPUT : bl_5 
* INPUT : br_5 
* OUTPUT: data_6 
* INPUT : bl_6 
* INPUT : br_6 
* OUTPUT: data_7 
* INPUT : bl_7 
* INPUT : br_7 
* OUTPUT: data_8 
* INPUT : bl_8 
* INPUT : br_8 
* OUTPUT: data_9 
* INPUT : bl_9 
* INPUT : br_9 
* OUTPUT: data_10 
* INPUT : bl_10 
* INPUT : br_10 
* OUTPUT: data_11 
* INPUT : bl_11 
* INPUT : br_11 
* OUTPUT: data_12 
* INPUT : bl_12 
* INPUT : br_12 
* OUTPUT: data_13 
* INPUT : bl_13 
* INPUT : br_13 
* OUTPUT: data_14 
* INPUT : bl_14 
* INPUT : br_14 
* OUTPUT: data_15 
* INPUT : bl_15 
* INPUT : br_15 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* words_per_row: 1
Xsa_d0 bl_0 br_0 data_0 en vdd gnd sense_amp
Xsa_d1 bl_1 br_1 data_1 en vdd gnd sense_amp
Xsa_d2 bl_2 br_2 data_2 en vdd gnd sense_amp
Xsa_d3 bl_3 br_3 data_3 en vdd gnd sense_amp
Xsa_d4 bl_4 br_4 data_4 en vdd gnd sense_amp
Xsa_d5 bl_5 br_5 data_5 en vdd gnd sense_amp
Xsa_d6 bl_6 br_6 data_6 en vdd gnd sense_amp
Xsa_d7 bl_7 br_7 data_7 en vdd gnd sense_amp
Xsa_d8 bl_8 br_8 data_8 en vdd gnd sense_amp
Xsa_d9 bl_9 br_9 data_9 en vdd gnd sense_amp
Xsa_d10 bl_10 br_10 data_10 en vdd gnd sense_amp
Xsa_d11 bl_11 br_11 data_11 en vdd gnd sense_amp
Xsa_d12 bl_12 br_12 data_12 en vdd gnd sense_amp
Xsa_d13 bl_13 br_13 data_13 en vdd gnd sense_amp
Xsa_d14 bl_14 br_14 data_14 en vdd gnd sense_amp
Xsa_d15 bl_15 br_15 data_15 en vdd gnd sense_amp
.ENDS sense_amp_array
* NGSPICE file created from write_driver.ext - technology: sky130A

.subckt write_driver din bl br en vdd gnd
X0 gnd a_102_201# a_102_465# gnd sky130_fd_pr__nfet_01v8 ad=1.4196e+12p pd=1.148e+07u as=1.428e+11p ps=1.52e+06u w=420000u l=150000u
X1 vdd a_102_465# a_67_480# vdd sky130_fd_pr__pfet_01v8 ad=3.74e+11p pd=3.56e+06u as=1.925e+11p ps=1.8e+06u w=550000u l=150000u
X2 vdd a_102_201# a_67_314# vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.925e+11p ps=1.8e+06u w=550000u l=150000u
X3 a_67_480# en a_18_480# vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.87e+11p ps=1.78e+06u w=550000u l=150000u
X4 a_67_314# en a_18_216# vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.87e+11p ps=1.78e+06u w=550000u l=150000u
X5 bl a_16_146# gnd gnd sky130_fd_pr__nfet_01v8 ad=4.2e+11p pd=2.68e+06u as=0p ps=0u w=840000u l=150000u
X6 a_16_146# a_102_465# gnd gnd sky130_fd_pr__nfet_01v8 ad=2.856e+11p pd=3.04e+06u as=0p ps=0u w=420000u l=150000u
X7 gnd a_18_216# br gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=4.2e+11p ps=2.68e+06u w=840000u l=150000u
X8 gnd en a_16_146# gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X9 a_241_314# a_102_201# a_102_465# vdd sky130_fd_pr__pfet_01v8 ad=3.74e+11p pd=3.56e+06u as=1.87e+11p ps=1.78e+06u w=550000u l=150000u
X10 a_18_216# a_102_201# gnd gnd sky130_fd_pr__nfet_01v8 ad=2.856e+11p pd=3.04e+06u as=0p ps=0u w=420000u l=150000u
X11 a_241_314# din a_102_201# vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.87e+11p ps=1.78e+06u w=550000u l=150000u
X12 gnd din a_102_201# gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=1.428e+11p ps=1.52e+06u w=420000u l=150000u
X13 gnd en a_18_216# gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
.ends


.SUBCKT write_driver_array data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 data_8 data_9 data_10 data_11 data_12 data_13 data_14 data_15 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 en vdd gnd
*.PININFO data_0:I data_1:I data_2:I data_3:I data_4:I data_5:I data_6:I data_7:I data_8:I data_9:I data_10:I data_11:I data_12:I data_13:I data_14:I data_15:I bl_0:O br_0:O bl_1:O br_1:O bl_2:O br_2:O bl_3:O br_3:O bl_4:O br_4:O bl_5:O br_5:O bl_6:O br_6:O bl_7:O br_7:O bl_8:O br_8:O bl_9:O br_9:O bl_10:O br_10:O bl_11:O br_11:O bl_12:O br_12:O bl_13:O br_13:O bl_14:O br_14:O bl_15:O br_15:O en:I vdd:B gnd:B
* INPUT : data_0 
* INPUT : data_1 
* INPUT : data_2 
* INPUT : data_3 
* INPUT : data_4 
* INPUT : data_5 
* INPUT : data_6 
* INPUT : data_7 
* INPUT : data_8 
* INPUT : data_9 
* INPUT : data_10 
* INPUT : data_11 
* INPUT : data_12 
* INPUT : data_13 
* INPUT : data_14 
* INPUT : data_15 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 16
Xwrite_driver0 data_0 bl_0 br_0 en vdd gnd write_driver
Xwrite_driver1 data_1 bl_1 br_1 en vdd gnd write_driver
Xwrite_driver2 data_2 bl_2 br_2 en vdd gnd write_driver
Xwrite_driver3 data_3 bl_3 br_3 en vdd gnd write_driver
Xwrite_driver4 data_4 bl_4 br_4 en vdd gnd write_driver
Xwrite_driver5 data_5 bl_5 br_5 en vdd gnd write_driver
Xwrite_driver6 data_6 bl_6 br_6 en vdd gnd write_driver
Xwrite_driver7 data_7 bl_7 br_7 en vdd gnd write_driver
Xwrite_driver8 data_8 bl_8 br_8 en vdd gnd write_driver
Xwrite_driver9 data_9 bl_9 br_9 en vdd gnd write_driver
Xwrite_driver10 data_10 bl_10 br_10 en vdd gnd write_driver
Xwrite_driver11 data_11 bl_11 br_11 en vdd gnd write_driver
Xwrite_driver12 data_12 bl_12 br_12 en vdd gnd write_driver
Xwrite_driver13 data_13 bl_13 br_13 en vdd gnd write_driver
Xwrite_driver14 data_14 bl_14 br_14 en vdd gnd write_driver
Xwrite_driver15 data_15 bl_15 br_15 en vdd gnd write_driver
.ENDS write_driver_array

.SUBCKT port_data rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 dout_8 dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15 din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10 din_11 din_12 din_13 din_14 din_15 s_en p_en_bar w_en vdd gnd
*.PININFO rbl_bl:B rbl_br:B bl_0:B br_0:B bl_1:B br_1:B bl_2:B br_2:B bl_3:B br_3:B bl_4:B br_4:B bl_5:B br_5:B bl_6:B br_6:B bl_7:B br_7:B bl_8:B br_8:B bl_9:B br_9:B bl_10:B br_10:B bl_11:B br_11:B bl_12:B br_12:B bl_13:B br_13:B bl_14:B br_14:B bl_15:B br_15:B dout_0:O dout_1:O dout_2:O dout_3:O dout_4:O dout_5:O dout_6:O dout_7:O dout_8:O dout_9:O dout_10:O dout_11:O dout_12:O dout_13:O dout_14:O dout_15:O din_0:I din_1:I din_2:I din_3:I din_4:I din_5:I din_6:I din_7:I din_8:I din_9:I din_10:I din_11:I din_12:I din_13:I din_14:I din_15:I s_en:I p_en_bar:I w_en:I vdd:B gnd:B
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0 rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 p_en_bar vdd precharge_array
Xsense_amp_array0 dout_0 bl_0 br_0 dout_1 bl_1 br_1 dout_2 bl_2 br_2 dout_3 bl_3 br_3 dout_4 bl_4 br_4 dout_5 bl_5 br_5 dout_6 bl_6 br_6 dout_7 bl_7 br_7 dout_8 bl_8 br_8 dout_9 bl_9 br_9 dout_10 bl_10 br_10 dout_11 bl_11 br_11 dout_12 bl_12 br_12 dout_13 bl_13 br_13 dout_14 bl_14 br_14 dout_15 bl_15 br_15 s_en vdd gnd sense_amp_array
Xwrite_driver_array0 din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10 din_11 din_12 din_13 din_14 din_15 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 w_en vdd gnd write_driver_array
.ENDS port_data

.SUBCKT bank dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15 rbl_bl_0_0 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 addr0_0 addr0_1 addr0_2 addr0_3 s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd
*.PININFO dout0_0:O dout0_1:O dout0_2:O dout0_3:O dout0_4:O dout0_5:O dout0_6:O dout0_7:O dout0_8:O dout0_9:O dout0_10:O dout0_11:O dout0_12:O dout0_13:O dout0_14:O dout0_15:O rbl_bl_0_0:O din0_0:I din0_1:I din0_2:I din0_3:I din0_4:I din0_5:I din0_6:I din0_7:I din0_8:I din0_9:I din0_10:I din0_11:I din0_12:I din0_13:I din0_14:I din0_15:I addr0_0:I addr0_1:I addr0_2:I addr0_3:I s_en0:I p_en_bar0:I w_en0:I wl_en0:I vdd:B gnd:B
* OUTPUT: dout0_0 
* OUTPUT: dout0_1 
* OUTPUT: dout0_2 
* OUTPUT: dout0_3 
* OUTPUT: dout0_4 
* OUTPUT: dout0_5 
* OUTPUT: dout0_6 
* OUTPUT: dout0_7 
* OUTPUT: dout0_8 
* OUTPUT: dout0_9 
* OUTPUT: dout0_10 
* OUTPUT: dout0_11 
* OUTPUT: dout0_12 
* OUTPUT: dout0_13 
* OUTPUT: dout0_14 
* OUTPUT: dout0_15 
* OUTPUT: rbl_bl_0_0 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din0_2 
* INPUT : din0_3 
* INPUT : din0_4 
* INPUT : din0_5 
* INPUT : din0_6 
* INPUT : din0_7 
* INPUT : din0_8 
* INPUT : din0_9 
* INPUT : din0_10 
* INPUT : din0_11 
* INPUT : din0_12 
* INPUT : din0_13 
* INPUT : din0_14 
* INPUT : din0_15 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : s_en0 
* INPUT : p_en_bar0 
* INPUT : w_en0 
* INPUT : wl_en0 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 rbl_wl0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd replica_bitcell_array
Xport_data0 rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 s_en0 p_en_bar0 w_en0 vdd gnd port_data
Xport_address0 addr0_0 addr0_1 addr0_2 addr0_3 wl_en0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 rbl_wl0 vdd gnd port_address
.ENDS bank
* NGSPICE file created from dff.ext - technology: sky130A

.subckt dff D Q clk vdd gnd
X0 net1 clkb D gnd sky130_fd_pr__nfet_01v8 ad=4.452e+11p pd=2.96e+06u as=1.932e+11p ps=1.76e+06u w=420000u l=150000u
X1 net2 clk net1 gnd sky130_fd_pr__nfet_01v8 ad=5.082e+11p pd=4.1e+06u as=0p ps=0u w=420000u l=150000u
X2 net1 clk D vdd sky130_fd_pr__pfet_01v8 ad=5.83e+11p pd=3.22e+06u as=2.53e+11p ps=2.02e+06u w=550000u l=150000u
X3 gnd net3 net2 gnd sky130_fd_pr__nfet_01v8 ad=8.652e+11p pd=6.64e+06u as=0p ps=0u w=420000u l=150000u
X4 clkb clk gnd gnd sky130_fd_pr__nfet_01v8 ad=1.932e+11p pd=1.76e+06u as=0p ps=0u w=420000u l=150000u
X5 clkb clk vdd vdd sky130_fd_pr__pfet_01v8 ad=2.53e+11p pd=2.02e+06u as=1.133e+12p ps=7.42e+06u w=550000u l=150000u
X6 vdd net3 net2 vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=6.655e+11p ps=4.62e+06u w=550000u l=150000u
X7 vdd Q net5 vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=7.425e+11p ps=4.9e+06u w=550000u l=150000u
X8 net3 net1 gnd gnd sky130_fd_pr__nfet_01v8 ad=5.334e+11p pd=4.22e+06u as=0p ps=0u w=420000u l=150000u
X9 net3 net1 vdd vdd sky130_fd_pr__pfet_01v8 ad=6.985e+11p pd=4.74e+06u as=0p ps=0u w=550000u l=150000u
X10 net5 clk net4 vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=5.83e+11p ps=3.22e+06u w=550000u l=150000u
X11 Q net4 vdd vdd sky130_fd_pr__pfet_01v8 ad=2.2e+11p pd=1.9e+06u as=0p ps=0u w=550000u l=150000u
X12 net2 clkb net1 vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=550000u l=150000u
X13 net5 clkb net4 gnd sky130_fd_pr__nfet_01v8 ad=5.67e+11p pd=4.38e+06u as=4.452e+11p ps=2.96e+06u w=420000u l=150000u
X14 net4 clkb net3 vdd sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=550000u l=150000u
X15 Q net4 gnd gnd sky130_fd_pr__nfet_01v8 ad=1.68e+11p pd=1.64e+06u as=0p ps=0u w=420000u l=150000u
X16 gnd Q net5 gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X17 net4 clk net3 gnd sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
.ends


.SUBCKT row_addr_dff din_0 din_1 din_2 din_3 dout_0 dout_1 dout_2 dout_3 clk vdd gnd
*.PININFO din_0:I din_1:I din_2:I din_3:I dout_0:O dout_1:O dout_2:O dout_3:O clk:I vdd:B gnd:B
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 4 cols: 1
Xdff_r0_c0 din_0 dout_0 clk vdd gnd dff
Xdff_r1_c0 din_1 dout_1 clk vdd gnd dff
Xdff_r2_c0 din_2 dout_2 clk vdd gnd dff
Xdff_r3_c0 din_3 dout_3 clk vdd gnd dff
.ENDS row_addr_dff

.SUBCKT data_dff din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10 din_11 din_12 din_13 din_14 din_15 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 dout_8 dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15 clk vdd gnd
*.PININFO din_0:I din_1:I din_2:I din_3:I din_4:I din_5:I din_6:I din_7:I din_8:I din_9:I din_10:I din_11:I din_12:I din_13:I din_14:I din_15:I dout_0:O dout_1:O dout_2:O dout_3:O dout_4:O dout_5:O dout_6:O dout_7:O dout_8:O dout_9:O dout_10:O dout_11:O dout_12:O dout_13:O dout_14:O dout_15:O clk:I vdd:B gnd:B
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 16
Xdff_r0_c0 din_0 dout_0 clk vdd gnd dff
Xdff_r0_c1 din_1 dout_1 clk vdd gnd dff
Xdff_r0_c2 din_2 dout_2 clk vdd gnd dff
Xdff_r0_c3 din_3 dout_3 clk vdd gnd dff
Xdff_r0_c4 din_4 dout_4 clk vdd gnd dff
Xdff_r0_c5 din_5 dout_5 clk vdd gnd dff
Xdff_r0_c6 din_6 dout_6 clk vdd gnd dff
Xdff_r0_c7 din_7 dout_7 clk vdd gnd dff
Xdff_r0_c8 din_8 dout_8 clk vdd gnd dff
Xdff_r0_c9 din_9 dout_9 clk vdd gnd dff
Xdff_r0_c10 din_10 dout_10 clk vdd gnd dff
Xdff_r0_c11 din_11 dout_11 clk vdd gnd dff
Xdff_r0_c12 din_12 dout_12 clk vdd gnd dff
Xdff_r0_c13 din_13 dout_13 clk vdd gnd dff
Xdff_r0_c14 din_14 dout_14 clk vdd gnd dff
Xdff_r0_c15 din_15 dout_15 clk vdd gnd dff
.ENDS data_dff

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=2 w=0.42u l=0.15u pd=1.14u ps=1.14u as=0.16p ad=0.16p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=2 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p

.SUBCKT pinv_1 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=0.42u l=0.15u pd=1.14u ps=1.14u as=0.16p ad=0.16p
.ENDS pinv_1

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=3 w=0.56u l=0.15u pd=1.42u ps=1.42u as=0.21p ad=0.21p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=3 w=1.12u l=0.15u pd=2.54u ps=2.54u as=0.42p ad=0.42p

.SUBCKT pinv_2 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=1.12u l=0.15u pd=2.54u ps=2.54u as=0.42p ad=0.42p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=0.56u l=0.15u pd=1.42u ps=1.42u as=0.21p ad=0.21p
.ENDS pinv_2

.SUBCKT dff_buf_0 D Q Qb clk vdd gnd
*.PININFO D:I Q:O Qb:O clk:I vdd:B gnd:B
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff D qint clk vdd gnd dff
Xdff_buf_inv1 qint Qb vdd gnd pinv_1
Xdff_buf_inv2 Qb Q vdd gnd pinv_2
.ENDS dff_buf_0

.SUBCKT dff_buf_array din_0 din_1 dout_0 dout_bar_0 dout_1 dout_bar_1 clk vdd gnd
*.PININFO din_0:I din_1:I dout_0:O dout_bar_0:O dout_1:O dout_bar_1:O clk:I vdd:B gnd:B
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* OUTPUT: dout_1 
* OUTPUT: dout_bar_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_r0_c0 din_0 dout_0 dout_bar_0 clk vdd gnd dff_buf_0
Xdff_r1_c0 din_1 dout_1 dout_bar_1 clk vdd gnd dff_buf_0
.ENDS dff_buf_array

.SUBCKT pnand2_0 A B Z vdd gnd
*.PININFO A:I B:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
.ENDS pnand2_0

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=7 w=0.72u l=0.15u pd=1.74u ps=1.74u as=0.27p ad=0.27p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=7 w=1.44u l=0.15u pd=3.18u ps=3.18u as=0.54p ad=0.54p

.SUBCKT pinv_3 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=7 w=1.44u l=0.15u pd=3.18u ps=3.18u as=0.54p ad=0.54p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=7 w=0.72u l=0.15u pd=1.74u ps=1.74u as=0.27p ad=0.27p
.ENDS pinv_3

.SUBCKT pdriver A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1 A Z vdd gnd pinv_3
.ENDS pdriver

.SUBCKT pand2 A B Z vdd gnd
*.PININFO A:I B:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand2_nand A B zb_int vdd gnd pnand2_0
Xpand2_inv zb_int Z vdd gnd pdriver
.ENDS pand2

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=10 w=0.67u l=0.15u pd=1.64u ps=1.64u as=0.25p ad=0.25p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=10 w=1.34u l=0.15u pd=2.98u ps=2.98u as=0.50p ad=0.50p

.SUBCKT pinv_4 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=10 w=1.34u l=0.15u pd=2.98u ps=2.98u as=0.50p ad=0.50p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=10 w=0.67u l=0.15u pd=1.64u ps=1.64u as=0.25p ad=0.25p
.ENDS pinv_4

.SUBCKT pbuf A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xbuf_inv1 A zb_int vdd gnd pinv_2
Xbuf_inv2 zb_int Z vdd gnd pinv_4
.ENDS pbuf

.SUBCKT pinv_5 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.42u l=0.15u pd=1.14u ps=1.14u as=0.16p ad=0.16p
.ENDS pinv_5

.SUBCKT pinv_6 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=1.12u l=0.15u pd=2.54u ps=2.54u as=0.42p ad=0.42p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=0.56u l=0.15u pd=1.42u ps=1.42u as=0.21p ad=0.21p
.ENDS pinv_6

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=8 w=0.68u l=0.15u pd=1.66u ps=1.66u as=0.26p ad=0.26p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=8 w=1.36u l=0.15u pd=3.02u ps=3.02u as=0.51p ad=0.51p

.SUBCKT pinv_7 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=8 w=1.36u l=0.15u pd=3.02u ps=3.02u as=0.51p ad=0.51p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=8 w=0.68u l=0.15u pd=1.66u ps=1.66u as=0.26p ad=0.26p
.ENDS pinv_7

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=23 w=0.6900000000000001u l=0.15u pd=1.68u ps=1.68u as=0.26p ad=0.26p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=23 w=1.3900000000000001u l=0.15u pd=3.08u ps=3.08u as=0.52p ad=0.52p

.SUBCKT pinv_8 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=23 w=1.3900000000000001u l=0.15u pd=3.08u ps=3.08u as=0.52p ad=0.52p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=23 w=0.6900000000000001u l=0.15u pd=1.68u ps=1.68u as=0.26p ad=0.26p
.ENDS pinv_8

.SUBCKT pdriver_0 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 1, 4, 13, 38]
Xbuf_inv1 A Zb1_int vdd gnd pinv_5
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_5
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_5
Xbuf_inv4 Zb3_int Zb4_int vdd gnd pinv_6
Xbuf_inv5 Zb4_int Zb5_int vdd gnd pinv_7
Xbuf_inv6 Zb5_int Z vdd gnd pinv_8
.ENDS pdriver_0

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=3 w=0.7000000000000001u l=0.15u pd=1.70u ps=1.70u as=0.26p ad=0.26p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=3 w=1.4000000000000001u l=0.15u pd=3.10u ps=3.10u as=0.53p ad=0.53p

.SUBCKT pinv_9 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=1.4000000000000001u l=0.15u pd=3.10u ps=3.10u as=0.53p ad=0.53p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=0.7000000000000001u l=0.15u pd=1.70u ps=1.70u as=0.26p ad=0.26p
.ENDS pinv_9

.SUBCKT pdriver_1 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 5]
Xbuf_inv1 A Zb1_int vdd gnd pinv_5
Xbuf_inv2 Zb1_int Z vdd gnd pinv_9
.ENDS pdriver_1

.SUBCKT pnand3_0 A B C Z vdd gnd
*.PININFO A:I B:I C:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand3_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_pmos3 Z C vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_nmos1 Z C net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_nmos2 net1 B net2 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand3_nmos3 net2 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
.ENDS pnand3_0

* spice ptx M{0} {1} sky130_fd_pr__nfet_01v8 m=14 w=0.72u l=0.15u pd=1.74u ps=1.74u as=0.27p ad=0.27p

* spice ptx M{0} {1} sky130_fd_pr__pfet_01v8 m=14 w=1.44u l=0.15u pd=3.18u ps=3.18u as=0.54p ad=0.54p

.SUBCKT pinv_10 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=14 w=1.44u l=0.15u pd=3.18u ps=3.18u as=0.54p ad=0.54p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=14 w=0.72u l=0.15u pd=1.74u ps=1.74u as=0.27p ad=0.27p
.ENDS pinv_10

.SUBCKT pdriver_2 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [24]
Xbuf_inv1 A Z vdd gnd pinv_10
.ENDS pdriver_2

.SUBCKT pand3 A B C Z vdd gnd
*.PININFO A:I B:I C:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand3_nand A B C zb_int vdd gnd pnand3_0
Xpand3_inv zb_int Z vdd gnd pdriver_2
.ENDS pand3

.SUBCKT pinv_11 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=10 w=1.34u l=0.15u pd=2.98u ps=2.98u as=0.50p ad=0.50p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=10 w=0.67u l=0.15u pd=1.64u ps=1.64u as=0.25p ad=0.25p
.ENDS pinv_11

.SUBCKT pdriver_3 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [16]
Xbuf_inv1 A Z vdd gnd pinv_11
.ENDS pdriver_3

.SUBCKT pand3_0 A B C Z vdd gnd
*.PININFO A:I B:I C:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand3_nand A B C zb_int vdd gnd pnand3_0
Xpand3_inv zb_int Z vdd gnd pdriver_3
.ENDS pand3_0

.SUBCKT pinv_12 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.42u l=0.15u pd=1.14u ps=1.14u as=0.16p ad=0.16p
.ENDS pinv_12

.SUBCKT pinv_13 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=0.42u l=0.15u pd=1.14u ps=1.14u as=0.16p ad=0.16p
.ENDS pinv_13

.SUBCKT pdriver_4 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 2, 5]
Xbuf_inv1 A Zb1_int vdd gnd pinv_5
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_5
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_13
Xbuf_inv4 Zb3_int Z vdd gnd pinv_9
.ENDS pdriver_4

.SUBCKT pnand2_1 A B Z vdd gnd
*.PININFO A:I B:I Z:O vdd:B gnd:B
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
.ENDS pnand2_1

.SUBCKT pinv_14 A Z vdd gnd
*.PININFO A:I Z:O vdd:B gnd:B
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.84u l=0.15u pd=1.98u ps=1.98u as=0.32p ad=0.32p
Mpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.42u l=0.15u pd=1.14u ps=1.14u as=0.16p ad=0.16p
.ENDS pinv_14

.SUBCKT delay_chain in out vdd gnd
*.PININFO in:I out:O vdd:B gnd:B
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0 in dout_1 vdd gnd pinv_14
Xdload_0_0 dout_1 n_0_0 vdd gnd pinv_14
Xdload_0_1 dout_1 n_0_1 vdd gnd pinv_14
Xdload_0_2 dout_1 n_0_2 vdd gnd pinv_14
Xdload_0_3 dout_1 n_0_3 vdd gnd pinv_14
Xdinv1 dout_1 dout_2 vdd gnd pinv_14
Xdload_1_0 dout_2 n_1_0 vdd gnd pinv_14
Xdload_1_1 dout_2 n_1_1 vdd gnd pinv_14
Xdload_1_2 dout_2 n_1_2 vdd gnd pinv_14
Xdload_1_3 dout_2 n_1_3 vdd gnd pinv_14
Xdinv2 dout_2 dout_3 vdd gnd pinv_14
Xdload_2_0 dout_3 n_2_0 vdd gnd pinv_14
Xdload_2_1 dout_3 n_2_1 vdd gnd pinv_14
Xdload_2_2 dout_3 n_2_2 vdd gnd pinv_14
Xdload_2_3 dout_3 n_2_3 vdd gnd pinv_14
Xdinv3 dout_3 dout_4 vdd gnd pinv_14
Xdload_3_0 dout_4 n_3_0 vdd gnd pinv_14
Xdload_3_1 dout_4 n_3_1 vdd gnd pinv_14
Xdload_3_2 dout_4 n_3_2 vdd gnd pinv_14
Xdload_3_3 dout_4 n_3_3 vdd gnd pinv_14
Xdinv4 dout_4 dout_5 vdd gnd pinv_14
Xdload_4_0 dout_5 n_4_0 vdd gnd pinv_14
Xdload_4_1 dout_5 n_4_1 vdd gnd pinv_14
Xdload_4_2 dout_5 n_4_2 vdd gnd pinv_14
Xdload_4_3 dout_5 n_4_3 vdd gnd pinv_14
Xdinv5 dout_5 dout_6 vdd gnd pinv_14
Xdload_5_0 dout_6 n_5_0 vdd gnd pinv_14
Xdload_5_1 dout_6 n_5_1 vdd gnd pinv_14
Xdload_5_2 dout_6 n_5_2 vdd gnd pinv_14
Xdload_5_3 dout_6 n_5_3 vdd gnd pinv_14
Xdinv6 dout_6 dout_7 vdd gnd pinv_14
Xdload_6_0 dout_7 n_6_0 vdd gnd pinv_14
Xdload_6_1 dout_7 n_6_1 vdd gnd pinv_14
Xdload_6_2 dout_7 n_6_2 vdd gnd pinv_14
Xdload_6_3 dout_7 n_6_3 vdd gnd pinv_14
Xdinv7 dout_7 dout_8 vdd gnd pinv_14
Xdload_7_0 dout_8 n_7_0 vdd gnd pinv_14
Xdload_7_1 dout_8 n_7_1 vdd gnd pinv_14
Xdload_7_2 dout_8 n_7_2 vdd gnd pinv_14
Xdload_7_3 dout_8 n_7_3 vdd gnd pinv_14
Xdinv8 dout_8 out vdd gnd pinv_14
Xdload_8_0 out n_8_0 vdd gnd pinv_14
Xdload_8_1 out n_8_1 vdd gnd pinv_14
Xdload_8_2 out n_8_2 vdd gnd pinv_14
Xdload_8_3 out n_8_3 vdd gnd pinv_14
.ENDS delay_chain

.SUBCKT control_logic_rw csb web clk rbl_bl s_en w_en p_en_bar wl_en clk_buf vdd gnd
*.PININFO csb:I web:I clk:I rbl_bl:I s_en:O w_en:O p_en_bar:O wl_en:O clk_buf:O vdd:B gnd:B
* INPUT : csb 
* INPUT : web 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* word_size 16
Xctrl_dffs csb web cs_bar cs we_bar we clk_buf vdd gnd dff_buf_array
Xclkbuf clk clk_buf vdd gnd pdriver_0
Xinv_clk_bar clk_buf clk_bar vdd gnd pinv_12
Xand2_gated_clk_bar clk_bar cs gated_clk_bar vdd gnd pand2
Xand2_gated_clk_buf clk_buf cs gated_clk_buf vdd gnd pand2
Xbuf_wl_en gated_clk_bar wl_en vdd gnd pdriver_1
Xrbl_bl_delay_inv rbl_bl_delay rbl_bl_delay_bar vdd gnd pinv_12
Xw_en_and we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd pand3
Xbuf_s_en_and rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd pand3_0
Xdelay_chain rbl_bl rbl_bl_delay vdd gnd delay_chain
Xnand_p_en_bar gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd pnand2_1
Xbuf_p_en_bar p_en_bar_unbuf p_en_bar vdd gnd pdriver_4
.ENDS control_logic_rw

.SUBCKT conv2_bm_b_sram_16_16_sky130A din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7] din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15] addr0[0] addr0[1] addr0[2] addr0[3] csb0 web0 clk0 dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6] dout0[7] dout0[8] dout0[9] dout0[10] dout0[11] dout0[12] dout0[13] dout0[14] dout0[15] vdd gnd
*.PININFO din0[0]:I din0[1]:I din0[2]:I din0[3]:I din0[4]:I din0[5]:I din0[6]:I din0[7]:I din0[8]:I din0[9]:I din0[10]:I din0[11]:I din0[12]:I din0[13]:I din0[14]:I din0[15]:I addr0[0]:I addr0[1]:I addr0[2]:I addr0[3]:I csb0:I web0:I clk0:I dout0[0]:O dout0[1]:O dout0[2]:O dout0[3]:O dout0[4]:O dout0[5]:O dout0[6]:O dout0[7]:O dout0[8]:O dout0[9]:O dout0[10]:O dout0[11]:O dout0[12]:O dout0[13]:O dout0[14]:O dout0[15]:O vdd:B gnd:B
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din0[2] 
* INPUT : din0[3] 
* INPUT : din0[4] 
* INPUT : din0[5] 
* INPUT : din0[6] 
* INPUT : din0[7] 
* INPUT : din0[8] 
* INPUT : din0[9] 
* INPUT : din0[10] 
* INPUT : din0[11] 
* INPUT : din0[12] 
* INPUT : din0[13] 
* INPUT : din0[14] 
* INPUT : din0[15] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : csb0 
* INPUT : web0 
* INPUT : clk0 
* OUTPUT: dout0[0] 
* OUTPUT: dout0[1] 
* OUTPUT: dout0[2] 
* OUTPUT: dout0[3] 
* OUTPUT: dout0[4] 
* OUTPUT: dout0[5] 
* OUTPUT: dout0[6] 
* OUTPUT: dout0[7] 
* OUTPUT: dout0[8] 
* OUTPUT: dout0[9] 
* OUTPUT: dout0[10] 
* OUTPUT: dout0[11] 
* OUTPUT: dout0[12] 
* OUTPUT: dout0[13] 
* OUTPUT: dout0[14] 
* OUTPUT: dout0[15] 
* POWER : vdd 
* GROUND: gnd 
Xbank0 dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6] dout0[7] dout0[8] dout0[9] dout0[10] dout0[11] dout0[12] dout0[13] dout0[14] dout0[15] rbl_bl0 bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4 bank_din0_5 bank_din0_6 bank_din0_7 bank_din0_8 bank_din0_9 bank_din0_10 bank_din0_11 bank_din0_12 bank_din0_13 bank_din0_14 bank_din0_15 a0_0 a0_1 a0_2 a0_3 s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd bank
Xcontrol0 csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd control_logic_rw
Xrow_address0 addr0[0] addr0[1] addr0[2] addr0[3] a0_0 a0_1 a0_2 a0_3 clk_buf0 vdd gnd row_addr_dff
Xdata_dff0 din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7] din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15] bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4 bank_din0_5 bank_din0_6 bank_din0_7 bank_din0_8 bank_din0_9 bank_din0_10 bank_din0_11 bank_din0_12 bank_din0_13 bank_din0_14 bank_din0_15 clk_buf0 vdd gnd data_dff
.ENDS conv2_bm_b_sram_16_16_sky130A
