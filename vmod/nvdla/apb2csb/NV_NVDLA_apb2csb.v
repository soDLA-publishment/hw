// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// File Name: NV_NVDLA_apb2csb.v

module NV_NVDLA_apb2csb(
   pclk
  ,prstn
  ,csb2nvdla_ready
  ,nvdla2csb_data
  ,nvdla2csb_valid
  ,paddr
  ,penable
  ,psel
  ,pwdata
  ,pwrite
  ,csb2nvdla_addr
  ,csb2nvdla_nposted
  ,csb2nvdla_valid
  ,csb2nvdla_wdat
  ,csb2nvdla_write
  ,prdata
  ,pready
  );


input  pclk;
input  prstn;

//apb interface
input         psel; 
input         penable;
input         pwrite;
input [31:0]  paddr;
input [31:0]  pwdata;
output [31:0] prdata;
output        pready;

//csb interface 
output         csb2nvdla_valid;   
input          csb2nvdla_ready; 
output  [15:0] csb2nvdla_addr;
output  [31:0] csb2nvdla_wdat;
output         csb2nvdla_write;
output         csb2nvdla_nposted;

input          nvdla2csb_valid; 
input   [31:0] nvdla2csb_data;

//wrapper NV_NVDLA_apb2csb to NV_soDLA_apb2csb

wrapper_apb2csb wrapper_apb2csb(
    .pclk(pclk),
    .prstn(prstn),
    .csb2nvdla_ready(csb2nvdla_ready),
    .nvdla2csb_data(nvdla2csb_data),
    .nvdla2csb_valid(nvdla2csb_valid),
    .paddr(paddr),
    .penable(penable),
    .psel(psel),
    .pwdata(pwdata),
    .pwrite(pwrite),
    .csb2nvdla_addr(csb2nvdla_addr),
    .csb2nvdla_nposted(csb2nvdla_nposted),
    .csb2nvdla_valid(csb2nvdla_valid),
    .csb2nvdla_wdat(csb2nvdla_wdat),
    .csb2nvdla_write(csb2nvdla_write),
    .prdata(prdata),
    .pready(pready)
    );

    


endmodule // NV_NVDLA_apb2csb

