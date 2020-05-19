-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_2_proc81 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_odata_V_bv_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_odata_V_bv_V_empty_n : IN STD_LOGIC;
    p_odata_V_bv_V_read : OUT STD_LOGIC;
    p_ouser_V_bv_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    p_ouser_V_bv_V_empty_n : IN STD_LOGIC;
    p_ouser_V_bv_V_read : OUT STD_LOGIC;
    p_olast_V_bv_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    p_olast_V_bv_V_empty_n : IN STD_LOGIC;
    p_olast_V_bv_V_read : OUT STD_LOGIC;
    p_odata_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    p_odata_TVALID : OUT STD_LOGIC;
    p_odata_TREADY : IN STD_LOGIC;
    p_odata_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    p_odata_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of Loop_2_proc81 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv20_FD200 : STD_LOGIC_VECTOR (19 downto 0) := "11111101001000000000";
    constant ap_const_lv20_1 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_odata_V_data_V_1_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal p_odata_V_data_V_1_vld_in : STD_LOGIC;
    signal p_odata_V_data_V_1_vld_out : STD_LOGIC;
    signal p_odata_V_data_V_1_ack_in : STD_LOGIC;
    signal p_odata_V_data_V_1_ack_out : STD_LOGIC;
    signal p_odata_V_data_V_1_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal p_odata_V_data_V_1_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal p_odata_V_data_V_1_sel_rd : STD_LOGIC := '0';
    signal p_odata_V_data_V_1_sel_wr : STD_LOGIC := '0';
    signal p_odata_V_data_V_1_sel : STD_LOGIC;
    signal p_odata_V_data_V_1_load_A : STD_LOGIC;
    signal p_odata_V_data_V_1_load_B : STD_LOGIC;
    signal p_odata_V_data_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal p_odata_V_data_V_1_state_cmp_full : STD_LOGIC;
    signal p_odata_V_user_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal p_odata_V_user_V_1_vld_in : STD_LOGIC;
    signal p_odata_V_user_V_1_vld_out : STD_LOGIC;
    signal p_odata_V_user_V_1_ack_in : STD_LOGIC;
    signal p_odata_V_user_V_1_ack_out : STD_LOGIC;
    signal p_odata_V_user_V_1_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal p_odata_V_user_V_1_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal p_odata_V_user_V_1_sel_rd : STD_LOGIC := '0';
    signal p_odata_V_user_V_1_sel_wr : STD_LOGIC := '0';
    signal p_odata_V_user_V_1_sel : STD_LOGIC;
    signal p_odata_V_user_V_1_load_A : STD_LOGIC;
    signal p_odata_V_user_V_1_load_B : STD_LOGIC;
    signal p_odata_V_user_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal p_odata_V_user_V_1_state_cmp_full : STD_LOGIC;
    signal p_odata_V_last_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal p_odata_V_last_V_1_vld_in : STD_LOGIC;
    signal p_odata_V_last_V_1_vld_out : STD_LOGIC;
    signal p_odata_V_last_V_1_ack_in : STD_LOGIC;
    signal p_odata_V_last_V_1_ack_out : STD_LOGIC;
    signal p_odata_V_last_V_1_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal p_odata_V_last_V_1_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal p_odata_V_last_V_1_sel_rd : STD_LOGIC := '0';
    signal p_odata_V_last_V_1_sel_wr : STD_LOGIC := '0';
    signal p_odata_V_last_V_1_sel : STD_LOGIC;
    signal p_odata_V_last_V_1_load_A : STD_LOGIC;
    signal p_odata_V_last_V_1_load_B : STD_LOGIC;
    signal p_odata_V_last_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal p_odata_V_last_V_1_state_cmp_full : STD_LOGIC;
    signal p_odata_V_bv_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal exitcond_i1_reg_147 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_ouser_V_bv_V_blk_n : STD_LOGIC;
    signal p_olast_V_bv_V_blk_n : STD_LOGIC;
    signal p_odata_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal exitcond_i1_reg_147_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_i1_reg_124 : STD_LOGIC_VECTOR (19 downto 0);
    signal exitcond_i1_fu_135_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_141_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_state5 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((p_odata_V_data_V_1_ack_in = ap_const_logic_0) or (p_odata_V_last_V_1_ack_in = ap_const_logic_0) or (p_odata_V_user_V_1_ack_in = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_data_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_data_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((p_odata_V_data_V_1_ack_out = ap_const_logic_1) and (p_odata_V_data_V_1_vld_out = ap_const_logic_1))) then 
                                        p_odata_V_data_V_1_sel_rd <= not(p_odata_V_data_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_data_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_data_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((p_odata_V_data_V_1_ack_in = ap_const_logic_1) and (p_odata_V_data_V_1_vld_in = ap_const_logic_1))) then 
                                        p_odata_V_data_V_1_sel_wr <= not(p_odata_V_data_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_data_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_data_V_1_state <= ap_const_lv2_0;
            else
                if ((((p_odata_V_data_V_1_state = ap_const_lv2_2) and (p_odata_V_data_V_1_vld_in = ap_const_logic_0)) or ((p_odata_V_data_V_1_state = ap_const_lv2_3) and (p_odata_V_data_V_1_vld_in = ap_const_logic_0) and (p_odata_V_data_V_1_ack_out = ap_const_logic_1)))) then 
                    p_odata_V_data_V_1_state <= ap_const_lv2_2;
                elsif ((((p_odata_V_data_V_1_state = ap_const_lv2_1) and (p_odata_V_data_V_1_ack_out = ap_const_logic_0)) or ((p_odata_V_data_V_1_state = ap_const_lv2_3) and (p_odata_V_data_V_1_ack_out = ap_const_logic_0) and (p_odata_V_data_V_1_vld_in = ap_const_logic_1)))) then 
                    p_odata_V_data_V_1_state <= ap_const_lv2_1;
                elsif (((not(((p_odata_V_data_V_1_vld_in = ap_const_logic_0) and (p_odata_V_data_V_1_ack_out = ap_const_logic_1))) and not(((p_odata_V_data_V_1_ack_out = ap_const_logic_0) and (p_odata_V_data_V_1_vld_in = ap_const_logic_1))) and (p_odata_V_data_V_1_state = ap_const_lv2_3)) or ((p_odata_V_data_V_1_state = ap_const_lv2_1) and (p_odata_V_data_V_1_ack_out = ap_const_logic_1)) or ((p_odata_V_data_V_1_state = ap_const_lv2_2) and (p_odata_V_data_V_1_vld_in = ap_const_logic_1)))) then 
                    p_odata_V_data_V_1_state <= ap_const_lv2_3;
                else 
                    p_odata_V_data_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_last_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_last_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((p_odata_V_last_V_1_ack_out = ap_const_logic_1) and (p_odata_V_last_V_1_vld_out = ap_const_logic_1))) then 
                                        p_odata_V_last_V_1_sel_rd <= not(p_odata_V_last_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_last_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_last_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((p_odata_V_last_V_1_ack_in = ap_const_logic_1) and (p_odata_V_last_V_1_vld_in = ap_const_logic_1))) then 
                                        p_odata_V_last_V_1_sel_wr <= not(p_odata_V_last_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_last_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_last_V_1_state <= ap_const_lv2_0;
            else
                if ((((p_odata_V_last_V_1_state = ap_const_lv2_2) and (p_odata_V_last_V_1_vld_in = ap_const_logic_0)) or ((p_odata_V_last_V_1_state = ap_const_lv2_3) and (p_odata_V_last_V_1_vld_in = ap_const_logic_0) and (p_odata_V_last_V_1_ack_out = ap_const_logic_1)))) then 
                    p_odata_V_last_V_1_state <= ap_const_lv2_2;
                elsif ((((p_odata_V_last_V_1_state = ap_const_lv2_1) and (p_odata_V_last_V_1_ack_out = ap_const_logic_0)) or ((p_odata_V_last_V_1_state = ap_const_lv2_3) and (p_odata_V_last_V_1_ack_out = ap_const_logic_0) and (p_odata_V_last_V_1_vld_in = ap_const_logic_1)))) then 
                    p_odata_V_last_V_1_state <= ap_const_lv2_1;
                elsif (((not(((p_odata_V_last_V_1_vld_in = ap_const_logic_0) and (p_odata_V_last_V_1_ack_out = ap_const_logic_1))) and not(((p_odata_V_last_V_1_ack_out = ap_const_logic_0) and (p_odata_V_last_V_1_vld_in = ap_const_logic_1))) and (p_odata_V_last_V_1_state = ap_const_lv2_3)) or ((p_odata_V_last_V_1_state = ap_const_lv2_1) and (p_odata_V_last_V_1_ack_out = ap_const_logic_1)) or ((p_odata_V_last_V_1_state = ap_const_lv2_2) and (p_odata_V_last_V_1_vld_in = ap_const_logic_1)))) then 
                    p_odata_V_last_V_1_state <= ap_const_lv2_3;
                else 
                    p_odata_V_last_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_user_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_user_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((p_odata_V_user_V_1_ack_out = ap_const_logic_1) and (p_odata_V_user_V_1_vld_out = ap_const_logic_1))) then 
                                        p_odata_V_user_V_1_sel_rd <= not(p_odata_V_user_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_user_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_user_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((p_odata_V_user_V_1_ack_in = ap_const_logic_1) and (p_odata_V_user_V_1_vld_in = ap_const_logic_1))) then 
                                        p_odata_V_user_V_1_sel_wr <= not(p_odata_V_user_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    p_odata_V_user_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_odata_V_user_V_1_state <= ap_const_lv2_0;
            else
                if ((((p_odata_V_user_V_1_state = ap_const_lv2_2) and (p_odata_V_user_V_1_vld_in = ap_const_logic_0)) or ((p_odata_V_user_V_1_state = ap_const_lv2_3) and (p_odata_V_user_V_1_vld_in = ap_const_logic_0) and (p_odata_V_user_V_1_ack_out = ap_const_logic_1)))) then 
                    p_odata_V_user_V_1_state <= ap_const_lv2_2;
                elsif ((((p_odata_V_user_V_1_state = ap_const_lv2_1) and (p_odata_V_user_V_1_ack_out = ap_const_logic_0)) or ((p_odata_V_user_V_1_state = ap_const_lv2_3) and (p_odata_V_user_V_1_ack_out = ap_const_logic_0) and (p_odata_V_user_V_1_vld_in = ap_const_logic_1)))) then 
                    p_odata_V_user_V_1_state <= ap_const_lv2_1;
                elsif (((not(((p_odata_V_user_V_1_vld_in = ap_const_logic_0) and (p_odata_V_user_V_1_ack_out = ap_const_logic_1))) and not(((p_odata_V_user_V_1_ack_out = ap_const_logic_0) and (p_odata_V_user_V_1_vld_in = ap_const_logic_1))) and (p_odata_V_user_V_1_state = ap_const_lv2_3)) or ((p_odata_V_user_V_1_state = ap_const_lv2_1) and (p_odata_V_user_V_1_ack_out = ap_const_logic_1)) or ((p_odata_V_user_V_1_state = ap_const_lv2_2) and (p_odata_V_user_V_1_vld_in = ap_const_logic_1)))) then 
                    p_odata_V_user_V_1_state <= ap_const_lv2_3;
                else 
                    p_odata_V_user_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    i_0_i1_reg_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_i1_fu_135_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i_0_i1_reg_124 <= i_fu_141_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_i1_reg_124 <= ap_const_lv20_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond_i1_reg_147 <= exitcond_i1_fu_135_p2;
                exitcond_i1_reg_147_pp0_iter1_reg <= exitcond_i1_reg_147;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((p_odata_V_data_V_1_load_A = ap_const_logic_1)) then
                p_odata_V_data_V_1_payload_A <= p_odata_V_bv_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((p_odata_V_data_V_1_load_B = ap_const_logic_1)) then
                p_odata_V_data_V_1_payload_B <= p_odata_V_bv_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((p_odata_V_last_V_1_load_A = ap_const_logic_1)) then
                p_odata_V_last_V_1_payload_A <= p_olast_V_bv_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((p_odata_V_last_V_1_load_B = ap_const_logic_1)) then
                p_odata_V_last_V_1_payload_B <= p_olast_V_bv_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((p_odata_V_user_V_1_load_A = ap_const_logic_1)) then
                p_odata_V_user_V_1_payload_A <= p_ouser_V_bv_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((p_odata_V_user_V_1_load_B = ap_const_logic_1)) then
                p_odata_V_user_V_1_payload_B <= p_ouser_V_bv_V_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, p_odata_V_data_V_1_ack_in, p_odata_V_user_V_1_ack_in, p_odata_V_last_V_1_ack_in, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, exitcond_i1_fu_135_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_CS_fsm_state5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((exitcond_i1_fu_135_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) and not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((exitcond_i1_fu_135_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                if ((not(((p_odata_V_data_V_1_ack_in = ap_const_logic_0) or (p_odata_V_last_V_1_ack_in = ap_const_logic_0) or (p_odata_V_user_V_1_ack_in = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(p_odata_V_bv_V_empty_n, p_ouser_V_bv_V_empty_n, p_olast_V_bv_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_olast_V_bv_V_empty_n = ap_const_logic_0)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_ouser_V_bv_V_empty_n = ap_const_logic_0)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_odata_V_bv_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(p_odata_V_bv_V_empty_n, p_ouser_V_bv_V_empty_n, p_olast_V_bv_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147, ap_enable_reg_pp0_iter2, ap_block_state3_io, ap_block_state4_io)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_const_boolean_1 = ap_block_state4_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state3_io) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_olast_V_bv_V_empty_n = ap_const_logic_0)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_ouser_V_bv_V_empty_n = ap_const_logic_0)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_odata_V_bv_V_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(p_odata_V_bv_V_empty_n, p_ouser_V_bv_V_empty_n, p_olast_V_bv_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147, ap_enable_reg_pp0_iter2, ap_block_state3_io, ap_block_state4_io)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_const_boolean_1 = ap_block_state4_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state3_io) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_olast_V_bv_V_empty_n = ap_const_logic_0)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_ouser_V_bv_V_empty_n = ap_const_logic_0)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_odata_V_bv_V_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_io_assign_proc : process(p_odata_V_data_V_1_ack_in, exitcond_i1_reg_147)
    begin
                ap_block_state3_io <= ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_odata_V_data_V_1_ack_in = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter1_assign_proc : process(p_odata_V_bv_V_empty_n, p_ouser_V_bv_V_empty_n, p_olast_V_bv_V_empty_n, exitcond_i1_reg_147)
    begin
                ap_block_state3_pp0_stage0_iter1 <= (((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_olast_V_bv_V_empty_n = ap_const_logic_0)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_ouser_V_bv_V_empty_n = ap_const_logic_0)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (p_odata_V_bv_V_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state4_io_assign_proc : process(p_odata_V_data_V_1_ack_in, exitcond_i1_reg_147_pp0_iter1_reg)
    begin
                ap_block_state4_io <= ((exitcond_i1_reg_147_pp0_iter1_reg = ap_const_lv1_0) and (p_odata_V_data_V_1_ack_in = ap_const_logic_0));
    end process;

        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_assign_proc : process(p_odata_V_data_V_1_ack_in, p_odata_V_user_V_1_ack_in, p_odata_V_last_V_1_ack_in)
    begin
                ap_block_state5 <= ((p_odata_V_data_V_1_ack_in = ap_const_logic_0) or (p_odata_V_last_V_1_ack_in = ap_const_logic_0) or (p_odata_V_user_V_1_ack_in = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_i1_fu_135_p2)
    begin
        if ((exitcond_i1_fu_135_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, p_odata_V_data_V_1_ack_in, p_odata_V_user_V_1_ack_in, p_odata_V_last_V_1_ack_in, ap_CS_fsm_state5)
    begin
        if ((not(((p_odata_V_data_V_1_ack_in = ap_const_logic_0) or (p_odata_V_last_V_1_ack_in = ap_const_logic_0) or (p_odata_V_user_V_1_ack_in = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(p_odata_V_data_V_1_ack_in, p_odata_V_user_V_1_ack_in, p_odata_V_last_V_1_ack_in, ap_CS_fsm_state5)
    begin
        if ((not(((p_odata_V_data_V_1_ack_in = ap_const_logic_0) or (p_odata_V_last_V_1_ack_in = ap_const_logic_0) or (p_odata_V_user_V_1_ack_in = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_i1_fu_135_p2 <= "1" when (i_0_i1_reg_124 = ap_const_lv20_FD200) else "0";
    i_fu_141_p2 <= std_logic_vector(unsigned(i_0_i1_reg_124) + unsigned(ap_const_lv20_1));
    p_odata_TDATA <= p_odata_V_data_V_1_data_out;

    p_odata_TDATA_blk_n_assign_proc : process(p_odata_V_data_V_1_state, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_i1_reg_147, ap_enable_reg_pp0_iter2, exitcond_i1_reg_147_pp0_iter1_reg)
    begin
        if ((((exitcond_i1_reg_147_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            p_odata_TDATA_blk_n <= p_odata_V_data_V_1_state(1);
        else 
            p_odata_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_odata_TLAST <= p_odata_V_last_V_1_data_out;
    p_odata_TUSER <= p_odata_V_user_V_1_data_out;
    p_odata_TVALID <= p_odata_V_last_V_1_state(0);

    p_odata_V_bv_V_blk_n_assign_proc : process(p_odata_V_bv_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_i1_reg_147)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_odata_V_bv_V_blk_n <= p_odata_V_bv_V_empty_n;
        else 
            p_odata_V_bv_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_odata_V_bv_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_odata_V_bv_V_read <= ap_const_logic_1;
        else 
            p_odata_V_bv_V_read <= ap_const_logic_0;
        end if; 
    end process;

    p_odata_V_data_V_1_ack_in <= p_odata_V_data_V_1_state(1);
    p_odata_V_data_V_1_ack_out <= p_odata_TREADY;

    p_odata_V_data_V_1_data_out_assign_proc : process(p_odata_V_data_V_1_payload_A, p_odata_V_data_V_1_payload_B, p_odata_V_data_V_1_sel)
    begin
        if ((p_odata_V_data_V_1_sel = ap_const_logic_1)) then 
            p_odata_V_data_V_1_data_out <= p_odata_V_data_V_1_payload_B;
        else 
            p_odata_V_data_V_1_data_out <= p_odata_V_data_V_1_payload_A;
        end if; 
    end process;

    p_odata_V_data_V_1_load_A <= (p_odata_V_data_V_1_state_cmp_full and not(p_odata_V_data_V_1_sel_wr));
    p_odata_V_data_V_1_load_B <= (p_odata_V_data_V_1_state_cmp_full and p_odata_V_data_V_1_sel_wr);
    p_odata_V_data_V_1_sel <= p_odata_V_data_V_1_sel_rd;
    p_odata_V_data_V_1_state_cmp_full <= '0' when (p_odata_V_data_V_1_state = ap_const_lv2_1) else '1';

    p_odata_V_data_V_1_vld_in_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_odata_V_data_V_1_vld_in <= ap_const_logic_1;
        else 
            p_odata_V_data_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    p_odata_V_data_V_1_vld_out <= p_odata_V_data_V_1_state(0);
    p_odata_V_last_V_1_ack_in <= p_odata_V_last_V_1_state(1);
    p_odata_V_last_V_1_ack_out <= p_odata_TREADY;

    p_odata_V_last_V_1_data_out_assign_proc : process(p_odata_V_last_V_1_payload_A, p_odata_V_last_V_1_payload_B, p_odata_V_last_V_1_sel)
    begin
        if ((p_odata_V_last_V_1_sel = ap_const_logic_1)) then 
            p_odata_V_last_V_1_data_out <= p_odata_V_last_V_1_payload_B;
        else 
            p_odata_V_last_V_1_data_out <= p_odata_V_last_V_1_payload_A;
        end if; 
    end process;

    p_odata_V_last_V_1_load_A <= (p_odata_V_last_V_1_state_cmp_full and not(p_odata_V_last_V_1_sel_wr));
    p_odata_V_last_V_1_load_B <= (p_odata_V_last_V_1_state_cmp_full and p_odata_V_last_V_1_sel_wr);
    p_odata_V_last_V_1_sel <= p_odata_V_last_V_1_sel_rd;
    p_odata_V_last_V_1_state_cmp_full <= '0' when (p_odata_V_last_V_1_state = ap_const_lv2_1) else '1';

    p_odata_V_last_V_1_vld_in_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_odata_V_last_V_1_vld_in <= ap_const_logic_1;
        else 
            p_odata_V_last_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    p_odata_V_last_V_1_vld_out <= p_odata_V_last_V_1_state(0);
    p_odata_V_user_V_1_ack_in <= p_odata_V_user_V_1_state(1);
    p_odata_V_user_V_1_ack_out <= p_odata_TREADY;

    p_odata_V_user_V_1_data_out_assign_proc : process(p_odata_V_user_V_1_payload_A, p_odata_V_user_V_1_payload_B, p_odata_V_user_V_1_sel)
    begin
        if ((p_odata_V_user_V_1_sel = ap_const_logic_1)) then 
            p_odata_V_user_V_1_data_out <= p_odata_V_user_V_1_payload_B;
        else 
            p_odata_V_user_V_1_data_out <= p_odata_V_user_V_1_payload_A;
        end if; 
    end process;

    p_odata_V_user_V_1_load_A <= (p_odata_V_user_V_1_state_cmp_full and not(p_odata_V_user_V_1_sel_wr));
    p_odata_V_user_V_1_load_B <= (p_odata_V_user_V_1_state_cmp_full and p_odata_V_user_V_1_sel_wr);
    p_odata_V_user_V_1_sel <= p_odata_V_user_V_1_sel_rd;
    p_odata_V_user_V_1_state_cmp_full <= '0' when (p_odata_V_user_V_1_state = ap_const_lv2_1) else '1';

    p_odata_V_user_V_1_vld_in_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_odata_V_user_V_1_vld_in <= ap_const_logic_1;
        else 
            p_odata_V_user_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    p_odata_V_user_V_1_vld_out <= p_odata_V_user_V_1_state(0);

    p_olast_V_bv_V_blk_n_assign_proc : process(p_olast_V_bv_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_i1_reg_147)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_olast_V_bv_V_blk_n <= p_olast_V_bv_V_empty_n;
        else 
            p_olast_V_bv_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_olast_V_bv_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_olast_V_bv_V_read <= ap_const_logic_1;
        else 
            p_olast_V_bv_V_read <= ap_const_logic_0;
        end if; 
    end process;


    p_ouser_V_bv_V_blk_n_assign_proc : process(p_ouser_V_bv_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_i1_reg_147)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_ouser_V_bv_V_blk_n <= p_ouser_V_bv_V_empty_n;
        else 
            p_ouser_V_bv_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_ouser_V_bv_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_i1_reg_147, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_i1_reg_147 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_ouser_V_bv_V_read <= ap_const_logic_1;
        else 
            p_ouser_V_bv_V_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;
