module NV_NVDLA_BASIC_REG_single( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  output [31:0] io_reg_rd_data, // @[:@6.4]
  input  [11:0] io_reg_offset, // @[:@6.4]
  input  [31:0] io_reg_wr_data, // @[:@6.4]
  input         io_reg_wr_en, // @[:@6.4]
  output        io_producer, // @[:@6.4]
  input         io_consumer, // @[:@6.4]
  input  [1:0]  io_status_0, // @[:@6.4]
  input  [1:0]  io_status_1 // @[:@6.4]
);
  wire [31:0] _GEN_1; // @[NV_NVDLA_BASIC_REG_single.scala 49:43:@8.4]
  wire  _T_24; // @[NV_NVDLA_BASIC_REG_single.scala 49:43:@8.4]
  wire  _T_25; // @[NV_NVDLA_BASIC_REG_single.scala 49:66:@9.4]
  wire [31:0] _T_35; // @[Cat.scala 30:58:@14.4]
  wire [31:0] _T_41; // @[Cat.scala 30:58:@17.4]
  wire  _T_42; // @[Mux.scala 46:19:@18.4]
  wire [31:0] _T_43; // @[Mux.scala 46:16:@19.4]
  wire  _T_44; // @[Mux.scala 46:19:@20.4]
  wire  _T_46; // @[NV_NVDLA_BASIC_REG_single.scala 62:44:@23.4]
  reg  _T_49; // @[Reg.scala 19:20:@24.4]
  reg [31:0] _RAND_0;
  wire  _GEN_0; // @[Reg.scala 20:19:@25.4]
  assign _GEN_1 = {{20'd0}, io_reg_offset}; // @[NV_NVDLA_BASIC_REG_single.scala 49:43:@8.4]
  assign _T_24 = _GEN_1 == 32'h4; // @[NV_NVDLA_BASIC_REG_single.scala 49:43:@8.4]
  assign _T_25 = _T_24 & io_reg_wr_en; // @[NV_NVDLA_BASIC_REG_single.scala 49:66:@9.4]
  assign _T_35 = {15'h0,io_consumer,15'h0,io_producer}; // @[Cat.scala 30:58:@14.4]
  assign _T_41 = {14'h0,io_status_1,14'h0,io_status_0}; // @[Cat.scala 30:58:@17.4]
  assign _T_42 = 32'h0 == _GEN_1; // @[Mux.scala 46:19:@18.4]
  assign _T_43 = _T_42 ? _T_41 : 32'h0; // @[Mux.scala 46:16:@19.4]
  assign _T_44 = 32'h4 == _GEN_1; // @[Mux.scala 46:19:@20.4]
  assign _T_46 = io_reg_wr_data[0]; // @[NV_NVDLA_BASIC_REG_single.scala 62:44:@23.4]
  assign _GEN_0 = _T_25 ? _T_46 : _T_49; // @[Reg.scala 20:19:@25.4]
  assign io_reg_rd_data = _T_44 ? _T_35 : _T_43; // @[NV_NVDLA_BASIC_REG_single.scala 53:20:@22.4]
  assign io_producer = _T_49; // @[NV_NVDLA_BASIC_REG_single.scala 62:17:@28.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_49 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_49 <= 1'h0;
    end else begin
      if (_T_25) begin
        _T_49 <= _T_46;
      end
    end
  end
endmodule
module NV_NVDLA_CACC_dual_reg( // @[:@30.2]
  input         reset, // @[:@32.4]
  input         io_nvdla_core_clk, // @[:@33.4]
  output [31:0] io_reg_rd_data, // @[:@33.4]
  input  [11:0] io_reg_offset, // @[:@33.4]
  input  [31:0] io_reg_wr_data, // @[:@33.4]
  input         io_reg_wr_en, // @[:@33.4]
  output [4:0]  io_field_batches, // @[:@33.4]
  output [4:0]  io_field_clip_truncate, // @[:@33.4]
  output [31:0] io_field_cya, // @[:@33.4]
  output [31:0] io_field_dataout_addr, // @[:@33.4]
  output        io_field_line_packed, // @[:@33.4]
  output        io_field_surf_packed, // @[:@33.4]
  output [12:0] io_field_dataout_height, // @[:@33.4]
  output [12:0] io_field_dataout_width, // @[:@33.4]
  output [12:0] io_field_dataout_channel, // @[:@33.4]
  output [23:0] io_field_line_stride, // @[:@33.4]
  output        io_field_conv_mode, // @[:@33.4]
  output [1:0]  io_field_proc_precision, // @[:@33.4]
  output [23:0] io_field_surf_stride, // @[:@33.4]
  output        io_op_en_trigger, // @[:@33.4]
  input         io_op_en, // @[:@33.4]
  input  [31:0] io_sat_count // @[:@33.4]
);
  wire [31:0] _GEN_13; // @[NV_NVDLA_CACC_dual_reg.scala 48:58:@35.4]
  wire  _T_48; // @[NV_NVDLA_CACC_dual_reg.scala 48:58:@35.4]
  wire  _T_49; // @[NV_NVDLA_CACC_dual_reg.scala 48:82:@36.4]
  wire  _T_51; // @[NV_NVDLA_CACC_dual_reg.scala 49:54:@37.4]
  wire  _T_52; // @[NV_NVDLA_CACC_dual_reg.scala 49:78:@38.4]
  wire  _T_54; // @[NV_NVDLA_CACC_dual_reg.scala 50:49:@39.4]
  wire  _T_55; // @[NV_NVDLA_CACC_dual_reg.scala 50:73:@40.4]
  wire  _T_57; // @[NV_NVDLA_CACC_dual_reg.scala 51:58:@41.4]
  wire  _T_58; // @[NV_NVDLA_CACC_dual_reg.scala 51:82:@42.4]
  wire  _T_60; // @[NV_NVDLA_CACC_dual_reg.scala 52:57:@43.4]
  wire  _T_61; // @[NV_NVDLA_CACC_dual_reg.scala 52:81:@44.4]
  wire  _T_63; // @[NV_NVDLA_CACC_dual_reg.scala 53:60:@45.4]
  wire  _T_64; // @[NV_NVDLA_CACC_dual_reg.scala 53:84:@46.4]
  wire  _T_66; // @[NV_NVDLA_CACC_dual_reg.scala 54:60:@47.4]
  wire  _T_67; // @[NV_NVDLA_CACC_dual_reg.scala 54:84:@48.4]
  wire  _T_69; // @[NV_NVDLA_CACC_dual_reg.scala 55:57:@49.4]
  wire  _T_70; // @[NV_NVDLA_CACC_dual_reg.scala 55:81:@50.4]
  wire  _T_72; // @[NV_NVDLA_CACC_dual_reg.scala 56:54:@51.4]
  wire  _T_73; // @[NV_NVDLA_CACC_dual_reg.scala 56:78:@52.4]
  wire  _T_75; // @[NV_NVDLA_CACC_dual_reg.scala 57:55:@53.4]
  wire  _T_81; // @[NV_NVDLA_CACC_dual_reg.scala 59:57:@57.4]
  wire  _T_82; // @[NV_NVDLA_CACC_dual_reg.scala 59:81:@58.4]
  wire [31:0] _T_86; // @[Cat.scala 30:58:@60.4]
  wire [31:0] _T_89; // @[Cat.scala 30:58:@61.4]
  wire [31:0] _T_97; // @[Cat.scala 30:58:@64.4]
  wire [31:0] _T_103; // @[Cat.scala 30:58:@67.4]
  wire [31:0] _T_106; // @[Cat.scala 30:58:@68.4]
  wire [31:0] _T_109; // @[Cat.scala 30:58:@69.4]
  wire [31:0] _T_115; // @[Cat.scala 30:58:@72.4]
  wire [31:0] _T_118; // @[Cat.scala 30:58:@73.4]
  wire [31:0] _T_122; // @[Cat.scala 30:58:@74.4]
  wire  _T_123; // @[Mux.scala 46:19:@75.4]
  wire [31:0] _T_124; // @[Mux.scala 46:16:@76.4]
  wire  _T_125; // @[Mux.scala 46:19:@77.4]
  wire [31:0] _T_126; // @[Mux.scala 46:16:@78.4]
  wire  _T_127; // @[Mux.scala 46:19:@79.4]
  wire [31:0] _T_128; // @[Mux.scala 46:16:@80.4]
  wire  _T_129; // @[Mux.scala 46:19:@81.4]
  wire [31:0] _T_130; // @[Mux.scala 46:16:@82.4]
  wire  _T_131; // @[Mux.scala 46:19:@83.4]
  wire [31:0] _T_132; // @[Mux.scala 46:16:@84.4]
  wire  _T_133; // @[Mux.scala 46:19:@85.4]
  wire [31:0] _T_134; // @[Mux.scala 46:16:@86.4]
  wire  _T_135; // @[Mux.scala 46:19:@87.4]
  wire [31:0] _T_136; // @[Mux.scala 46:16:@88.4]
  wire  _T_137; // @[Mux.scala 46:19:@89.4]
  wire [31:0] _T_138; // @[Mux.scala 46:16:@90.4]
  wire  _T_139; // @[Mux.scala 46:19:@91.4]
  wire [31:0] _T_140; // @[Mux.scala 46:16:@92.4]
  wire  _T_141; // @[Mux.scala 46:19:@93.4]
  wire [31:0] _T_142; // @[Mux.scala 46:16:@94.4]
  wire  _T_143; // @[Mux.scala 46:19:@95.4]
  wire [31:0] _T_144; // @[Mux.scala 46:16:@96.4]
  wire  _T_145; // @[Mux.scala 46:19:@97.4]
  wire [4:0] _T_147; // @[NV_NVDLA_CACC_dual_reg.scala 94:48:@100.4]
  reg [4:0] _T_150; // @[Reg.scala 19:20:@101.4]
  reg [31:0] _RAND_0;
  wire [4:0] _GEN_0; // @[Reg.scala 20:19:@102.4]
  reg [4:0] _T_154; // @[Reg.scala 19:20:@107.4]
  reg [31:0] _RAND_1;
  wire [4:0] _GEN_1; // @[Reg.scala 20:19:@108.4]
  reg [31:0] _T_158; // @[Reg.scala 19:20:@113.4]
  reg [31:0] _RAND_2;
  wire [31:0] _GEN_2; // @[Reg.scala 20:19:@114.4]
  reg [31:0] _T_162; // @[Reg.scala 19:20:@119.4]
  reg [31:0] _RAND_3;
  wire [31:0] _GEN_3; // @[Reg.scala 20:19:@120.4]
  wire  _T_163; // @[NV_NVDLA_CACC_dual_reg.scala 102:52:@124.4]
  reg  _T_166; // @[Reg.scala 19:20:@125.4]
  reg [31:0] _RAND_4;
  wire  _GEN_4; // @[Reg.scala 20:19:@126.4]
  wire  _T_167; // @[NV_NVDLA_CACC_dual_reg.scala 104:52:@130.4]
  reg  _T_170; // @[Reg.scala 19:20:@131.4]
  reg [31:0] _RAND_5;
  wire  _GEN_5; // @[Reg.scala 20:19:@132.4]
  wire [12:0] _T_171; // @[NV_NVDLA_CACC_dual_reg.scala 106:55:@136.4]
  reg [12:0] _T_174; // @[Reg.scala 19:20:@137.4]
  reg [31:0] _RAND_6;
  wire [12:0] _GEN_6; // @[Reg.scala 20:19:@138.4]
  wire [12:0] _T_175; // @[NV_NVDLA_CACC_dual_reg.scala 108:54:@142.4]
  reg [12:0] _T_178; // @[Reg.scala 19:20:@143.4]
  reg [31:0] _RAND_7;
  wire [12:0] _GEN_7; // @[Reg.scala 20:19:@144.4]
  reg [12:0] _T_182; // @[Reg.scala 19:20:@149.4]
  reg [31:0] _RAND_8;
  wire [12:0] _GEN_8; // @[Reg.scala 20:19:@150.4]
  wire [23:0] _T_183; // @[NV_NVDLA_CACC_dual_reg.scala 112:52:@154.4]
  reg [23:0] _T_186; // @[Reg.scala 19:20:@155.4]
  reg [31:0] _RAND_9;
  wire [23:0] _GEN_9; // @[Reg.scala 20:19:@156.4]
  reg  _T_190; // @[Reg.scala 19:20:@161.4]
  reg [31:0] _RAND_10;
  wire  _GEN_10; // @[Reg.scala 20:19:@162.4]
  wire [1:0] _T_191; // @[NV_NVDLA_CACC_dual_reg.scala 116:55:@166.4]
  reg [1:0] _T_194; // @[Reg.scala 19:20:@167.4]
  reg [31:0] _RAND_11;
  wire [1:0] _GEN_11; // @[Reg.scala 20:19:@168.4]
  reg [23:0] _T_198; // @[Reg.scala 19:20:@173.4]
  reg [31:0] _RAND_12;
  wire [23:0] _GEN_12; // @[Reg.scala 20:19:@174.4]
  assign _GEN_13 = {{20'd0}, io_reg_offset}; // @[NV_NVDLA_CACC_dual_reg.scala 48:58:@35.4]
  assign _T_48 = _GEN_13 == 32'h1c; // @[NV_NVDLA_CACC_dual_reg.scala 48:58:@35.4]
  assign _T_49 = _T_48 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 48:82:@36.4]
  assign _T_51 = _GEN_13 == 32'h2c; // @[NV_NVDLA_CACC_dual_reg.scala 49:54:@37.4]
  assign _T_52 = _T_51 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 49:78:@38.4]
  assign _T_54 = _GEN_13 == 32'h34; // @[NV_NVDLA_CACC_dual_reg.scala 50:49:@39.4]
  assign _T_55 = _T_54 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 50:73:@40.4]
  assign _T_57 = _GEN_13 == 32'h18; // @[NV_NVDLA_CACC_dual_reg.scala 51:58:@41.4]
  assign _T_58 = _T_57 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 51:82:@42.4]
  assign _T_60 = _GEN_13 == 32'h28; // @[NV_NVDLA_CACC_dual_reg.scala 52:57:@43.4]
  assign _T_61 = _T_60 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 52:81:@44.4]
  assign _T_63 = _GEN_13 == 32'h10; // @[NV_NVDLA_CACC_dual_reg.scala 53:60:@45.4]
  assign _T_64 = _T_63 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 53:84:@46.4]
  assign _T_66 = _GEN_13 == 32'h14; // @[NV_NVDLA_CACC_dual_reg.scala 54:60:@47.4]
  assign _T_67 = _T_66 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 54:84:@48.4]
  assign _T_69 = _GEN_13 == 32'h20; // @[NV_NVDLA_CACC_dual_reg.scala 55:57:@49.4]
  assign _T_70 = _T_69 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 55:81:@50.4]
  assign _T_72 = _GEN_13 == 32'hc; // @[NV_NVDLA_CACC_dual_reg.scala 56:54:@51.4]
  assign _T_73 = _T_72 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 56:78:@52.4]
  assign _T_75 = _GEN_13 == 32'h8; // @[NV_NVDLA_CACC_dual_reg.scala 57:55:@53.4]
  assign _T_81 = _GEN_13 == 32'h24; // @[NV_NVDLA_CACC_dual_reg.scala 59:57:@57.4]
  assign _T_82 = _T_81 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 59:81:@58.4]
  assign _T_86 = {27'h0,io_field_batches}; // @[Cat.scala 30:58:@60.4]
  assign _T_89 = {27'h0,io_field_clip_truncate}; // @[Cat.scala 30:58:@61.4]
  assign _T_97 = {15'h0,io_field_surf_packed,15'h0,io_field_line_packed}; // @[Cat.scala 30:58:@64.4]
  assign _T_103 = {3'h0,io_field_dataout_height,3'h0,io_field_dataout_width}; // @[Cat.scala 30:58:@67.4]
  assign _T_106 = {19'h0,io_field_dataout_channel}; // @[Cat.scala 30:58:@68.4]
  assign _T_109 = {8'h0,io_field_line_stride}; // @[Cat.scala 30:58:@69.4]
  assign _T_115 = {18'h0,io_field_proc_precision,11'h0,io_field_conv_mode}; // @[Cat.scala 30:58:@72.4]
  assign _T_118 = {31'h0,io_op_en}; // @[Cat.scala 30:58:@73.4]
  assign _T_122 = {8'h0,io_field_surf_stride}; // @[Cat.scala 30:58:@74.4]
  assign _T_123 = 32'h24 == _GEN_13; // @[Mux.scala 46:19:@75.4]
  assign _T_124 = _T_123 ? _T_122 : 32'h0; // @[Mux.scala 46:16:@76.4]
  assign _T_125 = 32'h30 == _GEN_13; // @[Mux.scala 46:19:@77.4]
  assign _T_126 = _T_125 ? io_sat_count : _T_124; // @[Mux.scala 46:16:@78.4]
  assign _T_127 = 32'h8 == _GEN_13; // @[Mux.scala 46:19:@79.4]
  assign _T_128 = _T_127 ? _T_118 : _T_126; // @[Mux.scala 46:16:@80.4]
  assign _T_129 = 32'hc == _GEN_13; // @[Mux.scala 46:19:@81.4]
  assign _T_130 = _T_129 ? _T_115 : _T_128; // @[Mux.scala 46:16:@82.4]
  assign _T_131 = 32'h20 == _GEN_13; // @[Mux.scala 46:19:@83.4]
  assign _T_132 = _T_131 ? _T_109 : _T_130; // @[Mux.scala 46:16:@84.4]
  assign _T_133 = 32'h14 == _GEN_13; // @[Mux.scala 46:19:@85.4]
  assign _T_134 = _T_133 ? _T_106 : _T_132; // @[Mux.scala 46:16:@86.4]
  assign _T_135 = 32'h10 == _GEN_13; // @[Mux.scala 46:19:@87.4]
  assign _T_136 = _T_135 ? _T_103 : _T_134; // @[Mux.scala 46:16:@88.4]
  assign _T_137 = 32'h28 == _GEN_13; // @[Mux.scala 46:19:@89.4]
  assign _T_138 = _T_137 ? _T_97 : _T_136; // @[Mux.scala 46:16:@90.4]
  assign _T_139 = 32'h18 == _GEN_13; // @[Mux.scala 46:19:@91.4]
  assign _T_140 = _T_139 ? io_field_dataout_addr : _T_138; // @[Mux.scala 46:16:@92.4]
  assign _T_141 = 32'h34 == _GEN_13; // @[Mux.scala 46:19:@93.4]
  assign _T_142 = _T_141 ? io_field_cya : _T_140; // @[Mux.scala 46:16:@94.4]
  assign _T_143 = 32'h2c == _GEN_13; // @[Mux.scala 46:19:@95.4]
  assign _T_144 = _T_143 ? _T_89 : _T_142; // @[Mux.scala 46:16:@96.4]
  assign _T_145 = 32'h1c == _GEN_13; // @[Mux.scala 46:19:@97.4]
  assign _T_147 = io_reg_wr_data[4:0]; // @[NV_NVDLA_CACC_dual_reg.scala 94:48:@100.4]
  assign _GEN_0 = _T_49 ? _T_147 : _T_150; // @[Reg.scala 20:19:@102.4]
  assign _GEN_1 = _T_52 ? _T_147 : _T_154; // @[Reg.scala 20:19:@108.4]
  assign _GEN_2 = _T_55 ? io_reg_wr_data : _T_158; // @[Reg.scala 20:19:@114.4]
  assign _GEN_3 = _T_58 ? io_reg_wr_data : _T_162; // @[Reg.scala 20:19:@120.4]
  assign _T_163 = io_reg_wr_data[0]; // @[NV_NVDLA_CACC_dual_reg.scala 102:52:@124.4]
  assign _GEN_4 = _T_61 ? _T_163 : _T_166; // @[Reg.scala 20:19:@126.4]
  assign _T_167 = io_reg_wr_data[16]; // @[NV_NVDLA_CACC_dual_reg.scala 104:52:@130.4]
  assign _GEN_5 = _T_61 ? _T_167 : _T_170; // @[Reg.scala 20:19:@132.4]
  assign _T_171 = io_reg_wr_data[28:16]; // @[NV_NVDLA_CACC_dual_reg.scala 106:55:@136.4]
  assign _GEN_6 = _T_64 ? _T_171 : _T_174; // @[Reg.scala 20:19:@138.4]
  assign _T_175 = io_reg_wr_data[12:0]; // @[NV_NVDLA_CACC_dual_reg.scala 108:54:@142.4]
  assign _GEN_7 = _T_64 ? _T_175 : _T_178; // @[Reg.scala 20:19:@144.4]
  assign _GEN_8 = _T_67 ? _T_175 : _T_182; // @[Reg.scala 20:19:@150.4]
  assign _T_183 = io_reg_wr_data[23:0]; // @[NV_NVDLA_CACC_dual_reg.scala 112:52:@154.4]
  assign _GEN_9 = _T_70 ? _T_183 : _T_186; // @[Reg.scala 20:19:@156.4]
  assign _GEN_10 = _T_73 ? _T_163 : _T_190; // @[Reg.scala 20:19:@162.4]
  assign _T_191 = io_reg_wr_data[13:12]; // @[NV_NVDLA_CACC_dual_reg.scala 116:55:@166.4]
  assign _GEN_11 = _T_73 ? _T_191 : _T_194; // @[Reg.scala 20:19:@168.4]
  assign _GEN_12 = _T_82 ? _T_183 : _T_198; // @[Reg.scala 20:19:@174.4]
  assign io_reg_rd_data = _T_145 ? _T_86 : _T_144; // @[NV_NVDLA_CACC_dual_reg.scala 65:19:@99.4]
  assign io_field_batches = _T_150; // @[NV_NVDLA_CACC_dual_reg.scala 94:21:@105.4]
  assign io_field_clip_truncate = _T_154; // @[NV_NVDLA_CACC_dual_reg.scala 96:27:@111.4]
  assign io_field_cya = _T_158; // @[NV_NVDLA_CACC_dual_reg.scala 98:17:@117.4]
  assign io_field_dataout_addr = _T_162; // @[NV_NVDLA_CACC_dual_reg.scala 100:26:@123.4]
  assign io_field_line_packed = _T_166; // @[NV_NVDLA_CACC_dual_reg.scala 102:25:@129.4]
  assign io_field_surf_packed = _T_170; // @[NV_NVDLA_CACC_dual_reg.scala 104:25:@135.4]
  assign io_field_dataout_height = _T_174; // @[NV_NVDLA_CACC_dual_reg.scala 106:28:@141.4]
  assign io_field_dataout_width = _T_178; // @[NV_NVDLA_CACC_dual_reg.scala 108:27:@147.4]
  assign io_field_dataout_channel = _T_182; // @[NV_NVDLA_CACC_dual_reg.scala 110:29:@153.4]
  assign io_field_line_stride = _T_186; // @[NV_NVDLA_CACC_dual_reg.scala 112:25:@159.4]
  assign io_field_conv_mode = _T_190; // @[NV_NVDLA_CACC_dual_reg.scala 114:23:@165.4]
  assign io_field_proc_precision = _T_194; // @[NV_NVDLA_CACC_dual_reg.scala 116:28:@171.4]
  assign io_field_surf_stride = _T_198; // @[NV_NVDLA_CACC_dual_reg.scala 118:25:@177.4]
  assign io_op_en_trigger = _T_75 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 61:21:@59.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_150 = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_154 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_158 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_162 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_166 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_170 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_174 = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_178 = _RAND_7[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_182 = _RAND_8[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_186 = _RAND_9[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_190 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_194 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_198 = _RAND_12[23:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_150 <= 5'h0;
    end else begin
      if (_T_49) begin
        _T_150 <= _T_147;
      end
    end
    if (reset) begin
      _T_154 <= 5'h0;
    end else begin
      if (_T_52) begin
        _T_154 <= _T_147;
      end
    end
    if (reset) begin
      _T_158 <= 32'h0;
    end else begin
      if (_T_55) begin
        _T_158 <= io_reg_wr_data;
      end
    end
    if (reset) begin
      _T_162 <= 32'h0;
    end else begin
      if (_T_58) begin
        _T_162 <= io_reg_wr_data;
      end
    end
    if (reset) begin
      _T_166 <= 1'h0;
    end else begin
      if (_T_61) begin
        _T_166 <= _T_163;
      end
    end
    if (reset) begin
      _T_170 <= 1'h0;
    end else begin
      if (_T_61) begin
        _T_170 <= _T_167;
      end
    end
    if (reset) begin
      _T_174 <= 13'h0;
    end else begin
      if (_T_64) begin
        _T_174 <= _T_171;
      end
    end
    if (reset) begin
      _T_178 <= 13'h0;
    end else begin
      if (_T_64) begin
        _T_178 <= _T_175;
      end
    end
    if (reset) begin
      _T_182 <= 13'h0;
    end else begin
      if (_T_67) begin
        _T_182 <= _T_175;
      end
    end
    if (reset) begin
      _T_186 <= 24'h0;
    end else begin
      if (_T_70) begin
        _T_186 <= _T_183;
      end
    end
    if (reset) begin
      _T_190 <= 1'h0;
    end else begin
      if (_T_73) begin
        _T_190 <= _T_163;
      end
    end
    if (reset) begin
      _T_194 <= 2'h1;
    end else begin
      if (_T_73) begin
        _T_194 <= _T_191;
      end
    end
    if (reset) begin
      _T_198 <= 24'h0;
    end else begin
      if (_T_82) begin
        _T_198 <= _T_183;
      end
    end
  end
endmodule
module NV_NVDLA_CSB_LOGIC( // @[:@328.2]
  input         reset, // @[:@330.4]
  input         io_clk, // @[:@331.4]
  input         io_csb2dp_req_valid, // @[:@331.4]
  input  [62:0] io_csb2dp_req_bits, // @[:@331.4]
  output        io_csb2dp_resp_valid, // @[:@331.4]
  output [33:0] io_csb2dp_resp_bits, // @[:@331.4]
  input  [31:0] io_reg_rd_data, // @[:@331.4]
  output [11:0] io_reg_offset, // @[:@331.4]
  output [31:0] io_reg_wr_data, // @[:@331.4]
  output        io_reg_wr_en // @[:@331.4]
);
  reg  _T_43; // @[NV_NVDLA_CSB_LOGIC.scala 45:27:@333.4]
  reg [31:0] _RAND_0;
  reg [62:0] _T_46; // @[NV_NVDLA_CSB_LOGIC.scala 46:25:@334.4]
  reg [63:0] _RAND_1;
  wire [62:0] _GEN_0; // @[NV_NVDLA_CSB_LOGIC.scala 49:30:@336.4]
  wire [21:0] _T_47; // @[NV_NVDLA_CSB_LOGIC.scala 54:26:@339.4]
  wire  _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 56:27:@341.4]
  wire  _T_50; // @[NV_NVDLA_CSB_LOGIC.scala 57:29:@342.4]
  wire [23:0] _T_56; // @[Cat.scala 30:58:@347.4]
  wire  _T_58; // @[NV_NVDLA_CSB_LOGIC.scala 68:32:@352.4]
  wire  _T_59; // @[NV_NVDLA_CSB_LOGIC.scala 68:30:@353.4]
  wire [33:0] _T_63; // @[Cat.scala 30:58:@355.4]
  reg [33:0] _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 83:37:@358.4]
  reg [63:0] _RAND_2;
  reg  _T_74; // @[NV_NVDLA_CSB_LOGIC.scala 84:40:@359.4]
  reg [31:0] _RAND_3;
  wire  _T_75; // @[NV_NVDLA_CSB_LOGIC.scala 89:28:@364.6]
  wire [33:0] _GEN_1; // @[NV_NVDLA_CSB_LOGIC.scala 89:42:@365.6]
  wire [33:0] _GEN_2; // @[NV_NVDLA_CSB_LOGIC.scala 86:20:@360.4]
  wire  _T_77; // @[NV_NVDLA_CSB_LOGIC.scala 92:59:@369.4]
  assign _GEN_0 = io_csb2dp_req_valid ? io_csb2dp_req_bits : _T_46; // @[NV_NVDLA_CSB_LOGIC.scala 49:30:@336.4]
  assign _T_47 = _T_46[21:0]; // @[NV_NVDLA_CSB_LOGIC.scala 54:26:@339.4]
  assign _T_49 = _T_46[54]; // @[NV_NVDLA_CSB_LOGIC.scala 56:27:@341.4]
  assign _T_50 = _T_46[55]; // @[NV_NVDLA_CSB_LOGIC.scala 57:29:@342.4]
  assign _T_56 = {_T_47,2'h0}; // @[Cat.scala 30:58:@347.4]
  assign _T_58 = ~ _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 68:32:@352.4]
  assign _T_59 = _T_43 & _T_58; // @[NV_NVDLA_CSB_LOGIC.scala 68:30:@353.4]
  assign _T_63 = {2'h0,io_reg_rd_data}; // @[Cat.scala 30:58:@355.4]
  assign _T_75 = io_reg_wr_en & _T_50; // @[NV_NVDLA_CSB_LOGIC.scala 89:28:@364.6]
  assign _GEN_1 = _T_75 ? 34'h200000000 : _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 89:42:@365.6]
  assign _GEN_2 = _T_59 ? _T_63 : _GEN_1; // @[NV_NVDLA_CSB_LOGIC.scala 86:20:@360.4]
  assign _T_77 = _T_75 | _T_59; // @[NV_NVDLA_CSB_LOGIC.scala 92:59:@369.4]
  assign io_csb2dp_resp_valid = _T_74; // @[NV_NVDLA_CSB_LOGIC.scala 95:26:@372.4]
  assign io_csb2dp_resp_bits = _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 94:25:@371.4]
  assign io_reg_offset = _T_56[11:0]; // @[NV_NVDLA_CSB_LOGIC.scala 65:19:@348.4]
  assign io_reg_wr_data = _T_46[53:22]; // @[NV_NVDLA_CSB_LOGIC.scala 66:20:@349.4]
  assign io_reg_wr_en = _T_43 & _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 67:18:@351.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_43 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_46 = _RAND_1[62:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_71 = _RAND_2[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_74 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (reset) begin
      _T_43 <= 1'h0;
    end else begin
      _T_43 <= io_csb2dp_req_valid;
    end
    if (reset) begin
      _T_46 <= 63'h0;
    end else begin
      if (io_csb2dp_req_valid) begin
        _T_46 <= io_csb2dp_req_bits;
      end
    end
    if (reset) begin
      _T_71 <= 34'h0;
    end else begin
      if (_T_59) begin
        _T_71 <= _T_63;
      end else begin
        if (_T_75) begin
          _T_71 <= 34'h200000000;
        end
      end
    end
    if (reset) begin
      _T_74 <= 1'h0;
    end else begin
      _T_74 <= _T_77;
    end
  end
endmodule
module NV_NVDLA_CACC_regfile( // @[:@374.2]
  input         reset, // @[:@376.4]
  input         io_nvdla_core_clk, // @[:@377.4]
  input         io_csb2cacc_req_valid, // @[:@377.4]
  input  [62:0] io_csb2cacc_req_bits, // @[:@377.4]
  output        io_csb2cacc_resp_valid, // @[:@377.4]
  output [33:0] io_csb2cacc_resp_bits, // @[:@377.4]
  output        io_reg2dp_op_en, // @[:@377.4]
  output [4:0]  io_reg2dp_field_clip_truncate, // @[:@377.4]
  input         io_dp2reg_done, // @[:@377.4]
  input  [31:0] io_dp2reg_sat_count, // @[:@377.4]
  output [6:0]  io_slcg_op_en // @[:@377.4]
);
  wire  NV_NVDLA_BASIC_REG_single_clock; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_BASIC_REG_single_reset; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [31:0] NV_NVDLA_BASIC_REG_single_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [11:0] NV_NVDLA_BASIC_REG_single_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [31:0] NV_NVDLA_BASIC_REG_single_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_BASIC_REG_single_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_BASIC_REG_single_io_producer; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_BASIC_REG_single_io_consumer; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [1:0] NV_NVDLA_BASIC_REG_single_io_status_0; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [1:0] NV_NVDLA_BASIC_REG_single_io_status_1; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_CACC_dual_reg_reset; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [11:0] NV_NVDLA_CACC_dual_reg_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [4:0] NV_NVDLA_CACC_dual_reg_io_field_batches; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [4:0] NV_NVDLA_CACC_dual_reg_io_field_clip_truncate; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_field_cya; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_field_dataout_addr; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_field_line_packed; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_field_surf_packed; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_io_field_dataout_height; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_io_field_dataout_width; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_io_field_dataout_channel; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [23:0] NV_NVDLA_CACC_dual_reg_io_field_line_stride; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_field_conv_mode; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [1:0] NV_NVDLA_CACC_dual_reg_io_field_proc_precision; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [23:0] NV_NVDLA_CACC_dual_reg_io_field_surf_stride; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_op_en_trigger; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_op_en; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_sat_count; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_1_reset; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [11:0] NV_NVDLA_CACC_dual_reg_1_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [4:0] NV_NVDLA_CACC_dual_reg_1_io_field_batches; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [4:0] NV_NVDLA_CACC_dual_reg_1_io_field_clip_truncate; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_field_cya; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_field_dataout_addr; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_field_line_packed; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_field_surf_packed; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_1_io_field_dataout_height; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_1_io_field_dataout_width; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_1_io_field_dataout_channel; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [23:0] NV_NVDLA_CACC_dual_reg_1_io_field_line_stride; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_field_conv_mode; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [1:0] NV_NVDLA_CACC_dual_reg_1_io_field_proc_precision; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [23:0] NV_NVDLA_CACC_dual_reg_1_io_field_surf_stride; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_op_en_trigger; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_op_en; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_sat_count; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CSB_LOGIC_reset; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire  NV_NVDLA_CSB_LOGIC_io_clk; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire  NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [62:0] NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire  NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [33:0] NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [31:0] NV_NVDLA_CSB_LOGIC_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [11:0] NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [31:0] NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire  NV_NVDLA_CSB_LOGIC_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  reg  _T_59; // @[NV_NVDLA_CACC_regfile.scala 53:33:@379.4]
  reg [31:0] _RAND_0;
  reg  _T_74; // @[NV_NVDLA_CACC_regfile.scala 75:33:@396.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_77; // @[NV_NVDLA_CACC_regfile.scala 76:37:@397.4]
  reg [31:0] _RAND_2;
  reg  _T_82; // @[NV_NVDLA_CACC_regfile.scala 90:33:@408.4]
  reg [31:0] _RAND_3;
  reg [31:0] _T_85; // @[NV_NVDLA_CACC_regfile.scala 91:37:@409.4]
  reg [31:0] _RAND_4;
  wire  _T_86; // @[NV_NVDLA_CACC_regfile.scala 110:27:@420.6]
  wire  _GEN_0; // @[NV_NVDLA_CACC_regfile.scala 109:24:@419.4]
  wire  _T_88; // @[NV_NVDLA_CACC_regfile.scala 118:43:@423.4]
  wire [1:0] _T_94; // @[NV_NVDLA_CACC_regfile.scala 119:26:@425.4]
  wire [1:0] _T_95; // @[NV_NVDLA_CACC_regfile.scala 118:26:@426.4]
  wire  _T_97; // @[NV_NVDLA_CACC_regfile.scala 122:43:@428.4]
  wire  _T_100; // @[NV_NVDLA_CACC_regfile.scala 123:43:@429.4]
  wire [1:0] _T_103; // @[NV_NVDLA_CACC_regfile.scala 123:26:@430.4]
  wire [1:0] _T_104; // @[NV_NVDLA_CACC_regfile.scala 122:26:@431.4]
  reg [2:0] _T_107; // @[NV_NVDLA_CACC_regfile.scala 131:34:@433.4]
  reg [31:0] _RAND_5;
  wire  _T_108; // @[NV_NVDLA_CACC_regfile.scala 132:32:@434.4]
  wire  _T_109; // @[NV_NVDLA_CACC_regfile.scala 132:49:@435.4]
  wire [31:0] _T_67; // @[NV_NVDLA_CACC_regfile.scala 58:26:@383.4 NV_NVDLA_CACC_regfile.scala 178:16:@516.4]
  wire  _T_110; // @[NV_NVDLA_CACC_regfile.scala 132:87:@436.4]
  wire  _T_113; // @[NV_NVDLA_CACC_regfile.scala 133:47:@438.4]
  wire  _T_115; // @[NV_NVDLA_CACC_regfile.scala 133:31:@439.4]
  wire  _T_116; // @[NV_NVDLA_CACC_regfile.scala 132:31:@440.4]
  wire  _T_117; // @[NV_NVDLA_CACC_regfile.scala 137:33:@442.4]
  wire  _T_118; // @[NV_NVDLA_CACC_regfile.scala 137:50:@443.4]
  wire  _T_122; // @[NV_NVDLA_CACC_regfile.scala 138:48:@446.4]
  wire  _T_124; // @[NV_NVDLA_CACC_regfile.scala 138:32:@447.4]
  wire  _T_125; // @[NV_NVDLA_CACC_regfile.scala 137:32:@448.4]
  wire  _T_126; // @[NV_NVDLA_CACC_regfile.scala 142:30:@450.4]
  wire [1:0] _T_128; // @[NV_NVDLA_CACC_regfile.scala 143:88:@451.4]
  wire [2:0] _T_129; // @[Cat.scala 30:58:@452.4]
  wire [2:0] _T_130; // @[NV_NVDLA_CACC_regfile.scala 143:32:@453.4]
  reg [6:0] _T_138; // @[Reg.scala 11:16:@459.4]
  reg [31:0] _RAND_6;
  reg [6:0] _T_140; // @[Reg.scala 11:16:@463.4]
  reg [31:0] _RAND_7;
  reg [6:0] _T_142; // @[Reg.scala 11:16:@467.4]
  reg [31:0] _RAND_8;
  wire [11:0] _T_65; // @[NV_NVDLA_CACC_regfile.scala 57:25:@382.4 NV_NVDLA_CACC_regfile.scala 176:15:@514.4]
  wire [31:0] _GEN_6; // @[NV_NVDLA_CACC_regfile.scala 156:40:@474.4]
  wire  _T_147; // @[NV_NVDLA_CACC_regfile.scala 156:40:@474.4]
  wire  _T_153; // @[NV_NVDLA_CACC_regfile.scala 157:38:@477.4]
  wire  _T_155; // @[NV_NVDLA_CACC_regfile.scala 157:82:@478.4]
  wire  _T_156; // @[NV_NVDLA_CACC_regfile.scala 157:63:@479.4]
  wire  _T_161; // @[NV_NVDLA_CACC_regfile.scala 158:82:@482.4]
  wire  _T_162; // @[NV_NVDLA_CACC_regfile.scala 158:63:@483.4]
  wire  _T_144; // @[NV_NVDLA_CACC_regfile.scala 155:24:@472.4 NV_NVDLA_CACC_regfile.scala 177:14:@515.4]
  wire  _T_164; // @[NV_NVDLA_CACC_regfile.scala 161:30:@486.4]
  wire  _T_168; // @[NV_NVDLA_CACC_regfile.scala 162:30:@490.4]
  wire [31:0] _T_175; // @[Bitwise.scala 72:12:@495.4]
  wire [31:0] _T_176; // @[NV_NVDLA_CACC_regfile.scala 164:42:@496.4]
  wire [31:0] _T_180; // @[Bitwise.scala 72:12:@498.4]
  wire [31:0] _T_181; // @[NV_NVDLA_CACC_regfile.scala 165:43:@499.4]
  wire [31:0] _T_182; // @[NV_NVDLA_CACC_regfile.scala 164:58:@500.4]
  wire [31:0] _T_186; // @[Bitwise.scala 72:12:@502.4]
  wire [31:0] _T_187; // @[NV_NVDLA_CACC_regfile.scala 166:42:@503.4]
  wire  _T_203; // @[NV_NVDLA_CACC_regfile.scala 196:42:@532.4]
  wire  _T_204; // @[NV_NVDLA_CACC_regfile.scala 196:40:@533.4]
  wire  _T_206; // @[NV_NVDLA_CACC_regfile.scala 197:41:@535.4]
  wire  _T_207; // @[NV_NVDLA_CACC_regfile.scala 198:40:@536.4]
  wire  _T_208; // @[NV_NVDLA_CACC_regfile.scala 200:42:@537.4]
  wire  _T_209; // @[NV_NVDLA_CACC_regfile.scala 200:40:@538.4]
  wire  _T_211; // @[NV_NVDLA_CACC_regfile.scala 201:41:@540.4]
  wire  _T_212; // @[NV_NVDLA_CACC_regfile.scala 202:40:@541.4]
  wire [31:0] _T_214; // @[NV_NVDLA_CACC_regfile.scala 210:35:@542.4]
  wire [31:0] _T_215; // @[NV_NVDLA_CACC_regfile.scala 209:35:@543.4]
  wire [31:0] _GEN_4; // @[NV_NVDLA_CACC_regfile.scala 212:23:@544.4]
  wire [31:0] _T_217; // @[NV_NVDLA_CACC_regfile.scala 217:35:@547.4]
  wire [31:0] _T_218; // @[NV_NVDLA_CACC_regfile.scala 216:35:@548.4]
  wire [31:0] _GEN_5; // @[NV_NVDLA_CACC_regfile.scala 219:23:@549.4]
  wire  _T_61; // @[NV_NVDLA_CACC_regfile.scala 54:30:@380.4 NV_NVDLA_CACC_regfile.scala 118:20:@427.4]
  wire  _T_63; // @[NV_NVDLA_CACC_regfile.scala 55:30:@381.4 NV_NVDLA_CACC_regfile.scala 122:20:@432.4]
  NV_NVDLA_BASIC_REG_single NV_NVDLA_BASIC_REG_single ( // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
    .clock(NV_NVDLA_BASIC_REG_single_clock),
    .reset(NV_NVDLA_BASIC_REG_single_reset),
    .io_reg_rd_data(NV_NVDLA_BASIC_REG_single_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_BASIC_REG_single_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_BASIC_REG_single_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_BASIC_REG_single_io_reg_wr_en),
    .io_producer(NV_NVDLA_BASIC_REG_single_io_producer),
    .io_consumer(NV_NVDLA_BASIC_REG_single_io_consumer),
    .io_status_0(NV_NVDLA_BASIC_REG_single_io_status_0),
    .io_status_1(NV_NVDLA_BASIC_REG_single_io_status_1)
  );
  NV_NVDLA_CACC_dual_reg NV_NVDLA_CACC_dual_reg ( // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
    .reset(NV_NVDLA_CACC_dual_reg_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_dual_reg_io_nvdla_core_clk),
    .io_reg_rd_data(NV_NVDLA_CACC_dual_reg_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CACC_dual_reg_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CACC_dual_reg_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CACC_dual_reg_io_reg_wr_en),
    .io_field_batches(NV_NVDLA_CACC_dual_reg_io_field_batches),
    .io_field_clip_truncate(NV_NVDLA_CACC_dual_reg_io_field_clip_truncate),
    .io_field_cya(NV_NVDLA_CACC_dual_reg_io_field_cya),
    .io_field_dataout_addr(NV_NVDLA_CACC_dual_reg_io_field_dataout_addr),
    .io_field_line_packed(NV_NVDLA_CACC_dual_reg_io_field_line_packed),
    .io_field_surf_packed(NV_NVDLA_CACC_dual_reg_io_field_surf_packed),
    .io_field_dataout_height(NV_NVDLA_CACC_dual_reg_io_field_dataout_height),
    .io_field_dataout_width(NV_NVDLA_CACC_dual_reg_io_field_dataout_width),
    .io_field_dataout_channel(NV_NVDLA_CACC_dual_reg_io_field_dataout_channel),
    .io_field_line_stride(NV_NVDLA_CACC_dual_reg_io_field_line_stride),
    .io_field_conv_mode(NV_NVDLA_CACC_dual_reg_io_field_conv_mode),
    .io_field_proc_precision(NV_NVDLA_CACC_dual_reg_io_field_proc_precision),
    .io_field_surf_stride(NV_NVDLA_CACC_dual_reg_io_field_surf_stride),
    .io_op_en_trigger(NV_NVDLA_CACC_dual_reg_io_op_en_trigger),
    .io_op_en(NV_NVDLA_CACC_dual_reg_io_op_en),
    .io_sat_count(NV_NVDLA_CACC_dual_reg_io_sat_count)
  );
  NV_NVDLA_CACC_dual_reg NV_NVDLA_CACC_dual_reg_1 ( // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
    .reset(NV_NVDLA_CACC_dual_reg_1_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_dual_reg_1_io_nvdla_core_clk),
    .io_reg_rd_data(NV_NVDLA_CACC_dual_reg_1_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CACC_dual_reg_1_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CACC_dual_reg_1_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CACC_dual_reg_1_io_reg_wr_en),
    .io_field_batches(NV_NVDLA_CACC_dual_reg_1_io_field_batches),
    .io_field_clip_truncate(NV_NVDLA_CACC_dual_reg_1_io_field_clip_truncate),
    .io_field_cya(NV_NVDLA_CACC_dual_reg_1_io_field_cya),
    .io_field_dataout_addr(NV_NVDLA_CACC_dual_reg_1_io_field_dataout_addr),
    .io_field_line_packed(NV_NVDLA_CACC_dual_reg_1_io_field_line_packed),
    .io_field_surf_packed(NV_NVDLA_CACC_dual_reg_1_io_field_surf_packed),
    .io_field_dataout_height(NV_NVDLA_CACC_dual_reg_1_io_field_dataout_height),
    .io_field_dataout_width(NV_NVDLA_CACC_dual_reg_1_io_field_dataout_width),
    .io_field_dataout_channel(NV_NVDLA_CACC_dual_reg_1_io_field_dataout_channel),
    .io_field_line_stride(NV_NVDLA_CACC_dual_reg_1_io_field_line_stride),
    .io_field_conv_mode(NV_NVDLA_CACC_dual_reg_1_io_field_conv_mode),
    .io_field_proc_precision(NV_NVDLA_CACC_dual_reg_1_io_field_proc_precision),
    .io_field_surf_stride(NV_NVDLA_CACC_dual_reg_1_io_field_surf_stride),
    .io_op_en_trigger(NV_NVDLA_CACC_dual_reg_1_io_op_en_trigger),
    .io_op_en(NV_NVDLA_CACC_dual_reg_1_io_op_en),
    .io_sat_count(NV_NVDLA_CACC_dual_reg_1_io_sat_count)
  );
  NV_NVDLA_CSB_LOGIC NV_NVDLA_CSB_LOGIC ( // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
    .reset(NV_NVDLA_CSB_LOGIC_reset),
    .io_clk(NV_NVDLA_CSB_LOGIC_io_clk),
    .io_csb2dp_req_valid(NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid),
    .io_csb2dp_req_bits(NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits),
    .io_csb2dp_resp_valid(NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid),
    .io_csb2dp_resp_bits(NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits),
    .io_reg_rd_data(NV_NVDLA_CSB_LOGIC_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CSB_LOGIC_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CSB_LOGIC_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CSB_LOGIC_io_reg_wr_en)
  );
  assign _T_86 = ~ _T_59; // @[NV_NVDLA_CACC_regfile.scala 110:27:@420.6]
  assign _GEN_0 = io_dp2reg_done ? _T_86 : _T_59; // @[NV_NVDLA_CACC_regfile.scala 109:24:@419.4]
  assign _T_88 = _T_74 == 1'h0; // @[NV_NVDLA_CACC_regfile.scala 118:43:@423.4]
  assign _T_94 = _T_59 ? 2'h2 : 2'h1; // @[NV_NVDLA_CACC_regfile.scala 119:26:@425.4]
  assign _T_95 = _T_88 ? 2'h0 : _T_94; // @[NV_NVDLA_CACC_regfile.scala 118:26:@426.4]
  assign _T_97 = _T_82 == 1'h0; // @[NV_NVDLA_CACC_regfile.scala 122:43:@428.4]
  assign _T_100 = _T_59 == 1'h0; // @[NV_NVDLA_CACC_regfile.scala 123:43:@429.4]
  assign _T_103 = _T_100 ? 2'h2 : 2'h1; // @[NV_NVDLA_CACC_regfile.scala 123:26:@430.4]
  assign _T_104 = _T_97 ? 2'h0 : _T_103; // @[NV_NVDLA_CACC_regfile.scala 122:26:@431.4]
  assign _T_108 = ~ _T_74; // @[NV_NVDLA_CACC_regfile.scala 132:32:@434.4]
  assign _T_109 = _T_108 & NV_NVDLA_CACC_dual_reg_io_op_en_trigger; // @[NV_NVDLA_CACC_regfile.scala 132:49:@435.4]
  assign _T_67 = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 58:26:@383.4 NV_NVDLA_CACC_regfile.scala 178:16:@516.4]
  assign _T_110 = _T_67[0]; // @[NV_NVDLA_CACC_regfile.scala 132:87:@436.4]
  assign _T_113 = io_dp2reg_done & _T_100; // @[NV_NVDLA_CACC_regfile.scala 133:47:@438.4]
  assign _T_115 = _T_113 ? 1'h0 : _T_74; // @[NV_NVDLA_CACC_regfile.scala 133:31:@439.4]
  assign _T_116 = _T_109 ? _T_110 : _T_115; // @[NV_NVDLA_CACC_regfile.scala 132:31:@440.4]
  assign _T_117 = ~ _T_82; // @[NV_NVDLA_CACC_regfile.scala 137:33:@442.4]
  assign _T_118 = _T_117 & NV_NVDLA_CACC_dual_reg_1_io_op_en_trigger; // @[NV_NVDLA_CACC_regfile.scala 137:50:@443.4]
  assign _T_122 = io_dp2reg_done & _T_59; // @[NV_NVDLA_CACC_regfile.scala 138:48:@446.4]
  assign _T_124 = _T_122 ? 1'h0 : _T_82; // @[NV_NVDLA_CACC_regfile.scala 138:32:@447.4]
  assign _T_125 = _T_118 ? _T_110 : _T_124; // @[NV_NVDLA_CACC_regfile.scala 137:32:@448.4]
  assign _T_126 = _T_59 ? _T_82 : _T_74; // @[NV_NVDLA_CACC_regfile.scala 142:30:@450.4]
  assign _T_128 = _T_107[1:0]; // @[NV_NVDLA_CACC_regfile.scala 143:88:@451.4]
  assign _T_129 = {_T_128,_T_126}; // @[Cat.scala 30:58:@452.4]
  assign _T_130 = io_dp2reg_done ? 3'h0 : _T_129; // @[NV_NVDLA_CACC_regfile.scala 143:32:@453.4]
  assign _T_65 = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 57:25:@382.4 NV_NVDLA_CACC_regfile.scala 176:15:@514.4]
  assign _GEN_6 = {{20'd0}, _T_65}; // @[NV_NVDLA_CACC_regfile.scala 156:40:@474.4]
  assign _T_147 = _GEN_6 < 32'h8; // @[NV_NVDLA_CACC_regfile.scala 156:40:@474.4]
  assign _T_153 = _GEN_6 >= 32'h8; // @[NV_NVDLA_CACC_regfile.scala 157:38:@477.4]
  assign _T_155 = NV_NVDLA_BASIC_REG_single_io_producer == 1'h0; // @[NV_NVDLA_CACC_regfile.scala 157:82:@478.4]
  assign _T_156 = _T_153 & _T_155; // @[NV_NVDLA_CACC_regfile.scala 157:63:@479.4]
  assign _T_161 = NV_NVDLA_BASIC_REG_single_io_producer; // @[NV_NVDLA_CACC_regfile.scala 158:82:@482.4]
  assign _T_162 = _T_153 & _T_161; // @[NV_NVDLA_CACC_regfile.scala 158:63:@483.4]
  assign _T_144 = NV_NVDLA_CSB_LOGIC_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 155:24:@472.4 NV_NVDLA_CACC_regfile.scala 177:14:@515.4]
  assign _T_164 = _T_144 & _T_156; // @[NV_NVDLA_CACC_regfile.scala 161:30:@486.4]
  assign _T_168 = _T_144 & _T_162; // @[NV_NVDLA_CACC_regfile.scala 162:30:@490.4]
  assign _T_175 = _T_147 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@495.4]
  assign _T_176 = _T_175 & NV_NVDLA_BASIC_REG_single_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 164:42:@496.4]
  assign _T_180 = _T_156 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@498.4]
  assign _T_181 = _T_180 & NV_NVDLA_CACC_dual_reg_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 165:43:@499.4]
  assign _T_182 = _T_176 | _T_181; // @[NV_NVDLA_CACC_regfile.scala 164:58:@500.4]
  assign _T_186 = _T_162 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@502.4]
  assign _T_187 = _T_186 & NV_NVDLA_CACC_dual_reg_1_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 166:42:@503.4]
  assign _T_203 = ~ _T_116; // @[NV_NVDLA_CACC_regfile.scala 196:42:@532.4]
  assign _T_204 = _T_74 & _T_203; // @[NV_NVDLA_CACC_regfile.scala 196:40:@533.4]
  assign _T_206 = _T_108 & _T_116; // @[NV_NVDLA_CACC_regfile.scala 197:41:@535.4]
  assign _T_207 = _T_74 ^ _T_116; // @[NV_NVDLA_CACC_regfile.scala 198:40:@536.4]
  assign _T_208 = ~ _T_125; // @[NV_NVDLA_CACC_regfile.scala 200:42:@537.4]
  assign _T_209 = _T_82 & _T_208; // @[NV_NVDLA_CACC_regfile.scala 200:40:@538.4]
  assign _T_211 = _T_117 & _T_125; // @[NV_NVDLA_CACC_regfile.scala 201:41:@540.4]
  assign _T_212 = _T_82 ^ _T_125; // @[NV_NVDLA_CACC_regfile.scala 202:40:@541.4]
  assign _T_214 = _T_206 ? 32'h0 : _T_77; // @[NV_NVDLA_CACC_regfile.scala 210:35:@542.4]
  assign _T_215 = _T_204 ? io_dp2reg_sat_count : _T_214; // @[NV_NVDLA_CACC_regfile.scala 209:35:@543.4]
  assign _GEN_4 = _T_207 ? _T_215 : _T_77; // @[NV_NVDLA_CACC_regfile.scala 212:23:@544.4]
  assign _T_217 = _T_211 ? 32'h0 : _T_85; // @[NV_NVDLA_CACC_regfile.scala 217:35:@547.4]
  assign _T_218 = _T_209 ? io_dp2reg_sat_count : _T_217; // @[NV_NVDLA_CACC_regfile.scala 216:35:@548.4]
  assign _GEN_5 = _T_212 ? _T_218 : _T_85; // @[NV_NVDLA_CACC_regfile.scala 219:23:@549.4]
  assign _T_61 = _T_95[0]; // @[NV_NVDLA_CACC_regfile.scala 54:30:@380.4 NV_NVDLA_CACC_regfile.scala 118:20:@427.4]
  assign _T_63 = _T_104[0]; // @[NV_NVDLA_CACC_regfile.scala 55:30:@381.4 NV_NVDLA_CACC_regfile.scala 122:20:@432.4]
  assign io_csb2cacc_resp_valid = NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid; // @[NV_NVDLA_CACC_regfile.scala 175:24:@510.4]
  assign io_csb2cacc_resp_bits = NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits; // @[NV_NVDLA_CACC_regfile.scala 175:24:@509.4]
  assign io_reg2dp_op_en = _T_107[2]; // @[NV_NVDLA_CACC_regfile.scala 146:20:@456.4]
  assign io_reg2dp_field_clip_truncate = _T_59 ? NV_NVDLA_CACC_dual_reg_1_io_field_clip_truncate : NV_NVDLA_CACC_dual_reg_io_field_clip_truncate; // @[NV_NVDLA_CACC_regfile.scala 186:20:@530.4]
  assign io_slcg_op_en = _T_142; // @[NV_NVDLA_CACC_regfile.scala 148:18:@471.4]
  assign NV_NVDLA_BASIC_REG_single_clock = io_nvdla_core_clk; // @[:@386.4]
  assign NV_NVDLA_BASIC_REG_single_reset = reset; // @[:@387.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 64:31:@389.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 65:32:@390.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_wr_en = _T_144 & _T_147; // @[NV_NVDLA_CACC_regfile.scala 66:30:@391.4]
  assign NV_NVDLA_BASIC_REG_single_io_consumer = _T_59; // @[NV_NVDLA_CACC_regfile.scala 68:29:@392.4]
  assign NV_NVDLA_BASIC_REG_single_io_status_0 = {{1'd0}, _T_61}; // @[NV_NVDLA_CACC_regfile.scala 69:29:@393.4]
  assign NV_NVDLA_BASIC_REG_single_io_status_1 = {{1'd0}, _T_63}; // @[NV_NVDLA_CACC_regfile.scala 70:29:@394.4]
  assign NV_NVDLA_CACC_dual_reg_reset = reset; // @[:@400.4]
  assign NV_NVDLA_CACC_dual_reg_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 79:36:@401.4]
  assign NV_NVDLA_CACC_dual_reg_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 80:32:@402.4]
  assign NV_NVDLA_CACC_dual_reg_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 81:33:@403.4]
  assign NV_NVDLA_CACC_dual_reg_io_reg_wr_en = _T_164 & _T_88; // @[NV_NVDLA_CACC_regfile.scala 82:31:@404.4]
  assign NV_NVDLA_CACC_dual_reg_io_op_en = _T_74; // @[NV_NVDLA_CACC_regfile.scala 84:27:@405.4]
  assign NV_NVDLA_CACC_dual_reg_io_sat_count = _T_77; // @[NV_NVDLA_CACC_regfile.scala 85:31:@406.4]
  assign NV_NVDLA_CACC_dual_reg_1_reset = reset; // @[:@412.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 94:36:@413.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 95:32:@414.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 96:33:@415.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_reg_wr_en = _T_168 & _T_97; // @[NV_NVDLA_CACC_regfile.scala 97:31:@416.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_op_en = _T_82; // @[NV_NVDLA_CACC_regfile.scala 99:27:@417.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_sat_count = _T_85; // @[NV_NVDLA_CACC_regfile.scala 100:31:@418.4]
  assign NV_NVDLA_CSB_LOGIC_reset = reset; // @[:@507.4]
  assign NV_NVDLA_CSB_LOGIC_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 174:21:@508.4]
  assign NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid = io_csb2cacc_req_valid; // @[NV_NVDLA_CACC_regfile.scala 175:24:@512.4]
  assign NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits = io_csb2cacc_req_bits; // @[NV_NVDLA_CACC_regfile.scala 175:24:@511.4]
  assign NV_NVDLA_CSB_LOGIC_io_reg_rd_data = _T_182 | _T_187; // @[NV_NVDLA_CACC_regfile.scala 179:29:@517.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_59 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_74 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_77 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_82 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_85 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_107 = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_138 = _RAND_6[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_140 = _RAND_7[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_142 = _RAND_8[6:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_59 <= 1'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_59 <= _T_86;
      end
    end
    if (reset) begin
      _T_74 <= 1'h0;
    end else begin
      if (_T_109) begin
        _T_74 <= _T_110;
      end else begin
        if (_T_113) begin
          _T_74 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_77 <= 32'h0;
    end else begin
      if (_T_207) begin
        if (_T_204) begin
          _T_77 <= io_dp2reg_sat_count;
        end else begin
          if (_T_206) begin
            _T_77 <= 32'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_82 <= 1'h0;
    end else begin
      if (_T_118) begin
        _T_82 <= _T_110;
      end else begin
        if (_T_122) begin
          _T_82 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_85 <= 32'h0;
    end else begin
      if (_T_212) begin
        if (_T_209) begin
          _T_85 <= io_dp2reg_sat_count;
        end else begin
          if (_T_211) begin
            _T_85 <= 32'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_107 <= 3'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_107 <= 3'h0;
      end else begin
        _T_107 <= _T_129;
      end
    end
    if (_T_126) begin
      _T_138 <= 7'h7f;
    end else begin
      _T_138 <= 7'h0;
    end
    _T_140 <= _T_138;
    _T_142 <= _T_140;
  end
endmodule
module NV_NVDLA_CACC_assembly_ctrl( // @[:@553.2]
  input         reset, // @[:@555.4]
  input         io_nvdla_core_clk, // @[:@556.4]
  output        io_abuf_rd_addr_valid, // @[:@556.4]
  output [5:0]  io_abuf_rd_addr_bits, // @[:@556.4]
  input         io_mac_a2accu_pd_valid, // @[:@556.4]
  input  [8:0]  io_mac_a2accu_pd_bits, // @[:@556.4]
  output        io_accu_ctrl_pd_valid, // @[:@556.4]
  output [12:0] io_accu_ctrl_pd_bits, // @[:@556.4]
  output        io_accu_ctrl_ram_valid, // @[:@556.4]
  output        io_cfg_in_en_mask, // @[:@556.4]
  output [4:0]  io_cfg_truncate, // @[:@556.4]
  input         io_reg2dp_op_en, // @[:@556.4]
  input  [4:0]  io_reg2dp_clip_truncate, // @[:@556.4]
  input         io_dp2reg_done, // @[:@556.4]
  output        io_slcg_cell_en, // @[:@556.4]
  output        io_wait_for_op_en // @[:@556.4]
);
  reg  _T_45; // @[NV_NVDLA_CACC_assembly_ctrl.scala 63:25:@558.4]
  reg [31:0] _RAND_0;
  reg [8:0] _T_48; // @[Reg.scala 19:20:@560.4]
  reg [31:0] _RAND_1;
  wire [8:0] _GEN_0; // @[Reg.scala 20:19:@561.4]
  wire  _T_50; // @[NV_NVDLA_CACC_assembly_ctrl.scala 70:30:@565.4]
  wire  _T_51; // @[NV_NVDLA_CACC_assembly_ctrl.scala 71:31:@566.4]
  wire  _T_52; // @[NV_NVDLA_CACC_assembly_ctrl.scala 72:29:@567.4]
  reg  _T_59; // @[Reg.scala 19:20:@569.4]
  reg [31:0] _RAND_2;
  reg  _T_61; // @[Reg.scala 19:20:@573.4]
  reg [31:0] _RAND_3;
  reg  _T_63; // @[Reg.scala 19:20:@577.4]
  reg [31:0] _RAND_4;
  reg  _T_66; // @[NV_NVDLA_CACC_assembly_ctrl.scala 81:33:@582.4]
  reg [31:0] _RAND_5;
  wire  _T_69; // @[NV_NVDLA_CACC_assembly_ctrl.scala 82:63:@583.4]
  reg  _T_72; // @[NV_NVDLA_CACC_assembly_ctrl.scala 82:31:@585.4]
  reg [31:0] _RAND_6;
  reg [5:0] _T_78; // @[NV_NVDLA_CACC_assembly_ctrl.scala 89:23:@590.4]
  reg [31:0] _RAND_7;
  reg  _T_81; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:29:@591.4]
  reg [31:0] _RAND_8;
  reg  _T_84; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:30:@592.4]
  reg [31:0] _RAND_9;
  wire  _T_85; // @[NV_NVDLA_CACC_assembly_ctrl.scala 93:34:@593.4]
  wire [6:0] _T_87; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:29:@594.4]
  wire [5:0] _T_88; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:29:@595.4]
  wire  _T_89; // @[NV_NVDLA_CACC_assembly_ctrl.scala 95:31:@596.4]
  wire [5:0] _T_91; // @[NV_NVDLA_CACC_assembly_ctrl.scala 95:21:@597.4]
  wire  _T_93; // @[NV_NVDLA_CACC_assembly_ctrl.scala 97:63:@598.4]
  wire  _T_94; // @[NV_NVDLA_CACC_assembly_ctrl.scala 97:51:@599.4]
  wire  _T_95; // @[NV_NVDLA_CACC_assembly_ctrl.scala 97:29:@600.4]
  wire  _T_96; // @[NV_NVDLA_CACC_assembly_ctrl.scala 98:32:@601.4]
  wire  _T_97; // @[NV_NVDLA_CACC_assembly_ctrl.scala 98:29:@602.4]
  wire  _T_99; // @[NV_NVDLA_CACC_assembly_ctrl.scala 102:15:@604.4]
  wire [5:0] _GEN_4; // @[NV_NVDLA_CACC_assembly_ctrl.scala 102:28:@605.4]
  wire  _GEN_5; // @[NV_NVDLA_CACC_assembly_ctrl.scala 102:28:@605.4]
  reg  _T_102; // @[Reg.scala 19:20:@612.4]
  reg [31:0] _RAND_10;
  wire [4:0] _GEN_7; // @[Reg.scala 20:19:@613.4]
  reg  _T_105; // @[Reg.scala 19:20:@617.4]
  reg [31:0] _RAND_11;
  wire  _GEN_8; // @[Reg.scala 20:19:@618.4]
  reg  _T_108; // @[NV_NVDLA_CACC_assembly_ctrl.scala 117:33:@624.4]
  reg [31:0] _RAND_12;
  reg  _T_111; // @[NV_NVDLA_CACC_assembly_ctrl.scala 118:34:@627.4]
  reg [31:0] _RAND_13;
  reg [5:0] _T_114; // @[NV_NVDLA_CACC_assembly_ctrl.scala 119:29:@630.4]
  reg [31:0] _RAND_14;
  wire [5:0] _GEN_9; // @[NV_NVDLA_CACC_assembly_ctrl.scala 120:17:@631.4]
  reg  _T_117; // @[Reg.scala 19:20:@634.4]
  reg [31:0] _RAND_15;
  wire  _GEN_10; // @[Reg.scala 20:19:@635.4]
  reg  _T_120; // @[Reg.scala 19:20:@638.4]
  reg [31:0] _RAND_16;
  wire  _GEN_11; // @[Reg.scala 20:19:@639.4]
  reg  _T_123; // @[Reg.scala 19:20:@642.4]
  reg [31:0] _RAND_17;
  wire  _GEN_12; // @[Reg.scala 20:19:@643.4]
  reg  _T_126; // @[Reg.scala 19:20:@646.4]
  reg [31:0] _RAND_18;
  wire  _GEN_13; // @[Reg.scala 20:19:@647.4]
  wire [9:0] _T_129; // @[Cat.scala 30:58:@651.4]
  wire [2:0] _T_131; // @[Cat.scala 30:58:@653.4]
  assign _GEN_0 = io_mac_a2accu_pd_valid ? io_mac_a2accu_pd_bits : _T_48; // @[Reg.scala 20:19:@561.4]
  assign _T_50 = _T_48[6]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 70:30:@565.4]
  assign _T_51 = _T_48[7]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 71:31:@566.4]
  assign _T_52 = _T_48[8]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 72:29:@567.4]
  assign _T_69 = io_reg2dp_op_en ? 1'h0 : _T_66; // @[NV_NVDLA_CACC_assembly_ctrl.scala 82:63:@583.4]
  assign _T_85 = io_wait_for_op_en & io_reg2dp_op_en; // @[NV_NVDLA_CACC_assembly_ctrl.scala 93:34:@593.4]
  assign _T_87 = _T_78 + 6'h1; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:29:@594.4]
  assign _T_88 = _T_78 + 6'h1; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:29:@595.4]
  assign _T_89 = _T_85 | _T_50; // @[NV_NVDLA_CACC_assembly_ctrl.scala 95:31:@596.4]
  assign _T_91 = _T_89 ? 6'h0 : _T_88; // @[NV_NVDLA_CACC_assembly_ctrl.scala 95:21:@597.4]
  assign _T_93 = _T_45 & _T_50; // @[NV_NVDLA_CACC_assembly_ctrl.scala 97:63:@598.4]
  assign _T_94 = _T_93 ? _T_51 : _T_84; // @[NV_NVDLA_CACC_assembly_ctrl.scala 97:51:@599.4]
  assign _T_95 = _T_85 ? 1'h1 : _T_94; // @[NV_NVDLA_CACC_assembly_ctrl.scala 97:29:@600.4]
  assign _T_96 = ~ _T_84; // @[NV_NVDLA_CACC_assembly_ctrl.scala 98:32:@601.4]
  assign _T_97 = _T_45 & _T_96; // @[NV_NVDLA_CACC_assembly_ctrl.scala 98:29:@602.4]
  assign _T_99 = _T_85 | _T_45; // @[NV_NVDLA_CACC_assembly_ctrl.scala 102:15:@604.4]
  assign _GEN_4 = _T_99 ? _T_91 : _T_78; // @[NV_NVDLA_CACC_assembly_ctrl.scala 102:28:@605.4]
  assign _GEN_5 = _T_99 ? _T_95 : _T_84; // @[NV_NVDLA_CACC_assembly_ctrl.scala 102:28:@605.4]
  assign _GEN_7 = _T_85 ? io_reg2dp_clip_truncate : {{4'd0}, _T_102}; // @[Reg.scala 20:19:@613.4]
  assign _GEN_8 = _T_85 ? 1'h1 : _T_105; // @[Reg.scala 20:19:@618.4]
  assign _GEN_9 = _T_45 ? _T_78 : _T_114; // @[NV_NVDLA_CACC_assembly_ctrl.scala 120:17:@631.4]
  assign _GEN_10 = _T_45 ? _T_50 : _T_117; // @[Reg.scala 20:19:@635.4]
  assign _GEN_11 = _T_45 ? _T_51 : _T_120; // @[Reg.scala 20:19:@639.4]
  assign _GEN_12 = _T_45 ? _T_52 : _T_123; // @[Reg.scala 20:19:@643.4]
  assign _GEN_13 = _T_45 ? _T_52 : _T_126; // @[Reg.scala 20:19:@647.4]
  assign _T_129 = {_T_117,3'h1,_T_114}; // @[Cat.scala 30:58:@651.4]
  assign _T_131 = {_T_126,_T_123,_T_120}; // @[Cat.scala 30:58:@653.4]
  assign io_abuf_rd_addr_valid = _T_45 & _T_96; // @[NV_NVDLA_CACC_assembly_ctrl.scala 112:23:@622.4]
  assign io_abuf_rd_addr_bits = _T_78; // @[NV_NVDLA_CACC_assembly_ctrl.scala 113:22:@623.4]
  assign io_accu_ctrl_pd_valid = _T_108; // @[NV_NVDLA_CACC_assembly_ctrl.scala 117:23:@626.4]
  assign io_accu_ctrl_pd_bits = {_T_131,_T_129}; // @[NV_NVDLA_CACC_assembly_ctrl.scala 128:22:@655.4]
  assign io_accu_ctrl_ram_valid = _T_111; // @[NV_NVDLA_CACC_assembly_ctrl.scala 118:24:@629.4]
  assign io_cfg_in_en_mask = _T_105; // @[NV_NVDLA_CACC_assembly_ctrl.scala 110:19:@621.4]
  assign io_cfg_truncate = {{4'd0}, _T_102}; // @[NV_NVDLA_CACC_assembly_ctrl.scala 109:17:@616.4]
  assign io_slcg_cell_en = _T_63; // @[NV_NVDLA_CACC_assembly_ctrl.scala 78:17:@581.4]
  assign io_wait_for_op_en = _T_66; // @[NV_NVDLA_CACC_assembly_ctrl.scala 84:19:@588.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_45 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_48 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_59 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_61 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_63 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_66 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_72 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_78 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_81 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_84 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_102 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_105 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_108 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_111 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_114 = _RAND_14[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_117 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_120 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_123 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_126 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_45 <= 1'h0;
    end else begin
      _T_45 <= io_mac_a2accu_pd_valid;
    end
    if (reset) begin
      _T_48 <= 9'h0;
    end else begin
      if (io_mac_a2accu_pd_valid) begin
        _T_48 <= io_mac_a2accu_pd_bits;
      end
    end
    if (reset) begin
      _T_59 <= 1'h0;
    end else begin
      _T_59 <= io_reg2dp_op_en;
    end
    if (reset) begin
      _T_61 <= 1'h0;
    end else begin
      _T_61 <= _T_59;
    end
    if (reset) begin
      _T_63 <= 1'h0;
    end else begin
      _T_63 <= _T_61;
    end
    if (reset) begin
      _T_66 <= 1'h1;
    end else begin
      _T_66 <= _T_72;
    end
    if (io_dp2reg_done) begin
      _T_72 <= 1'h1;
    end else begin
      if (io_reg2dp_op_en) begin
        _T_72 <= 1'h0;
      end else begin
        _T_72 <= _T_66;
      end
    end
    if (reset) begin
      _T_78 <= 6'h0;
    end else begin
      if (_T_99) begin
        if (_T_89) begin
          _T_78 <= 6'h0;
        end else begin
          _T_78 <= _T_88;
        end
      end
    end
    if (reset) begin
      _T_81 <= 1'h0;
    end else begin
      _T_81 <= _T_97;
    end
    if (reset) begin
      _T_84 <= 1'h1;
    end else begin
      if (_T_99) begin
        if (_T_85) begin
          _T_84 <= 1'h1;
        end else begin
          if (_T_93) begin
            _T_84 <= _T_51;
          end
        end
      end
    end
    if (reset) begin
      _T_102 <= 1'h0;
    end else begin
      _T_102 <= _GEN_7[0];
    end
    if (reset) begin
      _T_105 <= 1'h0;
    end else begin
      if (_T_85) begin
        _T_105 <= 1'h1;
      end
    end
    if (reset) begin
      _T_108 <= 1'h0;
    end else begin
      _T_108 <= _T_45;
    end
    if (reset) begin
      _T_111 <= 1'h0;
    end else begin
      _T_111 <= _T_81;
    end
    if (reset) begin
      _T_114 <= 6'h0;
    end else begin
      if (_T_45) begin
        _T_114 <= _T_78;
      end
    end
    if (reset) begin
      _T_117 <= 1'h0;
    end else begin
      if (_T_45) begin
        _T_117 <= _T_50;
      end
    end
    if (reset) begin
      _T_120 <= 1'h0;
    end else begin
      if (_T_45) begin
        _T_120 <= _T_51;
      end
    end
    if (reset) begin
      _T_123 <= 1'h0;
    end else begin
      if (_T_45) begin
        _T_123 <= _T_52;
      end
    end
    if (reset) begin
      _T_126 <= 1'h0;
    end else begin
      if (_T_45) begin
        _T_126 <= _T_52;
      end
    end
  end
endmodule
module nv_ram_rws( // @[:@657.2]
  input           io_clk, // @[:@660.4]
  input           io_re, // @[:@660.4]
  input           io_we, // @[:@660.4]
  input  [5:0]    io_ra, // @[:@660.4]
  input  [5:0]    io_wa, // @[:@660.4]
  input  [1087:0] io_di, // @[:@660.4]
  output [1087:0] io_dout // @[:@660.4]
);
  reg [1087:0] _T_21 [0:63]; // @[nv_ram_rws.scala 27:26:@662.4]
  reg [1087:0] _RAND_0;
  wire [1087:0] _T_21__T_28_data; // @[nv_ram_rws.scala 27:26:@662.4]
  wire [5:0] _T_21__T_28_addr; // @[nv_ram_rws.scala 27:26:@662.4]
  wire [1087:0] _T_21__T_22_data; // @[nv_ram_rws.scala 27:26:@662.4]
  wire [5:0] _T_21__T_22_addr; // @[nv_ram_rws.scala 27:26:@662.4]
  wire  _T_21__T_22_mask; // @[nv_ram_rws.scala 27:26:@662.4]
  wire  _T_21__T_22_en; // @[nv_ram_rws.scala 27:26:@662.4]
  wire  _GEN_10; // @[nv_ram_rws.scala 29:18:@663.4]
  reg [5:0] _T_21__T_28_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _T_21__T_28_addr_en;
  assign _T_21__T_28_addr = _T_21__T_28_addr_pipe_0;
  assign _T_21__T_28_data = _T_21[_T_21__T_28_addr]; // @[nv_ram_rws.scala 27:26:@662.4]
  assign _T_21__T_22_data = io_di;
  assign _T_21__T_22_addr = io_wa;
  assign _T_21__T_22_mask = 1'h1;
  assign _T_21__T_22_en = io_we;
  assign _GEN_10 = io_we ? 1'h0 : io_re; // @[nv_ram_rws.scala 29:18:@663.4]
  assign io_dout = _T_21__T_28_data; // @[nv_ram_rws.scala 34:17:@677.6]
  assign _T_21__T_28_addr_en = _GEN_10;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {34{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    _T_21[initvar] = _RAND_0[1087:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_21__T_28_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if(_T_21__T_22_en & _T_21__T_22_mask) begin
      _T_21[_T_21__T_22_addr] <= _T_21__T_22_data; // @[nv_ram_rws.scala 27:26:@662.4]
    end
    if (_T_21__T_28_addr_en) begin
      _T_21__T_28_addr_pipe_0 <= io_ra;
    end
  end
endmodule
module NV_NVDLA_CACC_assembly_buffer( // @[:@680.2]
  input           reset, // @[:@682.4]
  input           io_nvdla_core_clk, // @[:@683.4]
  input           io_abuf_wr_addr_valid, // @[:@683.4]
  input  [5:0]    io_abuf_wr_addr_bits, // @[:@683.4]
  input  [1087:0] io_abuf_wr_data, // @[:@683.4]
  input           io_abuf_rd_addr_valid, // @[:@683.4]
  input  [5:0]    io_abuf_rd_addr_bits, // @[:@683.4]
  output [1087:0] io_abuf_rd_data // @[:@683.4]
);
  wire  nv_ram_rws_io_clk; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@685.4]
  wire  nv_ram_rws_io_re; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@685.4]
  wire  nv_ram_rws_io_we; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@685.4]
  wire [5:0] nv_ram_rws_io_ra; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@685.4]
  wire [5:0] nv_ram_rws_io_wa; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@685.4]
  wire [1087:0] nv_ram_rws_io_di; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@685.4]
  wire [1087:0] nv_ram_rws_io_dout; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@685.4]
  reg  _T_39; // @[NV_NVDLA_CACC_assembly_buffer.scala 54:32:@694.4]
  reg [31:0] _RAND_0;
  reg [1087:0] _T_41; // @[Reg.scala 11:16:@696.4]
  reg [1087:0] _RAND_1;
  nv_ram_rws nv_ram_rws ( // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@685.4]
    .io_clk(nv_ram_rws_io_clk),
    .io_re(nv_ram_rws_io_re),
    .io_we(nv_ram_rws_io_we),
    .io_ra(nv_ram_rws_io_ra),
    .io_wa(nv_ram_rws_io_wa),
    .io_di(nv_ram_rws_io_di),
    .io_dout(nv_ram_rws_io_dout)
  );
  assign io_abuf_rd_data = _T_41; // @[NV_NVDLA_CACC_assembly_buffer.scala 56:21:@700.4]
  assign nv_ram_rws_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_assembly_buffer.scala 46:26:@688.4]
  assign nv_ram_rws_io_re = io_abuf_rd_addr_valid; // @[NV_NVDLA_CACC_assembly_buffer.scala 48:25:@690.4]
  assign nv_ram_rws_io_we = io_abuf_wr_addr_valid; // @[NV_NVDLA_CACC_assembly_buffer.scala 49:25:@691.4]
  assign nv_ram_rws_io_ra = io_abuf_rd_addr_bits; // @[NV_NVDLA_CACC_assembly_buffer.scala 47:25:@689.4]
  assign nv_ram_rws_io_wa = io_abuf_wr_addr_bits; // @[NV_NVDLA_CACC_assembly_buffer.scala 50:25:@692.4]
  assign nv_ram_rws_io_di = io_abuf_wr_data; // @[NV_NVDLA_CACC_assembly_buffer.scala 51:25:@693.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_39 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {34{`RANDOM}};
  _T_41 = _RAND_1[1087:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_39 <= 1'h0;
    end else begin
      _T_39 <= io_abuf_rd_addr_valid;
    end
    if (_T_39) begin
      _T_41 <= nv_ram_rws_io_dout;
    end
  end
endmodule
module NV_NVDLA_CACC_CALC_int8( // @[:@702.2]
  input         reset, // @[:@704.4]
  input         io_nvdla_core_clk, // @[:@705.4]
  input  [4:0]  io_cfg_truncate, // @[:@705.4]
  input  [21:0] io_in_data, // @[:@705.4]
  input  [33:0] io_in_op, // @[:@705.4]
  input         io_in_op_valid, // @[:@705.4]
  input         io_in_sel, // @[:@705.4]
  input         io_in_valid, // @[:@705.4]
  output [31:0] io_out_final_data, // @[:@705.4]
  output        io_out_final_sat, // @[:@705.4]
  output        io_out_final_valid, // @[:@705.4]
  output [33:0] io_out_partial_data, // @[:@705.4]
  output        io_out_partial_valid // @[:@705.4]
);
  reg  _T_31; // @[NV_NVDLA_CACC_CALC_int8.scala 56:28:@707.4]
  reg [31:0] _RAND_0;
  reg  _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 57:29:@708.4]
  reg [31:0] _RAND_1;
  reg [34:0] _T_36; // @[NV_NVDLA_CACC_CALC_int8.scala 58:23:@709.4]
  reg [63:0] _RAND_2;
  wire [21:0] _T_37; // @[NV_NVDLA_CACC_CALC_int8.scala 63:33:@713.6]
  wire [33:0] _T_39; // @[NV_NVDLA_CACC_CALC_int8.scala 63:46:@714.6]
  wire [33:0] _T_40; // @[NV_NVDLA_CACC_CALC_int8.scala 63:89:@715.6]
  wire [33:0] _GEN_5; // @[NV_NVDLA_CACC_CALC_int8.scala 63:40:@716.6]
  wire [34:0] _T_41; // @[NV_NVDLA_CACC_CALC_int8.scala 63:40:@716.6]
  wire [34:0] _T_42; // @[NV_NVDLA_CACC_CALC_int8.scala 63:97:@717.6]
  wire  _GEN_0; // @[NV_NVDLA_CACC_CALC_int8.scala 61:22:@711.4]
  wire  _T_43; // @[NV_NVDLA_CACC_CALC_int8.scala 69:30:@720.4]
  wire  _T_44; // @[NV_NVDLA_CACC_CALC_int8.scala 70:29:@721.4]
  wire  _T_48; // @[NV_NVDLA_CACC_CALC_int8.scala 74:20:@724.4]
  wire  _T_49; // @[NV_NVDLA_CACC_CALC_int8.scala 75:32:@726.6]
  wire [32:0] _T_53; // @[Bitwise.scala 72:12:@728.6]
  wire [32:0] _T_54; // @[NV_NVDLA_CACC_CALC_int8.scala 78:31:@732.6]
  wire [32:0] _GEN_2; // @[NV_NVDLA_CACC_CALC_int8.scala 74:31:@725.4]
  wire [33:0] _T_55; // @[Cat.scala 30:58:@735.4]
  wire [33:0] _T_64; // @[NV_NVDLA_CACC_CALC_int8.scala 88:27:@739.4]
  wire [49:0] _T_66; // @[Cat.scala 30:58:@740.4]
  wire [49:0] _T_67; // @[NV_NVDLA_CACC_CALC_int8.scala 89:66:@741.4]
  wire [49:0] _T_68; // @[NV_NVDLA_CACC_CALC_int8.scala 89:73:@742.4]
  wire [49:0] _T_69; // @[Cat.scala 30:58:@743.4]
  wire [33:0] _T_70; // @[NV_NVDLA_CACC_CALC_int8.scala 90:42:@744.4]
  wire  _T_72; // @[NV_NVDLA_CACC_CALC_int8.scala 91:41:@746.4]
  wire [14:0] _T_74; // @[NV_NVDLA_CACC_CALC_int8.scala 92:41:@748.4]
  wire [1:0] _T_75; // @[NV_NVDLA_CACC_CALC_int8.scala 94:51:@749.4]
  wire [1:0] _T_76; // @[NV_NVDLA_CACC_CALC_int8.scala 94:60:@750.4]
  wire  _T_78; // @[NV_NVDLA_CACC_CALC_int8.scala 94:60:@751.4]
  wire  _T_79; // @[NV_NVDLA_CACC_CALC_int8.scala 94:41:@752.4]
  wire  _T_80; // @[NV_NVDLA_CACC_CALC_int8.scala 94:38:@753.4]
  wire  _T_84; // @[NV_NVDLA_CACC_CALC_int8.scala 95:59:@756.4]
  wire  _T_85; // @[NV_NVDLA_CACC_CALC_int8.scala 95:39:@757.4]
  wire  _T_86; // @[NV_NVDLA_CACC_CALC_int8.scala 94:67:@758.4]
  wire [30:0] _T_88; // @[NV_NVDLA_CACC_CALC_int8.scala 96:53:@760.4]
  wire  _T_103; // @[NV_NVDLA_CACC_CALC_int8.scala 99:27:@770.4]
  wire  _T_106; // @[NV_NVDLA_CACC_CALC_int8.scala 99:61:@772.4]
  wire  _T_107; // @[NV_NVDLA_CACC_CALC_int8.scala 99:51:@773.4]
  wire  _T_108; // @[NV_NVDLA_CACC_CALC_int8.scala 99:37:@774.4]
  wire [31:0] _T_89; // @[Cat.scala 30:58:@761.4]
  wire [31:0] _T_90; // @[NV_NVDLA_CACC_CALC_int8.scala 96:71:@762.4]
  wire  _T_92; // @[NV_NVDLA_CACC_CALC_int8.scala 96:71:@763.4]
  wire  _T_93; // @[NV_NVDLA_CACC_CALC_int8.scala 96:39:@764.4]
  wire  _T_94; // @[NV_NVDLA_CACC_CALC_int8.scala 95:65:@765.4]
  wire [31:0] _T_102; // @[NV_NVDLA_CACC_CALC_int8.scala 97:24:@769.4]
  wire [31:0] _T_109; // @[NV_NVDLA_CACC_CALC_int8.scala 100:28:@776.4]
  wire [31:0] _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 100:36:@777.4]
  wire [32:0] _T_110; // @[NV_NVDLA_CACC_CALC_int8.scala 100:36:@777.4]
  wire [31:0] _T_111; // @[NV_NVDLA_CACC_CALC_int8.scala 100:36:@778.4]
  wire [31:0] _T_112; // @[NV_NVDLA_CACC_CALC_int8.scala 103:29:@779.4]
  wire  _T_113; // @[NV_NVDLA_CACC_CALC_int8.scala 105:37:@780.4]
  wire  _T_114; // @[NV_NVDLA_CACC_CALC_int8.scala 105:35:@781.4]
  wire  _T_115; // @[NV_NVDLA_CACC_CALC_int8.scala 106:32:@782.4]
  reg  _T_118; // @[NV_NVDLA_CACC_CALC_int8.scala 108:36:@783.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_120; // @[Reg.scala 11:16:@786.4]
  reg [63:0] _RAND_4;
  reg  _T_123; // @[NV_NVDLA_CACC_CALC_int8.scala 110:34:@791.4]
  reg [31:0] _RAND_5;
  wire  _T_124; // @[NV_NVDLA_CACC_CALC_int8.scala 111:45:@794.4]
  reg  _T_127; // @[NV_NVDLA_CACC_CALC_int8.scala 111:32:@795.4]
  reg [31:0] _RAND_6;
  reg [31:0] _T_129; // @[Reg.scala 11:16:@798.4]
  reg [31:0] _RAND_7;
  assign _T_37 = $signed(io_in_data); // @[NV_NVDLA_CACC_CALC_int8.scala 63:33:@713.6]
  assign _T_39 = io_in_op_valid ? io_in_op : 34'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 63:46:@714.6]
  assign _T_40 = $signed(_T_39); // @[NV_NVDLA_CACC_CALC_int8.scala 63:89:@715.6]
  assign _GEN_5 = {{12{_T_37[21]}},_T_37}; // @[NV_NVDLA_CACC_CALC_int8.scala 63:40:@716.6]
  assign _T_41 = $signed(_GEN_5) + $signed(_T_40); // @[NV_NVDLA_CACC_CALC_int8.scala 63:40:@716.6]
  assign _T_42 = $unsigned(_T_41); // @[NV_NVDLA_CACC_CALC_int8.scala 63:97:@717.6]
  assign _GEN_0 = io_in_valid ? io_in_sel : _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 61:22:@711.4]
  assign _T_43 = _T_36[34]; // @[NV_NVDLA_CACC_CALC_int8.scala 69:30:@720.4]
  assign _T_44 = _T_36[33]; // @[NV_NVDLA_CACC_CALC_int8.scala 70:29:@721.4]
  assign _T_48 = _T_43 ^ _T_44; // @[NV_NVDLA_CACC_CALC_int8.scala 74:20:@724.4]
  assign _T_49 = ~ _T_43; // @[NV_NVDLA_CACC_CALC_int8.scala 75:32:@726.6]
  assign _T_53 = _T_49 ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12:@728.6]
  assign _T_54 = _T_36[32:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 78:31:@732.6]
  assign _GEN_2 = _T_48 ? _T_53 : _T_54; // @[NV_NVDLA_CACC_CALC_int8.scala 74:31:@725.4]
  assign _T_55 = {_T_43,_GEN_2}; // @[Cat.scala 30:58:@735.4]
  assign _T_64 = _T_34 ? _T_55 : 34'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 88:27:@739.4]
  assign _T_66 = {_T_64,16'h0}; // @[Cat.scala 30:58:@740.4]
  assign _T_67 = $signed(_T_66); // @[NV_NVDLA_CACC_CALC_int8.scala 89:66:@741.4]
  assign _T_68 = $signed(_T_67) >>> io_cfg_truncate; // @[NV_NVDLA_CACC_CALC_int8.scala 89:73:@742.4]
  assign _T_69 = $unsigned(_T_68); // @[Cat.scala 30:58:@743.4]
  assign _T_70 = _T_69[49:16]; // @[NV_NVDLA_CACC_CALC_int8.scala 90:42:@744.4]
  assign _T_72 = _T_69[15]; // @[NV_NVDLA_CACC_CALC_int8.scala 91:41:@746.4]
  assign _T_74 = _T_69[14:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 92:41:@748.4]
  assign _T_75 = _T_70[32:31]; // @[NV_NVDLA_CACC_CALC_int8.scala 94:51:@749.4]
  assign _T_76 = ~ _T_75; // @[NV_NVDLA_CACC_CALC_int8.scala 94:60:@750.4]
  assign _T_78 = _T_76 == 2'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 94:60:@751.4]
  assign _T_79 = ~ _T_78; // @[NV_NVDLA_CACC_CALC_int8.scala 94:41:@752.4]
  assign _T_80 = _T_43 & _T_79; // @[NV_NVDLA_CACC_CALC_int8.scala 94:38:@753.4]
  assign _T_84 = _T_75 != 2'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 95:59:@756.4]
  assign _T_85 = _T_49 & _T_84; // @[NV_NVDLA_CACC_CALC_int8.scala 95:39:@757.4]
  assign _T_86 = _T_80 | _T_85; // @[NV_NVDLA_CACC_CALC_int8.scala 94:67:@758.4]
  assign _T_88 = _T_70[30:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 96:53:@760.4]
  assign _T_103 = _T_34 & _T_72; // @[NV_NVDLA_CACC_CALC_int8.scala 99:27:@770.4]
  assign _T_106 = _T_74 != 15'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 99:61:@772.4]
  assign _T_107 = _T_49 | _T_106; // @[NV_NVDLA_CACC_CALC_int8.scala 99:51:@773.4]
  assign _T_108 = _T_103 & _T_107; // @[NV_NVDLA_CACC_CALC_int8.scala 99:37:@774.4]
  assign _T_89 = {_T_88,_T_108}; // @[Cat.scala 30:58:@761.4]
  assign _T_90 = ~ _T_89; // @[NV_NVDLA_CACC_CALC_int8.scala 96:71:@762.4]
  assign _T_92 = _T_90 == 32'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 96:71:@763.4]
  assign _T_93 = _T_49 & _T_92; // @[NV_NVDLA_CACC_CALC_int8.scala 96:39:@764.4]
  assign _T_94 = _T_86 | _T_93; // @[NV_NVDLA_CACC_CALC_int8.scala 95:65:@765.4]
  assign _T_102 = _T_43 ? 32'h80000000 : 32'h7fffffff; // @[NV_NVDLA_CACC_CALC_int8.scala 97:24:@769.4]
  assign _T_109 = _T_70[31:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 100:28:@776.4]
  assign _GEN_6 = {{31'd0}, _T_108}; // @[NV_NVDLA_CACC_CALC_int8.scala 100:36:@777.4]
  assign _T_110 = _T_109 + _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 100:36:@777.4]
  assign _T_111 = _T_109 + _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 100:36:@778.4]
  assign _T_112 = _T_94 ? _T_102 : _T_111; // @[NV_NVDLA_CACC_CALC_int8.scala 103:29:@779.4]
  assign _T_113 = ~ _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 105:37:@780.4]
  assign _T_114 = _T_31 & _T_113; // @[NV_NVDLA_CACC_CALC_int8.scala 105:35:@781.4]
  assign _T_115 = _T_31 & _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 106:32:@782.4]
  assign _T_124 = _T_115 & _T_94; // @[NV_NVDLA_CACC_CALC_int8.scala 111:45:@794.4]
  assign io_out_final_data = _T_129; // @[NV_NVDLA_CACC_CALC_int8.scala 112:23:@802.4]
  assign io_out_final_sat = _T_127; // @[NV_NVDLA_CACC_CALC_int8.scala 111:22:@797.4]
  assign io_out_final_valid = _T_123; // @[NV_NVDLA_CACC_CALC_int8.scala 110:24:@793.4]
  assign io_out_partial_data = _T_120; // @[NV_NVDLA_CACC_CALC_int8.scala 109:25:@790.4]
  assign io_out_partial_valid = _T_118; // @[NV_NVDLA_CACC_CALC_int8.scala 108:26:@785.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_31 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_34 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_36 = _RAND_2[34:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_118 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_120 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_123 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_127 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_129 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_31 <= 1'h0;
    end else begin
      _T_31 <= io_in_valid;
    end
    if (reset) begin
      _T_34 <= 1'h0;
    end else begin
      if (io_in_valid) begin
        _T_34 <= io_in_sel;
      end
    end
    if (io_in_valid) begin
      _T_36 <= _T_42;
    end
    if (reset) begin
      _T_118 <= 1'h0;
    end else begin
      _T_118 <= _T_114;
    end
    if (_T_114) begin
      _T_120 <= _T_55;
    end
    if (reset) begin
      _T_123 <= 1'h0;
    end else begin
      _T_123 <= _T_115;
    end
    if (reset) begin
      _T_127 <= 1'h0;
    end else begin
      _T_127 <= _T_124;
    end
    if (_T_115) begin
      if (_T_94) begin
        if (_T_43) begin
          _T_129 <= 32'h80000000;
        end else begin
          _T_129 <= 32'h7fffffff;
        end
      end else begin
        _T_129 <= _T_111;
      end
    end
  end
endmodule
module NV_NVDLA_CACC_calculator( // @[:@3966.2]
  input           reset, // @[:@3968.4]
  input           io_nvdla_core_clk, // @[:@3969.4]
  input           io_nvdla_cell_clk, // @[:@3969.4]
  input  [1087:0] io_abuf_rd_data, // @[:@3969.4]
  output          io_abuf_wr_addr_valid, // @[:@3969.4]
  output [5:0]    io_abuf_wr_addr_bits, // @[:@3969.4]
  output [1087:0] io_abuf_wr_data, // @[:@3969.4]
  output          io_dlv_valid, // @[:@3969.4]
  output [31:0]   io_dlv_data_0, // @[:@3969.4]
  output [31:0]   io_dlv_data_1, // @[:@3969.4]
  output [31:0]   io_dlv_data_2, // @[:@3969.4]
  output [31:0]   io_dlv_data_3, // @[:@3969.4]
  output [31:0]   io_dlv_data_4, // @[:@3969.4]
  output [31:0]   io_dlv_data_5, // @[:@3969.4]
  output [31:0]   io_dlv_data_6, // @[:@3969.4]
  output [31:0]   io_dlv_data_7, // @[:@3969.4]
  output [31:0]   io_dlv_data_8, // @[:@3969.4]
  output [31:0]   io_dlv_data_9, // @[:@3969.4]
  output [31:0]   io_dlv_data_10, // @[:@3969.4]
  output [31:0]   io_dlv_data_11, // @[:@3969.4]
  output [31:0]   io_dlv_data_12, // @[:@3969.4]
  output [31:0]   io_dlv_data_13, // @[:@3969.4]
  output [31:0]   io_dlv_data_14, // @[:@3969.4]
  output [31:0]   io_dlv_data_15, // @[:@3969.4]
  output [31:0]   io_dlv_data_16, // @[:@3969.4]
  output [31:0]   io_dlv_data_17, // @[:@3969.4]
  output [31:0]   io_dlv_data_18, // @[:@3969.4]
  output [31:0]   io_dlv_data_19, // @[:@3969.4]
  output [31:0]   io_dlv_data_20, // @[:@3969.4]
  output [31:0]   io_dlv_data_21, // @[:@3969.4]
  output [31:0]   io_dlv_data_22, // @[:@3969.4]
  output [31:0]   io_dlv_data_23, // @[:@3969.4]
  output [31:0]   io_dlv_data_24, // @[:@3969.4]
  output [31:0]   io_dlv_data_25, // @[:@3969.4]
  output [31:0]   io_dlv_data_26, // @[:@3969.4]
  output [31:0]   io_dlv_data_27, // @[:@3969.4]
  output [31:0]   io_dlv_data_28, // @[:@3969.4]
  output [31:0]   io_dlv_data_29, // @[:@3969.4]
  output [31:0]   io_dlv_data_30, // @[:@3969.4]
  output [31:0]   io_dlv_data_31, // @[:@3969.4]
  output [1:0]    io_dlv_pd, // @[:@3969.4]
  input           io_accu_ctrl_pd_valid, // @[:@3969.4]
  input  [12:0]   io_accu_ctrl_pd_bits, // @[:@3969.4]
  input           io_accu_ctrl_ram_valid, // @[:@3969.4]
  input           io_cfg_in_en_mask, // @[:@3969.4]
  input  [4:0]    io_cfg_truncate, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_0, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_1, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_2, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_3, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_4, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_5, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_6, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_7, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_8, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_9, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_10, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_11, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_12, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_13, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_14, // @[:@3969.4]
  input  [21:0]   io_mac_a2accu_data_15, // @[:@3969.4]
  input           io_mac_a2accu_mask_0, // @[:@3969.4]
  input           io_mac_a2accu_mask_1, // @[:@3969.4]
  input           io_mac_a2accu_mask_2, // @[:@3969.4]
  input           io_mac_a2accu_mask_3, // @[:@3969.4]
  input           io_mac_a2accu_mask_4, // @[:@3969.4]
  input           io_mac_a2accu_mask_5, // @[:@3969.4]
  input           io_mac_a2accu_mask_6, // @[:@3969.4]
  input           io_mac_a2accu_mask_7, // @[:@3969.4]
  input           io_mac_a2accu_mask_8, // @[:@3969.4]
  input           io_mac_a2accu_mask_9, // @[:@3969.4]
  input           io_mac_a2accu_mask_10, // @[:@3969.4]
  input           io_mac_a2accu_mask_11, // @[:@3969.4]
  input           io_mac_a2accu_mask_12, // @[:@3969.4]
  input           io_mac_a2accu_mask_13, // @[:@3969.4]
  input           io_mac_a2accu_mask_14, // @[:@3969.4]
  input           io_mac_a2accu_mask_15, // @[:@3969.4]
  input           io_mac_a2accu_pvld, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_0, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_1, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_2, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_3, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_4, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_5, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_6, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_7, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_8, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_9, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_10, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_11, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_12, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_13, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_14, // @[:@3969.4]
  input  [21:0]   io_mac_b2accu_data_15, // @[:@3969.4]
  input           io_mac_b2accu_mask_0, // @[:@3969.4]
  input           io_mac_b2accu_mask_1, // @[:@3969.4]
  input           io_mac_b2accu_mask_2, // @[:@3969.4]
  input           io_mac_b2accu_mask_3, // @[:@3969.4]
  input           io_mac_b2accu_mask_4, // @[:@3969.4]
  input           io_mac_b2accu_mask_5, // @[:@3969.4]
  input           io_mac_b2accu_mask_6, // @[:@3969.4]
  input           io_mac_b2accu_mask_7, // @[:@3969.4]
  input           io_mac_b2accu_mask_8, // @[:@3969.4]
  input           io_mac_b2accu_mask_9, // @[:@3969.4]
  input           io_mac_b2accu_mask_10, // @[:@3969.4]
  input           io_mac_b2accu_mask_11, // @[:@3969.4]
  input           io_mac_b2accu_mask_12, // @[:@3969.4]
  input           io_mac_b2accu_mask_13, // @[:@3969.4]
  input           io_mac_b2accu_mask_14, // @[:@3969.4]
  input           io_mac_b2accu_mask_15, // @[:@3969.4]
  input           io_mac_b2accu_pvld, // @[:@3969.4]
  output [31:0]   io_dp2reg_sat_count // @[:@3969.4]
);
  wire  NV_NVDLA_CACC_CALC_int8_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_1_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_1_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_1_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_2_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_2_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_2_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_3_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_3_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_3_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_4_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_4_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_4_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_5_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_5_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_5_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_6_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_6_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_6_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_7_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_7_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_7_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_8_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_8_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_8_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_9_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_9_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_9_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_10_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_10_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_10_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_11_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_11_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_11_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_12_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_12_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_12_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_13_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_13_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_13_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_14_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_14_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_14_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_15_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_15_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_15_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_16_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_16_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_16_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_17_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_17_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_17_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_18_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_18_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_18_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_19_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_19_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_19_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_20_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_20_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_20_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_21_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_21_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_21_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_22_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_22_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_22_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_23_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_23_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_23_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_24_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_24_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_24_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_25_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_25_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_25_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_26_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_26_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_26_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_27_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_27_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_27_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_28_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_28_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_28_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_29_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_29_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_29_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_30_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_30_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_30_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_reset; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_31_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_31_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_31_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
  reg [12:0] _T_357; // @[Reg.scala 19:20:@4036.4]
  reg [31:0] _RAND_0;
  wire [12:0] _GEN_0; // @[Reg.scala 20:19:@4037.4]
  wire  _T_358; // @[NV_NVDLA_CACC_calculator.scala 75:45:@4040.4]
  reg  _T_362; // @[Reg.scala 19:20:@4041.4]
  reg [31:0] _RAND_1;
  reg  _T_364; // @[Reg.scala 19:20:@4045.4]
  reg [31:0] _RAND_2;
  reg  _T_366; // @[Reg.scala 19:20:@4049.4]
  reg [31:0] _RAND_3;
  wire [5:0] _T_367; // @[NV_NVDLA_CACC_calculator.scala 80:36:@4053.4]
  wire  _T_369; // @[NV_NVDLA_CACC_calculator.scala 82:42:@4055.4]
  wire  _T_370; // @[NV_NVDLA_CACC_calculator.scala 83:43:@4056.4]
  wire  _T_371; // @[NV_NVDLA_CACC_calculator.scala 84:41:@4057.4]
  wire  _T_449; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4125.4]
  wire  _T_450; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4126.4]
  wire  _T_451; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4127.4]
  wire  _T_452; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4128.4]
  wire  _T_453; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4129.4]
  wire  _T_454; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4130.4]
  wire  _T_455; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4131.4]
  wire  _T_456; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4132.4]
  wire  _T_457; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4133.4]
  wire  _T_458; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4134.4]
  wire  _T_459; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4135.4]
  wire  _T_460; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4136.4]
  wire  _T_461; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4137.4]
  wire  _T_462; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4138.4]
  wire  _T_463; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4139.4]
  wire  _T_464; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4140.4]
  wire  _T_465; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4141.4]
  wire  _T_466; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4142.4]
  wire  _T_467; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4143.4]
  wire  _T_468; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4144.4]
  wire  _T_469; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4145.4]
  wire  _T_470; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4146.4]
  wire  _T_471; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4147.4]
  wire  _T_472; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4148.4]
  wire  _T_473; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4149.4]
  wire  _T_474; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4150.4]
  wire  _T_475; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4151.4]
  wire  _T_476; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4152.4]
  wire  _T_477; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4153.4]
  wire  _T_478; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4154.4]
  wire  _T_479; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4155.4]
  wire  _T_480; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4156.4]
  wire  _T_621; // @[NV_NVDLA_CACC_calculator.scala 98:37:@4287.4]
  wire  _T_622; // @[NV_NVDLA_CACC_calculator.scala 99:36:@4288.4]
  wire  _T_623; // @[NV_NVDLA_CACC_calculator.scala 99:33:@4289.4]
  reg  _T_818; // @[NV_NVDLA_CACC_calculator.scala 132:72:@4776.4]
  reg [31:0] _RAND_4;
  reg  _T_826; // @[NV_NVDLA_CACC_calculator.scala 134:72:@4779.4]
  reg [31:0] _RAND_5;
  reg  _T_829; // @[NV_NVDLA_CACC_calculator.scala 134:72:@4780.4]
  reg [31:0] _RAND_6;
  reg [5:0] _T_834; // @[NV_NVDLA_CACC_calculator.scala 136:71:@4782.4]
  reg [31:0] _RAND_7;
  reg [5:0] _T_837; // @[NV_NVDLA_CACC_calculator.scala 136:71:@4783.4]
  reg [31:0] _RAND_8;
  wire [5:0] _GEN_4; // @[NV_NVDLA_CACC_calculator.scala 145:30:@4789.4]
  wire [5:0] _GEN_5; // @[NV_NVDLA_CACC_calculator.scala 145:30:@4794.4]
  reg  _T_842; // @[NV_NVDLA_CACC_calculator.scala 155:74:@4798.4]
  reg [31:0] _RAND_9;
  reg  _T_845; // @[NV_NVDLA_CACC_calculator.scala 155:74:@4799.4]
  reg [31:0] _RAND_10;
  reg  _T_850; // @[NV_NVDLA_CACC_calculator.scala 157:75:@4801.4]
  reg [31:0] _RAND_11;
  reg  _T_853; // @[NV_NVDLA_CACC_calculator.scala 157:75:@4802.4]
  reg [31:0] _RAND_12;
  reg  _T_858; // @[NV_NVDLA_CACC_calculator.scala 159:74:@4804.4]
  reg [31:0] _RAND_13;
  reg  _T_861; // @[NV_NVDLA_CACC_calculator.scala 159:74:@4805.4]
  reg [31:0] _RAND_14;
  wire  _GEN_6; // @[NV_NVDLA_CACC_calculator.scala 167:34:@4810.4]
  wire  _GEN_7; // @[NV_NVDLA_CACC_calculator.scala 167:34:@4810.4]
  wire  _GEN_8; // @[NV_NVDLA_CACC_calculator.scala 167:34:@4815.4]
  wire  _GEN_9; // @[NV_NVDLA_CACC_calculator.scala 167:34:@4815.4]
  wire  _T_665_0; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4402.4]
  wire [33:0] _T_741_0; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4401.4]
  wire [33:0] _GEN_10; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4820.4]
  wire  _T_665_1; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4414.4]
  wire [33:0] _T_741_1; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4413.4]
  wire [33:0] _GEN_11; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4826.4]
  wire  _T_665_2; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4426.4]
  wire [33:0] _T_741_2; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4425.4]
  wire [33:0] _GEN_12; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4832.4]
  wire  _T_665_3; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4438.4]
  wire [33:0] _T_741_3; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4437.4]
  wire [33:0] _GEN_13; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4838.4]
  wire  _T_665_4; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4450.4]
  wire [33:0] _T_741_4; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4449.4]
  wire [33:0] _GEN_14; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4844.4]
  wire  _T_665_5; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4462.4]
  wire [33:0] _T_741_5; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4461.4]
  wire [33:0] _GEN_15; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4850.4]
  wire  _T_665_6; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4474.4]
  wire [33:0] _T_741_6; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4473.4]
  wire [33:0] _GEN_16; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4856.4]
  wire  _T_665_7; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4486.4]
  wire [33:0] _T_741_7; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4485.4]
  wire [33:0] _GEN_17; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4862.4]
  wire  _T_665_8; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4498.4]
  wire [33:0] _T_741_8; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4497.4]
  wire [33:0] _GEN_18; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4868.4]
  wire  _T_665_9; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4510.4]
  wire [33:0] _T_741_9; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4509.4]
  wire [33:0] _GEN_19; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4874.4]
  wire  _T_665_10; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4522.4]
  wire [33:0] _T_741_10; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4521.4]
  wire [33:0] _GEN_20; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4880.4]
  wire  _T_665_11; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4534.4]
  wire [33:0] _T_741_11; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4533.4]
  wire [33:0] _GEN_21; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4886.4]
  wire  _T_665_12; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4546.4]
  wire [33:0] _T_741_12; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4545.4]
  wire [33:0] _GEN_22; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4892.4]
  wire  _T_665_13; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4558.4]
  wire [33:0] _T_741_13; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4557.4]
  wire [33:0] _GEN_23; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4898.4]
  wire  _T_665_14; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4570.4]
  wire [33:0] _T_741_14; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4569.4]
  wire [33:0] _GEN_24; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4904.4]
  wire  _T_665_15; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4582.4]
  wire [33:0] _T_741_15; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4581.4]
  wire [33:0] _GEN_25; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4910.4]
  wire  _T_665_16; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4594.4]
  wire [33:0] _T_741_16; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4593.4]
  wire [33:0] _GEN_26; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4916.4]
  wire  _T_665_17; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4606.4]
  wire [33:0] _T_741_17; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4605.4]
  wire [33:0] _GEN_27; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4922.4]
  wire  _T_665_18; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4618.4]
  wire [33:0] _T_741_18; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4617.4]
  wire [33:0] _GEN_28; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4928.4]
  wire  _T_665_19; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4630.4]
  wire [33:0] _T_741_19; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4629.4]
  wire [33:0] _GEN_29; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4934.4]
  wire  _T_665_20; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4642.4]
  wire [33:0] _T_741_20; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4641.4]
  wire [33:0] _GEN_30; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4940.4]
  wire  _T_665_21; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4654.4]
  wire [33:0] _T_741_21; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4653.4]
  wire [33:0] _GEN_31; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4946.4]
  wire  _T_665_22; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4666.4]
  wire [33:0] _T_741_22; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4665.4]
  wire [33:0] _GEN_32; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4952.4]
  wire  _T_665_23; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4678.4]
  wire [33:0] _T_741_23; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4677.4]
  wire [33:0] _GEN_33; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4958.4]
  wire  _T_665_24; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4690.4]
  wire [33:0] _T_741_24; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4689.4]
  wire [33:0] _GEN_34; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4964.4]
  wire  _T_665_25; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4702.4]
  wire [33:0] _T_741_25; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4701.4]
  wire [33:0] _GEN_35; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4970.4]
  wire  _T_665_26; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4714.4]
  wire [33:0] _T_741_26; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4713.4]
  wire [33:0] _GEN_36; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4976.4]
  wire  _T_665_27; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4726.4]
  wire [33:0] _T_741_27; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4725.4]
  wire [33:0] _GEN_37; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4982.4]
  wire  _T_665_28; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4738.4]
  wire [33:0] _T_741_28; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4737.4]
  wire [33:0] _GEN_38; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4988.4]
  wire  _T_665_29; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4750.4]
  wire [33:0] _T_741_29; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4749.4]
  wire [33:0] _GEN_39; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4994.4]
  wire  _T_665_30; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4762.4]
  wire [33:0] _T_741_30; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4761.4]
  wire [33:0] _GEN_40; // @[NV_NVDLA_CACC_calculator.scala 180:31:@5000.4]
  wire  _T_665_31; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4774.4]
  wire [33:0] _T_741_31; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4773.4]
  wire [33:0] _GEN_41; // @[NV_NVDLA_CACC_calculator.scala 180:31:@5006.4]
  wire  _T_703_0; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4400.4]
  wire [31:0] _T_779_0; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4398.4]
  wire [31:0] _GEN_42; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5013.4]
  wire  _T_703_1; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4412.4]
  wire [31:0] _T_779_1; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4410.4]
  wire [31:0] _GEN_43; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5019.4]
  wire  _T_703_2; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4424.4]
  wire [31:0] _T_779_2; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4422.4]
  wire [31:0] _GEN_44; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5025.4]
  wire  _T_703_3; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4436.4]
  wire [31:0] _T_779_3; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4434.4]
  wire [31:0] _GEN_45; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5031.4]
  wire  _T_703_4; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4448.4]
  wire [31:0] _T_779_4; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4446.4]
  wire [31:0] _GEN_46; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5037.4]
  wire  _T_703_5; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4460.4]
  wire [31:0] _T_779_5; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4458.4]
  wire [31:0] _GEN_47; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5043.4]
  wire  _T_703_6; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4472.4]
  wire [31:0] _T_779_6; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4470.4]
  wire [31:0] _GEN_48; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5049.4]
  wire  _T_703_7; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4484.4]
  wire [31:0] _T_779_7; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4482.4]
  wire [31:0] _GEN_49; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5055.4]
  wire  _T_703_8; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4496.4]
  wire [31:0] _T_779_8; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4494.4]
  wire [31:0] _GEN_50; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5061.4]
  wire  _T_703_9; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4508.4]
  wire [31:0] _T_779_9; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4506.4]
  wire [31:0] _GEN_51; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5067.4]
  wire  _T_703_10; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4520.4]
  wire [31:0] _T_779_10; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4518.4]
  wire [31:0] _GEN_52; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5073.4]
  wire  _T_703_11; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4532.4]
  wire [31:0] _T_779_11; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4530.4]
  wire [31:0] _GEN_53; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5079.4]
  wire  _T_703_12; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4544.4]
  wire [31:0] _T_779_12; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4542.4]
  wire [31:0] _GEN_54; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5085.4]
  wire  _T_703_13; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4556.4]
  wire [31:0] _T_779_13; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4554.4]
  wire [31:0] _GEN_55; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5091.4]
  wire  _T_703_14; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4568.4]
  wire [31:0] _T_779_14; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4566.4]
  wire [31:0] _GEN_56; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5097.4]
  wire  _T_703_15; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4580.4]
  wire [31:0] _T_779_15; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4578.4]
  wire [31:0] _GEN_57; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5103.4]
  wire  _T_703_16; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4592.4]
  wire [31:0] _T_779_16; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4590.4]
  wire [31:0] _GEN_58; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5109.4]
  wire  _T_703_17; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4604.4]
  wire [31:0] _T_779_17; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4602.4]
  wire [31:0] _GEN_59; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5115.4]
  wire  _T_703_18; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4616.4]
  wire [31:0] _T_779_18; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4614.4]
  wire [31:0] _GEN_60; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5121.4]
  wire  _T_703_19; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4628.4]
  wire [31:0] _T_779_19; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4626.4]
  wire [31:0] _GEN_61; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5127.4]
  wire  _T_703_20; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4640.4]
  wire [31:0] _T_779_20; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4638.4]
  wire [31:0] _GEN_62; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5133.4]
  wire  _T_703_21; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4652.4]
  wire [31:0] _T_779_21; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4650.4]
  wire [31:0] _GEN_63; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5139.4]
  wire  _T_703_22; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4664.4]
  wire [31:0] _T_779_22; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4662.4]
  wire [31:0] _GEN_64; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5145.4]
  wire  _T_703_23; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4676.4]
  wire [31:0] _T_779_23; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4674.4]
  wire [31:0] _GEN_65; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5151.4]
  wire  _T_703_24; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4688.4]
  wire [31:0] _T_779_24; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4686.4]
  wire [31:0] _GEN_66; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5157.4]
  wire  _T_703_25; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4700.4]
  wire [31:0] _T_779_25; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4698.4]
  wire [31:0] _GEN_67; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5163.4]
  wire  _T_703_26; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4712.4]
  wire [31:0] _T_779_26; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4710.4]
  wire [31:0] _GEN_68; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5169.4]
  wire  _T_703_27; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4724.4]
  wire [31:0] _T_779_27; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4722.4]
  wire [31:0] _GEN_69; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5175.4]
  wire  _T_703_28; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4736.4]
  wire [31:0] _T_779_28; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4734.4]
  wire [31:0] _GEN_70; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5181.4]
  wire  _T_703_29; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4748.4]
  wire [31:0] _T_779_29; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4746.4]
  wire [31:0] _GEN_71; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5187.4]
  wire  _T_703_30; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4760.4]
  wire [31:0] _T_779_30; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4758.4]
  wire [31:0] _GEN_72; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5193.4]
  wire  _T_703_31; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4772.4]
  wire [31:0] _T_779_31; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4770.4]
  wire [31:0] _GEN_73; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5199.4]
  reg  _T_1004; // @[NV_NVDLA_CACC_calculator.scala 199:37:@5205.4]
  reg [31:0] _RAND_15;
  reg [5:0] _T_1006; // @[Reg.scala 11:16:@5208.4]
  reg [31:0] _RAND_16;
  wire [271:0] _T_1013; // @[NV_NVDLA_CACC_calculator.scala 201:44:@5219.4]
  wire [543:0] _T_1021; // @[NV_NVDLA_CACC_calculator.scala 201:44:@5227.4]
  wire [271:0] _T_1028; // @[NV_NVDLA_CACC_calculator.scala 201:44:@5234.4]
  wire [1087:0] _T_1037; // @[NV_NVDLA_CACC_calculator.scala 201:44:@5243.4]
  reg [1087:0] _T_1039; // @[Reg.scala 11:16:@5244.4]
  reg [1087:0] _RAND_17;
  reg [31:0] _T_1108_0; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_18;
  reg [31:0] _T_1108_1; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_19;
  reg [31:0] _T_1108_2; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_20;
  reg [31:0] _T_1108_3; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_21;
  reg [31:0] _T_1108_4; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_22;
  reg [31:0] _T_1108_5; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_23;
  reg [31:0] _T_1108_6; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_24;
  reg [31:0] _T_1108_7; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_25;
  reg [31:0] _T_1108_8; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_26;
  reg [31:0] _T_1108_9; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_27;
  reg [31:0] _T_1108_10; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_28;
  reg [31:0] _T_1108_11; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_29;
  reg [31:0] _T_1108_12; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_30;
  reg [31:0] _T_1108_13; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_31;
  reg [31:0] _T_1108_14; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_32;
  reg [31:0] _T_1108_15; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_33;
  reg [31:0] _T_1108_16; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_34;
  reg [31:0] _T_1108_17; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_35;
  reg [31:0] _T_1108_18; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_36;
  reg [31:0] _T_1108_19; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_37;
  reg [31:0] _T_1108_20; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_38;
  reg [31:0] _T_1108_21; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_39;
  reg [31:0] _T_1108_22; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_40;
  reg [31:0] _T_1108_23; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_41;
  reg [31:0] _T_1108_24; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_42;
  reg [31:0] _T_1108_25; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_43;
  reg [31:0] _T_1108_26; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_44;
  reg [31:0] _T_1108_27; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_45;
  reg [31:0] _T_1108_28; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_46;
  reg [31:0] _T_1108_29; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_47;
  reg [31:0] _T_1108_30; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_48;
  reg [31:0] _T_1108_31; // @[Reg.scala 11:16:@5249.4]
  reg [31:0] _RAND_49;
  reg  _T_1211; // @[NV_NVDLA_CACC_calculator.scala 205:28:@5316.4]
  reg [31:0] _RAND_50;
  reg  _T_1217; // @[Reg.scala 19:20:@5322.4]
  reg [31:0] _RAND_51;
  wire  _GEN_108; // @[Reg.scala 20:19:@5323.4]
  reg  _T_1220; // @[Reg.scala 19:20:@5326.4]
  reg [31:0] _RAND_52;
  wire  _GEN_109; // @[Reg.scala 20:19:@5327.4]
  reg  _T_1224; // @[NV_NVDLA_CACC_calculator.scala 212:33:@5332.4]
  reg [31:0] _RAND_53;
  reg  _T_1227; // @[NV_NVDLA_CACC_calculator.scala 213:33:@5333.4]
  reg [31:0] _RAND_54;
  reg  _T_1366_0; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_55;
  reg  _T_1366_1; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_56;
  reg  _T_1366_2; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_57;
  reg  _T_1366_3; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_58;
  reg  _T_1366_4; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_59;
  reg  _T_1366_5; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_60;
  reg  _T_1366_6; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_61;
  reg  _T_1366_7; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_62;
  reg  _T_1366_8; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_63;
  reg  _T_1366_9; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_64;
  reg  _T_1366_10; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_65;
  reg  _T_1366_11; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_66;
  reg  _T_1366_12; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_67;
  reg  _T_1366_13; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_68;
  reg  _T_1366_14; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_69;
  reg  _T_1366_15; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_70;
  reg  _T_1366_16; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_71;
  reg  _T_1366_17; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_72;
  reg  _T_1366_18; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_73;
  reg  _T_1366_19; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_74;
  reg  _T_1366_20; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_75;
  reg  _T_1366_21; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_76;
  reg  _T_1366_22; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_77;
  reg  _T_1366_23; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_78;
  reg  _T_1366_24; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_79;
  reg  _T_1366_25; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_80;
  reg  _T_1366_26; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_81;
  reg  _T_1366_27; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_82;
  reg  _T_1366_28; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_83;
  reg  _T_1366_29; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_84;
  reg  _T_1366_30; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_85;
  reg  _T_1366_31; // @[NV_NVDLA_CACC_calculator.scala 214:33:@5367.4]
  reg [31:0] _RAND_86;
  reg  _T_1469; // @[NV_NVDLA_CACC_calculator.scala 215:33:@5368.4]
  reg [31:0] _RAND_87;
  wire  _T_1470; // @[NV_NVDLA_CACC_calculator.scala 218:42:@5369.4]
  wire  _T_1471; // @[NV_NVDLA_CACC_calculator.scala 219:44:@5370.4]
  wire  _T_1472; // @[NV_NVDLA_CACC_calculator.scala 219:42:@5371.4]
  wire  _T_1473; // @[NV_NVDLA_CACC_calculator.scala 219:57:@5372.4]
  wire  _GEN_110; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_0; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4399.4]
  wire  _GEN_111; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_1; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4411.4]
  wire  _GEN_112; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_2; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4423.4]
  wire  _GEN_113; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_3; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4435.4]
  wire  _GEN_114; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_4; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4447.4]
  wire  _GEN_115; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_5; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4459.4]
  wire  _GEN_116; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_6; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4471.4]
  wire  _GEN_117; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_7; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4483.4]
  wire  _GEN_118; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_8; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4495.4]
  wire  _GEN_119; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_9; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4507.4]
  wire  _GEN_120; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_10; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4519.4]
  wire  _GEN_121; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_11; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4531.4]
  wire  _GEN_122; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_12; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4543.4]
  wire  _GEN_123; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_13; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4555.4]
  wire  _GEN_124; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_14; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4567.4]
  wire  _GEN_125; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_15; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4579.4]
  wire  _GEN_126; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_16; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4591.4]
  wire  _GEN_127; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_17; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4603.4]
  wire  _GEN_128; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_18; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4615.4]
  wire  _GEN_129; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_19; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4627.4]
  wire  _GEN_130; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_20; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4639.4]
  wire  _GEN_131; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_21; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4651.4]
  wire  _GEN_132; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_22; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4663.4]
  wire  _GEN_133; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_23; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4675.4]
  wire  _GEN_134; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_24; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4687.4]
  wire  _GEN_135; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_25; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4699.4]
  wire  _GEN_136; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_26; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4711.4]
  wire  _GEN_137; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_27; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4723.4]
  wire  _GEN_138; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_28; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4735.4]
  wire  _GEN_139; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_29; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4747.4]
  wire  _GEN_140; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_30; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4759.4]
  wire  _GEN_141; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire  _T_627_31; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4771.4]
  wire  _GEN_142; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  wire [1:0] _T_1512; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5443.4]
  wire [1:0] _GEN_144; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5444.4]
  wire [2:0] _T_1513; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5444.4]
  wire [2:0] _GEN_145; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5445.4]
  wire [3:0] _T_1514; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5445.4]
  wire [3:0] _GEN_146; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5446.4]
  wire [4:0] _T_1515; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5446.4]
  wire [4:0] _GEN_147; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5447.4]
  wire [5:0] _T_1516; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5447.4]
  wire [5:0] _GEN_148; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5448.4]
  wire [6:0] _T_1517; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5448.4]
  wire [6:0] _GEN_149; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5449.4]
  wire [7:0] _T_1518; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5449.4]
  wire [7:0] _GEN_150; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5450.4]
  wire [8:0] _T_1519; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5450.4]
  wire [8:0] _GEN_151; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5451.4]
  wire [9:0] _T_1520; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5451.4]
  wire [9:0] _GEN_152; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5452.4]
  wire [10:0] _T_1521; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5452.4]
  wire [10:0] _GEN_153; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5453.4]
  wire [11:0] _T_1522; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5453.4]
  wire [11:0] _GEN_154; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5454.4]
  wire [12:0] _T_1523; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5454.4]
  wire [12:0] _GEN_155; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5455.4]
  wire [13:0] _T_1524; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5455.4]
  wire [13:0] _GEN_156; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5456.4]
  wire [14:0] _T_1525; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5456.4]
  wire [14:0] _GEN_157; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5457.4]
  wire [15:0] _T_1526; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5457.4]
  wire [15:0] _GEN_158; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5458.4]
  wire [16:0] _T_1527; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5458.4]
  wire [16:0] _GEN_159; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5459.4]
  wire [17:0] _T_1528; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5459.4]
  wire [17:0] _GEN_160; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5460.4]
  wire [18:0] _T_1529; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5460.4]
  wire [18:0] _GEN_161; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5461.4]
  wire [19:0] _T_1530; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5461.4]
  wire [19:0] _GEN_162; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5462.4]
  wire [20:0] _T_1531; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5462.4]
  wire [20:0] _GEN_163; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5463.4]
  wire [21:0] _T_1532; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5463.4]
  wire [21:0] _GEN_164; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5464.4]
  wire [22:0] _T_1533; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5464.4]
  wire [22:0] _GEN_165; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5465.4]
  wire [23:0] _T_1534; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5465.4]
  wire [23:0] _GEN_166; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5466.4]
  wire [24:0] _T_1535; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5466.4]
  wire [24:0] _GEN_167; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5467.4]
  wire [25:0] _T_1536; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5467.4]
  wire [25:0] _GEN_168; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5468.4]
  wire [26:0] _T_1537; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5468.4]
  wire [26:0] _GEN_169; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5469.4]
  wire [27:0] _T_1538; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5469.4]
  wire [27:0] _GEN_170; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5470.4]
  wire [28:0] _T_1539; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5470.4]
  wire [28:0] _GEN_171; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5471.4]
  wire [29:0] _T_1540; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5471.4]
  wire [29:0] _GEN_172; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5472.4]
  wire [30:0] _T_1541; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5472.4]
  wire [30:0] _GEN_173; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5473.4]
  wire [31:0] _T_1542; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5473.4]
  reg [31:0] _T_1545; // @[NV_NVDLA_CACC_calculator.scala 229:28:@5474.4]
  reg [31:0] _RAND_88;
  wire [32:0] _T_1546; // @[NV_NVDLA_CACC_calculator.scala 230:36:@5475.4]
  wire [31:0] _T_1547; // @[NV_NVDLA_CACC_calculator.scala 230:47:@5476.4]
  wire  _T_1549; // @[NV_NVDLA_CACC_calculator.scala 231:43:@5478.4]
  wire [55:0] _T_1551; // @[Cat.scala 30:58:@5479.4]
  wire [31:0] _T_1557; // @[NV_NVDLA_CACC_calculator.scala 233:26:@5481.4]
  wire [55:0] _T_1558; // @[NV_NVDLA_CACC_calculator.scala 232:26:@5482.4]
  wire  _T_1560; // @[NV_NVDLA_CACC_calculator.scala 234:49:@5483.4]
  wire  _T_1561; // @[NV_NVDLA_CACC_calculator.scala 234:54:@5484.4]
  wire  _T_1562; // @[NV_NVDLA_CACC_calculator.scala 234:37:@5485.4]
  wire [55:0] _GEN_143; // @[NV_NVDLA_CACC_calculator.scala 235:21:@5486.4]
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4295.4]
    .reset(NV_NVDLA_CACC_CALC_int8_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_1 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4298.4]
    .reset(NV_NVDLA_CACC_CALC_int8_1_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_1_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_1_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_1_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_1_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_1_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_2 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4301.4]
    .reset(NV_NVDLA_CACC_CALC_int8_2_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_2_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_2_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_2_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_2_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_2_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_3 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4304.4]
    .reset(NV_NVDLA_CACC_CALC_int8_3_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_3_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_3_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_3_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_3_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_3_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_4 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4307.4]
    .reset(NV_NVDLA_CACC_CALC_int8_4_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_4_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_4_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_4_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_4_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_4_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_5 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4310.4]
    .reset(NV_NVDLA_CACC_CALC_int8_5_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_5_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_5_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_5_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_5_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_5_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_6 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4313.4]
    .reset(NV_NVDLA_CACC_CALC_int8_6_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_6_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_6_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_6_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_6_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_6_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_7 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4316.4]
    .reset(NV_NVDLA_CACC_CALC_int8_7_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_7_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_7_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_7_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_7_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_7_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_8 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4319.4]
    .reset(NV_NVDLA_CACC_CALC_int8_8_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_8_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_8_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_8_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_8_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_8_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_9 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4322.4]
    .reset(NV_NVDLA_CACC_CALC_int8_9_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_9_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_9_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_9_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_9_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_9_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_10 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4325.4]
    .reset(NV_NVDLA_CACC_CALC_int8_10_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_10_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_10_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_10_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_10_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_10_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_11 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4328.4]
    .reset(NV_NVDLA_CACC_CALC_int8_11_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_11_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_11_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_11_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_11_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_11_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_12 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4331.4]
    .reset(NV_NVDLA_CACC_CALC_int8_12_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_12_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_12_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_12_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_12_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_12_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_13 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4334.4]
    .reset(NV_NVDLA_CACC_CALC_int8_13_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_13_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_13_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_13_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_13_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_13_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_14 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4337.4]
    .reset(NV_NVDLA_CACC_CALC_int8_14_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_14_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_14_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_14_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_14_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_14_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_15 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4340.4]
    .reset(NV_NVDLA_CACC_CALC_int8_15_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_15_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_15_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_15_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_15_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_15_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_16 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4343.4]
    .reset(NV_NVDLA_CACC_CALC_int8_16_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_16_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_16_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_16_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_16_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_16_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_17 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4346.4]
    .reset(NV_NVDLA_CACC_CALC_int8_17_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_17_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_17_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_17_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_17_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_17_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_18 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4349.4]
    .reset(NV_NVDLA_CACC_CALC_int8_18_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_18_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_18_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_18_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_18_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_18_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_19 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4352.4]
    .reset(NV_NVDLA_CACC_CALC_int8_19_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_19_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_19_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_19_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_19_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_19_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_20 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4355.4]
    .reset(NV_NVDLA_CACC_CALC_int8_20_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_20_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_20_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_20_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_20_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_20_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_21 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4358.4]
    .reset(NV_NVDLA_CACC_CALC_int8_21_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_21_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_21_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_21_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_21_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_21_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_22 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4361.4]
    .reset(NV_NVDLA_CACC_CALC_int8_22_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_22_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_22_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_22_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_22_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_22_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_23 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4364.4]
    .reset(NV_NVDLA_CACC_CALC_int8_23_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_23_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_23_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_23_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_23_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_23_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_24 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4367.4]
    .reset(NV_NVDLA_CACC_CALC_int8_24_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_24_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_24_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_24_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_24_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_24_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_25 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4370.4]
    .reset(NV_NVDLA_CACC_CALC_int8_25_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_25_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_25_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_25_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_25_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_25_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_26 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4373.4]
    .reset(NV_NVDLA_CACC_CALC_int8_26_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_26_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_26_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_26_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_26_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_26_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_27 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4376.4]
    .reset(NV_NVDLA_CACC_CALC_int8_27_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_27_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_27_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_27_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_27_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_27_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_28 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4379.4]
    .reset(NV_NVDLA_CACC_CALC_int8_28_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_28_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_28_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_28_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_28_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_28_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_29 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4382.4]
    .reset(NV_NVDLA_CACC_CALC_int8_29_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_29_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_29_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_29_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_29_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_29_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_30 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4385.4]
    .reset(NV_NVDLA_CACC_CALC_int8_30_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_30_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_30_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_30_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_30_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_30_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_31 ( // @[NV_NVDLA_CACC_calculator.scala 112:57:@4388.4]
    .reset(NV_NVDLA_CACC_CALC_int8_31_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_31_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_31_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_31_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_31_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_31_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid)
  );
  assign _GEN_0 = io_accu_ctrl_pd_valid ? io_accu_ctrl_pd_bits : _T_357; // @[Reg.scala 20:19:@4037.4]
  assign _T_358 = io_mac_b2accu_pvld | io_mac_a2accu_pvld; // @[NV_NVDLA_CACC_calculator.scala 75:45:@4040.4]
  assign _T_367 = _T_357[5:0]; // @[NV_NVDLA_CACC_calculator.scala 80:36:@4053.4]
  assign _T_369 = _T_357[9]; // @[NV_NVDLA_CACC_calculator.scala 82:42:@4055.4]
  assign _T_370 = _T_357[10]; // @[NV_NVDLA_CACC_calculator.scala 83:43:@4056.4]
  assign _T_371 = _T_357[11]; // @[NV_NVDLA_CACC_calculator.scala 84:41:@4057.4]
  assign _T_449 = io_mac_a2accu_mask_0 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4125.4]
  assign _T_450 = io_mac_a2accu_mask_1 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4126.4]
  assign _T_451 = io_mac_a2accu_mask_2 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4127.4]
  assign _T_452 = io_mac_a2accu_mask_3 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4128.4]
  assign _T_453 = io_mac_a2accu_mask_4 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4129.4]
  assign _T_454 = io_mac_a2accu_mask_5 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4130.4]
  assign _T_455 = io_mac_a2accu_mask_6 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4131.4]
  assign _T_456 = io_mac_a2accu_mask_7 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4132.4]
  assign _T_457 = io_mac_a2accu_mask_8 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4133.4]
  assign _T_458 = io_mac_a2accu_mask_9 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4134.4]
  assign _T_459 = io_mac_a2accu_mask_10 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4135.4]
  assign _T_460 = io_mac_a2accu_mask_11 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4136.4]
  assign _T_461 = io_mac_a2accu_mask_12 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4137.4]
  assign _T_462 = io_mac_a2accu_mask_13 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4138.4]
  assign _T_463 = io_mac_a2accu_mask_14 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4139.4]
  assign _T_464 = io_mac_a2accu_mask_15 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4140.4]
  assign _T_465 = io_mac_b2accu_mask_0 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4141.4]
  assign _T_466 = io_mac_b2accu_mask_1 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4142.4]
  assign _T_467 = io_mac_b2accu_mask_2 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4143.4]
  assign _T_468 = io_mac_b2accu_mask_3 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4144.4]
  assign _T_469 = io_mac_b2accu_mask_4 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4145.4]
  assign _T_470 = io_mac_b2accu_mask_5 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4146.4]
  assign _T_471 = io_mac_b2accu_mask_6 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4147.4]
  assign _T_472 = io_mac_b2accu_mask_7 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4148.4]
  assign _T_473 = io_mac_b2accu_mask_8 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4149.4]
  assign _T_474 = io_mac_b2accu_mask_9 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4150.4]
  assign _T_475 = io_mac_b2accu_mask_10 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4151.4]
  assign _T_476 = io_mac_b2accu_mask_11 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4152.4]
  assign _T_477 = io_mac_b2accu_mask_12 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4153.4]
  assign _T_478 = io_mac_b2accu_mask_13 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4154.4]
  assign _T_479 = io_mac_b2accu_mask_14 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4155.4]
  assign _T_480 = io_mac_b2accu_mask_15 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 96:81:@4156.4]
  assign _T_621 = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 98:37:@4287.4]
  assign _T_622 = ~ _T_370; // @[NV_NVDLA_CACC_calculator.scala 99:36:@4288.4]
  assign _T_623 = _T_366 & _T_622; // @[NV_NVDLA_CACC_calculator.scala 99:33:@4289.4]
  assign _GEN_4 = _T_366 ? _T_367 : _T_834; // @[NV_NVDLA_CACC_calculator.scala 145:30:@4789.4]
  assign _GEN_5 = _T_818 ? _T_834 : _T_837; // @[NV_NVDLA_CACC_calculator.scala 145:30:@4794.4]
  assign _GEN_6 = _T_621 ? _T_369 : _T_850; // @[NV_NVDLA_CACC_calculator.scala 167:34:@4810.4]
  assign _GEN_7 = _T_621 ? _T_371 : _T_858; // @[NV_NVDLA_CACC_calculator.scala 167:34:@4810.4]
  assign _GEN_8 = _T_842 ? _T_850 : _T_853; // @[NV_NVDLA_CACC_calculator.scala 167:34:@4815.4]
  assign _GEN_9 = _T_842 ? _T_858 : _T_861; // @[NV_NVDLA_CACC_calculator.scala 167:34:@4815.4]
  assign _T_665_0 = NV_NVDLA_CACC_CALC_int8_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4402.4]
  assign _T_741_0 = NV_NVDLA_CACC_CALC_int8_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4401.4]
  assign _GEN_10 = _T_665_0 ? _T_741_0 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4820.4]
  assign _T_665_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4414.4]
  assign _T_741_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4413.4]
  assign _GEN_11 = _T_665_1 ? _T_741_1 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4826.4]
  assign _T_665_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4426.4]
  assign _T_741_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4425.4]
  assign _GEN_12 = _T_665_2 ? _T_741_2 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4832.4]
  assign _T_665_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4438.4]
  assign _T_741_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4437.4]
  assign _GEN_13 = _T_665_3 ? _T_741_3 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4838.4]
  assign _T_665_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4450.4]
  assign _T_741_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4449.4]
  assign _GEN_14 = _T_665_4 ? _T_741_4 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4844.4]
  assign _T_665_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4462.4]
  assign _T_741_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4461.4]
  assign _GEN_15 = _T_665_5 ? _T_741_5 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4850.4]
  assign _T_665_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4474.4]
  assign _T_741_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4473.4]
  assign _GEN_16 = _T_665_6 ? _T_741_6 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4856.4]
  assign _T_665_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4486.4]
  assign _T_741_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4485.4]
  assign _GEN_17 = _T_665_7 ? _T_741_7 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4862.4]
  assign _T_665_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4498.4]
  assign _T_741_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4497.4]
  assign _GEN_18 = _T_665_8 ? _T_741_8 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4868.4]
  assign _T_665_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4510.4]
  assign _T_741_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4509.4]
  assign _GEN_19 = _T_665_9 ? _T_741_9 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4874.4]
  assign _T_665_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4522.4]
  assign _T_741_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4521.4]
  assign _GEN_20 = _T_665_10 ? _T_741_10 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4880.4]
  assign _T_665_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4534.4]
  assign _T_741_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4533.4]
  assign _GEN_21 = _T_665_11 ? _T_741_11 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4886.4]
  assign _T_665_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4546.4]
  assign _T_741_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4545.4]
  assign _GEN_22 = _T_665_12 ? _T_741_12 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4892.4]
  assign _T_665_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4558.4]
  assign _T_741_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4557.4]
  assign _GEN_23 = _T_665_13 ? _T_741_13 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4898.4]
  assign _T_665_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4570.4]
  assign _T_741_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4569.4]
  assign _GEN_24 = _T_665_14 ? _T_741_14 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4904.4]
  assign _T_665_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4582.4]
  assign _T_741_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4581.4]
  assign _GEN_25 = _T_665_15 ? _T_741_15 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4910.4]
  assign _T_665_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4594.4]
  assign _T_741_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4593.4]
  assign _GEN_26 = _T_665_16 ? _T_741_16 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4916.4]
  assign _T_665_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4606.4]
  assign _T_741_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4605.4]
  assign _GEN_27 = _T_665_17 ? _T_741_17 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4922.4]
  assign _T_665_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4618.4]
  assign _T_741_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4617.4]
  assign _GEN_28 = _T_665_18 ? _T_741_18 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4928.4]
  assign _T_665_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4630.4]
  assign _T_741_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4629.4]
  assign _GEN_29 = _T_665_19 ? _T_741_19 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4934.4]
  assign _T_665_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4642.4]
  assign _T_741_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4641.4]
  assign _GEN_30 = _T_665_20 ? _T_741_20 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4940.4]
  assign _T_665_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4654.4]
  assign _T_741_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4653.4]
  assign _GEN_31 = _T_665_21 ? _T_741_21 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4946.4]
  assign _T_665_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4666.4]
  assign _T_741_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4665.4]
  assign _GEN_32 = _T_665_22 ? _T_741_22 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4952.4]
  assign _T_665_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4678.4]
  assign _T_741_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4677.4]
  assign _GEN_33 = _T_665_23 ? _T_741_23 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4958.4]
  assign _T_665_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4690.4]
  assign _T_741_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4689.4]
  assign _GEN_34 = _T_665_24 ? _T_741_24 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4964.4]
  assign _T_665_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4702.4]
  assign _T_741_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4701.4]
  assign _GEN_35 = _T_665_25 ? _T_741_25 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4970.4]
  assign _T_665_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4714.4]
  assign _T_741_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4713.4]
  assign _GEN_36 = _T_665_26 ? _T_741_26 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4976.4]
  assign _T_665_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4726.4]
  assign _T_741_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4725.4]
  assign _GEN_37 = _T_665_27 ? _T_741_27 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4982.4]
  assign _T_665_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4738.4]
  assign _T_741_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4737.4]
  assign _GEN_38 = _T_665_28 ? _T_741_28 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4988.4]
  assign _T_665_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4750.4]
  assign _T_741_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4749.4]
  assign _GEN_39 = _T_665_29 ? _T_741_29 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@4994.4]
  assign _T_665_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4762.4]
  assign _T_741_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4761.4]
  assign _GEN_40 = _T_665_30 ? _T_741_30 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@5000.4]
  assign _T_665_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4291.4 NV_NVDLA_CACC_calculator.scala 126:26:@4774.4]
  assign _T_741_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 109:29:@4293.4 NV_NVDLA_CACC_calculator.scala 125:26:@4773.4]
  assign _GEN_41 = _T_665_31 ? _T_741_31 : 34'h0; // @[NV_NVDLA_CACC_calculator.scala 180:31:@5006.4]
  assign _T_703_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4400.4]
  assign _T_779_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4398.4]
  assign _GEN_42 = _T_703_0 ? _T_779_0 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5013.4]
  assign _T_703_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4412.4]
  assign _T_779_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4410.4]
  assign _GEN_43 = _T_703_1 ? _T_779_1 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5019.4]
  assign _T_703_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4424.4]
  assign _T_779_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4422.4]
  assign _GEN_44 = _T_703_2 ? _T_779_2 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5025.4]
  assign _T_703_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4436.4]
  assign _T_779_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4434.4]
  assign _GEN_45 = _T_703_3 ? _T_779_3 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5031.4]
  assign _T_703_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4448.4]
  assign _T_779_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4446.4]
  assign _GEN_46 = _T_703_4 ? _T_779_4 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5037.4]
  assign _T_703_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4460.4]
  assign _T_779_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4458.4]
  assign _GEN_47 = _T_703_5 ? _T_779_5 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5043.4]
  assign _T_703_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4472.4]
  assign _T_779_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4470.4]
  assign _GEN_48 = _T_703_6 ? _T_779_6 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5049.4]
  assign _T_703_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4484.4]
  assign _T_779_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4482.4]
  assign _GEN_49 = _T_703_7 ? _T_779_7 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5055.4]
  assign _T_703_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4496.4]
  assign _T_779_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4494.4]
  assign _GEN_50 = _T_703_8 ? _T_779_8 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5061.4]
  assign _T_703_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4508.4]
  assign _T_779_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4506.4]
  assign _GEN_51 = _T_703_9 ? _T_779_9 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5067.4]
  assign _T_703_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4520.4]
  assign _T_779_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4518.4]
  assign _GEN_52 = _T_703_10 ? _T_779_10 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5073.4]
  assign _T_703_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4532.4]
  assign _T_779_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4530.4]
  assign _GEN_53 = _T_703_11 ? _T_779_11 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5079.4]
  assign _T_703_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4544.4]
  assign _T_779_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4542.4]
  assign _GEN_54 = _T_703_12 ? _T_779_12 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5085.4]
  assign _T_703_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4556.4]
  assign _T_779_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4554.4]
  assign _GEN_55 = _T_703_13 ? _T_779_13 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5091.4]
  assign _T_703_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4568.4]
  assign _T_779_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4566.4]
  assign _GEN_56 = _T_703_14 ? _T_779_14 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5097.4]
  assign _T_703_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4580.4]
  assign _T_779_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4578.4]
  assign _GEN_57 = _T_703_15 ? _T_779_15 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5103.4]
  assign _T_703_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4592.4]
  assign _T_779_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4590.4]
  assign _GEN_58 = _T_703_16 ? _T_779_16 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5109.4]
  assign _T_703_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4604.4]
  assign _T_779_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4602.4]
  assign _GEN_59 = _T_703_17 ? _T_779_17 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5115.4]
  assign _T_703_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4616.4]
  assign _T_779_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4614.4]
  assign _GEN_60 = _T_703_18 ? _T_779_18 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5121.4]
  assign _T_703_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4628.4]
  assign _T_779_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4626.4]
  assign _GEN_61 = _T_703_19 ? _T_779_19 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5127.4]
  assign _T_703_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4640.4]
  assign _T_779_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4638.4]
  assign _GEN_62 = _T_703_20 ? _T_779_20 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5133.4]
  assign _T_703_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4652.4]
  assign _T_779_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4650.4]
  assign _GEN_63 = _T_703_21 ? _T_779_21 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5139.4]
  assign _T_703_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4664.4]
  assign _T_779_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4662.4]
  assign _GEN_64 = _T_703_22 ? _T_779_22 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5145.4]
  assign _T_703_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4676.4]
  assign _T_779_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4674.4]
  assign _GEN_65 = _T_703_23 ? _T_779_23 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5151.4]
  assign _T_703_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4688.4]
  assign _T_779_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4686.4]
  assign _GEN_66 = _T_703_24 ? _T_779_24 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5157.4]
  assign _T_703_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4700.4]
  assign _T_779_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4698.4]
  assign _GEN_67 = _T_703_25 ? _T_779_25 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5163.4]
  assign _T_703_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4712.4]
  assign _T_779_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4710.4]
  assign _GEN_68 = _T_703_26 ? _T_779_26 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5169.4]
  assign _T_703_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4724.4]
  assign _T_779_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4722.4]
  assign _GEN_69 = _T_703_27 ? _T_779_27 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5175.4]
  assign _T_703_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4736.4]
  assign _T_779_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4734.4]
  assign _GEN_70 = _T_703_28 ? _T_779_28 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5181.4]
  assign _T_703_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4748.4]
  assign _T_779_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4746.4]
  assign _GEN_71 = _T_703_29 ? _T_779_29 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5187.4]
  assign _T_703_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4760.4]
  assign _T_779_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4758.4]
  assign _GEN_72 = _T_703_30 ? _T_779_30 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5193.4]
  assign _T_703_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4292.4 NV_NVDLA_CACC_calculator.scala 124:26:@4772.4]
  assign _T_779_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:29:@4294.4 NV_NVDLA_CACC_calculator.scala 122:26:@4770.4]
  assign _GEN_73 = _T_703_31 ? _T_779_31 : 32'h0; // @[NV_NVDLA_CACC_calculator.scala 189:31:@5199.4]
  assign _T_1013 = {_GEN_17,_GEN_16,_GEN_15,_GEN_14,_GEN_13,_GEN_12,_GEN_11,_GEN_10}; // @[NV_NVDLA_CACC_calculator.scala 201:44:@5219.4]
  assign _T_1021 = {_GEN_25,_GEN_24,_GEN_23,_GEN_22,_GEN_21,_GEN_20,_GEN_19,_GEN_18,_T_1013}; // @[NV_NVDLA_CACC_calculator.scala 201:44:@5227.4]
  assign _T_1028 = {_GEN_33,_GEN_32,_GEN_31,_GEN_30,_GEN_29,_GEN_28,_GEN_27,_GEN_26}; // @[NV_NVDLA_CACC_calculator.scala 201:44:@5234.4]
  assign _T_1037 = {_GEN_41,_GEN_40,_GEN_39,_GEN_38,_GEN_37,_GEN_36,_GEN_35,_GEN_34,_T_1028,_T_1021}; // @[NV_NVDLA_CACC_calculator.scala 201:44:@5243.4]
  assign _GEN_108 = _T_845 ? _T_853 : _T_1217; // @[Reg.scala 20:19:@5323.4]
  assign _GEN_109 = _T_845 ? _T_861 : _T_1220; // @[Reg.scala 20:19:@5327.4]
  assign _T_1470 = _T_861 & _T_853; // @[NV_NVDLA_CACC_calculator.scala 218:42:@5369.4]
  assign _T_1471 = ~ _T_1470; // @[NV_NVDLA_CACC_calculator.scala 219:44:@5370.4]
  assign _T_1472 = _T_845 & _T_1471; // @[NV_NVDLA_CACC_calculator.scala 219:42:@5371.4]
  assign _T_1473 = _T_1472 & _T_1227; // @[NV_NVDLA_CACC_calculator.scala 219:57:@5372.4]
  assign _GEN_110 = _T_845 ? _T_1470 : _T_1227; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4399.4]
  assign _GEN_111 = _T_845 ? _T_627_0 : _T_1366_0; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4411.4]
  assign _GEN_112 = _T_845 ? _T_627_1 : _T_1366_1; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4423.4]
  assign _GEN_113 = _T_845 ? _T_627_2 : _T_1366_2; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4435.4]
  assign _GEN_114 = _T_845 ? _T_627_3 : _T_1366_3; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4447.4]
  assign _GEN_115 = _T_845 ? _T_627_4 : _T_1366_4; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4459.4]
  assign _GEN_116 = _T_845 ? _T_627_5 : _T_1366_5; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4471.4]
  assign _GEN_117 = _T_845 ? _T_627_6 : _T_1366_6; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4483.4]
  assign _GEN_118 = _T_845 ? _T_627_7 : _T_1366_7; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4495.4]
  assign _GEN_119 = _T_845 ? _T_627_8 : _T_1366_8; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4507.4]
  assign _GEN_120 = _T_845 ? _T_627_9 : _T_1366_9; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4519.4]
  assign _GEN_121 = _T_845 ? _T_627_10 : _T_1366_10; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4531.4]
  assign _GEN_122 = _T_845 ? _T_627_11 : _T_1366_11; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4543.4]
  assign _GEN_123 = _T_845 ? _T_627_12 : _T_1366_12; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4555.4]
  assign _GEN_124 = _T_845 ? _T_627_13 : _T_1366_13; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4567.4]
  assign _GEN_125 = _T_845 ? _T_627_14 : _T_1366_14; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4579.4]
  assign _GEN_126 = _T_845 ? _T_627_15 : _T_1366_15; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4591.4]
  assign _GEN_127 = _T_845 ? _T_627_16 : _T_1366_16; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4603.4]
  assign _GEN_128 = _T_845 ? _T_627_17 : _T_1366_17; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4615.4]
  assign _GEN_129 = _T_845 ? _T_627_18 : _T_1366_18; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4627.4]
  assign _GEN_130 = _T_845 ? _T_627_19 : _T_1366_19; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4639.4]
  assign _GEN_131 = _T_845 ? _T_627_20 : _T_1366_20; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4651.4]
  assign _GEN_132 = _T_845 ? _T_627_21 : _T_1366_21; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4663.4]
  assign _GEN_133 = _T_845 ? _T_627_22 : _T_1366_22; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4675.4]
  assign _GEN_134 = _T_845 ? _T_627_23 : _T_1366_23; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4687.4]
  assign _GEN_135 = _T_845 ? _T_627_24 : _T_1366_24; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4699.4]
  assign _GEN_136 = _T_845 ? _T_627_25 : _T_1366_25; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4711.4]
  assign _GEN_137 = _T_845 ? _T_627_26 : _T_1366_26; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4723.4]
  assign _GEN_138 = _T_845 ? _T_627_27 : _T_1366_27; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4735.4]
  assign _GEN_139 = _T_845 ? _T_627_28 : _T_1366_28; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4747.4]
  assign _GEN_140 = _T_845 ? _T_627_29 : _T_1366_29; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4759.4]
  assign _GEN_141 = _T_845 ? _T_627_30 : _T_1366_30; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_627_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4290.4 NV_NVDLA_CACC_calculator.scala 123:26:@4771.4]
  assign _GEN_142 = _T_845 ? _T_627_31 : _T_1366_31; // @[NV_NVDLA_CACC_calculator.scala 222:29:@5374.4]
  assign _T_1512 = _T_1366_0 + _T_1366_1; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5443.4]
  assign _GEN_144 = {{1'd0}, _T_1366_2}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5444.4]
  assign _T_1513 = _T_1512 + _GEN_144; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5444.4]
  assign _GEN_145 = {{2'd0}, _T_1366_3}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5445.4]
  assign _T_1514 = _T_1513 + _GEN_145; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5445.4]
  assign _GEN_146 = {{3'd0}, _T_1366_4}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5446.4]
  assign _T_1515 = _T_1514 + _GEN_146; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5446.4]
  assign _GEN_147 = {{4'd0}, _T_1366_5}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5447.4]
  assign _T_1516 = _T_1515 + _GEN_147; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5447.4]
  assign _GEN_148 = {{5'd0}, _T_1366_6}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5448.4]
  assign _T_1517 = _T_1516 + _GEN_148; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5448.4]
  assign _GEN_149 = {{6'd0}, _T_1366_7}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5449.4]
  assign _T_1518 = _T_1517 + _GEN_149; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5449.4]
  assign _GEN_150 = {{7'd0}, _T_1366_8}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5450.4]
  assign _T_1519 = _T_1518 + _GEN_150; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5450.4]
  assign _GEN_151 = {{8'd0}, _T_1366_9}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5451.4]
  assign _T_1520 = _T_1519 + _GEN_151; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5451.4]
  assign _GEN_152 = {{9'd0}, _T_1366_10}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5452.4]
  assign _T_1521 = _T_1520 + _GEN_152; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5452.4]
  assign _GEN_153 = {{10'd0}, _T_1366_11}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5453.4]
  assign _T_1522 = _T_1521 + _GEN_153; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5453.4]
  assign _GEN_154 = {{11'd0}, _T_1366_12}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5454.4]
  assign _T_1523 = _T_1522 + _GEN_154; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5454.4]
  assign _GEN_155 = {{12'd0}, _T_1366_13}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5455.4]
  assign _T_1524 = _T_1523 + _GEN_155; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5455.4]
  assign _GEN_156 = {{13'd0}, _T_1366_14}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5456.4]
  assign _T_1525 = _T_1524 + _GEN_156; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5456.4]
  assign _GEN_157 = {{14'd0}, _T_1366_15}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5457.4]
  assign _T_1526 = _T_1525 + _GEN_157; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5457.4]
  assign _GEN_158 = {{15'd0}, _T_1366_16}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5458.4]
  assign _T_1527 = _T_1526 + _GEN_158; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5458.4]
  assign _GEN_159 = {{16'd0}, _T_1366_17}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5459.4]
  assign _T_1528 = _T_1527 + _GEN_159; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5459.4]
  assign _GEN_160 = {{17'd0}, _T_1366_18}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5460.4]
  assign _T_1529 = _T_1528 + _GEN_160; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5460.4]
  assign _GEN_161 = {{18'd0}, _T_1366_19}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5461.4]
  assign _T_1530 = _T_1529 + _GEN_161; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5461.4]
  assign _GEN_162 = {{19'd0}, _T_1366_20}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5462.4]
  assign _T_1531 = _T_1530 + _GEN_162; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5462.4]
  assign _GEN_163 = {{20'd0}, _T_1366_21}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5463.4]
  assign _T_1532 = _T_1531 + _GEN_163; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5463.4]
  assign _GEN_164 = {{21'd0}, _T_1366_22}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5464.4]
  assign _T_1533 = _T_1532 + _GEN_164; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5464.4]
  assign _GEN_165 = {{22'd0}, _T_1366_23}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5465.4]
  assign _T_1534 = _T_1533 + _GEN_165; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5465.4]
  assign _GEN_166 = {{23'd0}, _T_1366_24}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5466.4]
  assign _T_1535 = _T_1534 + _GEN_166; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5466.4]
  assign _GEN_167 = {{24'd0}, _T_1366_25}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5467.4]
  assign _T_1536 = _T_1535 + _GEN_167; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5467.4]
  assign _GEN_168 = {{25'd0}, _T_1366_26}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5468.4]
  assign _T_1537 = _T_1536 + _GEN_168; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5468.4]
  assign _GEN_169 = {{26'd0}, _T_1366_27}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5469.4]
  assign _T_1538 = _T_1537 + _GEN_169; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5469.4]
  assign _GEN_170 = {{27'd0}, _T_1366_28}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5470.4]
  assign _T_1539 = _T_1538 + _GEN_170; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5470.4]
  assign _GEN_171 = {{28'd0}, _T_1366_29}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5471.4]
  assign _T_1540 = _T_1539 + _GEN_171; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5471.4]
  assign _GEN_172 = {{29'd0}, _T_1366_30}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5472.4]
  assign _T_1541 = _T_1540 + _GEN_172; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5472.4]
  assign _GEN_173 = {{30'd0}, _T_1366_31}; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5473.4]
  assign _T_1542 = _T_1541 + _GEN_173; // @[NV_NVDLA_CACC_calculator.scala 227:98:@5473.4]
  assign _T_1546 = _T_1545 + _T_1542; // @[NV_NVDLA_CACC_calculator.scala 230:36:@5475.4]
  assign _T_1547 = _T_1546[31:0]; // @[NV_NVDLA_CACC_calculator.scala 230:47:@5476.4]
  assign _T_1549 = _T_1546[32]; // @[NV_NVDLA_CACC_calculator.scala 231:43:@5478.4]
  assign _T_1551 = {24'h0,_T_1542}; // @[Cat.scala 30:58:@5479.4]
  assign _T_1557 = _T_1549 ? 32'hffffffff : _T_1547; // @[NV_NVDLA_CACC_calculator.scala 233:26:@5481.4]
  assign _T_1558 = _T_1469 ? _T_1551 : {{24'd0}, _T_1557}; // @[NV_NVDLA_CACC_calculator.scala 232:26:@5482.4]
  assign _T_1560 = _T_1542 != 32'h0; // @[NV_NVDLA_CACC_calculator.scala 234:49:@5483.4]
  assign _T_1561 = _T_1560 | _T_1469; // @[NV_NVDLA_CACC_calculator.scala 234:54:@5484.4]
  assign _T_1562 = _T_1224 & _T_1561; // @[NV_NVDLA_CACC_calculator.scala 234:37:@5485.4]
  assign _GEN_143 = _T_1562 ? _T_1558 : {{24'd0}, _T_1545}; // @[NV_NVDLA_CACC_calculator.scala 235:21:@5486.4]
  assign io_abuf_wr_addr_valid = _T_1004; // @[NV_NVDLA_CACC_calculator.scala 199:27:@5207.4]
  assign io_abuf_wr_addr_bits = _T_1006; // @[NV_NVDLA_CACC_calculator.scala 200:26:@5212.4]
  assign io_abuf_wr_data = _T_1039; // @[NV_NVDLA_CACC_calculator.scala 201:21:@5248.4]
  assign io_dlv_valid = _T_1211; // @[NV_NVDLA_CACC_calculator.scala 205:18:@5318.4]
  assign io_dlv_data_0 = _T_1108_0; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5284.4]
  assign io_dlv_data_1 = _T_1108_1; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5285.4]
  assign io_dlv_data_2 = _T_1108_2; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5286.4]
  assign io_dlv_data_3 = _T_1108_3; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5287.4]
  assign io_dlv_data_4 = _T_1108_4; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5288.4]
  assign io_dlv_data_5 = _T_1108_5; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5289.4]
  assign io_dlv_data_6 = _T_1108_6; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5290.4]
  assign io_dlv_data_7 = _T_1108_7; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5291.4]
  assign io_dlv_data_8 = _T_1108_8; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5292.4]
  assign io_dlv_data_9 = _T_1108_9; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5293.4]
  assign io_dlv_data_10 = _T_1108_10; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5294.4]
  assign io_dlv_data_11 = _T_1108_11; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5295.4]
  assign io_dlv_data_12 = _T_1108_12; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5296.4]
  assign io_dlv_data_13 = _T_1108_13; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5297.4]
  assign io_dlv_data_14 = _T_1108_14; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5298.4]
  assign io_dlv_data_15 = _T_1108_15; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5299.4]
  assign io_dlv_data_16 = _T_1108_16; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5300.4]
  assign io_dlv_data_17 = _T_1108_17; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5301.4]
  assign io_dlv_data_18 = _T_1108_18; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5302.4]
  assign io_dlv_data_19 = _T_1108_19; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5303.4]
  assign io_dlv_data_20 = _T_1108_20; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5304.4]
  assign io_dlv_data_21 = _T_1108_21; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5305.4]
  assign io_dlv_data_22 = _T_1108_22; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5306.4]
  assign io_dlv_data_23 = _T_1108_23; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5307.4]
  assign io_dlv_data_24 = _T_1108_24; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5308.4]
  assign io_dlv_data_25 = _T_1108_25; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5309.4]
  assign io_dlv_data_26 = _T_1108_26; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5310.4]
  assign io_dlv_data_27 = _T_1108_27; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5311.4]
  assign io_dlv_data_28 = _T_1108_28; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5312.4]
  assign io_dlv_data_29 = _T_1108_29; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5313.4]
  assign io_dlv_data_30 = _T_1108_30; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5314.4]
  assign io_dlv_data_31 = _T_1108_31; // @[NV_NVDLA_CACC_calculator.scala 204:17:@5315.4]
  assign io_dlv_pd = {_T_1220,_T_1217}; // @[NV_NVDLA_CACC_calculator.scala 209:15:@5331.4]
  assign io_dp2reg_sat_count = _T_1545; // @[NV_NVDLA_CACC_calculator.scala 239:25:@5489.4]
  assign NV_NVDLA_CACC_CALC_int8_reset = reset; // @[:@4297.4]
  assign NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4391.4]
  assign NV_NVDLA_CACC_CALC_int8_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4392.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_data = io_mac_a2accu_data_0; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4393.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_op = io_abuf_rd_data[33:0]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4394.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_op_valid = _T_449 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4395.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4396.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_valid = io_mac_a2accu_mask_0 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4397.4]
  assign NV_NVDLA_CACC_CALC_int8_1_reset = reset; // @[:@4300.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4403.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4404.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_data = io_mac_a2accu_data_1; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4405.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_op = io_abuf_rd_data[67:34]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4406.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid = _T_450 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4407.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4408.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_valid = io_mac_a2accu_mask_1 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4409.4]
  assign NV_NVDLA_CACC_CALC_int8_2_reset = reset; // @[:@4303.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4415.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4416.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_data = io_mac_a2accu_data_2; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4417.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_op = io_abuf_rd_data[101:68]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4418.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid = _T_451 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4419.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4420.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_valid = io_mac_a2accu_mask_2 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4421.4]
  assign NV_NVDLA_CACC_CALC_int8_3_reset = reset; // @[:@4306.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4427.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4428.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_data = io_mac_a2accu_data_3; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4429.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_op = io_abuf_rd_data[135:102]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4430.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid = _T_452 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4431.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4432.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_valid = io_mac_a2accu_mask_3 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4433.4]
  assign NV_NVDLA_CACC_CALC_int8_4_reset = reset; // @[:@4309.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4439.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4440.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_data = io_mac_a2accu_data_4; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4441.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_op = io_abuf_rd_data[169:136]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4442.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid = _T_453 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4443.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4444.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_valid = io_mac_a2accu_mask_4 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4445.4]
  assign NV_NVDLA_CACC_CALC_int8_5_reset = reset; // @[:@4312.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4451.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4452.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_data = io_mac_a2accu_data_5; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4453.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_op = io_abuf_rd_data[203:170]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4454.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid = _T_454 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4455.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4456.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_valid = io_mac_a2accu_mask_5 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4457.4]
  assign NV_NVDLA_CACC_CALC_int8_6_reset = reset; // @[:@4315.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4463.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4464.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_data = io_mac_a2accu_data_6; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4465.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_op = io_abuf_rd_data[237:204]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4466.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid = _T_455 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4467.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4468.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_valid = io_mac_a2accu_mask_6 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4469.4]
  assign NV_NVDLA_CACC_CALC_int8_7_reset = reset; // @[:@4318.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4475.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4476.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_data = io_mac_a2accu_data_7; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4477.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_op = io_abuf_rd_data[271:238]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4478.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid = _T_456 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4479.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4480.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_valid = io_mac_a2accu_mask_7 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4481.4]
  assign NV_NVDLA_CACC_CALC_int8_8_reset = reset; // @[:@4321.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4487.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4488.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_data = io_mac_a2accu_data_8; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4489.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_op = io_abuf_rd_data[305:272]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4490.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid = _T_457 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4491.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4492.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_valid = io_mac_a2accu_mask_8 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4493.4]
  assign NV_NVDLA_CACC_CALC_int8_9_reset = reset; // @[:@4324.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4499.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4500.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_data = io_mac_a2accu_data_9; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4501.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_op = io_abuf_rd_data[339:306]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4502.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid = _T_458 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4503.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4504.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_valid = io_mac_a2accu_mask_9 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4505.4]
  assign NV_NVDLA_CACC_CALC_int8_10_reset = reset; // @[:@4327.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4511.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4512.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_data = io_mac_a2accu_data_10; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4513.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_op = io_abuf_rd_data[373:340]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4514.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid = _T_459 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4515.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4516.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_valid = io_mac_a2accu_mask_10 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4517.4]
  assign NV_NVDLA_CACC_CALC_int8_11_reset = reset; // @[:@4330.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4523.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4524.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_data = io_mac_a2accu_data_11; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4525.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_op = io_abuf_rd_data[407:374]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4526.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid = _T_460 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4527.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4528.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_valid = io_mac_a2accu_mask_11 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4529.4]
  assign NV_NVDLA_CACC_CALC_int8_12_reset = reset; // @[:@4333.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4535.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4536.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_data = io_mac_a2accu_data_12; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4537.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_op = io_abuf_rd_data[441:408]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4538.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid = _T_461 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4539.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4540.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_valid = io_mac_a2accu_mask_12 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4541.4]
  assign NV_NVDLA_CACC_CALC_int8_13_reset = reset; // @[:@4336.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4547.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4548.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_data = io_mac_a2accu_data_13; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4549.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_op = io_abuf_rd_data[475:442]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4550.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid = _T_462 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4551.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4552.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_valid = io_mac_a2accu_mask_13 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4553.4]
  assign NV_NVDLA_CACC_CALC_int8_14_reset = reset; // @[:@4339.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4559.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4560.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_data = io_mac_a2accu_data_14; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4561.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_op = io_abuf_rd_data[509:476]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4562.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid = _T_463 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4563.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4564.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_valid = io_mac_a2accu_mask_14 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4565.4]
  assign NV_NVDLA_CACC_CALC_int8_15_reset = reset; // @[:@4342.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4571.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4572.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_data = io_mac_a2accu_data_15; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4573.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_op = io_abuf_rd_data[543:510]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4574.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid = _T_464 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4575.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4576.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_valid = io_mac_a2accu_mask_15 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4577.4]
  assign NV_NVDLA_CACC_CALC_int8_16_reset = reset; // @[:@4345.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4583.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4584.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_data = io_mac_b2accu_data_0; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4585.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_op = io_abuf_rd_data[577:544]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4586.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid = _T_465 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4587.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4588.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_valid = io_mac_b2accu_mask_0 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4589.4]
  assign NV_NVDLA_CACC_CALC_int8_17_reset = reset; // @[:@4348.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4595.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4596.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_data = io_mac_b2accu_data_1; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4597.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_op = io_abuf_rd_data[611:578]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4598.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid = _T_466 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4599.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4600.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_valid = io_mac_b2accu_mask_1 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4601.4]
  assign NV_NVDLA_CACC_CALC_int8_18_reset = reset; // @[:@4351.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4607.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4608.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_data = io_mac_b2accu_data_2; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4609.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_op = io_abuf_rd_data[645:612]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4610.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid = _T_467 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4611.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4612.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_valid = io_mac_b2accu_mask_2 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4613.4]
  assign NV_NVDLA_CACC_CALC_int8_19_reset = reset; // @[:@4354.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4619.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4620.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_data = io_mac_b2accu_data_3; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4621.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_op = io_abuf_rd_data[679:646]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4622.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid = _T_468 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4623.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4624.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_valid = io_mac_b2accu_mask_3 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4625.4]
  assign NV_NVDLA_CACC_CALC_int8_20_reset = reset; // @[:@4357.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4631.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4632.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_data = io_mac_b2accu_data_4; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4633.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_op = io_abuf_rd_data[713:680]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4634.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid = _T_469 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4635.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4636.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_valid = io_mac_b2accu_mask_4 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4637.4]
  assign NV_NVDLA_CACC_CALC_int8_21_reset = reset; // @[:@4360.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4643.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4644.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_data = io_mac_b2accu_data_5; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4645.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_op = io_abuf_rd_data[747:714]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4646.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid = _T_470 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4647.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4648.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_valid = io_mac_b2accu_mask_5 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4649.4]
  assign NV_NVDLA_CACC_CALC_int8_22_reset = reset; // @[:@4363.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4655.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4656.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_data = io_mac_b2accu_data_6; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4657.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_op = io_abuf_rd_data[781:748]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4658.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid = _T_471 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4659.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4660.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_valid = io_mac_b2accu_mask_6 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4661.4]
  assign NV_NVDLA_CACC_CALC_int8_23_reset = reset; // @[:@4366.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4667.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4668.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_data = io_mac_b2accu_data_7; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4669.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_op = io_abuf_rd_data[815:782]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4670.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid = _T_472 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4671.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4672.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_valid = io_mac_b2accu_mask_7 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4673.4]
  assign NV_NVDLA_CACC_CALC_int8_24_reset = reset; // @[:@4369.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4679.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4680.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_data = io_mac_b2accu_data_8; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4681.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_op = io_abuf_rd_data[849:816]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4682.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid = _T_473 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4683.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4684.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_valid = io_mac_b2accu_mask_8 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4685.4]
  assign NV_NVDLA_CACC_CALC_int8_25_reset = reset; // @[:@4372.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4691.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4692.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_data = io_mac_b2accu_data_9; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4693.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_op = io_abuf_rd_data[883:850]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4694.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid = _T_474 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4695.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4696.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_valid = io_mac_b2accu_mask_9 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4697.4]
  assign NV_NVDLA_CACC_CALC_int8_26_reset = reset; // @[:@4375.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4703.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4704.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_data = io_mac_b2accu_data_10; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4705.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_op = io_abuf_rd_data[917:884]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4706.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid = _T_475 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4707.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4708.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_valid = io_mac_b2accu_mask_10 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4709.4]
  assign NV_NVDLA_CACC_CALC_int8_27_reset = reset; // @[:@4378.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4715.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4716.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_data = io_mac_b2accu_data_11; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4717.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_op = io_abuf_rd_data[951:918]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4718.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid = _T_476 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4719.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4720.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_valid = io_mac_b2accu_mask_11 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4721.4]
  assign NV_NVDLA_CACC_CALC_int8_28_reset = reset; // @[:@4381.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4727.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4728.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_data = io_mac_b2accu_data_12; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4729.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_op = io_abuf_rd_data[985:952]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4730.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid = _T_477 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4731.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4732.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_valid = io_mac_b2accu_mask_12 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4733.4]
  assign NV_NVDLA_CACC_CALC_int8_29_reset = reset; // @[:@4384.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4739.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4740.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_data = io_mac_b2accu_data_13; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4741.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_op = io_abuf_rd_data[1019:986]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4742.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid = _T_478 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4743.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4744.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_valid = io_mac_b2accu_mask_13 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4745.4]
  assign NV_NVDLA_CACC_CALC_int8_30_reset = reset; // @[:@4387.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4751.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4752.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_data = io_mac_b2accu_data_14; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4753.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_op = io_abuf_rd_data[1053:1020]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4754.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid = _T_479 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4755.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4756.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_valid = io_mac_b2accu_mask_14 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4757.4]
  assign NV_NVDLA_CACC_CALC_int8_31_reset = reset; // @[:@4390.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 115:42:@4763.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 116:40:@4764.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_data = io_mac_b2accu_data_15; // @[NV_NVDLA_CACC_calculator.scala 117:35:@4765.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_op = io_abuf_rd_data[1087:1054]; // @[NV_NVDLA_CACC_calculator.scala 118:33:@4766.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid = _T_480 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 119:39:@4767.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_sel = _T_366 & _T_370; // @[NV_NVDLA_CACC_calculator.scala 120:34:@4768.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_valid = io_mac_b2accu_mask_15 & io_cfg_in_en_mask; // @[NV_NVDLA_CACC_calculator.scala 121:36:@4769.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_357 = _RAND_0[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_362 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_364 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_366 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_818 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_826 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_829 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_834 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_837 = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_842 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_845 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_850 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_853 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_858 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_861 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1004 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1006 = _RAND_16[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {34{`RANDOM}};
  _T_1039 = _RAND_17[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_1108_0 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1108_1 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1108_2 = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_1108_3 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_1108_4 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_1108_5 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_1108_6 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_1108_7 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_1108_8 = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_1108_9 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_1108_10 = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_1108_11 = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_1108_12 = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_1108_13 = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_1108_14 = _RAND_32[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_1108_15 = _RAND_33[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_1108_16 = _RAND_34[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_1108_17 = _RAND_35[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_1108_18 = _RAND_36[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_1108_19 = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_1108_20 = _RAND_38[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_1108_21 = _RAND_39[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_1108_22 = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_1108_23 = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_1108_24 = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_1108_25 = _RAND_43[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_1108_26 = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_1108_27 = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_1108_28 = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_1108_29 = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_1108_30 = _RAND_48[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_1108_31 = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_1211 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_1217 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_1220 = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_1224 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_1227 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_1366_0 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_1366_1 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_1366_2 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_1366_3 = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_1366_4 = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_1366_5 = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_1366_6 = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_1366_7 = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  _T_1366_8 = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_1366_9 = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  _T_1366_10 = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  _T_1366_11 = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_1366_12 = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  _T_1366_13 = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  _T_1366_14 = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  _T_1366_15 = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  _T_1366_16 = _RAND_71[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  _T_1366_17 = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  _T_1366_18 = _RAND_73[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  _T_1366_19 = _RAND_74[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  _T_1366_20 = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  _T_1366_21 = _RAND_76[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  _T_1366_22 = _RAND_77[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  _T_1366_23 = _RAND_78[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  _T_1366_24 = _RAND_79[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  _T_1366_25 = _RAND_80[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  _T_1366_26 = _RAND_81[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  _T_1366_27 = _RAND_82[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  _T_1366_28 = _RAND_83[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  _T_1366_29 = _RAND_84[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  _T_1366_30 = _RAND_85[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  _T_1366_31 = _RAND_86[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  _T_1469 = _RAND_87[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  _T_1545 = _RAND_88[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_357 <= 13'h0;
    end else begin
      if (io_accu_ctrl_pd_valid) begin
        _T_357 <= io_accu_ctrl_pd_bits;
      end
    end
    if (reset) begin
      _T_362 <= 1'h0;
    end else begin
      _T_362 <= _T_358;
    end
    if (reset) begin
      _T_364 <= 1'h0;
    end else begin
      _T_364 <= _T_362;
    end
    if (reset) begin
      _T_366 <= 1'h0;
    end else begin
      _T_366 <= _T_364;
    end
    if (reset) begin
      _T_818 <= 1'h0;
    end else begin
      _T_818 <= _T_366;
    end
    if (reset) begin
      _T_826 <= 1'h0;
    end else begin
      _T_826 <= _T_623;
    end
    if (reset) begin
      _T_829 <= 1'h0;
    end else begin
      _T_829 <= _T_826;
    end
    if (reset) begin
      _T_834 <= 6'h0;
    end else begin
      if (_T_366) begin
        _T_834 <= _T_367;
      end
    end
    if (reset) begin
      _T_837 <= 6'h0;
    end else begin
      if (_T_818) begin
        _T_837 <= _T_834;
      end
    end
    if (reset) begin
      _T_842 <= 1'h0;
    end else begin
      _T_842 <= _T_621;
    end
    if (reset) begin
      _T_845 <= 1'h0;
    end else begin
      _T_845 <= _T_842;
    end
    if (reset) begin
      _T_850 <= 1'h0;
    end else begin
      if (_T_621) begin
        _T_850 <= _T_369;
      end
    end
    if (reset) begin
      _T_853 <= 1'h0;
    end else begin
      if (_T_842) begin
        _T_853 <= _T_850;
      end
    end
    if (reset) begin
      _T_858 <= 1'h0;
    end else begin
      if (_T_621) begin
        _T_858 <= _T_371;
      end
    end
    if (reset) begin
      _T_861 <= 1'h0;
    end else begin
      if (_T_842) begin
        _T_861 <= _T_858;
      end
    end
    if (reset) begin
      _T_1004 <= 1'h0;
    end else begin
      _T_1004 <= _T_829;
    end
    if (_T_829) begin
      _T_1006 <= _T_837;
    end
    if (_T_829) begin
      _T_1039 <= _T_1037;
    end
    if (_T_845) begin
      if (_T_703_0) begin
        _T_1108_0 <= _T_779_0;
      end else begin
        _T_1108_0 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_1) begin
        _T_1108_1 <= _T_779_1;
      end else begin
        _T_1108_1 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_2) begin
        _T_1108_2 <= _T_779_2;
      end else begin
        _T_1108_2 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_3) begin
        _T_1108_3 <= _T_779_3;
      end else begin
        _T_1108_3 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_4) begin
        _T_1108_4 <= _T_779_4;
      end else begin
        _T_1108_4 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_5) begin
        _T_1108_5 <= _T_779_5;
      end else begin
        _T_1108_5 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_6) begin
        _T_1108_6 <= _T_779_6;
      end else begin
        _T_1108_6 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_7) begin
        _T_1108_7 <= _T_779_7;
      end else begin
        _T_1108_7 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_8) begin
        _T_1108_8 <= _T_779_8;
      end else begin
        _T_1108_8 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_9) begin
        _T_1108_9 <= _T_779_9;
      end else begin
        _T_1108_9 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_10) begin
        _T_1108_10 <= _T_779_10;
      end else begin
        _T_1108_10 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_11) begin
        _T_1108_11 <= _T_779_11;
      end else begin
        _T_1108_11 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_12) begin
        _T_1108_12 <= _T_779_12;
      end else begin
        _T_1108_12 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_13) begin
        _T_1108_13 <= _T_779_13;
      end else begin
        _T_1108_13 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_14) begin
        _T_1108_14 <= _T_779_14;
      end else begin
        _T_1108_14 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_15) begin
        _T_1108_15 <= _T_779_15;
      end else begin
        _T_1108_15 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_16) begin
        _T_1108_16 <= _T_779_16;
      end else begin
        _T_1108_16 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_17) begin
        _T_1108_17 <= _T_779_17;
      end else begin
        _T_1108_17 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_18) begin
        _T_1108_18 <= _T_779_18;
      end else begin
        _T_1108_18 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_19) begin
        _T_1108_19 <= _T_779_19;
      end else begin
        _T_1108_19 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_20) begin
        _T_1108_20 <= _T_779_20;
      end else begin
        _T_1108_20 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_21) begin
        _T_1108_21 <= _T_779_21;
      end else begin
        _T_1108_21 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_22) begin
        _T_1108_22 <= _T_779_22;
      end else begin
        _T_1108_22 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_23) begin
        _T_1108_23 <= _T_779_23;
      end else begin
        _T_1108_23 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_24) begin
        _T_1108_24 <= _T_779_24;
      end else begin
        _T_1108_24 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_25) begin
        _T_1108_25 <= _T_779_25;
      end else begin
        _T_1108_25 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_26) begin
        _T_1108_26 <= _T_779_26;
      end else begin
        _T_1108_26 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_27) begin
        _T_1108_27 <= _T_779_27;
      end else begin
        _T_1108_27 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_28) begin
        _T_1108_28 <= _T_779_28;
      end else begin
        _T_1108_28 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_29) begin
        _T_1108_29 <= _T_779_29;
      end else begin
        _T_1108_29 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_30) begin
        _T_1108_30 <= _T_779_30;
      end else begin
        _T_1108_30 <= 32'h0;
      end
    end
    if (_T_845) begin
      if (_T_703_31) begin
        _T_1108_31 <= _T_779_31;
      end else begin
        _T_1108_31 <= 32'h0;
      end
    end
    if (reset) begin
      _T_1211 <= 1'h0;
    end else begin
      _T_1211 <= _T_845;
    end
    if (reset) begin
      _T_1217 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1217 <= _T_853;
      end
    end
    if (reset) begin
      _T_1220 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1220 <= _T_861;
      end
    end
    if (reset) begin
      _T_1224 <= 1'h0;
    end else begin
      _T_1224 <= _T_845;
    end
    if (reset) begin
      _T_1227 <= 1'h1;
    end else begin
      if (_T_845) begin
        _T_1227 <= _T_1470;
      end
    end
    if (reset) begin
      _T_1366_0 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_0 <= _T_627_0;
      end
    end
    if (reset) begin
      _T_1366_1 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_1 <= _T_627_1;
      end
    end
    if (reset) begin
      _T_1366_2 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_2 <= _T_627_2;
      end
    end
    if (reset) begin
      _T_1366_3 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_3 <= _T_627_3;
      end
    end
    if (reset) begin
      _T_1366_4 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_4 <= _T_627_4;
      end
    end
    if (reset) begin
      _T_1366_5 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_5 <= _T_627_5;
      end
    end
    if (reset) begin
      _T_1366_6 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_6 <= _T_627_6;
      end
    end
    if (reset) begin
      _T_1366_7 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_7 <= _T_627_7;
      end
    end
    if (reset) begin
      _T_1366_8 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_8 <= _T_627_8;
      end
    end
    if (reset) begin
      _T_1366_9 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_9 <= _T_627_9;
      end
    end
    if (reset) begin
      _T_1366_10 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_10 <= _T_627_10;
      end
    end
    if (reset) begin
      _T_1366_11 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_11 <= _T_627_11;
      end
    end
    if (reset) begin
      _T_1366_12 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_12 <= _T_627_12;
      end
    end
    if (reset) begin
      _T_1366_13 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_13 <= _T_627_13;
      end
    end
    if (reset) begin
      _T_1366_14 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_14 <= _T_627_14;
      end
    end
    if (reset) begin
      _T_1366_15 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_15 <= _T_627_15;
      end
    end
    if (reset) begin
      _T_1366_16 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_16 <= _T_627_16;
      end
    end
    if (reset) begin
      _T_1366_17 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_17 <= _T_627_17;
      end
    end
    if (reset) begin
      _T_1366_18 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_18 <= _T_627_18;
      end
    end
    if (reset) begin
      _T_1366_19 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_19 <= _T_627_19;
      end
    end
    if (reset) begin
      _T_1366_20 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_20 <= _T_627_20;
      end
    end
    if (reset) begin
      _T_1366_21 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_21 <= _T_627_21;
      end
    end
    if (reset) begin
      _T_1366_22 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_22 <= _T_627_22;
      end
    end
    if (reset) begin
      _T_1366_23 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_23 <= _T_627_23;
      end
    end
    if (reset) begin
      _T_1366_24 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_24 <= _T_627_24;
      end
    end
    if (reset) begin
      _T_1366_25 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_25 <= _T_627_25;
      end
    end
    if (reset) begin
      _T_1366_26 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_26 <= _T_627_26;
      end
    end
    if (reset) begin
      _T_1366_27 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_27 <= _T_627_27;
      end
    end
    if (reset) begin
      _T_1366_28 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_28 <= _T_627_28;
      end
    end
    if (reset) begin
      _T_1366_29 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_29 <= _T_627_29;
      end
    end
    if (reset) begin
      _T_1366_30 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_30 <= _T_627_30;
      end
    end
    if (reset) begin
      _T_1366_31 <= 1'h0;
    end else begin
      if (_T_845) begin
        _T_1366_31 <= _T_627_31;
      end
    end
    if (reset) begin
      _T_1469 <= 1'h0;
    end else begin
      _T_1469 <= _T_1473;
    end
    if (reset) begin
      _T_1545 <= 32'h0;
    end else begin
      _T_1545 <= _GEN_143[31:0];
    end
  end
endmodule
module NV_NVDLA_CACC_delivery_ctrl( // @[:@5491.2]
  input           reset, // @[:@5493.4]
  input           io_nvdla_core_clk, // @[:@5494.4]
  input           io_dbuf_rd_ready, // @[:@5494.4]
  output          io_dbuf_rd_addr_valid, // @[:@5494.4]
  output [5:0]    io_dbuf_rd_addr_bits, // @[:@5494.4]
  output          io_dbuf_rd_layer_end, // @[:@5494.4]
  output          io_dbuf_wr_addr_valid, // @[:@5494.4]
  output [5:0]    io_dbuf_wr_addr_bits, // @[:@5494.4]
  output [1087:0] io_dbuf_wr_data, // @[:@5494.4]
  output          io_dp2reg_done, // @[:@5494.4]
  input  [31:0]   io_dlv_data_0, // @[:@5494.4]
  input  [31:0]   io_dlv_data_1, // @[:@5494.4]
  input  [31:0]   io_dlv_data_2, // @[:@5494.4]
  input  [31:0]   io_dlv_data_3, // @[:@5494.4]
  input  [31:0]   io_dlv_data_4, // @[:@5494.4]
  input  [31:0]   io_dlv_data_5, // @[:@5494.4]
  input  [31:0]   io_dlv_data_6, // @[:@5494.4]
  input  [31:0]   io_dlv_data_7, // @[:@5494.4]
  input  [31:0]   io_dlv_data_8, // @[:@5494.4]
  input  [31:0]   io_dlv_data_9, // @[:@5494.4]
  input  [31:0]   io_dlv_data_10, // @[:@5494.4]
  input  [31:0]   io_dlv_data_11, // @[:@5494.4]
  input  [31:0]   io_dlv_data_12, // @[:@5494.4]
  input  [31:0]   io_dlv_data_13, // @[:@5494.4]
  input  [31:0]   io_dlv_data_14, // @[:@5494.4]
  input  [31:0]   io_dlv_data_15, // @[:@5494.4]
  input  [31:0]   io_dlv_data_16, // @[:@5494.4]
  input  [31:0]   io_dlv_data_17, // @[:@5494.4]
  input  [31:0]   io_dlv_data_18, // @[:@5494.4]
  input  [31:0]   io_dlv_data_19, // @[:@5494.4]
  input  [31:0]   io_dlv_data_20, // @[:@5494.4]
  input  [31:0]   io_dlv_data_21, // @[:@5494.4]
  input  [31:0]   io_dlv_data_22, // @[:@5494.4]
  input  [31:0]   io_dlv_data_23, // @[:@5494.4]
  input  [31:0]   io_dlv_data_24, // @[:@5494.4]
  input  [31:0]   io_dlv_data_25, // @[:@5494.4]
  input  [31:0]   io_dlv_data_26, // @[:@5494.4]
  input  [31:0]   io_dlv_data_27, // @[:@5494.4]
  input  [31:0]   io_dlv_data_28, // @[:@5494.4]
  input  [31:0]   io_dlv_data_29, // @[:@5494.4]
  input  [31:0]   io_dlv_data_30, // @[:@5494.4]
  input  [31:0]   io_dlv_data_31, // @[:@5494.4]
  input  [1:0]    io_dlv_pd, // @[:@5494.4]
  input           io_dlv_valid // @[:@5494.4]
);
  wire  _T_129; // @[NV_NVDLA_CACC_delivery_ctrl.scala 72:31:@5496.4]
  wire  _T_130; // @[NV_NVDLA_CACC_delivery_ctrl.scala 73:30:@5497.4]
  reg [5:0] _T_176; // @[NV_NVDLA_CACC_delivery_ctrl.scala 120:31:@5530.4]
  reg [31:0] _RAND_0;
  reg [5:0] _T_179; // @[NV_NVDLA_CACC_delivery_ctrl.scala 121:31:@5531.4]
  reg [31:0] _RAND_1;
  reg  _T_182; // @[NV_NVDLA_CACC_delivery_ctrl.scala 122:29:@5532.4]
  reg [31:0] _RAND_2;
  reg [1023:0] _T_184; // @[NV_NVDLA_CACC_delivery_ctrl.scala 123:27:@5533.4]
  reg [1023:0] _RAND_3;
  wire [6:0] _T_186; // @[NV_NVDLA_CACC_delivery_ctrl.scala 125:39:@5534.4]
  wire [5:0] _T_187; // @[NV_NVDLA_CACC_delivery_ctrl.scala 125:39:@5535.4]
  wire [255:0] _T_194; // @[NV_NVDLA_CACC_delivery_ctrl.scala 131:37:@5546.6]
  wire [511:0] _T_202; // @[NV_NVDLA_CACC_delivery_ctrl.scala 131:37:@5554.6]
  wire [255:0] _T_209; // @[NV_NVDLA_CACC_delivery_ctrl.scala 131:37:@5561.6]
  wire [1023:0] _T_218; // @[NV_NVDLA_CACC_delivery_ctrl.scala 131:37:@5570.6]
  wire [5:0] _GEN_12; // @[NV_NVDLA_CACC_delivery_ctrl.scala 128:19:@5537.4]
  wire [5:0] _GEN_13; // @[NV_NVDLA_CACC_delivery_ctrl.scala 128:19:@5537.4]
  reg  _T_224; // @[NV_NVDLA_CACC_delivery_ctrl.scala 144:71:@5577.4]
  reg [31:0] _RAND_4;
  reg  _T_229; // @[NV_NVDLA_CACC_delivery_ctrl.scala 146:70:@5579.4]
  reg [31:0] _RAND_5;
  wire  _GEN_15; // @[NV_NVDLA_CACC_delivery_ctrl.scala 153:30:@5583.4]
  reg [63:0] _T_234; // @[NV_NVDLA_CACC_delivery_ctrl.scala 163:27:@5587.4]
  reg [63:0] _RAND_6;
  wire  _T_236; // @[NV_NVDLA_CACC_delivery_ctrl.scala 165:27:@5588.4]
  wire  _T_249; // @[NV_NVDLA_CACC_delivery_ctrl.scala 177:34:@5600.4]
  wire [63:0] _GEN_20; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:35:@5590.4]
  wire [64:0] _T_240; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:35:@5590.4]
  wire [63:0] _T_241; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:35:@5591.4]
  wire [63:0] _GEN_21; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:54:@5592.4]
  wire [64:0] _T_242; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:54:@5592.4]
  wire [64:0] _T_243; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:54:@5593.4]
  wire [63:0] _T_244; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:54:@5594.4]
  wire  _T_245; // @[NV_NVDLA_CACC_delivery_ctrl.scala 170:25:@5595.4]
  wire [63:0] _GEN_16; // @[NV_NVDLA_CACC_delivery_ctrl.scala 170:46:@5596.4]
  reg [5:0] _T_248; // @[NV_NVDLA_CACC_delivery_ctrl.scala 175:31:@5599.4]
  reg [31:0] _RAND_7;
  wire [6:0] _T_251; // @[NV_NVDLA_CACC_delivery_ctrl.scala 178:45:@5602.4]
  wire [5:0] _T_252; // @[NV_NVDLA_CACC_delivery_ctrl.scala 178:45:@5603.4]
  wire  _T_254; // @[NV_NVDLA_CACC_delivery_ctrl.scala 179:33:@5604.4]
  wire  _T_255; // @[NV_NVDLA_CACC_delivery_ctrl.scala 179:18:@5605.4]
  wire [5:0] _GEN_17; // @[NV_NVDLA_CACC_delivery_ctrl.scala 183:14:@5609.4]
  wire  _T_257; // @[NV_NVDLA_CACC_delivery_ctrl.scala 188:34:@5612.4]
  wire  _T_258; // @[NV_NVDLA_CACC_delivery_ctrl.scala 188:51:@5613.4]
  reg  _T_261; // @[NV_NVDLA_CACC_delivery_ctrl.scala 189:26:@5614.4]
  reg [31:0] _RAND_8;
  reg  _T_264; // @[NV_NVDLA_CACC_delivery_ctrl.scala 192:31:@5617.4]
  reg [31:0] _RAND_9;
  reg  _T_267; // @[NV_NVDLA_CACC_delivery_ctrl.scala 193:31:@5618.4]
  reg [31:0] _RAND_10;
  reg [5:0] _T_270; // @[NV_NVDLA_CACC_delivery_ctrl.scala 194:32:@5619.4]
  reg [31:0] _RAND_11;
  reg [5:0] _T_273; // @[NV_NVDLA_CACC_delivery_ctrl.scala 195:32:@5620.4]
  reg [31:0] _RAND_12;
  wire  _T_276; // @[NV_NVDLA_CACC_delivery_ctrl.scala 199:51:@5623.4]
  wire  _T_277; // @[NV_NVDLA_CACC_delivery_ctrl.scala 199:27:@5624.4]
  wire  _T_278; // @[NV_NVDLA_CACC_delivery_ctrl.scala 199:74:@5625.4]
  wire  _T_279; // @[NV_NVDLA_CACC_delivery_ctrl.scala 200:47:@5626.4]
  wire  _T_282; // @[NV_NVDLA_CACC_delivery_ctrl.scala 200:73:@5627.4]
  wire  _T_283; // @[NV_NVDLA_CACC_delivery_ctrl.scala 200:29:@5628.4]
  wire  _T_284; // @[NV_NVDLA_CACC_delivery_ctrl.scala 201:47:@5629.4]
  wire  _T_287; // @[NV_NVDLA_CACC_delivery_ctrl.scala 201:73:@5630.4]
  wire  _T_288; // @[NV_NVDLA_CACC_delivery_ctrl.scala 201:29:@5631.4]
  wire  _T_289; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:38:@5632.4]
  wire  _T_290; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:36:@5633.4]
  wire  _T_291; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:72:@5634.4]
  wire  _T_292; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:57:@5635.4]
  wire  _T_293; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:101:@5636.4]
  wire  _T_294; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:87:@5637.4]
  wire  _T_295; // @[NV_NVDLA_CACC_delivery_ctrl.scala 203:36:@5638.4]
  wire  _T_296; // @[NV_NVDLA_CACC_delivery_ctrl.scala 203:57:@5639.4]
  wire  _T_297; // @[NV_NVDLA_CACC_delivery_ctrl.scala 203:55:@5640.4]
  wire [5:0] _T_298; // @[NV_NVDLA_CACC_delivery_ctrl.scala 204:30:@5641.4]
  wire [5:0] _GEN_18; // @[NV_NVDLA_CACC_delivery_ctrl.scala 210:22:@5645.4]
  wire [5:0] _GEN_19; // @[NV_NVDLA_CACC_delivery_ctrl.scala 213:22:@5648.4]
  assign _T_129 = io_dlv_pd[0]; // @[NV_NVDLA_CACC_delivery_ctrl.scala 72:31:@5496.4]
  assign _T_130 = io_dlv_pd[1]; // @[NV_NVDLA_CACC_delivery_ctrl.scala 73:30:@5497.4]
  assign _T_186 = _T_176 + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 125:39:@5534.4]
  assign _T_187 = _T_176 + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 125:39:@5535.4]
  assign _T_194 = {io_dlv_data_7,io_dlv_data_6,io_dlv_data_5,io_dlv_data_4,io_dlv_data_3,io_dlv_data_2,io_dlv_data_1,io_dlv_data_0}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 131:37:@5546.6]
  assign _T_202 = {io_dlv_data_15,io_dlv_data_14,io_dlv_data_13,io_dlv_data_12,io_dlv_data_11,io_dlv_data_10,io_dlv_data_9,io_dlv_data_8,_T_194}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 131:37:@5554.6]
  assign _T_209 = {io_dlv_data_23,io_dlv_data_22,io_dlv_data_21,io_dlv_data_20,io_dlv_data_19,io_dlv_data_18,io_dlv_data_17,io_dlv_data_16}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 131:37:@5561.6]
  assign _T_218 = {io_dlv_data_31,io_dlv_data_30,io_dlv_data_29,io_dlv_data_28,io_dlv_data_27,io_dlv_data_26,io_dlv_data_25,io_dlv_data_24,_T_209,_T_202}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 131:37:@5570.6]
  assign _GEN_12 = io_dlv_valid ? _T_187 : _T_176; // @[NV_NVDLA_CACC_delivery_ctrl.scala 128:19:@5537.4]
  assign _GEN_13 = io_dlv_valid ? _T_176 : _T_179; // @[NV_NVDLA_CACC_delivery_ctrl.scala 128:19:@5537.4]
  assign _GEN_15 = io_dlv_valid ? 1'h1 : _T_229; // @[NV_NVDLA_CACC_delivery_ctrl.scala 153:30:@5583.4]
  assign _T_236 = _T_224 ? _T_229 : 1'h0; // @[NV_NVDLA_CACC_delivery_ctrl.scala 165:27:@5588.4]
  assign _T_249 = io_dbuf_rd_addr_valid & io_dbuf_rd_ready; // @[NV_NVDLA_CACC_delivery_ctrl.scala 177:34:@5600.4]
  assign _GEN_20 = {{63'd0}, _T_236}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:35:@5590.4]
  assign _T_240 = _T_234 + _GEN_20; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:35:@5590.4]
  assign _T_241 = _T_234 + _GEN_20; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:35:@5591.4]
  assign _GEN_21 = {{63'd0}, _T_249}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:54:@5592.4]
  assign _T_242 = _T_241 - _GEN_21; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:54:@5592.4]
  assign _T_243 = $unsigned(_T_242); // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:54:@5593.4]
  assign _T_244 = _T_243[63:0]; // @[NV_NVDLA_CACC_delivery_ctrl.scala 168:54:@5594.4]
  assign _T_245 = _T_224 | _T_249; // @[NV_NVDLA_CACC_delivery_ctrl.scala 170:25:@5595.4]
  assign _GEN_16 = _T_245 ? _T_244 : _T_234; // @[NV_NVDLA_CACC_delivery_ctrl.scala 170:46:@5596.4]
  assign _T_251 = _T_248 + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 178:45:@5602.4]
  assign _T_252 = _T_248 + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 178:45:@5603.4]
  assign _T_254 = _T_234 != 64'h0; // @[NV_NVDLA_CACC_delivery_ctrl.scala 179:33:@5604.4]
  assign _T_255 = ~ _T_254; // @[NV_NVDLA_CACC_delivery_ctrl.scala 179:18:@5605.4]
  assign _GEN_17 = _T_249 ? _T_252 : _T_248; // @[NV_NVDLA_CACC_delivery_ctrl.scala 183:14:@5609.4]
  assign _T_257 = io_dlv_valid & _T_129; // @[NV_NVDLA_CACC_delivery_ctrl.scala 188:34:@5612.4]
  assign _T_258 = _T_257 & _T_130; // @[NV_NVDLA_CACC_delivery_ctrl.scala 188:51:@5613.4]
  assign _T_276 = io_dbuf_rd_addr_bits == _T_270; // @[NV_NVDLA_CACC_delivery_ctrl.scala 199:51:@5623.4]
  assign _T_277 = _T_249 & _T_276; // @[NV_NVDLA_CACC_delivery_ctrl.scala 199:27:@5624.4]
  assign _T_278 = _T_277 & _T_264; // @[NV_NVDLA_CACC_delivery_ctrl.scala 199:74:@5625.4]
  assign _T_279 = _T_267 | _T_258; // @[NV_NVDLA_CACC_delivery_ctrl.scala 200:47:@5626.4]
  assign _T_282 = _T_278 ? 1'h0 : _T_264; // @[NV_NVDLA_CACC_delivery_ctrl.scala 200:73:@5627.4]
  assign _T_283 = _T_279 ? 1'h1 : _T_282; // @[NV_NVDLA_CACC_delivery_ctrl.scala 200:29:@5628.4]
  assign _T_284 = _T_264 | _T_258; // @[NV_NVDLA_CACC_delivery_ctrl.scala 201:47:@5629.4]
  assign _T_287 = _T_278 ? 1'h0 : _T_267; // @[NV_NVDLA_CACC_delivery_ctrl.scala 201:73:@5630.4]
  assign _T_288 = _T_284 ? 1'h1 : _T_287; // @[NV_NVDLA_CACC_delivery_ctrl.scala 201:29:@5631.4]
  assign _T_289 = ~ _T_264; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:38:@5632.4]
  assign _T_290 = _T_258 & _T_289; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:36:@5633.4]
  assign _T_291 = _T_258 & _T_278; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:72:@5634.4]
  assign _T_292 = _T_290 | _T_291; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:57:@5635.4]
  assign _T_293 = _T_278 & _T_267; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:101:@5636.4]
  assign _T_294 = _T_292 | _T_293; // @[NV_NVDLA_CACC_delivery_ctrl.scala 202:87:@5637.4]
  assign _T_295 = _T_258 & _T_264; // @[NV_NVDLA_CACC_delivery_ctrl.scala 203:36:@5638.4]
  assign _T_296 = ~ _T_278; // @[NV_NVDLA_CACC_delivery_ctrl.scala 203:57:@5639.4]
  assign _T_297 = _T_295 & _T_296; // @[NV_NVDLA_CACC_delivery_ctrl.scala 203:55:@5640.4]
  assign _T_298 = _T_267 ? _T_273 : _T_176; // @[NV_NVDLA_CACC_delivery_ctrl.scala 204:30:@5641.4]
  assign _GEN_18 = _T_294 ? _T_298 : _T_270; // @[NV_NVDLA_CACC_delivery_ctrl.scala 210:22:@5645.4]
  assign _GEN_19 = _T_297 ? _T_176 : _T_273; // @[NV_NVDLA_CACC_delivery_ctrl.scala 213:22:@5648.4]
  assign io_dbuf_rd_addr_valid = ~ _T_255; // @[NV_NVDLA_CACC_delivery_ctrl.scala 180:23:@5607.4]
  assign io_dbuf_rd_addr_bits = _T_248; // @[NV_NVDLA_CACC_delivery_ctrl.scala 181:22:@5608.4]
  assign io_dbuf_rd_layer_end = _T_277 & _T_264; // @[NV_NVDLA_CACC_delivery_ctrl.scala 206:22:@5642.4]
  assign io_dbuf_wr_addr_valid = _T_182; // @[NV_NVDLA_CACC_delivery_ctrl.scala 134:23:@5573.4]
  assign io_dbuf_wr_addr_bits = _T_179; // @[NV_NVDLA_CACC_delivery_ctrl.scala 135:22:@5574.4]
  assign io_dbuf_wr_data = {{64'd0}, _T_184}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 136:17:@5575.4]
  assign io_dp2reg_done = _T_261; // @[NV_NVDLA_CACC_delivery_ctrl.scala 189:16:@5616.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_176 = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_179 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_182 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {32{`RANDOM}};
  _T_184 = _RAND_3[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_224 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_229 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  _T_234 = _RAND_6[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_248 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_261 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_264 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_267 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_270 = _RAND_11[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_273 = _RAND_12[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_176 <= 6'h0;
    end else begin
      if (io_dlv_valid) begin
        _T_176 <= _T_187;
      end
    end
    if (reset) begin
      _T_179 <= 6'h0;
    end else begin
      if (io_dlv_valid) begin
        _T_179 <= _T_176;
      end
    end
    if (reset) begin
      _T_182 <= 1'h0;
    end else begin
      _T_182 <= io_dlv_valid;
    end
    if (io_dlv_valid) begin
      _T_184 <= _T_218;
    end
    if (reset) begin
      _T_224 <= 1'h0;
    end else begin
      _T_224 <= io_dlv_valid;
    end
    if (reset) begin
      _T_229 <= 1'h0;
    end else begin
      if (io_dlv_valid) begin
        _T_229 <= 1'h1;
      end
    end
    if (reset) begin
      _T_234 <= 64'h0;
    end else begin
      if (_T_245) begin
        _T_234 <= _T_244;
      end
    end
    if (reset) begin
      _T_248 <= 6'h0;
    end else begin
      if (_T_249) begin
        _T_248 <= _T_252;
      end
    end
    if (reset) begin
      _T_261 <= 1'h0;
    end else begin
      _T_261 <= _T_258;
    end
    if (reset) begin
      _T_264 <= 1'h0;
    end else begin
      if (_T_279) begin
        _T_264 <= 1'h1;
      end else begin
        if (_T_278) begin
          _T_264 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_267 <= 1'h0;
    end else begin
      if (_T_284) begin
        _T_267 <= 1'h1;
      end else begin
        if (_T_278) begin
          _T_267 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_270 <= 6'h0;
    end else begin
      if (_T_294) begin
        if (_T_267) begin
          _T_270 <= _T_273;
        end else begin
          _T_270 <= _T_176;
        end
      end
    end
    if (reset) begin
      _T_273 <= 6'h0;
    end else begin
      if (_T_297) begin
        _T_273 <= _T_176;
      end
    end
  end
endmodule
module nv_ram_rws_1( // @[:@5652.2]
  input           io_clk, // @[:@5655.4]
  input           io_re, // @[:@5655.4]
  input           io_we, // @[:@5655.4]
  input  [5:0]    io_ra, // @[:@5655.4]
  input  [5:0]    io_wa, // @[:@5655.4]
  input  [1023:0] io_di, // @[:@5655.4]
  output [1023:0] io_dout // @[:@5655.4]
);
  reg [1023:0] _T_21 [0:63]; // @[nv_ram_rws.scala 27:26:@5657.4]
  reg [1023:0] _RAND_0;
  wire [1023:0] _T_21__T_28_data; // @[nv_ram_rws.scala 27:26:@5657.4]
  wire [5:0] _T_21__T_28_addr; // @[nv_ram_rws.scala 27:26:@5657.4]
  wire [1023:0] _T_21__T_22_data; // @[nv_ram_rws.scala 27:26:@5657.4]
  wire [5:0] _T_21__T_22_addr; // @[nv_ram_rws.scala 27:26:@5657.4]
  wire  _T_21__T_22_mask; // @[nv_ram_rws.scala 27:26:@5657.4]
  wire  _T_21__T_22_en; // @[nv_ram_rws.scala 27:26:@5657.4]
  wire  _GEN_10; // @[nv_ram_rws.scala 29:18:@5658.4]
  reg [5:0] _T_21__T_28_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _T_21__T_28_addr_en;
  assign _T_21__T_28_addr = _T_21__T_28_addr_pipe_0;
  assign _T_21__T_28_data = _T_21[_T_21__T_28_addr]; // @[nv_ram_rws.scala 27:26:@5657.4]
  assign _T_21__T_22_data = io_di;
  assign _T_21__T_22_addr = io_wa;
  assign _T_21__T_22_mask = 1'h1;
  assign _T_21__T_22_en = io_we;
  assign _GEN_10 = io_we ? 1'h0 : io_re; // @[nv_ram_rws.scala 29:18:@5658.4]
  assign io_dout = _T_21__T_28_data; // @[nv_ram_rws.scala 34:17:@5672.6]
  assign _T_21__T_28_addr_en = _GEN_10;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {32{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    _T_21[initvar] = _RAND_0[1023:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_21__T_28_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if(_T_21__T_22_en & _T_21__T_22_mask) begin
      _T_21[_T_21__T_22_addr] <= _T_21__T_22_data; // @[nv_ram_rws.scala 27:26:@5657.4]
    end
    if (_T_21__T_28_addr_en) begin
      _T_21__T_28_addr_pipe_0 <= io_ra;
    end
  end
endmodule
module NV_NVDLA_CACC_delivery_buffer( // @[:@5675.2]
  input           reset, // @[:@5677.4]
  input           io_nvdla_core_clk, // @[:@5678.4]
  input           io_cacc2sdp_pd_ready, // @[:@5678.4]
  output          io_cacc2sdp_pd_valid, // @[:@5678.4]
  output [513:0]  io_cacc2sdp_pd_bits, // @[:@5678.4]
  output [1:0]    io_cacc2glb_done_intr_pd, // @[:@5678.4]
  output          io_accu2sc_credit_size_valid, // @[:@5678.4]
  input           io_dbuf_wr_addr_valid, // @[:@5678.4]
  input  [5:0]    io_dbuf_wr_addr_bits, // @[:@5678.4]
  input  [1023:0] io_dbuf_wr_data, // @[:@5678.4]
  input           io_dbuf_rd_layer_end, // @[:@5678.4]
  input           io_dbuf_rd_addr_valid, // @[:@5678.4]
  input  [5:0]    io_dbuf_rd_addr_bits, // @[:@5678.4]
  output          io_dbuf_rd_ready // @[:@5678.4]
);
  wire  nv_ram_rws_io_clk; // @[NV_NVDLA_CACC_delivery_buffer.scala 60:25:@5684.4]
  wire  nv_ram_rws_io_re; // @[NV_NVDLA_CACC_delivery_buffer.scala 60:25:@5684.4]
  wire  nv_ram_rws_io_we; // @[NV_NVDLA_CACC_delivery_buffer.scala 60:25:@5684.4]
  wire [5:0] nv_ram_rws_io_ra; // @[NV_NVDLA_CACC_delivery_buffer.scala 60:25:@5684.4]
  wire [5:0] nv_ram_rws_io_wa; // @[NV_NVDLA_CACC_delivery_buffer.scala 60:25:@5684.4]
  wire [1023:0] nv_ram_rws_io_di; // @[NV_NVDLA_CACC_delivery_buffer.scala 60:25:@5684.4]
  wire [1023:0] nv_ram_rws_io_dout; // @[NV_NVDLA_CACC_delivery_buffer.scala 60:25:@5684.4]
  reg [1:0] _T_49; // @[NV_NVDLA_CACC_delivery_buffer.scala 57:29:@5680.4]
  reg [31:0] _RAND_0;
  wire  _T_51; // @[NV_NVDLA_CACC_delivery_buffer.scala 58:39:@5681.4]
  wire  _T_52; // @[NV_NVDLA_CACC_delivery_buffer.scala 58:22:@5682.4]
  wire  _T_53; // @[NV_NVDLA_CACC_delivery_buffer.scala 58:44:@5683.4]
  reg [1:0] _T_59; // @[NV_NVDLA_CACC_delivery_buffer.scala 74:27:@5694.4]
  reg [31:0] _RAND_1;
  wire  _T_60; // @[NV_NVDLA_CACC_delivery_buffer.scala 76:49:@5695.4]
  wire  _T_61; // @[NV_NVDLA_CACC_delivery_buffer.scala 76:89:@5696.4]
  wire  _T_62; // @[NV_NVDLA_CACC_delivery_buffer.scala 77:41:@5697.4]
  wire [1:0] _T_63; // @[Cat.scala 30:58:@5698.4]
  wire [1:0] _T_64; // @[NV_NVDLA_CACC_delivery_buffer.scala 76:27:@5699.4]
  wire [2:0] _GEN_0; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:89:@5703.4]
  wire [2:0] _T_72; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:89:@5703.4]
  wire [2:0] _T_73; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:29:@5704.4]
  wire [2:0] _T_74; // @[NV_NVDLA_CACC_delivery_buffer.scala 81:29:@5705.4]
  wire [1:0] _T_75; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:112:@5706.4]
  wire [511:0] _T_81; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:42:@5713.4]
  wire [511:0] _T_86; // @[Bitwise.scala 72:12:@5716.4]
  wire [511:0] _T_87; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:104:@5717.4]
  wire [511:0] _T_88; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:42:@5718.4]
  wire [511:0] _T_93; // @[Bitwise.scala 72:12:@5721.4]
  wire [511:0] _T_94; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:104:@5722.4]
  wire [511:0] _T_103; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:163:@5726.4]
  reg  _T_106; // @[NV_NVDLA_CACC_delivery_buffer.scala 91:38:@5727.4]
  reg [31:0] _RAND_2;
  wire  _T_112; // @[NV_NVDLA_CACC_delivery_buffer.scala 93:36:@5730.4]
  wire  _T_113; // @[NV_NVDLA_CACC_delivery_buffer.scala 92:36:@5731.4]
  wire  _T_140; // @[NV_NVDLA_CACC_delivery_buffer.scala 115:30:@5755.4]
  wire  _T_117; // @[NV_NVDLA_CACC_delivery_buffer.scala 100:50:@5734.4]
  wire  _T_118; // @[NV_NVDLA_CACC_delivery_buffer.scala 100:62:@5735.4]
  wire  _T_119; // @[NV_NVDLA_CACC_delivery_buffer.scala 100:85:@5736.4]
  wire [1:0] _T_120; // @[Cat.scala 30:58:@5737.4]
  reg  _T_124; // @[NV_NVDLA_CACC_delivery_buffer.scala 104:23:@5740.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_127; // @[NV_NVDLA_CACC_delivery_buffer.scala 105:30:@5741.4]
  reg [31:0] _RAND_4;
  wire  _T_129; // @[NV_NVDLA_CACC_delivery_buffer.scala 106:61:@5743.4]
  wire  _T_130; // @[NV_NVDLA_CACC_delivery_buffer.scala 107:38:@5744.4]
  wire  _T_131; // @[NV_NVDLA_CACC_delivery_buffer.scala 107:62:@5745.4]
  wire  _T_132; // @[NV_NVDLA_CACC_delivery_buffer.scala 107:60:@5746.4]
  wire [1:0] _T_133; // @[Cat.scala 30:58:@5747.4]
  wire  _T_135; // @[NV_NVDLA_CACC_delivery_buffer.scala 108:21:@5749.4]
  wire  _T_142; // @[NV_NVDLA_CACC_delivery_buffer.scala 116:85:@5758.4]
  reg  _T_145; // @[NV_NVDLA_CACC_delivery_buffer.scala 116:40:@5759.4]
  reg [31:0] _RAND_5;
  nv_ram_rws_1 nv_ram_rws ( // @[NV_NVDLA_CACC_delivery_buffer.scala 60:25:@5684.4]
    .io_clk(nv_ram_rws_io_clk),
    .io_re(nv_ram_rws_io_re),
    .io_we(nv_ram_rws_io_we),
    .io_ra(nv_ram_rws_io_ra),
    .io_wa(nv_ram_rws_io_wa),
    .io_di(nv_ram_rws_io_di),
    .io_dout(nv_ram_rws_io_dout)
  );
  assign _T_51 = _T_49 != 2'h0; // @[NV_NVDLA_CACC_delivery_buffer.scala 58:39:@5681.4]
  assign _T_52 = ~ _T_51; // @[NV_NVDLA_CACC_delivery_buffer.scala 58:22:@5682.4]
  assign _T_53 = _T_52 & io_dbuf_rd_addr_valid; // @[NV_NVDLA_CACC_delivery_buffer.scala 58:44:@5683.4]
  assign _T_60 = io_cacc2sdp_pd_valid & io_cacc2sdp_pd_ready; // @[NV_NVDLA_CACC_delivery_buffer.scala 76:49:@5695.4]
  assign _T_61 = _T_59[0]; // @[NV_NVDLA_CACC_delivery_buffer.scala 76:89:@5696.4]
  assign _T_62 = _T_59[1]; // @[NV_NVDLA_CACC_delivery_buffer.scala 77:41:@5697.4]
  assign _T_63 = {_T_61,_T_62}; // @[Cat.scala 30:58:@5698.4]
  assign _T_64 = _T_60 ? _T_63 : _T_59; // @[NV_NVDLA_CACC_delivery_buffer.scala 76:27:@5699.4]
  assign _GEN_0 = {{1'd0}, _T_49}; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:89:@5703.4]
  assign _T_72 = _GEN_0 << 1'h1; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:89:@5703.4]
  assign _T_73 = _T_60 ? _T_72 : {{1'd0}, _T_49}; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:29:@5704.4]
  assign _T_74 = _T_53 ? 3'h3 : _T_73; // @[NV_NVDLA_CACC_delivery_buffer.scala 81:29:@5705.4]
  assign _T_75 = _T_74[1:0]; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:112:@5706.4]
  assign _T_81 = nv_ram_rws_io_dout[511:0]; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:42:@5713.4]
  assign _T_86 = _T_61 ? 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff : 512'h0; // @[Bitwise.scala 72:12:@5716.4]
  assign _T_87 = _T_81 & _T_86; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:104:@5717.4]
  assign _T_88 = nv_ram_rws_io_dout[1023:512]; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:42:@5718.4]
  assign _T_93 = _T_62 ? 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff : 512'h0; // @[Bitwise.scala 72:12:@5721.4]
  assign _T_94 = _T_88 & _T_93; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:104:@5722.4]
  assign _T_103 = _T_87 | _T_94; // @[NV_NVDLA_CACC_delivery_buffer.scala 88:163:@5726.4]
  assign _T_112 = _T_52 ? 1'h0 : _T_106; // @[NV_NVDLA_CACC_delivery_buffer.scala 93:36:@5730.4]
  assign _T_113 = io_dbuf_rd_layer_end ? 1'h1 : _T_112; // @[NV_NVDLA_CACC_delivery_buffer.scala 92:36:@5731.4]
  assign _T_140 = _T_49 == 2'h2; // @[NV_NVDLA_CACC_delivery_buffer.scala 115:30:@5755.4]
  assign _T_117 = _T_106 & _T_140; // @[NV_NVDLA_CACC_delivery_buffer.scala 100:50:@5734.4]
  assign _T_118 = _T_117 & io_cacc2sdp_pd_valid; // @[NV_NVDLA_CACC_delivery_buffer.scala 100:62:@5735.4]
  assign _T_119 = _T_118 & io_cacc2sdp_pd_ready; // @[NV_NVDLA_CACC_delivery_buffer.scala 100:85:@5736.4]
  assign _T_120 = {_T_119,1'h0}; // @[Cat.scala 30:58:@5737.4]
  assign _T_129 = _T_60 & _T_119; // @[NV_NVDLA_CACC_delivery_buffer.scala 106:61:@5743.4]
  assign _T_130 = _T_129 & _T_124; // @[NV_NVDLA_CACC_delivery_buffer.scala 107:38:@5744.4]
  assign _T_131 = ~ _T_124; // @[NV_NVDLA_CACC_delivery_buffer.scala 107:62:@5745.4]
  assign _T_132 = _T_129 & _T_131; // @[NV_NVDLA_CACC_delivery_buffer.scala 107:60:@5746.4]
  assign _T_133 = {_T_130,_T_132}; // @[Cat.scala 30:58:@5747.4]
  assign _T_135 = _T_129 ? _T_131 : _T_124; // @[NV_NVDLA_CACC_delivery_buffer.scala 108:21:@5749.4]
  assign _T_142 = _T_60 & _T_140; // @[NV_NVDLA_CACC_delivery_buffer.scala 116:85:@5758.4]
  assign io_cacc2sdp_pd_valid = _T_49 != 2'h0; // @[NV_NVDLA_CACC_delivery_buffer.scala 84:22:@5709.4]
  assign io_cacc2sdp_pd_bits = {_T_120,_T_103}; // @[NV_NVDLA_CACC_delivery_buffer.scala 101:21:@5739.4]
  assign io_cacc2glb_done_intr_pd = _T_127; // @[NV_NVDLA_CACC_delivery_buffer.scala 111:26:@5752.4]
  assign io_accu2sc_credit_size_valid = _T_145; // @[NV_NVDLA_CACC_delivery_buffer.scala 116:30:@5761.4]
  assign io_dbuf_rd_ready = ~ _T_51; // @[NV_NVDLA_CACC_delivery_buffer.scala 85:18:@5712.4]
  assign nv_ram_rws_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_delivery_buffer.scala 62:20:@5687.4]
  assign nv_ram_rws_io_re = _T_52 & io_dbuf_rd_addr_valid; // @[NV_NVDLA_CACC_delivery_buffer.scala 64:19:@5689.4]
  assign nv_ram_rws_io_we = io_dbuf_wr_addr_valid; // @[NV_NVDLA_CACC_delivery_buffer.scala 65:19:@5690.4]
  assign nv_ram_rws_io_ra = io_dbuf_rd_addr_bits; // @[NV_NVDLA_CACC_delivery_buffer.scala 63:19:@5688.4]
  assign nv_ram_rws_io_wa = io_dbuf_wr_addr_bits; // @[NV_NVDLA_CACC_delivery_buffer.scala 66:19:@5691.4]
  assign nv_ram_rws_io_di = io_dbuf_wr_data; // @[NV_NVDLA_CACC_delivery_buffer.scala 67:19:@5692.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_49 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_59 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_106 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_124 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_127 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_145 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_49 <= 2'h0;
    end else begin
      _T_49 <= _T_75;
    end
    if (reset) begin
      _T_59 <= 2'h1;
    end else begin
      if (_T_60) begin
        _T_59 <= _T_63;
      end
    end
    if (reset) begin
      _T_106 <= 1'h0;
    end else begin
      if (io_dbuf_rd_layer_end) begin
        _T_106 <= 1'h1;
      end else begin
        if (_T_52) begin
          _T_106 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_124 <= 1'h0;
    end else begin
      if (_T_129) begin
        _T_124 <= _T_131;
      end
    end
    if (reset) begin
      _T_127 <= 2'h0;
    end else begin
      _T_127 <= _T_133;
    end
    if (reset) begin
      _T_145 <= 1'h0;
    end else begin
      _T_145 <= _T_142;
    end
  end
endmodule
module CKLNQD12( // @[:@5763.2]
  input   io_CP, // @[:@5766.4]
  input   io_E, // @[:@5766.4]
  output  io_Q // @[:@5766.4]
);
  wire  _T_13; // @[CKLNQD12.scala 16:21:@5768.4]
  wire  _T_16; // @[CKLNQD12.scala 16:14:@5770.4]
  wire  _T_17; // @[CKLNQD12.scala 16:36:@5771.4]
  reg  _T_20; // @[CKLNQD12.scala 17:21:@5773.4]
  reg [31:0] _RAND_0;
  wire  _T_23; // @[CKLNQD12.scala 18:34:@5777.4]
  assign _T_13 = $unsigned(io_CP); // @[CKLNQD12.scala 16:21:@5768.4]
  assign _T_16 = _T_13 == 1'h0; // @[CKLNQD12.scala 16:14:@5770.4]
  assign _T_17 = _T_16; // @[CKLNQD12.scala 16:36:@5771.4]
  assign _T_23 = _T_13 & _T_20; // @[CKLNQD12.scala 18:34:@5777.4]
  assign io_Q = _T_23; // @[CKLNQD12.scala 18:10:@5779.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_20 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge _T_17) begin
    _T_20 <= io_E;
  end
endmodule
module NV_CLK_gate_power( // @[:@5781.2]
  input   io_clk, // @[:@5784.4]
  input   io_clk_en, // @[:@5784.4]
  output  io_clk_gated // @[:@5784.4]
);
  wire  p_clkgate_io_CP; // @[NV_CLK_gate_power.scala 18:27:@5786.4]
  wire  p_clkgate_io_E; // @[NV_CLK_gate_power.scala 18:27:@5786.4]
  wire  p_clkgate_io_Q; // @[NV_CLK_gate_power.scala 18:27:@5786.4]
  CKLNQD12 p_clkgate ( // @[NV_CLK_gate_power.scala 18:27:@5786.4]
    .io_CP(p_clkgate_io_CP),
    .io_E(p_clkgate_io_E),
    .io_Q(p_clkgate_io_Q)
  );
  assign io_clk_gated = p_clkgate_io_Q; // @[NV_CLK_gate_power.scala 22:18:@5792.4]
  assign p_clkgate_io_CP = io_clk; // @[NV_CLK_gate_power.scala 20:21:@5790.4]
  assign p_clkgate_io_E = io_clk_en; // @[NV_CLK_gate_power.scala 21:20:@5791.4]
endmodule
module NV_NVDLA_slcg( // @[:@5794.2]
  input   io_nvdla_clock_nvdla_core_clk, // @[:@5797.4]
  input   io_nvdla_clock_dla_clk_ovr_on_sync, // @[:@5797.4]
  input   io_nvdla_clock_global_clk_ovr_on_sync, // @[:@5797.4]
  input   io_nvdla_clock_tmc2slcg_disable_clock_gating, // @[:@5797.4]
  input   io_slcg_en_0, // @[:@5797.4]
  output  io_nvdla_core_gated_clk // @[:@5797.4]
);
  wire  NV_CLK_gate_power_io_clk; // @[slcg.scala 35:37:@5810.4]
  wire  NV_CLK_gate_power_io_clk_en; // @[slcg.scala 35:37:@5810.4]
  wire  NV_CLK_gate_power_io_clk_gated; // @[slcg.scala 35:37:@5810.4]
  wire  _T_39; // @[slcg.scala 29:41:@5800.4]
  wire  _T_41; // @[slcg.scala 29:41:@5801.4]
  wire  _T_42; // @[slcg.scala 32:82:@5803.4]
  wire  _T_44; // @[slcg.scala 32:45:@5805.4]
  wire  _T_45; // @[slcg.scala 33:120:@5806.4]
  wire  _T_47; // @[slcg.scala 33:81:@5808.4]
  NV_CLK_gate_power NV_CLK_gate_power ( // @[slcg.scala 35:37:@5810.4]
    .io_clk(NV_CLK_gate_power_io_clk),
    .io_clk_en(NV_CLK_gate_power_io_clk_en),
    .io_clk_gated(NV_CLK_gate_power_io_clk_gated)
  );
  assign _T_39 = ~ io_slcg_en_0; // @[slcg.scala 29:41:@5800.4]
  assign _T_41 = _T_39 == 1'h0; // @[slcg.scala 29:41:@5801.4]
  assign _T_42 = $unsigned(io_nvdla_clock_dla_clk_ovr_on_sync); // @[slcg.scala 32:82:@5803.4]
  assign _T_44 = _T_41 | _T_42; // @[slcg.scala 32:45:@5805.4]
  assign _T_45 = $unsigned(io_nvdla_clock_global_clk_ovr_on_sync); // @[slcg.scala 33:120:@5806.4]
  assign _T_47 = io_nvdla_clock_tmc2slcg_disable_clock_gating | _T_45; // @[slcg.scala 33:81:@5808.4]
  assign io_nvdla_core_gated_clk = NV_CLK_gate_power_io_clk_gated; // @[slcg.scala 38:29:@5815.4]
  assign NV_CLK_gate_power_io_clk = io_nvdla_clock_nvdla_core_clk; // @[slcg.scala 36:32:@5813.4]
  assign NV_CLK_gate_power_io_clk_en = _T_44 | _T_47; // @[slcg.scala 37:35:@5814.4]
endmodule
module NV_soDLA_cacc( // @[:@5979.2]
  input          clock, // @[:@5980.4]
  input          reset, // @[:@5981.4]
  input          io_nvdla_clock_nvdla_core_clk, // @[:@5982.4]
  input          io_nvdla_clock_dla_clk_ovr_on_sync, // @[:@5982.4]
  input          io_nvdla_clock_global_clk_ovr_on_sync, // @[:@5982.4]
  input          io_nvdla_clock_tmc2slcg_disable_clock_gating, // @[:@5982.4]
  input          io_nvdla_core_rstn, // @[:@5982.4]
  output         io_csb2cacc_req_ready, // @[:@5982.4]
  input          io_csb2cacc_req_valid, // @[:@5982.4]
  input  [62:0]  io_csb2cacc_req_bits, // @[:@5982.4]
  output         io_csb2cacc_resp_valid, // @[:@5982.4]
  output [33:0]  io_csb2cacc_resp_bits, // @[:@5982.4]
  input          io_mac_a2accu_valid, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_0, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_1, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_2, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_3, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_4, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_5, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_6, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_7, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_8, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_9, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_10, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_11, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_12, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_13, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_14, // @[:@5982.4]
  input          io_mac_a2accu_bits_mask_15, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_0, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_1, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_2, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_3, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_4, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_5, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_6, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_7, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_8, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_9, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_10, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_11, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_12, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_13, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_14, // @[:@5982.4]
  input  [21:0]  io_mac_a2accu_bits_data_15, // @[:@5982.4]
  input  [8:0]   io_mac_a2accu_bits_pd, // @[:@5982.4]
  input          io_mac_b2accu_valid, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_0, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_1, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_2, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_3, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_4, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_5, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_6, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_7, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_8, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_9, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_10, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_11, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_12, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_13, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_14, // @[:@5982.4]
  input          io_mac_b2accu_bits_mask_15, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_0, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_1, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_2, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_3, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_4, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_5, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_6, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_7, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_8, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_9, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_10, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_11, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_12, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_13, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_14, // @[:@5982.4]
  input  [21:0]  io_mac_b2accu_bits_data_15, // @[:@5982.4]
  input  [8:0]   io_mac_b2accu_bits_pd, // @[:@5982.4]
  input          io_cacc2sdp_pd_ready, // @[:@5982.4]
  output         io_cacc2sdp_pd_valid, // @[:@5982.4]
  output [513:0] io_cacc2sdp_pd_bits, // @[:@5982.4]
  output         io_accu2sc_credit_size_valid, // @[:@5982.4]
  output [2:0]   io_accu2sc_credit_size_bits, // @[:@5982.4]
  output [1:0]   io_cacc2glb_done_intr_pd, // @[:@5982.4]
  input  [31:0]  io_pwrbus_ram_pd // @[:@5982.4]
);
  wire  NV_NVDLA_CACC_regfile_reset; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire  NV_NVDLA_CACC_regfile_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire  NV_NVDLA_CACC_regfile_io_csb2cacc_req_valid; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire [62:0] NV_NVDLA_CACC_regfile_io_csb2cacc_req_bits; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire  NV_NVDLA_CACC_regfile_io_csb2cacc_resp_valid; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire [33:0] NV_NVDLA_CACC_regfile_io_csb2cacc_resp_bits; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire  NV_NVDLA_CACC_regfile_io_reg2dp_op_en; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire [4:0] NV_NVDLA_CACC_regfile_io_reg2dp_field_clip_truncate; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire  NV_NVDLA_CACC_regfile_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire [31:0] NV_NVDLA_CACC_regfile_io_dp2reg_sat_count; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire [6:0] NV_NVDLA_CACC_regfile_io_slcg_op_en; // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_reset; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire [5:0] NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_valid; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire [8:0] NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_bits; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_valid; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire [12:0] NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_bits; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_ram_valid; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_cfg_in_en_mask; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire [4:0] NV_NVDLA_CACC_assembly_ctrl_io_cfg_truncate; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_op_en; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire [4:0] NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_clip_truncate; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_slcg_cell_en; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_wait_for_op_en; // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
  wire  NV_NVDLA_CACC_assembly_buffer_reset; // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
  wire  NV_NVDLA_CACC_assembly_buffer_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
  wire  NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
  wire [5:0] NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
  wire [1087:0] NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_data; // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
  wire  NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
  wire [5:0] NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
  wire [1087:0] NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_data; // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
  wire  NV_NVDLA_CACC_calculator_reset; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_nvdla_cell_clk; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [1087:0] NV_NVDLA_CACC_calculator_io_abuf_rd_data; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_abuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [5:0] NV_NVDLA_CACC_calculator_io_abuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [1087:0] NV_NVDLA_CACC_calculator_io_abuf_wr_data; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_dlv_valid; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_0; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_1; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_2; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_3; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_4; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_5; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_6; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_7; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_8; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_9; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_10; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_11; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_12; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_13; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_14; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_15; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_16; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_17; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_18; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_19; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_20; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_21; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_22; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_23; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_24; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_25; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_26; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_27; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_28; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_29; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_30; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dlv_data_31; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [1:0] NV_NVDLA_CACC_calculator_io_dlv_pd; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_valid; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [12:0] NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_bits; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_accu_ctrl_ram_valid; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_cfg_in_en_mask; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [4:0] NV_NVDLA_CACC_calculator_io_cfg_truncate; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_0; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_1; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_2; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_3; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_4; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_5; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_6; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_7; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_8; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_9; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_10; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_11; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_12; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_13; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_14; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_15; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_0; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_1; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_2; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_3; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_4; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_5; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_6; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_7; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_8; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_9; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_10; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_11; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_12; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_13; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_14; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_15; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_pvld; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_0; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_1; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_2; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_3; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_4; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_5; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_6; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_7; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_8; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_9; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_10; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_11; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_12; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_13; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_14; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_15; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_0; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_1; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_2; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_3; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_4; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_5; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_6; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_7; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_8; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_9; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_10; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_11; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_12; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_13; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_14; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_15; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_pvld; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dp2reg_sat_count; // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_reset; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_ready; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [5:0] NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_layer_end; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [5:0] NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [1087:0] NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_data; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_0; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_1; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_2; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_3; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_4; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_5; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_6; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_7; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_8; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_9; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_10; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_11; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_12; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_13; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_14; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_15; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_16; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_17; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_18; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_19; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_20; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_21; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_22; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_23; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_24; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_25; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_26; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_27; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_28; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_29; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_30; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [31:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_31; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire [1:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_pd; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dlv_valid; // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
  wire  NV_NVDLA_CACC_delivery_buffer_reset; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_ready; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_valid; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire [513:0] NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_bits; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire [1:0] NV_NVDLA_CACC_delivery_buffer_io_cacc2glb_done_intr_pd; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_accu2sc_credit_size_valid; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire [5:0] NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire [1023:0] NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_data; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_layer_end; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire [5:0] NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_ready; // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
  wire  NV_NVDLA_slcg_io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 175:41:@6167.4]
  wire  NV_NVDLA_slcg_io_nvdla_clock_dla_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 175:41:@6167.4]
  wire  NV_NVDLA_slcg_io_nvdla_clock_global_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 175:41:@6167.4]
  wire  NV_NVDLA_slcg_io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[NV_NVDLA_cacc.scala 175:41:@6167.4]
  wire  NV_NVDLA_slcg_io_slcg_en_0; // @[NV_NVDLA_cacc.scala 175:41:@6167.4]
  wire  NV_NVDLA_slcg_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 175:41:@6167.4]
  wire  NV_NVDLA_slcg_1_io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 175:41:@6170.4]
  wire  NV_NVDLA_slcg_1_io_nvdla_clock_dla_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 175:41:@6170.4]
  wire  NV_NVDLA_slcg_1_io_nvdla_clock_global_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 175:41:@6170.4]
  wire  NV_NVDLA_slcg_1_io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[NV_NVDLA_cacc.scala 175:41:@6170.4]
  wire  NV_NVDLA_slcg_1_io_slcg_en_0; // @[NV_NVDLA_cacc.scala 175:41:@6170.4]
  wire  NV_NVDLA_slcg_1_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 175:41:@6170.4]
  wire  NV_NVDLA_slcg_2_io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 175:41:@6173.4]
  wire  NV_NVDLA_slcg_2_io_nvdla_clock_dla_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 175:41:@6173.4]
  wire  NV_NVDLA_slcg_2_io_nvdla_clock_global_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 175:41:@6173.4]
  wire  NV_NVDLA_slcg_2_io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[NV_NVDLA_cacc.scala 175:41:@6173.4]
  wire  NV_NVDLA_slcg_2_io_slcg_en_0; // @[NV_NVDLA_cacc.scala 175:41:@6173.4]
  wire  NV_NVDLA_slcg_2_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 175:41:@6173.4]
  wire  NV_NVDLA_slcg_3_io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 183:31:@6197.4]
  wire  NV_NVDLA_slcg_3_io_nvdla_clock_dla_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 183:31:@6197.4]
  wire  NV_NVDLA_slcg_3_io_nvdla_clock_global_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 183:31:@6197.4]
  wire  NV_NVDLA_slcg_3_io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[NV_NVDLA_cacc.scala 183:31:@6197.4]
  wire  NV_NVDLA_slcg_3_io_slcg_en_0; // @[NV_NVDLA_cacc.scala 183:31:@6197.4]
  wire  NV_NVDLA_slcg_3_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 183:31:@6197.4]
  wire  _T_604; // @[NV_NVDLA_cacc.scala 185:59:@6204.4]
  NV_NVDLA_CACC_regfile NV_NVDLA_CACC_regfile ( // @[NV_NVDLA_cacc.scala 60:27:@5987.4]
    .reset(NV_NVDLA_CACC_regfile_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_regfile_io_nvdla_core_clk),
    .io_csb2cacc_req_valid(NV_NVDLA_CACC_regfile_io_csb2cacc_req_valid),
    .io_csb2cacc_req_bits(NV_NVDLA_CACC_regfile_io_csb2cacc_req_bits),
    .io_csb2cacc_resp_valid(NV_NVDLA_CACC_regfile_io_csb2cacc_resp_valid),
    .io_csb2cacc_resp_bits(NV_NVDLA_CACC_regfile_io_csb2cacc_resp_bits),
    .io_reg2dp_op_en(NV_NVDLA_CACC_regfile_io_reg2dp_op_en),
    .io_reg2dp_field_clip_truncate(NV_NVDLA_CACC_regfile_io_reg2dp_field_clip_truncate),
    .io_dp2reg_done(NV_NVDLA_CACC_regfile_io_dp2reg_done),
    .io_dp2reg_sat_count(NV_NVDLA_CACC_regfile_io_dp2reg_sat_count),
    .io_slcg_op_en(NV_NVDLA_CACC_regfile_io_slcg_op_en)
  );
  NV_NVDLA_CACC_assembly_ctrl NV_NVDLA_CACC_assembly_ctrl ( // @[NV_NVDLA_cacc.scala 70:33:@5996.4]
    .reset(NV_NVDLA_CACC_assembly_ctrl_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_assembly_ctrl_io_nvdla_core_clk),
    .io_abuf_rd_addr_valid(NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_valid),
    .io_abuf_rd_addr_bits(NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_bits),
    .io_mac_a2accu_pd_valid(NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_valid),
    .io_mac_a2accu_pd_bits(NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_bits),
    .io_accu_ctrl_pd_valid(NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_valid),
    .io_accu_ctrl_pd_bits(NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_bits),
    .io_accu_ctrl_ram_valid(NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_ram_valid),
    .io_cfg_in_en_mask(NV_NVDLA_CACC_assembly_ctrl_io_cfg_in_en_mask),
    .io_cfg_truncate(NV_NVDLA_CACC_assembly_ctrl_io_cfg_truncate),
    .io_reg2dp_op_en(NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_op_en),
    .io_reg2dp_clip_truncate(NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_clip_truncate),
    .io_dp2reg_done(NV_NVDLA_CACC_assembly_ctrl_io_dp2reg_done),
    .io_slcg_cell_en(NV_NVDLA_CACC_assembly_ctrl_io_slcg_cell_en),
    .io_wait_for_op_en(NV_NVDLA_CACC_assembly_ctrl_io_wait_for_op_en)
  );
  NV_NVDLA_CACC_assembly_buffer NV_NVDLA_CACC_assembly_buffer ( // @[NV_NVDLA_cacc.scala 86:35:@6006.4]
    .reset(NV_NVDLA_CACC_assembly_buffer_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_assembly_buffer_io_nvdla_core_clk),
    .io_abuf_wr_addr_valid(NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_valid),
    .io_abuf_wr_addr_bits(NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_bits),
    .io_abuf_wr_data(NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_data),
    .io_abuf_rd_addr_valid(NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_valid),
    .io_abuf_rd_addr_bits(NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_bits),
    .io_abuf_rd_data(NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_data)
  );
  NV_NVDLA_CACC_calculator NV_NVDLA_CACC_calculator ( // @[NV_NVDLA_cacc.scala 97:30:@6013.4]
    .reset(NV_NVDLA_CACC_calculator_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_calculator_io_nvdla_core_clk),
    .io_nvdla_cell_clk(NV_NVDLA_CACC_calculator_io_nvdla_cell_clk),
    .io_abuf_rd_data(NV_NVDLA_CACC_calculator_io_abuf_rd_data),
    .io_abuf_wr_addr_valid(NV_NVDLA_CACC_calculator_io_abuf_wr_addr_valid),
    .io_abuf_wr_addr_bits(NV_NVDLA_CACC_calculator_io_abuf_wr_addr_bits),
    .io_abuf_wr_data(NV_NVDLA_CACC_calculator_io_abuf_wr_data),
    .io_dlv_valid(NV_NVDLA_CACC_calculator_io_dlv_valid),
    .io_dlv_data_0(NV_NVDLA_CACC_calculator_io_dlv_data_0),
    .io_dlv_data_1(NV_NVDLA_CACC_calculator_io_dlv_data_1),
    .io_dlv_data_2(NV_NVDLA_CACC_calculator_io_dlv_data_2),
    .io_dlv_data_3(NV_NVDLA_CACC_calculator_io_dlv_data_3),
    .io_dlv_data_4(NV_NVDLA_CACC_calculator_io_dlv_data_4),
    .io_dlv_data_5(NV_NVDLA_CACC_calculator_io_dlv_data_5),
    .io_dlv_data_6(NV_NVDLA_CACC_calculator_io_dlv_data_6),
    .io_dlv_data_7(NV_NVDLA_CACC_calculator_io_dlv_data_7),
    .io_dlv_data_8(NV_NVDLA_CACC_calculator_io_dlv_data_8),
    .io_dlv_data_9(NV_NVDLA_CACC_calculator_io_dlv_data_9),
    .io_dlv_data_10(NV_NVDLA_CACC_calculator_io_dlv_data_10),
    .io_dlv_data_11(NV_NVDLA_CACC_calculator_io_dlv_data_11),
    .io_dlv_data_12(NV_NVDLA_CACC_calculator_io_dlv_data_12),
    .io_dlv_data_13(NV_NVDLA_CACC_calculator_io_dlv_data_13),
    .io_dlv_data_14(NV_NVDLA_CACC_calculator_io_dlv_data_14),
    .io_dlv_data_15(NV_NVDLA_CACC_calculator_io_dlv_data_15),
    .io_dlv_data_16(NV_NVDLA_CACC_calculator_io_dlv_data_16),
    .io_dlv_data_17(NV_NVDLA_CACC_calculator_io_dlv_data_17),
    .io_dlv_data_18(NV_NVDLA_CACC_calculator_io_dlv_data_18),
    .io_dlv_data_19(NV_NVDLA_CACC_calculator_io_dlv_data_19),
    .io_dlv_data_20(NV_NVDLA_CACC_calculator_io_dlv_data_20),
    .io_dlv_data_21(NV_NVDLA_CACC_calculator_io_dlv_data_21),
    .io_dlv_data_22(NV_NVDLA_CACC_calculator_io_dlv_data_22),
    .io_dlv_data_23(NV_NVDLA_CACC_calculator_io_dlv_data_23),
    .io_dlv_data_24(NV_NVDLA_CACC_calculator_io_dlv_data_24),
    .io_dlv_data_25(NV_NVDLA_CACC_calculator_io_dlv_data_25),
    .io_dlv_data_26(NV_NVDLA_CACC_calculator_io_dlv_data_26),
    .io_dlv_data_27(NV_NVDLA_CACC_calculator_io_dlv_data_27),
    .io_dlv_data_28(NV_NVDLA_CACC_calculator_io_dlv_data_28),
    .io_dlv_data_29(NV_NVDLA_CACC_calculator_io_dlv_data_29),
    .io_dlv_data_30(NV_NVDLA_CACC_calculator_io_dlv_data_30),
    .io_dlv_data_31(NV_NVDLA_CACC_calculator_io_dlv_data_31),
    .io_dlv_pd(NV_NVDLA_CACC_calculator_io_dlv_pd),
    .io_accu_ctrl_pd_valid(NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_valid),
    .io_accu_ctrl_pd_bits(NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_bits),
    .io_accu_ctrl_ram_valid(NV_NVDLA_CACC_calculator_io_accu_ctrl_ram_valid),
    .io_cfg_in_en_mask(NV_NVDLA_CACC_calculator_io_cfg_in_en_mask),
    .io_cfg_truncate(NV_NVDLA_CACC_calculator_io_cfg_truncate),
    .io_mac_a2accu_data_0(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_0),
    .io_mac_a2accu_data_1(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_1),
    .io_mac_a2accu_data_2(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_2),
    .io_mac_a2accu_data_3(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_3),
    .io_mac_a2accu_data_4(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_4),
    .io_mac_a2accu_data_5(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_5),
    .io_mac_a2accu_data_6(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_6),
    .io_mac_a2accu_data_7(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_7),
    .io_mac_a2accu_data_8(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_8),
    .io_mac_a2accu_data_9(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_9),
    .io_mac_a2accu_data_10(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_10),
    .io_mac_a2accu_data_11(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_11),
    .io_mac_a2accu_data_12(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_12),
    .io_mac_a2accu_data_13(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_13),
    .io_mac_a2accu_data_14(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_14),
    .io_mac_a2accu_data_15(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_15),
    .io_mac_a2accu_mask_0(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_0),
    .io_mac_a2accu_mask_1(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_1),
    .io_mac_a2accu_mask_2(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_2),
    .io_mac_a2accu_mask_3(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_3),
    .io_mac_a2accu_mask_4(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_4),
    .io_mac_a2accu_mask_5(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_5),
    .io_mac_a2accu_mask_6(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_6),
    .io_mac_a2accu_mask_7(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_7),
    .io_mac_a2accu_mask_8(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_8),
    .io_mac_a2accu_mask_9(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_9),
    .io_mac_a2accu_mask_10(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_10),
    .io_mac_a2accu_mask_11(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_11),
    .io_mac_a2accu_mask_12(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_12),
    .io_mac_a2accu_mask_13(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_13),
    .io_mac_a2accu_mask_14(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_14),
    .io_mac_a2accu_mask_15(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_15),
    .io_mac_a2accu_pvld(NV_NVDLA_CACC_calculator_io_mac_a2accu_pvld),
    .io_mac_b2accu_data_0(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_0),
    .io_mac_b2accu_data_1(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_1),
    .io_mac_b2accu_data_2(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_2),
    .io_mac_b2accu_data_3(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_3),
    .io_mac_b2accu_data_4(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_4),
    .io_mac_b2accu_data_5(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_5),
    .io_mac_b2accu_data_6(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_6),
    .io_mac_b2accu_data_7(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_7),
    .io_mac_b2accu_data_8(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_8),
    .io_mac_b2accu_data_9(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_9),
    .io_mac_b2accu_data_10(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_10),
    .io_mac_b2accu_data_11(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_11),
    .io_mac_b2accu_data_12(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_12),
    .io_mac_b2accu_data_13(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_13),
    .io_mac_b2accu_data_14(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_14),
    .io_mac_b2accu_data_15(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_15),
    .io_mac_b2accu_mask_0(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_0),
    .io_mac_b2accu_mask_1(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_1),
    .io_mac_b2accu_mask_2(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_2),
    .io_mac_b2accu_mask_3(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_3),
    .io_mac_b2accu_mask_4(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_4),
    .io_mac_b2accu_mask_5(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_5),
    .io_mac_b2accu_mask_6(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_6),
    .io_mac_b2accu_mask_7(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_7),
    .io_mac_b2accu_mask_8(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_8),
    .io_mac_b2accu_mask_9(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_9),
    .io_mac_b2accu_mask_10(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_10),
    .io_mac_b2accu_mask_11(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_11),
    .io_mac_b2accu_mask_12(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_12),
    .io_mac_b2accu_mask_13(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_13),
    .io_mac_b2accu_mask_14(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_14),
    .io_mac_b2accu_mask_15(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_15),
    .io_mac_b2accu_pvld(NV_NVDLA_CACC_calculator_io_mac_b2accu_pvld),
    .io_dp2reg_sat_count(NV_NVDLA_CACC_calculator_io_dp2reg_sat_count)
  );
  NV_NVDLA_CACC_delivery_ctrl NV_NVDLA_CACC_delivery_ctrl ( // @[NV_NVDLA_cacc.scala 123:33:@6094.4]
    .reset(NV_NVDLA_CACC_delivery_ctrl_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_delivery_ctrl_io_nvdla_core_clk),
    .io_dbuf_rd_ready(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_ready),
    .io_dbuf_rd_addr_valid(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_valid),
    .io_dbuf_rd_addr_bits(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_bits),
    .io_dbuf_rd_layer_end(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_layer_end),
    .io_dbuf_wr_addr_valid(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_valid),
    .io_dbuf_wr_addr_bits(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_bits),
    .io_dbuf_wr_data(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_data),
    .io_dp2reg_done(NV_NVDLA_CACC_delivery_ctrl_io_dp2reg_done),
    .io_dlv_data_0(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_0),
    .io_dlv_data_1(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_1),
    .io_dlv_data_2(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_2),
    .io_dlv_data_3(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_3),
    .io_dlv_data_4(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_4),
    .io_dlv_data_5(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_5),
    .io_dlv_data_6(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_6),
    .io_dlv_data_7(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_7),
    .io_dlv_data_8(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_8),
    .io_dlv_data_9(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_9),
    .io_dlv_data_10(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_10),
    .io_dlv_data_11(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_11),
    .io_dlv_data_12(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_12),
    .io_dlv_data_13(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_13),
    .io_dlv_data_14(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_14),
    .io_dlv_data_15(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_15),
    .io_dlv_data_16(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_16),
    .io_dlv_data_17(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_17),
    .io_dlv_data_18(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_18),
    .io_dlv_data_19(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_19),
    .io_dlv_data_20(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_20),
    .io_dlv_data_21(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_21),
    .io_dlv_data_22(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_22),
    .io_dlv_data_23(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_23),
    .io_dlv_data_24(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_24),
    .io_dlv_data_25(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_25),
    .io_dlv_data_26(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_26),
    .io_dlv_data_27(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_27),
    .io_dlv_data_28(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_28),
    .io_dlv_data_29(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_29),
    .io_dlv_data_30(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_30),
    .io_dlv_data_31(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_31),
    .io_dlv_pd(NV_NVDLA_CACC_delivery_ctrl_io_dlv_pd),
    .io_dlv_valid(NV_NVDLA_CACC_delivery_ctrl_io_dlv_valid)
  );
  NV_NVDLA_CACC_delivery_buffer NV_NVDLA_CACC_delivery_buffer ( // @[NV_NVDLA_cacc.scala 154:35:@6149.4]
    .reset(NV_NVDLA_CACC_delivery_buffer_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_delivery_buffer_io_nvdla_core_clk),
    .io_cacc2sdp_pd_ready(NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_ready),
    .io_cacc2sdp_pd_valid(NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_valid),
    .io_cacc2sdp_pd_bits(NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_bits),
    .io_cacc2glb_done_intr_pd(NV_NVDLA_CACC_delivery_buffer_io_cacc2glb_done_intr_pd),
    .io_accu2sc_credit_size_valid(NV_NVDLA_CACC_delivery_buffer_io_accu2sc_credit_size_valid),
    .io_dbuf_wr_addr_valid(NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_valid),
    .io_dbuf_wr_addr_bits(NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_bits),
    .io_dbuf_wr_data(NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_data),
    .io_dbuf_rd_layer_end(NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_layer_end),
    .io_dbuf_rd_addr_valid(NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_valid),
    .io_dbuf_rd_addr_bits(NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_bits),
    .io_dbuf_rd_ready(NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_ready)
  );
  NV_NVDLA_slcg NV_NVDLA_slcg ( // @[NV_NVDLA_cacc.scala 175:41:@6167.4]
    .io_nvdla_clock_nvdla_core_clk(NV_NVDLA_slcg_io_nvdla_clock_nvdla_core_clk),
    .io_nvdla_clock_dla_clk_ovr_on_sync(NV_NVDLA_slcg_io_nvdla_clock_dla_clk_ovr_on_sync),
    .io_nvdla_clock_global_clk_ovr_on_sync(NV_NVDLA_slcg_io_nvdla_clock_global_clk_ovr_on_sync),
    .io_nvdla_clock_tmc2slcg_disable_clock_gating(NV_NVDLA_slcg_io_nvdla_clock_tmc2slcg_disable_clock_gating),
    .io_slcg_en_0(NV_NVDLA_slcg_io_slcg_en_0),
    .io_nvdla_core_gated_clk(NV_NVDLA_slcg_io_nvdla_core_gated_clk)
  );
  NV_NVDLA_slcg NV_NVDLA_slcg_1 ( // @[NV_NVDLA_cacc.scala 175:41:@6170.4]
    .io_nvdla_clock_nvdla_core_clk(NV_NVDLA_slcg_1_io_nvdla_clock_nvdla_core_clk),
    .io_nvdla_clock_dla_clk_ovr_on_sync(NV_NVDLA_slcg_1_io_nvdla_clock_dla_clk_ovr_on_sync),
    .io_nvdla_clock_global_clk_ovr_on_sync(NV_NVDLA_slcg_1_io_nvdla_clock_global_clk_ovr_on_sync),
    .io_nvdla_clock_tmc2slcg_disable_clock_gating(NV_NVDLA_slcg_1_io_nvdla_clock_tmc2slcg_disable_clock_gating),
    .io_slcg_en_0(NV_NVDLA_slcg_1_io_slcg_en_0),
    .io_nvdla_core_gated_clk(NV_NVDLA_slcg_1_io_nvdla_core_gated_clk)
  );
  NV_NVDLA_slcg NV_NVDLA_slcg_2 ( // @[NV_NVDLA_cacc.scala 175:41:@6173.4]
    .io_nvdla_clock_nvdla_core_clk(NV_NVDLA_slcg_2_io_nvdla_clock_nvdla_core_clk),
    .io_nvdla_clock_dla_clk_ovr_on_sync(NV_NVDLA_slcg_2_io_nvdla_clock_dla_clk_ovr_on_sync),
    .io_nvdla_clock_global_clk_ovr_on_sync(NV_NVDLA_slcg_2_io_nvdla_clock_global_clk_ovr_on_sync),
    .io_nvdla_clock_tmc2slcg_disable_clock_gating(NV_NVDLA_slcg_2_io_nvdla_clock_tmc2slcg_disable_clock_gating),
    .io_slcg_en_0(NV_NVDLA_slcg_2_io_slcg_en_0),
    .io_nvdla_core_gated_clk(NV_NVDLA_slcg_2_io_nvdla_core_gated_clk)
  );
  NV_NVDLA_slcg NV_NVDLA_slcg_3 ( // @[NV_NVDLA_cacc.scala 183:31:@6197.4]
    .io_nvdla_clock_nvdla_core_clk(NV_NVDLA_slcg_3_io_nvdla_clock_nvdla_core_clk),
    .io_nvdla_clock_dla_clk_ovr_on_sync(NV_NVDLA_slcg_3_io_nvdla_clock_dla_clk_ovr_on_sync),
    .io_nvdla_clock_global_clk_ovr_on_sync(NV_NVDLA_slcg_3_io_nvdla_clock_global_clk_ovr_on_sync),
    .io_nvdla_clock_tmc2slcg_disable_clock_gating(NV_NVDLA_slcg_3_io_nvdla_clock_tmc2slcg_disable_clock_gating),
    .io_slcg_en_0(NV_NVDLA_slcg_3_io_slcg_en_0),
    .io_nvdla_core_gated_clk(NV_NVDLA_slcg_3_io_nvdla_core_gated_clk)
  );
  assign _T_604 = NV_NVDLA_CACC_regfile_io_slcg_op_en[3]; // @[NV_NVDLA_cacc.scala 185:59:@6204.4]
  assign io_csb2cacc_req_ready = 1'h1; // @[NV_NVDLA_cacc.scala 63:27:@5995.4]
  assign io_csb2cacc_resp_valid = NV_NVDLA_CACC_regfile_io_csb2cacc_resp_valid; // @[NV_NVDLA_cacc.scala 63:27:@5992.4]
  assign io_csb2cacc_resp_bits = NV_NVDLA_CACC_regfile_io_csb2cacc_resp_bits; // @[NV_NVDLA_cacc.scala 63:27:@5991.4]
  assign io_cacc2sdp_pd_valid = NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_valid; // @[NV_NVDLA_cacc.scala 160:20:@6155.4]
  assign io_cacc2sdp_pd_bits = NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_bits; // @[NV_NVDLA_cacc.scala 160:20:@6154.4]
  assign io_accu2sc_credit_size_valid = NV_NVDLA_CACC_delivery_buffer_io_accu2sc_credit_size_valid; // @[NV_NVDLA_cacc.scala 169:28:@6166.4]
  assign io_accu2sc_credit_size_bits = 3'h1; // @[NV_NVDLA_cacc.scala 169:28:@6165.4]
  assign io_cacc2glb_done_intr_pd = NV_NVDLA_CACC_delivery_buffer_io_cacc2glb_done_intr_pd; // @[NV_NVDLA_cacc.scala 167:30:@6164.4]
  assign NV_NVDLA_CACC_regfile_reset = io_nvdla_core_rstn == 1'h0; // @[:@5989.4]
  assign NV_NVDLA_CACC_regfile_io_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 62:33:@5990.4]
  assign NV_NVDLA_CACC_regfile_io_csb2cacc_req_valid = io_csb2cacc_req_valid; // @[NV_NVDLA_cacc.scala 63:27:@5994.4]
  assign NV_NVDLA_CACC_regfile_io_csb2cacc_req_bits = io_csb2cacc_req_bits; // @[NV_NVDLA_cacc.scala 63:27:@5993.4]
  assign NV_NVDLA_CACC_regfile_io_dp2reg_done = NV_NVDLA_CACC_delivery_ctrl_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 147:30:@6147.4]
  assign NV_NVDLA_CACC_regfile_io_dp2reg_sat_count = NV_NVDLA_CACC_calculator_io_dp2reg_sat_count; // @[NV_NVDLA_cacc.scala 118:35:@6093.4]
  assign NV_NVDLA_CACC_assembly_ctrl_reset = io_nvdla_core_rstn == 1'h0; // @[:@5998.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_nvdla_core_clk = NV_NVDLA_slcg_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 72:39:@5999.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_valid = io_mac_a2accu_valid; // @[NV_NVDLA_cacc.scala 74:44:@6000.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_bits = io_mac_a2accu_bits_pd; // @[NV_NVDLA_cacc.scala 75:43:@6001.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_op_en = NV_NVDLA_CACC_regfile_io_reg2dp_op_en; // @[NV_NVDLA_cacc.scala 77:37:@6002.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_clip_truncate = NV_NVDLA_CACC_regfile_io_reg2dp_field_clip_truncate; // @[NV_NVDLA_cacc.scala 80:45:@6005.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_dp2reg_done = NV_NVDLA_CACC_delivery_ctrl_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 148:36:@6148.4]
  assign NV_NVDLA_CACC_assembly_buffer_reset = io_nvdla_core_rstn == 1'h0; // @[:@6008.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_nvdla_core_clk = NV_NVDLA_slcg_1_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 88:41:@6009.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_valid = NV_NVDLA_CACC_calculator_io_abuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 103:34:@6021.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_bits = NV_NVDLA_CACC_calculator_io_abuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 103:34:@6020.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_data = NV_NVDLA_CACC_calculator_io_abuf_wr_data; // @[NV_NVDLA_cacc.scala 103:34:@6019.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_valid = NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 91:45:@6011.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_bits = NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 92:44:@6012.4]
  assign NV_NVDLA_CACC_calculator_reset = io_nvdla_core_rstn == 1'h0; // @[:@6015.4]
  assign NV_NVDLA_CACC_calculator_io_nvdla_core_clk = NV_NVDLA_slcg_2_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 100:36:@6017.4]
  assign NV_NVDLA_CACC_calculator_io_nvdla_cell_clk = NV_NVDLA_slcg_3_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 99:36:@6016.4]
  assign NV_NVDLA_CACC_calculator_io_abuf_rd_data = NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_data; // @[NV_NVDLA_cacc.scala 102:34:@6018.4]
  assign NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_valid = NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_valid; // @[NV_NVDLA_cacc.scala 105:34:@6023.4]
  assign NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_bits = NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_bits; // @[NV_NVDLA_cacc.scala 105:34:@6022.4]
  assign NV_NVDLA_CACC_calculator_io_accu_ctrl_ram_valid = NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_ram_valid; // @[NV_NVDLA_cacc.scala 106:41:@6024.4]
  assign NV_NVDLA_CACC_calculator_io_cfg_in_en_mask = NV_NVDLA_CACC_assembly_ctrl_io_cfg_in_en_mask; // @[NV_NVDLA_cacc.scala 108:36:@6025.4]
  assign NV_NVDLA_CACC_calculator_io_cfg_truncate = NV_NVDLA_CACC_assembly_ctrl_io_cfg_truncate; // @[NV_NVDLA_cacc.scala 109:34:@6026.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_0 = io_mac_a2accu_bits_data_0; // @[NV_NVDLA_cacc.scala 111:37:@6027.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_1 = io_mac_a2accu_bits_data_1; // @[NV_NVDLA_cacc.scala 111:37:@6028.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_2 = io_mac_a2accu_bits_data_2; // @[NV_NVDLA_cacc.scala 111:37:@6029.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_3 = io_mac_a2accu_bits_data_3; // @[NV_NVDLA_cacc.scala 111:37:@6030.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_4 = io_mac_a2accu_bits_data_4; // @[NV_NVDLA_cacc.scala 111:37:@6031.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_5 = io_mac_a2accu_bits_data_5; // @[NV_NVDLA_cacc.scala 111:37:@6032.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_6 = io_mac_a2accu_bits_data_6; // @[NV_NVDLA_cacc.scala 111:37:@6033.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_7 = io_mac_a2accu_bits_data_7; // @[NV_NVDLA_cacc.scala 111:37:@6034.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_8 = io_mac_a2accu_bits_data_8; // @[NV_NVDLA_cacc.scala 111:37:@6035.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_9 = io_mac_a2accu_bits_data_9; // @[NV_NVDLA_cacc.scala 111:37:@6036.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_10 = io_mac_a2accu_bits_data_10; // @[NV_NVDLA_cacc.scala 111:37:@6037.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_11 = io_mac_a2accu_bits_data_11; // @[NV_NVDLA_cacc.scala 111:37:@6038.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_12 = io_mac_a2accu_bits_data_12; // @[NV_NVDLA_cacc.scala 111:37:@6039.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_13 = io_mac_a2accu_bits_data_13; // @[NV_NVDLA_cacc.scala 111:37:@6040.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_14 = io_mac_a2accu_bits_data_14; // @[NV_NVDLA_cacc.scala 111:37:@6041.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_15 = io_mac_a2accu_bits_data_15; // @[NV_NVDLA_cacc.scala 111:37:@6042.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_0 = io_mac_a2accu_bits_mask_0; // @[NV_NVDLA_cacc.scala 112:37:@6043.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_1 = io_mac_a2accu_bits_mask_1; // @[NV_NVDLA_cacc.scala 112:37:@6044.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_2 = io_mac_a2accu_bits_mask_2; // @[NV_NVDLA_cacc.scala 112:37:@6045.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_3 = io_mac_a2accu_bits_mask_3; // @[NV_NVDLA_cacc.scala 112:37:@6046.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_4 = io_mac_a2accu_bits_mask_4; // @[NV_NVDLA_cacc.scala 112:37:@6047.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_5 = io_mac_a2accu_bits_mask_5; // @[NV_NVDLA_cacc.scala 112:37:@6048.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_6 = io_mac_a2accu_bits_mask_6; // @[NV_NVDLA_cacc.scala 112:37:@6049.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_7 = io_mac_a2accu_bits_mask_7; // @[NV_NVDLA_cacc.scala 112:37:@6050.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_8 = io_mac_a2accu_bits_mask_8; // @[NV_NVDLA_cacc.scala 112:37:@6051.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_9 = io_mac_a2accu_bits_mask_9; // @[NV_NVDLA_cacc.scala 112:37:@6052.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_10 = io_mac_a2accu_bits_mask_10; // @[NV_NVDLA_cacc.scala 112:37:@6053.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_11 = io_mac_a2accu_bits_mask_11; // @[NV_NVDLA_cacc.scala 112:37:@6054.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_12 = io_mac_a2accu_bits_mask_12; // @[NV_NVDLA_cacc.scala 112:37:@6055.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_13 = io_mac_a2accu_bits_mask_13; // @[NV_NVDLA_cacc.scala 112:37:@6056.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_14 = io_mac_a2accu_bits_mask_14; // @[NV_NVDLA_cacc.scala 112:37:@6057.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_15 = io_mac_a2accu_bits_mask_15; // @[NV_NVDLA_cacc.scala 112:37:@6058.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_pvld = io_mac_a2accu_valid; // @[NV_NVDLA_cacc.scala 113:37:@6059.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_0 = io_mac_b2accu_bits_data_0; // @[NV_NVDLA_cacc.scala 114:37:@6060.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_1 = io_mac_b2accu_bits_data_1; // @[NV_NVDLA_cacc.scala 114:37:@6061.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_2 = io_mac_b2accu_bits_data_2; // @[NV_NVDLA_cacc.scala 114:37:@6062.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_3 = io_mac_b2accu_bits_data_3; // @[NV_NVDLA_cacc.scala 114:37:@6063.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_4 = io_mac_b2accu_bits_data_4; // @[NV_NVDLA_cacc.scala 114:37:@6064.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_5 = io_mac_b2accu_bits_data_5; // @[NV_NVDLA_cacc.scala 114:37:@6065.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_6 = io_mac_b2accu_bits_data_6; // @[NV_NVDLA_cacc.scala 114:37:@6066.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_7 = io_mac_b2accu_bits_data_7; // @[NV_NVDLA_cacc.scala 114:37:@6067.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_8 = io_mac_b2accu_bits_data_8; // @[NV_NVDLA_cacc.scala 114:37:@6068.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_9 = io_mac_b2accu_bits_data_9; // @[NV_NVDLA_cacc.scala 114:37:@6069.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_10 = io_mac_b2accu_bits_data_10; // @[NV_NVDLA_cacc.scala 114:37:@6070.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_11 = io_mac_b2accu_bits_data_11; // @[NV_NVDLA_cacc.scala 114:37:@6071.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_12 = io_mac_b2accu_bits_data_12; // @[NV_NVDLA_cacc.scala 114:37:@6072.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_13 = io_mac_b2accu_bits_data_13; // @[NV_NVDLA_cacc.scala 114:37:@6073.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_14 = io_mac_b2accu_bits_data_14; // @[NV_NVDLA_cacc.scala 114:37:@6074.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_15 = io_mac_b2accu_bits_data_15; // @[NV_NVDLA_cacc.scala 114:37:@6075.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_0 = io_mac_b2accu_bits_mask_0; // @[NV_NVDLA_cacc.scala 115:37:@6076.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_1 = io_mac_b2accu_bits_mask_1; // @[NV_NVDLA_cacc.scala 115:37:@6077.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_2 = io_mac_b2accu_bits_mask_2; // @[NV_NVDLA_cacc.scala 115:37:@6078.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_3 = io_mac_b2accu_bits_mask_3; // @[NV_NVDLA_cacc.scala 115:37:@6079.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_4 = io_mac_b2accu_bits_mask_4; // @[NV_NVDLA_cacc.scala 115:37:@6080.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_5 = io_mac_b2accu_bits_mask_5; // @[NV_NVDLA_cacc.scala 115:37:@6081.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_6 = io_mac_b2accu_bits_mask_6; // @[NV_NVDLA_cacc.scala 115:37:@6082.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_7 = io_mac_b2accu_bits_mask_7; // @[NV_NVDLA_cacc.scala 115:37:@6083.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_8 = io_mac_b2accu_bits_mask_8; // @[NV_NVDLA_cacc.scala 115:37:@6084.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_9 = io_mac_b2accu_bits_mask_9; // @[NV_NVDLA_cacc.scala 115:37:@6085.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_10 = io_mac_b2accu_bits_mask_10; // @[NV_NVDLA_cacc.scala 115:37:@6086.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_11 = io_mac_b2accu_bits_mask_11; // @[NV_NVDLA_cacc.scala 115:37:@6087.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_12 = io_mac_b2accu_bits_mask_12; // @[NV_NVDLA_cacc.scala 115:37:@6088.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_13 = io_mac_b2accu_bits_mask_13; // @[NV_NVDLA_cacc.scala 115:37:@6089.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_14 = io_mac_b2accu_bits_mask_14; // @[NV_NVDLA_cacc.scala 115:37:@6090.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_15 = io_mac_b2accu_bits_mask_15; // @[NV_NVDLA_cacc.scala 115:37:@6091.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_pvld = io_mac_b2accu_valid; // @[NV_NVDLA_cacc.scala 116:37:@6092.4]
  assign NV_NVDLA_CACC_delivery_ctrl_reset = io_nvdla_core_rstn == 1'h0; // @[:@6096.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 125:39:@6097.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_ready = NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_ready; // @[NV_NVDLA_cacc.scala 164:38:@6160.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_0 = NV_NVDLA_CACC_calculator_io_dlv_data_0; // @[NV_NVDLA_cacc.scala 127:33:@6098.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_1 = NV_NVDLA_CACC_calculator_io_dlv_data_1; // @[NV_NVDLA_cacc.scala 127:33:@6099.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_2 = NV_NVDLA_CACC_calculator_io_dlv_data_2; // @[NV_NVDLA_cacc.scala 127:33:@6100.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_3 = NV_NVDLA_CACC_calculator_io_dlv_data_3; // @[NV_NVDLA_cacc.scala 127:33:@6101.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_4 = NV_NVDLA_CACC_calculator_io_dlv_data_4; // @[NV_NVDLA_cacc.scala 127:33:@6102.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_5 = NV_NVDLA_CACC_calculator_io_dlv_data_5; // @[NV_NVDLA_cacc.scala 127:33:@6103.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_6 = NV_NVDLA_CACC_calculator_io_dlv_data_6; // @[NV_NVDLA_cacc.scala 127:33:@6104.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_7 = NV_NVDLA_CACC_calculator_io_dlv_data_7; // @[NV_NVDLA_cacc.scala 127:33:@6105.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_8 = NV_NVDLA_CACC_calculator_io_dlv_data_8; // @[NV_NVDLA_cacc.scala 127:33:@6106.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_9 = NV_NVDLA_CACC_calculator_io_dlv_data_9; // @[NV_NVDLA_cacc.scala 127:33:@6107.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_10 = NV_NVDLA_CACC_calculator_io_dlv_data_10; // @[NV_NVDLA_cacc.scala 127:33:@6108.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_11 = NV_NVDLA_CACC_calculator_io_dlv_data_11; // @[NV_NVDLA_cacc.scala 127:33:@6109.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_12 = NV_NVDLA_CACC_calculator_io_dlv_data_12; // @[NV_NVDLA_cacc.scala 127:33:@6110.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_13 = NV_NVDLA_CACC_calculator_io_dlv_data_13; // @[NV_NVDLA_cacc.scala 127:33:@6111.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_14 = NV_NVDLA_CACC_calculator_io_dlv_data_14; // @[NV_NVDLA_cacc.scala 127:33:@6112.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_15 = NV_NVDLA_CACC_calculator_io_dlv_data_15; // @[NV_NVDLA_cacc.scala 127:33:@6113.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_16 = NV_NVDLA_CACC_calculator_io_dlv_data_16; // @[NV_NVDLA_cacc.scala 127:33:@6114.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_17 = NV_NVDLA_CACC_calculator_io_dlv_data_17; // @[NV_NVDLA_cacc.scala 127:33:@6115.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_18 = NV_NVDLA_CACC_calculator_io_dlv_data_18; // @[NV_NVDLA_cacc.scala 127:33:@6116.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_19 = NV_NVDLA_CACC_calculator_io_dlv_data_19; // @[NV_NVDLA_cacc.scala 127:33:@6117.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_20 = NV_NVDLA_CACC_calculator_io_dlv_data_20; // @[NV_NVDLA_cacc.scala 127:33:@6118.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_21 = NV_NVDLA_CACC_calculator_io_dlv_data_21; // @[NV_NVDLA_cacc.scala 127:33:@6119.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_22 = NV_NVDLA_CACC_calculator_io_dlv_data_22; // @[NV_NVDLA_cacc.scala 127:33:@6120.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_23 = NV_NVDLA_CACC_calculator_io_dlv_data_23; // @[NV_NVDLA_cacc.scala 127:33:@6121.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_24 = NV_NVDLA_CACC_calculator_io_dlv_data_24; // @[NV_NVDLA_cacc.scala 127:33:@6122.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_25 = NV_NVDLA_CACC_calculator_io_dlv_data_25; // @[NV_NVDLA_cacc.scala 127:33:@6123.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_26 = NV_NVDLA_CACC_calculator_io_dlv_data_26; // @[NV_NVDLA_cacc.scala 127:33:@6124.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_27 = NV_NVDLA_CACC_calculator_io_dlv_data_27; // @[NV_NVDLA_cacc.scala 127:33:@6125.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_28 = NV_NVDLA_CACC_calculator_io_dlv_data_28; // @[NV_NVDLA_cacc.scala 127:33:@6126.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_29 = NV_NVDLA_CACC_calculator_io_dlv_data_29; // @[NV_NVDLA_cacc.scala 127:33:@6127.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_30 = NV_NVDLA_CACC_calculator_io_dlv_data_30; // @[NV_NVDLA_cacc.scala 127:33:@6128.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data_31 = NV_NVDLA_CACC_calculator_io_dlv_data_31; // @[NV_NVDLA_cacc.scala 127:33:@6129.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_pd = NV_NVDLA_CACC_calculator_io_dlv_pd; // @[NV_NVDLA_cacc.scala 129:31:@6131.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_valid = NV_NVDLA_CACC_calculator_io_dlv_valid; // @[NV_NVDLA_cacc.scala 130:34:@6132.4]
  assign NV_NVDLA_CACC_delivery_buffer_reset = io_nvdla_core_rstn == 1'h0; // @[:@6151.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 156:41:@6152.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_ready = io_cacc2sdp_pd_ready; // @[NV_NVDLA_cacc.scala 160:20:@6156.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_valid = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 165:34:@6163.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_bits = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 165:34:@6162.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_data = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_data[1023:0]; // @[NV_NVDLA_cacc.scala 165:34:@6161.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_layer_end = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_layer_end; // @[NV_NVDLA_cacc.scala 163:44:@6159.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_valid = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 162:39:@6158.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_bits = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 162:39:@6157.4]
  assign NV_NVDLA_slcg_io_nvdla_clock_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 178:37:@6179.4]
  assign NV_NVDLA_slcg_io_nvdla_clock_dla_clk_ovr_on_sync = io_nvdla_clock_dla_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 178:37:@6178.4]
  assign NV_NVDLA_slcg_io_nvdla_clock_global_clk_ovr_on_sync = io_nvdla_clock_global_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 178:37:@6177.4]
  assign NV_NVDLA_slcg_io_nvdla_clock_tmc2slcg_disable_clock_gating = io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[NV_NVDLA_cacc.scala 178:37:@6176.4]
  assign NV_NVDLA_slcg_io_slcg_en_0 = NV_NVDLA_CACC_regfile_io_slcg_op_en[0]; // @[NV_NVDLA_cacc.scala 179:35:@6181.4]
  assign NV_NVDLA_slcg_1_io_nvdla_clock_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 178:37:@6186.4]
  assign NV_NVDLA_slcg_1_io_nvdla_clock_dla_clk_ovr_on_sync = io_nvdla_clock_dla_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 178:37:@6185.4]
  assign NV_NVDLA_slcg_1_io_nvdla_clock_global_clk_ovr_on_sync = io_nvdla_clock_global_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 178:37:@6184.4]
  assign NV_NVDLA_slcg_1_io_nvdla_clock_tmc2slcg_disable_clock_gating = io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[NV_NVDLA_cacc.scala 178:37:@6183.4]
  assign NV_NVDLA_slcg_1_io_slcg_en_0 = NV_NVDLA_CACC_regfile_io_slcg_op_en[1]; // @[NV_NVDLA_cacc.scala 179:35:@6188.4]
  assign NV_NVDLA_slcg_2_io_nvdla_clock_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 178:37:@6193.4]
  assign NV_NVDLA_slcg_2_io_nvdla_clock_dla_clk_ovr_on_sync = io_nvdla_clock_dla_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 178:37:@6192.4]
  assign NV_NVDLA_slcg_2_io_nvdla_clock_global_clk_ovr_on_sync = io_nvdla_clock_global_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 178:37:@6191.4]
  assign NV_NVDLA_slcg_2_io_nvdla_clock_tmc2slcg_disable_clock_gating = io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[NV_NVDLA_cacc.scala 178:37:@6190.4]
  assign NV_NVDLA_slcg_2_io_slcg_en_0 = NV_NVDLA_CACC_regfile_io_slcg_op_en[2]; // @[NV_NVDLA_cacc.scala 179:35:@6195.4]
  assign NV_NVDLA_slcg_3_io_nvdla_clock_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 184:34:@6203.4]
  assign NV_NVDLA_slcg_3_io_nvdla_clock_dla_clk_ovr_on_sync = io_nvdla_clock_dla_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 184:34:@6202.4]
  assign NV_NVDLA_slcg_3_io_nvdla_clock_global_clk_ovr_on_sync = io_nvdla_clock_global_clk_ovr_on_sync; // @[NV_NVDLA_cacc.scala 184:34:@6201.4]
  assign NV_NVDLA_slcg_3_io_nvdla_clock_tmc2slcg_disable_clock_gating = io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[NV_NVDLA_cacc.scala 184:34:@6200.4]
  assign NV_NVDLA_slcg_3_io_slcg_en_0 = _T_604 | NV_NVDLA_CACC_assembly_ctrl_io_slcg_cell_en; // @[NV_NVDLA_cacc.scala 185:33:@6206.4]
endmodule
