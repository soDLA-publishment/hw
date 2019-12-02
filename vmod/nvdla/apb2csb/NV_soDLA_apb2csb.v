module NV_soDLA_apb2csb( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_pclk, // @[:@6.4]
  input         io_psel, // @[:@6.4]
  input         io_penable, // @[:@6.4]
  input         io_pwrite, // @[:@6.4]
  input  [31:0] io_paddr, // @[:@6.4]
  input  [31:0] io_pwdata, // @[:@6.4]
  output [31:0] io_prdata, // @[:@6.4]
  output        io_pready, // @[:@6.4]
  input         io_csb2nvdla_ready, // @[:@6.4]
  output        io_csb2nvdla_valid, // @[:@6.4]
  output [15:0] io_csb2nvdla_bits_addr, // @[:@6.4]
  output [31:0] io_csb2nvdla_bits_wdat, // @[:@6.4]
  output        io_csb2nvdla_bits_write, // @[:@6.4]
  output        io_csb2nvdla_bits_nposted, // @[:@6.4]
  input         io_nvdla2csb_valid, // @[:@6.4]
  input  [31:0] io_nvdla2csb_bits_data // @[:@6.4]
);
  reg  _T_59; // @[NV_NVDLA_apb2csb.scala 46:31:@8.4]
  reg [31:0] _RAND_0;
  wire  _T_60; // @[NV_NVDLA_apb2csb.scala 48:32:@9.4]
  wire  _T_61; // @[NV_NVDLA_apb2csb.scala 48:45:@10.4]
  wire  _T_64; // @[NV_NVDLA_apb2csb.scala 49:47:@12.4]
  wire  _T_65; // @[NV_NVDLA_apb2csb.scala 49:45:@13.4]
  wire  _T_66; // @[NV_NVDLA_apb2csb.scala 51:29:@14.4]
  wire  _T_68; // @[NV_NVDLA_apb2csb.scala 54:34:@19.6]
  wire  _GEN_0; // @[NV_NVDLA_apb2csb.scala 54:49:@20.6]
  wire  _GEN_1; // @[NV_NVDLA_apb2csb.scala 51:44:@15.4]
  wire  _T_71; // @[NV_NVDLA_apb2csb.scala 58:57:@23.4]
  wire  _T_72; // @[NV_NVDLA_apb2csb.scala 58:55:@24.4]
  wire  _T_78; // @[NV_NVDLA_apb2csb.scala 65:34:@34.4]
  wire  _T_79; // @[NV_NVDLA_apb2csb.scala 65:32:@35.4]
  wire  _T_81; // @[NV_NVDLA_apb2csb.scala 65:69:@36.4]
  wire  _T_82; // @[NV_NVDLA_apb2csb.scala 65:67:@37.4]
  wire  _T_83; // @[NV_NVDLA_apb2csb.scala 65:54:@38.4]
  assign _T_60 = io_psel & io_penable; // @[NV_NVDLA_apb2csb.scala 48:32:@9.4]
  assign _T_61 = _T_60 & io_pwrite; // @[NV_NVDLA_apb2csb.scala 48:45:@10.4]
  assign _T_64 = io_pwrite == 1'h0; // @[NV_NVDLA_apb2csb.scala 49:47:@12.4]
  assign _T_65 = _T_60 & _T_64; // @[NV_NVDLA_apb2csb.scala 49:45:@13.4]
  assign _T_66 = io_nvdla2csb_valid & _T_59; // @[NV_NVDLA_apb2csb.scala 51:29:@14.4]
  assign _T_68 = io_csb2nvdla_ready & _T_65; // @[NV_NVDLA_apb2csb.scala 54:34:@19.6]
  assign _GEN_0 = _T_68 ? 1'h1 : _T_59; // @[NV_NVDLA_apb2csb.scala 54:49:@20.6]
  assign _GEN_1 = _T_66 ? 1'h0 : _GEN_0; // @[NV_NVDLA_apb2csb.scala 51:44:@15.4]
  assign _T_71 = _T_59 == 1'h0; // @[NV_NVDLA_apb2csb.scala 58:57:@23.4]
  assign _T_72 = _T_65 & _T_71; // @[NV_NVDLA_apb2csb.scala 58:55:@24.4]
  assign _T_78 = io_csb2nvdla_ready == 1'h0; // @[NV_NVDLA_apb2csb.scala 65:34:@34.4]
  assign _T_79 = _T_61 & _T_78; // @[NV_NVDLA_apb2csb.scala 65:32:@35.4]
  assign _T_81 = io_nvdla2csb_valid == 1'h0; // @[NV_NVDLA_apb2csb.scala 65:69:@36.4]
  assign _T_82 = _T_65 & _T_81; // @[NV_NVDLA_apb2csb.scala 65:67:@37.4]
  assign _T_83 = _T_79 | _T_82; // @[NV_NVDLA_apb2csb.scala 65:54:@38.4]
  assign io_prdata = io_nvdla2csb_bits_data; // @[NV_NVDLA_apb2csb.scala 64:15:@33.4]
  assign io_pready = _T_83 == 1'h0; // @[NV_NVDLA_apb2csb.scala 65:15:@40.4]
  assign io_csb2nvdla_valid = _T_61 | _T_72; // @[NV_NVDLA_apb2csb.scala 58:24:@26.4]
  assign io_csb2nvdla_bits_addr = io_paddr[17:2]; // @[NV_NVDLA_apb2csb.scala 59:28:@28.4]
  assign io_csb2nvdla_bits_wdat = io_pwdata; // @[NV_NVDLA_apb2csb.scala 60:28:@30.4]
  assign io_csb2nvdla_bits_write = io_pwrite; // @[NV_NVDLA_apb2csb.scala 61:29:@31.4]
  assign io_csb2nvdla_bits_nposted = 1'h0; // @[NV_NVDLA_apb2csb.scala 62:31:@32.4]
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
  end
`endif // RANDOMIZE
  always @(posedge io_pclk) begin
    if (reset) begin
      _T_59 <= 1'h0;
    end else begin
      if (_T_66) begin
        _T_59 <= 1'h0;
      end else begin
        if (_T_68) begin
          _T_59 <= 1'h1;
        end
      end
    end
  end
endmodule
