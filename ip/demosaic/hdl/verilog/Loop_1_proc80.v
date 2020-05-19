// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_1_proc80 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        p_idata_TDATA,
        p_idata_TVALID,
        p_idata_TREADY,
        p_idata_TUSER,
        p_idata_TLAST,
        p_idata_V_bv_V_din,
        p_idata_V_bv_V_full_n,
        p_idata_V_bv_V_write,
        p_iuser_V_bv_V_din,
        p_iuser_V_bv_V_full_n,
        p_iuser_V_bv_V_write,
        p_ilast_V_bv_V_din,
        p_ilast_V_bv_V_full_n,
        p_ilast_V_bv_V_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [39:0] p_idata_TDATA;
input   p_idata_TVALID;
output   p_idata_TREADY;
input  [0:0] p_idata_TUSER;
input  [0:0] p_idata_TLAST;
output  [39:0] p_idata_V_bv_V_din;
input   p_idata_V_bv_V_full_n;
output   p_idata_V_bv_V_write;
output  [0:0] p_iuser_V_bv_V_din;
input   p_iuser_V_bv_V_full_n;
output   p_iuser_V_bv_V_write;
output  [0:0] p_ilast_V_bv_V_din;
input   p_ilast_V_bv_V_full_n;
output   p_ilast_V_bv_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg p_idata_V_bv_V_write;
reg p_iuser_V_bv_V_write;
reg p_ilast_V_bv_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg   [39:0] p_idata_V_data_V_0_data_out;
wire    p_idata_V_data_V_0_vld_in;
wire    p_idata_V_data_V_0_vld_out;
wire    p_idata_V_data_V_0_ack_in;
reg    p_idata_V_data_V_0_ack_out;
reg   [39:0] p_idata_V_data_V_0_payload_A;
reg   [39:0] p_idata_V_data_V_0_payload_B;
reg    p_idata_V_data_V_0_sel_rd;
reg    p_idata_V_data_V_0_sel_wr;
wire    p_idata_V_data_V_0_sel;
wire    p_idata_V_data_V_0_load_A;
wire    p_idata_V_data_V_0_load_B;
reg   [1:0] p_idata_V_data_V_0_state;
wire    p_idata_V_data_V_0_state_cmp_full;
reg   [0:0] p_idata_V_user_V_0_data_out;
wire    p_idata_V_user_V_0_vld_in;
wire    p_idata_V_user_V_0_vld_out;
wire    p_idata_V_user_V_0_ack_in;
reg    p_idata_V_user_V_0_ack_out;
reg   [0:0] p_idata_V_user_V_0_payload_A;
reg   [0:0] p_idata_V_user_V_0_payload_B;
reg    p_idata_V_user_V_0_sel_rd;
reg    p_idata_V_user_V_0_sel_wr;
wire    p_idata_V_user_V_0_sel;
wire    p_idata_V_user_V_0_load_A;
wire    p_idata_V_user_V_0_load_B;
reg   [1:0] p_idata_V_user_V_0_state;
wire    p_idata_V_user_V_0_state_cmp_full;
reg   [0:0] p_idata_V_last_V_0_data_out;
wire    p_idata_V_last_V_0_vld_in;
wire    p_idata_V_last_V_0_vld_out;
wire    p_idata_V_last_V_0_ack_in;
reg    p_idata_V_last_V_0_ack_out;
reg   [0:0] p_idata_V_last_V_0_payload_A;
reg   [0:0] p_idata_V_last_V_0_payload_B;
reg    p_idata_V_last_V_0_sel_rd;
reg    p_idata_V_last_V_0_sel_wr;
wire    p_idata_V_last_V_0_sel;
wire    p_idata_V_last_V_0_load_A;
wire    p_idata_V_last_V_0_load_B;
reg   [1:0] p_idata_V_last_V_0_state;
wire    p_idata_V_last_V_0_state_cmp_full;
reg    p_idata_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i_i_reg_159;
reg    p_idata_V_bv_V_blk_n;
reg    p_iuser_V_bv_V_blk_n;
reg    p_ilast_V_bv_V_blk_n;
reg   [18:0] i_0_i_i_reg_121;
wire   [0:0] exitcond_i_i_fu_132_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [18:0] i_fu_138_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 p_idata_V_data_V_0_sel_rd = 1'b0;
#0 p_idata_V_data_V_0_sel_wr = 1'b0;
#0 p_idata_V_data_V_0_state = 2'd0;
#0 p_idata_V_user_V_0_sel_rd = 1'b0;
#0 p_idata_V_user_V_0_sel_wr = 1'b0;
#0 p_idata_V_user_V_0_state = 2'd0;
#0 p_idata_V_last_V_0_sel_rd = 1'b0;
#0 p_idata_V_last_V_0_sel_wr = 1'b0;
#0 p_idata_V_last_V_0_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((p_idata_V_data_V_0_ack_out == 1'b1) & (p_idata_V_data_V_0_vld_out == 1'b1))) begin
            p_idata_V_data_V_0_sel_rd <= ~p_idata_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((p_idata_V_data_V_0_ack_in == 1'b1) & (p_idata_V_data_V_0_vld_in == 1'b1))) begin
            p_idata_V_data_V_0_sel_wr <= ~p_idata_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((p_idata_V_data_V_0_state == 2'd2) & (p_idata_V_data_V_0_vld_in == 1'b0)) | ((p_idata_V_data_V_0_state == 2'd3) & (p_idata_V_data_V_0_vld_in == 1'b0) & (p_idata_V_data_V_0_ack_out == 1'b1)))) begin
            p_idata_V_data_V_0_state <= 2'd2;
        end else if ((((p_idata_V_data_V_0_state == 2'd1) & (p_idata_V_data_V_0_ack_out == 1'b0)) | ((p_idata_V_data_V_0_state == 2'd3) & (p_idata_V_data_V_0_ack_out == 1'b0) & (p_idata_V_data_V_0_vld_in == 1'b1)))) begin
            p_idata_V_data_V_0_state <= 2'd1;
        end else if (((~((p_idata_V_data_V_0_vld_in == 1'b0) & (p_idata_V_data_V_0_ack_out == 1'b1)) & ~((p_idata_V_data_V_0_ack_out == 1'b0) & (p_idata_V_data_V_0_vld_in == 1'b1)) & (p_idata_V_data_V_0_state == 2'd3)) | ((p_idata_V_data_V_0_state == 2'd1) & (p_idata_V_data_V_0_ack_out == 1'b1)) | ((p_idata_V_data_V_0_state == 2'd2) & (p_idata_V_data_V_0_vld_in == 1'b1)))) begin
            p_idata_V_data_V_0_state <= 2'd3;
        end else begin
            p_idata_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_last_V_0_sel_rd <= 1'b0;
    end else begin
        if (((p_idata_V_last_V_0_ack_out == 1'b1) & (p_idata_V_last_V_0_vld_out == 1'b1))) begin
            p_idata_V_last_V_0_sel_rd <= ~p_idata_V_last_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_last_V_0_sel_wr <= 1'b0;
    end else begin
        if (((p_idata_V_last_V_0_ack_in == 1'b1) & (p_idata_V_last_V_0_vld_in == 1'b1))) begin
            p_idata_V_last_V_0_sel_wr <= ~p_idata_V_last_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_last_V_0_state <= 2'd0;
    end else begin
        if ((((p_idata_V_last_V_0_state == 2'd2) & (p_idata_V_last_V_0_vld_in == 1'b0)) | ((p_idata_V_last_V_0_state == 2'd3) & (p_idata_V_last_V_0_vld_in == 1'b0) & (p_idata_V_last_V_0_ack_out == 1'b1)))) begin
            p_idata_V_last_V_0_state <= 2'd2;
        end else if ((((p_idata_V_last_V_0_state == 2'd1) & (p_idata_V_last_V_0_ack_out == 1'b0)) | ((p_idata_V_last_V_0_state == 2'd3) & (p_idata_V_last_V_0_ack_out == 1'b0) & (p_idata_V_last_V_0_vld_in == 1'b1)))) begin
            p_idata_V_last_V_0_state <= 2'd1;
        end else if (((~((p_idata_V_last_V_0_vld_in == 1'b0) & (p_idata_V_last_V_0_ack_out == 1'b1)) & ~((p_idata_V_last_V_0_ack_out == 1'b0) & (p_idata_V_last_V_0_vld_in == 1'b1)) & (p_idata_V_last_V_0_state == 2'd3)) | ((p_idata_V_last_V_0_state == 2'd1) & (p_idata_V_last_V_0_ack_out == 1'b1)) | ((p_idata_V_last_V_0_state == 2'd2) & (p_idata_V_last_V_0_vld_in == 1'b1)))) begin
            p_idata_V_last_V_0_state <= 2'd3;
        end else begin
            p_idata_V_last_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_user_V_0_sel_rd <= 1'b0;
    end else begin
        if (((p_idata_V_user_V_0_ack_out == 1'b1) & (p_idata_V_user_V_0_vld_out == 1'b1))) begin
            p_idata_V_user_V_0_sel_rd <= ~p_idata_V_user_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_user_V_0_sel_wr <= 1'b0;
    end else begin
        if (((p_idata_V_user_V_0_ack_in == 1'b1) & (p_idata_V_user_V_0_vld_in == 1'b1))) begin
            p_idata_V_user_V_0_sel_wr <= ~p_idata_V_user_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_idata_V_user_V_0_state <= 2'd0;
    end else begin
        if ((((p_idata_V_user_V_0_state == 2'd2) & (p_idata_V_user_V_0_vld_in == 1'b0)) | ((p_idata_V_user_V_0_state == 2'd3) & (p_idata_V_user_V_0_vld_in == 1'b0) & (p_idata_V_user_V_0_ack_out == 1'b1)))) begin
            p_idata_V_user_V_0_state <= 2'd2;
        end else if ((((p_idata_V_user_V_0_state == 2'd1) & (p_idata_V_user_V_0_ack_out == 1'b0)) | ((p_idata_V_user_V_0_state == 2'd3) & (p_idata_V_user_V_0_ack_out == 1'b0) & (p_idata_V_user_V_0_vld_in == 1'b1)))) begin
            p_idata_V_user_V_0_state <= 2'd1;
        end else if (((~((p_idata_V_user_V_0_vld_in == 1'b0) & (p_idata_V_user_V_0_ack_out == 1'b1)) & ~((p_idata_V_user_V_0_ack_out == 1'b0) & (p_idata_V_user_V_0_vld_in == 1'b1)) & (p_idata_V_user_V_0_state == 2'd3)) | ((p_idata_V_user_V_0_state == 2'd1) & (p_idata_V_user_V_0_ack_out == 1'b1)) | ((p_idata_V_user_V_0_state == 2'd2) & (p_idata_V_user_V_0_vld_in == 1'b1)))) begin
            p_idata_V_user_V_0_state <= 2'd3;
        end else begin
            p_idata_V_user_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_i_fu_132_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_i_i_reg_121 <= i_fu_138_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_i_reg_121 <= 19'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_i_i_reg_159 <= exitcond_i_i_fu_132_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((p_idata_V_data_V_0_load_A == 1'b1)) begin
        p_idata_V_data_V_0_payload_A <= p_idata_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((p_idata_V_data_V_0_load_B == 1'b1)) begin
        p_idata_V_data_V_0_payload_B <= p_idata_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((p_idata_V_last_V_0_load_A == 1'b1)) begin
        p_idata_V_last_V_0_payload_A <= p_idata_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((p_idata_V_last_V_0_load_B == 1'b1)) begin
        p_idata_V_last_V_0_payload_B <= p_idata_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((p_idata_V_user_V_0_load_A == 1'b1)) begin
        p_idata_V_user_V_0_payload_A <= p_idata_TUSER;
    end
end

always @ (posedge ap_clk) begin
    if ((p_idata_V_user_V_0_load_B == 1'b1)) begin
        p_idata_V_user_V_0_payload_B <= p_idata_TUSER;
    end
end

always @ (*) begin
    if ((exitcond_i_i_fu_132_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_idata_TDATA_blk_n = p_idata_V_data_V_0_state[1'd0];
    end else begin
        p_idata_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_idata_V_bv_V_blk_n = p_idata_V_bv_V_full_n;
    end else begin
        p_idata_V_bv_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_idata_V_bv_V_write = 1'b1;
    end else begin
        p_idata_V_bv_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_idata_V_data_V_0_ack_out = 1'b1;
    end else begin
        p_idata_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((p_idata_V_data_V_0_sel == 1'b1)) begin
        p_idata_V_data_V_0_data_out = p_idata_V_data_V_0_payload_B;
    end else begin
        p_idata_V_data_V_0_data_out = p_idata_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_idata_V_last_V_0_ack_out = 1'b1;
    end else begin
        p_idata_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((p_idata_V_last_V_0_sel == 1'b1)) begin
        p_idata_V_last_V_0_data_out = p_idata_V_last_V_0_payload_B;
    end else begin
        p_idata_V_last_V_0_data_out = p_idata_V_last_V_0_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_idata_V_user_V_0_ack_out = 1'b1;
    end else begin
        p_idata_V_user_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((p_idata_V_user_V_0_sel == 1'b1)) begin
        p_idata_V_user_V_0_data_out = p_idata_V_user_V_0_payload_B;
    end else begin
        p_idata_V_user_V_0_data_out = p_idata_V_user_V_0_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ilast_V_bv_V_blk_n = p_ilast_V_bv_V_full_n;
    end else begin
        p_ilast_V_bv_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ilast_V_bv_V_write = 1'b1;
    end else begin
        p_ilast_V_bv_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_iuser_V_bv_V_blk_n = p_iuser_V_bv_V_full_n;
    end else begin
        p_iuser_V_bv_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_159 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_iuser_V_bv_V_write = 1'b1;
    end else begin
        p_iuser_V_bv_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((exitcond_i_i_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond_i_i_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_i_i_reg_159 == 1'd0) & (p_ilast_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_iuser_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_idata_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_idata_V_data_V_0_vld_out == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_i_i_reg_159 == 1'd0) & (p_ilast_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_iuser_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_idata_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_idata_V_data_V_0_vld_out == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_i_i_reg_159 == 1'd0) & (p_ilast_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_iuser_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_idata_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_idata_V_data_V_0_vld_out == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((exitcond_i_i_reg_159 == 1'd0) & (p_ilast_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_iuser_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_idata_V_bv_V_full_n == 1'b0)) | ((exitcond_i_i_reg_159 == 1'd0) & (p_idata_V_data_V_0_vld_out == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign exitcond_i_i_fu_132_p2 = ((i_0_i_i_reg_121 == 19'd518400) ? 1'b1 : 1'b0);

assign i_fu_138_p2 = (i_0_i_i_reg_121 + 19'd1);

assign p_idata_TREADY = p_idata_V_last_V_0_state[1'd1];

assign p_idata_V_bv_V_din = p_idata_V_data_V_0_data_out;

assign p_idata_V_data_V_0_ack_in = p_idata_V_data_V_0_state[1'd1];

assign p_idata_V_data_V_0_load_A = (p_idata_V_data_V_0_state_cmp_full & ~p_idata_V_data_V_0_sel_wr);

assign p_idata_V_data_V_0_load_B = (p_idata_V_data_V_0_state_cmp_full & p_idata_V_data_V_0_sel_wr);

assign p_idata_V_data_V_0_sel = p_idata_V_data_V_0_sel_rd;

assign p_idata_V_data_V_0_state_cmp_full = ((p_idata_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign p_idata_V_data_V_0_vld_in = p_idata_TVALID;

assign p_idata_V_data_V_0_vld_out = p_idata_V_data_V_0_state[1'd0];

assign p_idata_V_last_V_0_ack_in = p_idata_V_last_V_0_state[1'd1];

assign p_idata_V_last_V_0_load_A = (p_idata_V_last_V_0_state_cmp_full & ~p_idata_V_last_V_0_sel_wr);

assign p_idata_V_last_V_0_load_B = (p_idata_V_last_V_0_state_cmp_full & p_idata_V_last_V_0_sel_wr);

assign p_idata_V_last_V_0_sel = p_idata_V_last_V_0_sel_rd;

assign p_idata_V_last_V_0_state_cmp_full = ((p_idata_V_last_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign p_idata_V_last_V_0_vld_in = p_idata_TVALID;

assign p_idata_V_last_V_0_vld_out = p_idata_V_last_V_0_state[1'd0];

assign p_idata_V_user_V_0_ack_in = p_idata_V_user_V_0_state[1'd1];

assign p_idata_V_user_V_0_load_A = (p_idata_V_user_V_0_state_cmp_full & ~p_idata_V_user_V_0_sel_wr);

assign p_idata_V_user_V_0_load_B = (p_idata_V_user_V_0_state_cmp_full & p_idata_V_user_V_0_sel_wr);

assign p_idata_V_user_V_0_sel = p_idata_V_user_V_0_sel_rd;

assign p_idata_V_user_V_0_state_cmp_full = ((p_idata_V_user_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign p_idata_V_user_V_0_vld_in = p_idata_TVALID;

assign p_idata_V_user_V_0_vld_out = p_idata_V_user_V_0_state[1'd0];

assign p_ilast_V_bv_V_din = p_idata_V_last_V_0_data_out;

assign p_iuser_V_bv_V_din = p_idata_V_user_V_0_data_out;

assign start_out = real_start;

endmodule //Loop_1_proc80
