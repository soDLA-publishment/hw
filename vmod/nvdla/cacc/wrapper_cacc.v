module wrapper_cacc(
       cacc2sdp_ready                //|< i
      ,csb2cacc_req_pd               //|< i
      ,csb2cacc_req_pvld             //|< i
      ,dla_clk_ovr_on_sync           //|< i
      ,global_clk_ovr_on_sync        //|< i
      //========generate mac_a2accu_data===========
      //========generate mac_b2accu_data===========
      ,mac_a2accu_data0              //|< i
      ,mac_b2accu_data0              //|< i
      ,mac_a2accu_data1              //|< i
      ,mac_b2accu_data1              //|< i
      ,mac_a2accu_data2              //|< i
      ,mac_b2accu_data2              //|< i
      ,mac_a2accu_data3              //|< i
      ,mac_b2accu_data3              //|< i
      ,mac_a2accu_data4              //|< i
      ,mac_b2accu_data4              //|< i
      ,mac_a2accu_data5              //|< i
      ,mac_b2accu_data5              //|< i
      ,mac_a2accu_data6              //|< i
      ,mac_b2accu_data6              //|< i
      ,mac_a2accu_data7              //|< i
      ,mac_b2accu_data7              //|< i
      ,mac_a2accu_data8              //|< i
      ,mac_b2accu_data8              //|< i
      ,mac_a2accu_data9              //|< i
      ,mac_b2accu_data9              //|< i
      ,mac_a2accu_data10              //|< i
      ,mac_b2accu_data10              //|< i
      ,mac_a2accu_data11              //|< i
      ,mac_b2accu_data11              //|< i
      ,mac_a2accu_data12              //|< i
      ,mac_b2accu_data12              //|< i
      ,mac_a2accu_data13              //|< i
      ,mac_b2accu_data13              //|< i
      ,mac_a2accu_data14              //|< i
      ,mac_b2accu_data14              //|< i
      ,mac_a2accu_data15              //|< i
      ,mac_b2accu_data15              //|< i
      //========generate end======================
      ,mac_a2accu_mask               //|< i
      ,mac_a2accu_mode               //|< i
      ,mac_a2accu_pd                 //|< i
      ,mac_a2accu_pvld               //|< i
      ,mac_b2accu_mask               //|< i
      ,mac_b2accu_mode               //|< i
      ,mac_b2accu_pd                 //|< i
      ,mac_b2accu_pvld               //|< i
      ,nvdla_core_clk                //|< i
      ,nvdla_core_rstn               //|< i
      ,pwrbus_ram_pd                 //|< i
      ,tmc2slcg_disable_clock_gating //|< i
      ,accu2sc_credit_size           //|> o
      ,accu2sc_credit_vld            //|> o
      ,cacc2csb_resp_pd              //|> o
      ,cacc2csb_resp_valid           //|> o
      ,cacc2glb_done_intr_pd         //|> o
      ,cacc2sdp_pd                   //|> o
      ,cacc2sdp_valid                //|> o
      ,csb2cacc_req_prdy             //|> o
);
      // NV_NVDLA_cacc_ports.v
      //
      input  nvdla_core_clk;   /* csb2cacc_req, cacc2csb_resp, mac_a2accu, mac_b2accu, cacc2sdp, accu2sc_credit, cacc2glb_done_intr */
      input  nvdla_core_rstn;  /* csb2cacc_req, cacc2csb_resp, mac_a2accu, mac_b2accu, cacc2sdp, accu2sc_credit, cacc2glb_done_intr */

      input [31:0] pwrbus_ram_pd;

      input         csb2cacc_req_pvld;  /* data valid */
      output        csb2cacc_req_prdy;  /* data return handshake */
      input  [62:0] csb2cacc_req_pd;
      output        cacc2csb_resp_valid;  /* data valid */
      output [33:0] cacc2csb_resp_pd;     /* pkt_id_width=1 pkt_widths=33,33  */

      input         mac_a2accu_pvld;   /* data valid */
      input   [15:0] mac_a2accu_mask;
      input   mac_a2accu_mode;


      input [21:0] mac_a2accu_data0;              //|< i
      input [21:0] mac_b2accu_data0;              //|< i
      input [21:0] mac_a2accu_data1;              //|< i
      input [21:0] mac_b2accu_data1;              //|< i
      input [21:0] mac_a2accu_data2;              //|< i
      input [21:0] mac_b2accu_data2;              //|< i
      input [21:0] mac_a2accu_data3;              //|< i
      input [21:0] mac_b2accu_data3;              //|< i
      input [21:0] mac_a2accu_data4;              //|< i
      input [21:0] mac_b2accu_data4;              //|< i
      input [21:0] mac_a2accu_data5;              //|< i
      input [21:0] mac_b2accu_data5;              //|< i
      input [21:0] mac_a2accu_data6;              //|< i
      input [21:0] mac_b2accu_data6;              //|< i
      input [21:0] mac_a2accu_data7;              //|< i
      input [21:0] mac_b2accu_data7;              //|< i
      input [21:0] mac_a2accu_data8;              //|< i
      input [21:0] mac_b2accu_data8;              //|< i
      input [21:0] mac_a2accu_data9;              //|< i
      input [21:0] mac_b2accu_data9;              //|< i
      input [21:0] mac_a2accu_data10;              //|< i
      input [21:0] mac_b2accu_data10;              //|< i
      input [21:0] mac_a2accu_data11;              //|< i
      input [21:0] mac_b2accu_data11;              //|< i
      input [21:0] mac_a2accu_data12;              //|< i
      input [21:0] mac_b2accu_data12;              //|< i
      input [21:0] mac_a2accu_data13;              //|< i
      input [21:0] mac_b2accu_data13;              //|< i
      input [21:0] mac_a2accu_data14;              //|< i
      input [21:0] mac_b2accu_data14;              //|< i
      input [21:0] mac_a2accu_data15;              //|< i
      input [21:0] mac_b2accu_data15;              //|< i

      input   [8:0] mac_a2accu_pd;
      input         mac_b2accu_pvld;   /* data valid */
      input   [15:0] mac_b2accu_mask;
      input   mac_b2accu_mode;
      input   [8:0] mac_b2accu_pd;

      output         cacc2sdp_valid;  /* data valid */
      input          cacc2sdp_ready;  /* data return handshake */
      output [513:0] cacc2sdp_pd;

      output       accu2sc_credit_vld;   /* data valid */
      output [2:0] accu2sc_credit_size;
      output [1:0] cacc2glb_done_intr_pd;

      //Port for SLCG
      input   dla_clk_ovr_on_sync;
      input   global_clk_ovr_on_sync;
      input   tmc2slcg_disable_clock_gating;
NV_soDLA_cacc NV_soDLA_cacc(
    .io_nvdla_clock_nvdla_core_clk(nvdla_core_clk),
    .io_nvdla_clock_dla_clk_ovr_on_sync(dla_clk_ovr_on_sync),
    .io_nvdla_clock_global_clk_ovr_on_sync(global_clk_ovr_on_sync),
    .io_nvdla_clock_tmc2slcg_disable_clock_gating(tmc2slcg_disable_clock_gating),
    .io_nvdla_core_rstn(nvdla_core_rstn),
    .io_csb2cacc_req_ready(csb2cacc_req_prdy),
    .io_csb2cacc_req_valid(csb2cacc_req_pvld),
    .io_csb2cacc_req_bits(csb2cacc_req_pd),
    .io_csb2cacc_resp_valid(cacc2csb_resp_valid),
    .io_csb2cacc_resp_bits(cacc2csb_resp_pd),
    .io_mac_a2accu_valid(mac_a2accu_pvld),
    .io_mac_b2accu_valid(mac_b2accu_pvld),
    .io_mac_a2accu_bits_mask_0(mac_a2accu_mask(0)),
    .io_mac_b2accu_bits_mask_0(mac_b2accu_mask(0)),
    .io_mac_a2accu_bits_mask_1(mac_a2accu_mask(1)),
    .io_mac_b2accu_bits_mask_1(mac_b2accu_mask(1)),
    .io_mac_a2accu_bits_mask_2(mac_a2accu_mask(2)),
    .io_mac_b2accu_bits_mask_2(mac_b2accu_mask(2)),
    .io_mac_a2accu_bits_mask_3(mac_a2accu_mask(3)),
    .io_mac_b2accu_bits_mask_3(mac_b2accu_mask(3)),
    .io_mac_a2accu_bits_mask_4(mac_a2accu_mask(4)),
    .io_mac_b2accu_bits_mask_4(mac_b2accu_mask(4)),
    .io_mac_a2accu_bits_mask_5(mac_a2accu_mask(5)),
    .io_mac_b2accu_bits_mask_5(mac_b2accu_mask(5)),
    .io_mac_a2accu_bits_mask_6(mac_a2accu_mask(6)),
    .io_mac_b2accu_bits_mask_6(mac_b2accu_mask(6)),
    .io_mac_a2accu_bits_mask_7(mac_a2accu_mask(7)),
    .io_mac_b2accu_bits_mask_7(mac_b2accu_mask(7)),
    .io_mac_a2accu_bits_mask_8(mac_a2accu_mask(8)),
    .io_mac_b2accu_bits_mask_8(mac_b2accu_mask(8)),
    .io_mac_a2accu_bits_mask_9(mac_a2accu_mask(9)),
    .io_mac_b2accu_bits_mask_9(mac_b2accu_mask(9)),
    .io_mac_a2accu_bits_mask_10(mac_a2accu_mask(10)),
    .io_mac_b2accu_bits_mask_10(mac_b2accu_mask(10)),
    .io_mac_a2accu_bits_mask_11(mac_a2accu_mask(11)),
    .io_mac_b2accu_bits_mask_11(mac_b2accu_mask(11)),
    .io_mac_a2accu_bits_mask_12(mac_a2accu_mask(12)),
    .io_mac_b2accu_bits_mask_12(mac_b2accu_mask(12)),
    .io_mac_a2accu_bits_mask_13(mac_a2accu_mask(13)),
    .io_mac_b2accu_bits_mask_13(mac_b2accu_mask(13)),
    .io_mac_a2accu_bits_mask_14(mac_a2accu_mask(14)),
    .io_mac_b2accu_bits_mask_14(mac_b2accu_mask(14)),
    .io_mac_a2accu_bits_mask_15(mac_a2accu_mask(15)),
    .io_mac_b2accu_bits_mask_15(mac_b2accu_mask(15)),


    .io_mac_a2accu_bits_data_0(mac_a2accu_data0),
    .io_mac_b2accu_bits_data_0(mac_b2accu_data0),
    .io_mac_a2accu_bits_data_1(mac_a2accu_data1),
    .io_mac_b2accu_bits_data_1(mac_b2accu_data1),
    .io_mac_a2accu_bits_data_2(mac_a2accu_data2),
    .io_mac_b2accu_bits_data_2(mac_b2accu_data2),
    .io_mac_a2accu_bits_data_3(mac_a2accu_data3),
    .io_mac_b2accu_bits_data_3(mac_b2accu_data3),
    .io_mac_a2accu_bits_data_4(mac_a2accu_data4),
    .io_mac_b2accu_bits_data_4(mac_b2accu_data4),
    .io_mac_a2accu_bits_data_5(mac_a2accu_data5),
    .io_mac_b2accu_bits_data_5(mac_b2accu_data5),
    .io_mac_a2accu_bits_data_6(mac_a2accu_data6),
    .io_mac_b2accu_bits_data_6(mac_b2accu_data6),
    .io_mac_a2accu_bits_data_7(mac_a2accu_data7),
    .io_mac_b2accu_bits_data_7(mac_b2accu_data7),
    .io_mac_a2accu_bits_data_8(mac_a2accu_data8),
    .io_mac_b2accu_bits_data_8(mac_b2accu_data8),
    .io_mac_a2accu_bits_data_9(mac_a2accu_data9),
    .io_mac_b2accu_bits_data_9(mac_b2accu_data9),
    .io_mac_a2accu_bits_data_10(mac_a2accu_data10),
    .io_mac_b2accu_bits_data_10(mac_b2accu_data10),
    .io_mac_a2accu_bits_data_11(mac_a2accu_data11),
    .io_mac_b2accu_bits_data_11(mac_b2accu_data11),
    .io_mac_a2accu_bits_data_12(mac_a2accu_data12),
    .io_mac_b2accu_bits_data_12(mac_b2accu_data12),
    .io_mac_a2accu_bits_data_13(mac_a2accu_data13),
    .io_mac_b2accu_bits_data_13(mac_b2accu_data13),
    .io_mac_a2accu_bits_data_14(mac_a2accu_data14),
    .io_mac_b2accu_bits_data_14(mac_b2accu_data14),
    .io_mac_a2accu_bits_data_15(mac_a2accu_data15),
    .io_mac_b2accu_bits_data_15(mac_b2accu_data15),

    .io_mac_a2accu_bits_pd(mac_a2accu_pd),
    .io_mac_b2accu_bits_pd(mac_b2accu_pd),
    .io_cacc2sdp_pd_ready(cacc2sdp_ready),
    .io_cacc2sdp_pd_valid(cacc2sdp_valid),
    .io_cacc2sdp_pd_bits(cacc2sdp_pd),
    .io_accu2sc_credit_size_bits(accu2sc_credit_size),
    .io_accu2sc_credit_size_valid(accu2sc_credit_vld),
    .io_cacc2glb_done_intr_pd(cacc2glb_done_intr_pd),
    .io_pwrbus_ram_pd(pwrbus_ram_pd));
endmodule