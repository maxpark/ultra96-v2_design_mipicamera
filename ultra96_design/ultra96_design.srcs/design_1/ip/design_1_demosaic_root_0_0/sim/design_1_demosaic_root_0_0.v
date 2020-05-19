// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:demosaic_root:1.0
// IP Revision: 1812171933

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_demosaic_root_0_0 (
  s_axi_BUS_AXI4LS_AWADDR,
  s_axi_BUS_AXI4LS_AWVALID,
  s_axi_BUS_AXI4LS_AWREADY,
  s_axi_BUS_AXI4LS_WDATA,
  s_axi_BUS_AXI4LS_WSTRB,
  s_axi_BUS_AXI4LS_WVALID,
  s_axi_BUS_AXI4LS_WREADY,
  s_axi_BUS_AXI4LS_BRESP,
  s_axi_BUS_AXI4LS_BVALID,
  s_axi_BUS_AXI4LS_BREADY,
  s_axi_BUS_AXI4LS_ARADDR,
  s_axi_BUS_AXI4LS_ARVALID,
  s_axi_BUS_AXI4LS_ARREADY,
  s_axi_BUS_AXI4LS_RDATA,
  s_axi_BUS_AXI4LS_RRESP,
  s_axi_BUS_AXI4LS_RVALID,
  s_axi_BUS_AXI4LS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  p_idata_TVALID,
  p_idata_TREADY,
  p_idata_TDATA,
  p_idata_TUSER,
  p_idata_TLAST,
  p_odata_TVALID,
  p_odata_TREADY,
  p_odata_TDATA,
  p_odata_TUSER,
  p_odata_TLAST
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS AWADDR" *)
input wire [4 : 0] s_axi_BUS_AXI4LS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS AWVALID" *)
input wire s_axi_BUS_AXI4LS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS AWREADY" *)
output wire s_axi_BUS_AXI4LS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS WDATA" *)
input wire [31 : 0] s_axi_BUS_AXI4LS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS WSTRB" *)
input wire [3 : 0] s_axi_BUS_AXI4LS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS WVALID" *)
input wire s_axi_BUS_AXI4LS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS WREADY" *)
output wire s_axi_BUS_AXI4LS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS BRESP" *)
output wire [1 : 0] s_axi_BUS_AXI4LS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS BVALID" *)
output wire s_axi_BUS_AXI4LS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS BREADY" *)
input wire s_axi_BUS_AXI4LS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS ARADDR" *)
input wire [4 : 0] s_axi_BUS_AXI4LS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS ARVALID" *)
input wire s_axi_BUS_AXI4LS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS ARREADY" *)
output wire s_axi_BUS_AXI4LS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS RDATA" *)
output wire [31 : 0] s_axi_BUS_AXI4LS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS RRESP" *)
output wire [1 : 0] s_axi_BUS_AXI4LS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS RVALID" *)
output wire s_axi_BUS_AXI4LS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_BUS_AXI4LS, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 10000000\
0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_AXI4LS RREADY" *)
input wire s_axi_BUS_AXI4LS_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS_AXI4LS:p_idata:p_odata, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE\
 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_idata TVALID" *)
input wire p_idata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_idata TREADY" *)
output wire p_idata_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_idata TDATA" *)
input wire [39 : 0] p_idata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_idata TUSER" *)
input wire [0 : 0] p_idata_TUSER;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_idata, TDATA_NUM_BYTES 5, TUSER_WIDTH 1, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_idata TLAST" *)
input wire [0 : 0] p_idata_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_odata TVALID" *)
output wire p_odata_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_odata TREADY" *)
input wire p_odata_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_odata TDATA" *)
output wire [23 : 0] p_odata_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_odata TUSER" *)
output wire [0 : 0] p_odata_TUSER;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_odata, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} \
format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 24 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwid\
th {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p_odata TLAST" *)
output wire [0 : 0] p_odata_TLAST;

  demosaic_root #(
    .C_S_AXI_BUS_AXI4LS_ADDR_WIDTH(5),
    .C_S_AXI_BUS_AXI4LS_DATA_WIDTH(32)
  ) inst (
    .s_axi_BUS_AXI4LS_AWADDR(s_axi_BUS_AXI4LS_AWADDR),
    .s_axi_BUS_AXI4LS_AWVALID(s_axi_BUS_AXI4LS_AWVALID),
    .s_axi_BUS_AXI4LS_AWREADY(s_axi_BUS_AXI4LS_AWREADY),
    .s_axi_BUS_AXI4LS_WDATA(s_axi_BUS_AXI4LS_WDATA),
    .s_axi_BUS_AXI4LS_WSTRB(s_axi_BUS_AXI4LS_WSTRB),
    .s_axi_BUS_AXI4LS_WVALID(s_axi_BUS_AXI4LS_WVALID),
    .s_axi_BUS_AXI4LS_WREADY(s_axi_BUS_AXI4LS_WREADY),
    .s_axi_BUS_AXI4LS_BRESP(s_axi_BUS_AXI4LS_BRESP),
    .s_axi_BUS_AXI4LS_BVALID(s_axi_BUS_AXI4LS_BVALID),
    .s_axi_BUS_AXI4LS_BREADY(s_axi_BUS_AXI4LS_BREADY),
    .s_axi_BUS_AXI4LS_ARADDR(s_axi_BUS_AXI4LS_ARADDR),
    .s_axi_BUS_AXI4LS_ARVALID(s_axi_BUS_AXI4LS_ARVALID),
    .s_axi_BUS_AXI4LS_ARREADY(s_axi_BUS_AXI4LS_ARREADY),
    .s_axi_BUS_AXI4LS_RDATA(s_axi_BUS_AXI4LS_RDATA),
    .s_axi_BUS_AXI4LS_RRESP(s_axi_BUS_AXI4LS_RRESP),
    .s_axi_BUS_AXI4LS_RVALID(s_axi_BUS_AXI4LS_RVALID),
    .s_axi_BUS_AXI4LS_RREADY(s_axi_BUS_AXI4LS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .p_idata_TVALID(p_idata_TVALID),
    .p_idata_TREADY(p_idata_TREADY),
    .p_idata_TDATA(p_idata_TDATA),
    .p_idata_TUSER(p_idata_TUSER),
    .p_idata_TLAST(p_idata_TLAST),
    .p_odata_TVALID(p_odata_TVALID),
    .p_odata_TREADY(p_odata_TREADY),
    .p_odata_TDATA(p_odata_TDATA),
    .p_odata_TUSER(p_odata_TUSER),
    .p_odata_TLAST(p_odata_TLAST)
  );
endmodule
