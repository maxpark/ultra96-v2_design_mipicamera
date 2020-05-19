//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Tue May 12 17:34:33 2020
//Host        : zw-pc running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (mipi_phy_csi_clk_n,
    mipi_phy_csi_clk_p,
    mipi_phy_csi_data_n,
    mipi_phy_csi_data_p);
  input mipi_phy_csi_clk_n;
  input mipi_phy_csi_clk_p;
  input [1:0]mipi_phy_csi_data_n;
  input [1:0]mipi_phy_csi_data_p;

  wire mipi_phy_csi_clk_n;
  wire mipi_phy_csi_clk_p;
  wire [1:0]mipi_phy_csi_data_n;
  wire [1:0]mipi_phy_csi_data_p;

  design_1 design_1_i
       (.mipi_phy_csi_clk_n(mipi_phy_csi_clk_n),
        .mipi_phy_csi_clk_p(mipi_phy_csi_clk_p),
        .mipi_phy_csi_data_n(mipi_phy_csi_data_n),
        .mipi_phy_csi_data_p(mipi_phy_csi_data_p));
endmodule
