

wire[15:0]	input_blob_din;
wire	input_blob_din_en;
wire	input_blob_din_rdy;
wire	input_blob_din_eop;

busm2n #( 
.IN_WIDTH(16),
.OUT_WIDTH(16),
.COM_MUL(16),
.N(1568))
u0_busm2n(
.clk(clk),
.rst(rst),
.blob_din(wbs_dat_i[15:0]),
.blob_din_en(wbs_dat_i[16]),
.blob_din_rdy(wbs_dat_i[17]),
.blob_din_eop(wbs_dat_i[18]),
.blob_dout(input_blob_din),
.blob_dout_en(input_blob_din_en),
.blob_dout_rdy(input_blob_din_rdy),
.blob_dout_eop(input_blob_din_eop));

wire	conv1_blob_dout_eop;
wire[15:0]	conv1_blob_dout;
wire	conv1_blob_dout_en;
wire	conv1_blob_dout_rdy;

conv1_layer u0_conv1_layer(
.clk(clk),
.rst(rst),
.blob_din(input_blob_din),
.blob_din_en(input_blob_din_en),
.blob_din_rdy(input_blob_din_rdy),
.blob_din_eop(input_blob_din_eop),
.blob_dout(conv1_blob_dout),
.blob_dout_en(conv1_blob_dout_en),
.blob_dout_rdy(conv1_blob_dout_rdy),
.blob_dout_eop(conv1_blob_dout_eop),
.dma_engineer_req(layer_ddr_read_req_0),
.dma_engineer_ack(la_data_in[17]),
.dma_engineer_start_addr(layer_ddr_read_addr_0),
.dma_engineer_length(layer_ddr_read_length_0),
.dma_engineer_dout(la_data_in[15:0]),
.dma_engineer_dout_en(la_data_in[16]),
.dma_engineer_dout_eop(la_data_in[18]));

wire	pool1_blob_dout_eop;
wire[15:0]	pool1_blob_dout;
wire	pool1_blob_dout_en;
wire	pool1_blob_dout_rdy;

pool1_layer u0_pool1_layer(
.clk(clk),
.rst(rst),
.blob_din(conv1_blob_dout),
.blob_din_en(conv1_blob_dout_en),
.blob_din_rdy(conv1_blob_dout_rdy),
.blob_din_eop(conv1_blob_dout_eop),
.blob_dout(pool1_blob_dout),
.blob_dout_en(pool1_blob_dout_en),
.blob_dout_rdy(pool1_blob_dout_rdy),
.blob_dout_eop(pool1_blob_dout_eop));

wire[15:0]	conv2_blob_dout;
wire	conv2_blob_dout_en;
wire	conv2_blob_dout_rdy;
wire	conv2_blob_dout_eop;

conv2_layer u0_conv2_layer(
.clk(clk),
.rst(rst),
.blob_din(pool1_blob_dout),
.blob_din_en(pool1_blob_dout_en),
.blob_din_rdy(pool1_blob_dout_rdy),
.blob_din_eop(pool1_blob_dout_eop),
.blob_dout(conv2_blob_dout),
.blob_dout_en(conv2_blob_dout_en),
.blob_dout_rdy(conv2_blob_dout_rdy),
.blob_dout_eop(conv2_blob_dout_eop),
.dma_engineer_req(layer_ddr_read_req_1),
.dma_engineer_ack(la_data_in[36]),
.dma_engineer_start_addr(layer_ddr_read_addr_1),
.dma_engineer_length(layer_ddr_read_length_1),
.dma_engineer_dout(la_data_in[34:19]),
.dma_engineer_dout_en(la_data_in[35]),
.dma_engineer_dout_eop(la_data_in[37]));

wire[15:0]	pool2_blob_dout;
wire	pool2_blob_dout_en;
wire	pool2_blob_dout_rdy;
wire	pool2_blob_dout_eop;

pool2_layer u0_pool2_layer(
.clk(clk),
.rst(rst),
.blob_din(conv2_blob_dout),
.blob_din_en(conv2_blob_dout_en),
.blob_din_rdy(conv2_blob_dout_rdy),
.blob_din_eop(conv2_blob_dout_eop),
.blob_dout(pool2_blob_dout),
.blob_dout_en(pool2_blob_dout_en),
.blob_dout_rdy(pool2_blob_dout_rdy),
.blob_dout_eop(pool2_blob_dout_eop));

wire	ip1_blob_dout_rdy;
wire[15:0]	ip1_blob_dout;
wire	ip1_blob_dout_en;
wire	ip1_blob_dout_eop;

ip1_layer u0_ip1_layer(
.clk(clk),
.rst(rst),
.blob_din(pool2_blob_dout),
.blob_din_en(pool2_blob_dout_en),
.blob_din_rdy(pool2_blob_dout_rdy),
.blob_din_eop(pool2_blob_dout_eop),
.blob_dout(ip1_blob_dout),
.blob_dout_en(ip1_blob_dout_en),
.blob_dout_rdy(ip1_blob_dout_rdy),
.blob_dout_eop(ip1_blob_dout_eop),
.dma_engineer_req(layer_ddr_read_req_2),
.dma_engineer_ack(layer_ddr_read_ack_2),
.dma_engineer_start_addr(layer_ddr_read_addr_2),
.dma_engineer_length(layer_ddr_read_length_2),
.dma_engineer_dout(layer_ddr_dout_2),
.dma_engineer_dout_en(layer_ddr_dout_en_2),
.dma_engineer_dout_eop(layer_ddr_dout_eop_2));

busm2n #( 
.IN_WIDTH(16),
.OUT_WIDTH(16),
.COM_MUL(16),
.N(10))
u1_busm2n(
.clk(clk),
.rst(rst),
.blob_din(ip1_blob_dout),
.blob_din_en(ip1_blob_dout_en),
.blob_din_rdy(ip1_blob_dout_rdy),
.blob_din_eop(ip1_blob_dout_eop),
.blob_dout(blob_dout),
.blob_dout_en(blob_dout_en),
.blob_dout_rdy(blob_dout_rdy),
.blob_dout_eop(blob_dout_eop));

assign layer_ddr_read_req_3 = 1'b0;
assign layer_ddr_read_length_3 = 27'b0;
assign layer_ddr_read_addr_3 = 27'b0;
assign layer_ddr_read_req_4 = 1'b0;
assign layer_ddr_read_length_4 = 27'b0;
assign layer_ddr_read_addr_4 = 27'b0;
assign layer_ddr_read_req_5 = 1'b0;
assign layer_ddr_read_length_5 = 27'b0;
assign layer_ddr_read_addr_5 = 27'b0;
assign layer_ddr_read_req_6 = 1'b0;
assign layer_ddr_read_length_6 = 27'b0;
assign layer_ddr_read_addr_6 = 27'b0;
assign layer_ddr_read_req_7 = 1'b0;
assign layer_ddr_read_length_7 = 27'b0;
assign layer_ddr_read_addr_7 = 27'b0;
assign layer_ddr_read_req_8 = 1'b0;
assign layer_ddr_read_length_8 = 27'b0;
assign layer_ddr_read_addr_8 = 27'b0;
assign layer_ddr_read_req_9 = 1'b0;
assign layer_ddr_read_length_9 = 27'b0;
assign layer_ddr_read_addr_9 = 27'b0;
assign layer_ddr_read_req_10 = 1'b0;
assign layer_ddr_read_length_10 = 27'b0;
assign layer_ddr_read_addr_10 = 27'b0;
assign layer_ddr_read_req_11 = 1'b0;
assign layer_ddr_read_length_11 = 27'b0;
assign layer_ddr_read_addr_11 = 27'b0;
assign layer_ddr_read_req_12 = 1'b0;
assign layer_ddr_read_length_12 = 27'b0;
assign layer_ddr_read_addr_12 = 27'b0;
assign layer_ddr_read_req_13 = 1'b0;
assign layer_ddr_read_length_13 = 27'b0;
assign layer_ddr_read_addr_13 = 27'b0;
assign layer_ddr_read_req_14 = 1'b0;
assign layer_ddr_read_length_14 = 27'b0;
assign layer_ddr_read_addr_14 = 27'b0;
endmodule
