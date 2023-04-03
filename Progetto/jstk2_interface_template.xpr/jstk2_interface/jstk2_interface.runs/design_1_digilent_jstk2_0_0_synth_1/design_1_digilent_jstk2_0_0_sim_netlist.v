// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr  3 15:31:38 2023
// Host        : LAPTOP-DUQD03P4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_digilent_jstk2_0_0_sim_netlist.v
// Design      : design_1_digilent_jstk2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_digilent_jstk2_0_0,digilent_jstk2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "digilent_jstk2,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    led_r,
    led_g,
    led_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  input [7:0]led_r;
  input [7:0]led_g;
  input [7:0]led_b;

  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [9:0]jstk_x;
  wire [9:0]jstk_y;
  wire [7:0]led_b;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x),
        .jstk_y(jstk_y),
        .led_b(led_b),
        .led_g(led_g),
        .led_r(led_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_int_reg_0(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2
   (m_axis_tdata,
    m_axis_tvalid_int_reg_0,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    s_axis_tvalid,
    aresetn,
    aclk,
    m_axis_tready,
    s_axis_tdata,
    led_b,
    led_g,
    led_r);
  output [7:0]m_axis_tdata;
  output m_axis_tvalid_int_reg_0;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  input s_axis_tvalid;
  input aresetn;
  input aclk;
  input m_axis_tready;
  input [7:0]s_axis_tdata;
  input [7:0]led_b;
  input [7:0]led_g;
  input [7:0]led_r;

  wire DELAY_COUNTER1_carry__0_i_1_n_0;
  wire DELAY_COUNTER1_carry__0_n_3;
  wire DELAY_COUNTER1_carry_i_1_n_0;
  wire DELAY_COUNTER1_carry_i_2_n_0;
  wire DELAY_COUNTER1_carry_i_3_n_0;
  wire DELAY_COUNTER1_carry_i_4_n_0;
  wire DELAY_COUNTER1_carry_n_0;
  wire DELAY_COUNTER1_carry_n_1;
  wire DELAY_COUNTER1_carry_n_2;
  wire DELAY_COUNTER1_carry_n_3;
  wire \DELAY_COUNTER[0]_i_1_n_0 ;
  wire \DELAY_COUNTER[0]_i_3_n_0 ;
  wire \DELAY_COUNTER[0]_i_4_n_0 ;
  wire \DELAY_COUNTER[0]_i_5_n_0 ;
  wire \DELAY_COUNTER[0]_i_6_n_0 ;
  wire \DELAY_COUNTER[0]_i_7_n_0 ;
  wire \DELAY_COUNTER[12]_i_2_n_0 ;
  wire \DELAY_COUNTER[4]_i_2_n_0 ;
  wire \DELAY_COUNTER[4]_i_3_n_0 ;
  wire \DELAY_COUNTER[4]_i_4_n_0 ;
  wire \DELAY_COUNTER[4]_i_5_n_0 ;
  wire \DELAY_COUNTER[8]_i_2_n_0 ;
  wire \DELAY_COUNTER[8]_i_3_n_0 ;
  wire \DELAY_COUNTER[8]_i_4_n_0 ;
  wire \DELAY_COUNTER[8]_i_5_n_0 ;
  wire [12:0]DELAY_COUNTER_reg;
  wire \DELAY_COUNTER_reg[0]_i_2_n_0 ;
  wire \DELAY_COUNTER_reg[0]_i_2_n_1 ;
  wire \DELAY_COUNTER_reg[0]_i_2_n_2 ;
  wire \DELAY_COUNTER_reg[0]_i_2_n_3 ;
  wire \DELAY_COUNTER_reg[0]_i_2_n_4 ;
  wire \DELAY_COUNTER_reg[0]_i_2_n_5 ;
  wire \DELAY_COUNTER_reg[0]_i_2_n_6 ;
  wire \DELAY_COUNTER_reg[0]_i_2_n_7 ;
  wire \DELAY_COUNTER_reg[12]_i_1_n_7 ;
  wire \DELAY_COUNTER_reg[4]_i_1_n_0 ;
  wire \DELAY_COUNTER_reg[4]_i_1_n_1 ;
  wire \DELAY_COUNTER_reg[4]_i_1_n_2 ;
  wire \DELAY_COUNTER_reg[4]_i_1_n_3 ;
  wire \DELAY_COUNTER_reg[4]_i_1_n_4 ;
  wire \DELAY_COUNTER_reg[4]_i_1_n_5 ;
  wire \DELAY_COUNTER_reg[4]_i_1_n_6 ;
  wire \DELAY_COUNTER_reg[4]_i_1_n_7 ;
  wire \DELAY_COUNTER_reg[8]_i_1_n_0 ;
  wire \DELAY_COUNTER_reg[8]_i_1_n_1 ;
  wire \DELAY_COUNTER_reg[8]_i_1_n_2 ;
  wire \DELAY_COUNTER_reg[8]_i_1_n_3 ;
  wire \DELAY_COUNTER_reg[8]_i_1_n_4 ;
  wire \DELAY_COUNTER_reg[8]_i_1_n_5 ;
  wire \DELAY_COUNTER_reg[8]_i_1_n_6 ;
  wire \DELAY_COUNTER_reg[8]_i_1_n_7 ;
  wire [11:6]DELAY_TO_WAIT;
  wire \DELAY_TO_WAIT_reg_n_0_[11] ;
  wire \DELAY_TO_WAIT_reg_n_0_[6] ;
  wire \DELAY_TO_WAIT_reg_n_0_[9] ;
  wire \FSM_sequential_state_cmd[0]_i_1_n_0 ;
  wire \FSM_sequential_state_cmd[1]_i_1_n_0 ;
  wire \FSM_sequential_state_cmd[2]_i_1_n_0 ;
  wire \FSM_sequential_state_cmd[2]_i_3_n_0 ;
  wire \FSM_sequential_state_cmd[2]_i_4_n_0 ;
  wire \FSM_sequential_state_cmd[2]_i_5_n_0 ;
  wire \FSM_sequential_state_sts[0]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[1]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[2]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [9:0]jstk_x;
  wire [9:0]jstk_y;
  wire [7:0]led_b;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire [7:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_2_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_3_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid_int_i_1_n_0;
  wire m_axis_tvalid_int_i_2_n_0;
  wire m_axis_tvalid_int_reg_0;
  wire [2:0]precedent_state_cmd;
  wire \precedent_state_cmd[1]_i_1_n_0 ;
  wire \precedent_state_cmd[2]_i_1_n_0 ;
  wire \precedent_state_cmd_reg_n_0_[0] ;
  wire \precedent_state_cmd_reg_n_0_[1] ;
  wire \precedent_state_cmd_reg_n_0_[2] ;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire sig_btn0;
  wire \sig_btn[0]_i_1_n_0 ;
  wire \sig_btn[1]_i_1_n_0 ;
  wire \sig_jstk_x[0]_i_1_n_0 ;
  wire \sig_jstk_x[8]_i_1_n_0 ;
  wire \sig_jstk_x[8]_i_2_n_0 ;
  wire \sig_jstk_x[9]_i_1_n_0 ;
  wire \sig_jstk_y[0]_i_1_n_0 ;
  wire \sig_jstk_y[8]_i_1_n_0 ;
  wire \sig_jstk_y[8]_i_2_n_0 ;
  wire \sig_jstk_y[9]_i_1_n_0 ;
  wire [2:0]state_cmd__0;
  wire [2:0]state_cmd__1;
  wire [2:0]state_sts;
  wire [3:0]NLW_DELAY_COUNTER1_carry_O_UNCONNECTED;
  wire [3:1]NLW_DELAY_COUNTER1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_DELAY_COUNTER1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_DELAY_COUNTER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_DELAY_COUNTER_reg[12]_i_1_O_UNCONNECTED ;

  CARRY4 DELAY_COUNTER1_carry
       (.CI(1'b0),
        .CO({DELAY_COUNTER1_carry_n_0,DELAY_COUNTER1_carry_n_1,DELAY_COUNTER1_carry_n_2,DELAY_COUNTER1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_DELAY_COUNTER1_carry_O_UNCONNECTED[3:0]),
        .S({DELAY_COUNTER1_carry_i_1_n_0,DELAY_COUNTER1_carry_i_2_n_0,DELAY_COUNTER1_carry_i_3_n_0,DELAY_COUNTER1_carry_i_4_n_0}));
  CARRY4 DELAY_COUNTER1_carry__0
       (.CI(DELAY_COUNTER1_carry_n_0),
        .CO({NLW_DELAY_COUNTER1_carry__0_CO_UNCONNECTED[3:1],DELAY_COUNTER1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_DELAY_COUNTER1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,DELAY_COUNTER1_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    DELAY_COUNTER1_carry__0_i_1
       (.I0(DELAY_COUNTER_reg[12]),
        .O(DELAY_COUNTER1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h90000009)) 
    DELAY_COUNTER1_carry_i_1
       (.I0(DELAY_COUNTER_reg[9]),
        .I1(\DELAY_TO_WAIT_reg_n_0_[9] ),
        .I2(\DELAY_TO_WAIT_reg_n_0_[11] ),
        .I3(DELAY_COUNTER_reg[11]),
        .I4(DELAY_COUNTER_reg[10]),
        .O(DELAY_COUNTER1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h90000009)) 
    DELAY_COUNTER1_carry_i_2
       (.I0(DELAY_COUNTER_reg[6]),
        .I1(\DELAY_TO_WAIT_reg_n_0_[6] ),
        .I2(\DELAY_TO_WAIT_reg_n_0_[9] ),
        .I3(DELAY_COUNTER_reg[8]),
        .I4(DELAY_COUNTER_reg[7]),
        .O(DELAY_COUNTER1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    DELAY_COUNTER1_carry_i_3
       (.I0(DELAY_COUNTER_reg[3]),
        .I1(\DELAY_TO_WAIT_reg_n_0_[6] ),
        .I2(DELAY_COUNTER_reg[4]),
        .I3(\DELAY_TO_WAIT_reg_n_0_[9] ),
        .I4(DELAY_COUNTER_reg[5]),
        .O(DELAY_COUNTER1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    DELAY_COUNTER1_carry_i_4
       (.I0(DELAY_COUNTER_reg[2]),
        .I1(DELAY_COUNTER_reg[1]),
        .I2(DELAY_COUNTER_reg[0]),
        .O(DELAY_COUNTER1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    \DELAY_COUNTER[0]_i_1 
       (.I0(state_cmd__0[2]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .O(\DELAY_COUNTER[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[0]_i_3 
       (.I0(DELAY_COUNTER_reg[0]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[0]_i_4 
       (.I0(DELAY_COUNTER_reg[3]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[0]_i_5 
       (.I0(DELAY_COUNTER_reg[2]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[0]_i_6 
       (.I0(DELAY_COUNTER_reg[1]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DELAY_COUNTER[0]_i_7 
       (.I0(DELAY_COUNTER_reg[0]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[12]_i_2 
       (.I0(DELAY_COUNTER_reg[12]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[4]_i_2 
       (.I0(DELAY_COUNTER_reg[7]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[4]_i_3 
       (.I0(DELAY_COUNTER_reg[6]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[4]_i_4 
       (.I0(DELAY_COUNTER_reg[5]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[4]_i_5 
       (.I0(DELAY_COUNTER_reg[4]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[8]_i_2 
       (.I0(DELAY_COUNTER_reg[11]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[8]_i_3 
       (.I0(DELAY_COUNTER_reg[10]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[8]_i_4 
       (.I0(DELAY_COUNTER_reg[9]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DELAY_COUNTER[8]_i_5 
       (.I0(DELAY_COUNTER_reg[8]),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .O(\DELAY_COUNTER[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[0] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[0]_i_2_n_7 ),
        .Q(DELAY_COUNTER_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DELAY_COUNTER_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\DELAY_COUNTER_reg[0]_i_2_n_0 ,\DELAY_COUNTER_reg[0]_i_2_n_1 ,\DELAY_COUNTER_reg[0]_i_2_n_2 ,\DELAY_COUNTER_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DELAY_COUNTER[0]_i_3_n_0 }),
        .O({\DELAY_COUNTER_reg[0]_i_2_n_4 ,\DELAY_COUNTER_reg[0]_i_2_n_5 ,\DELAY_COUNTER_reg[0]_i_2_n_6 ,\DELAY_COUNTER_reg[0]_i_2_n_7 }),
        .S({\DELAY_COUNTER[0]_i_4_n_0 ,\DELAY_COUNTER[0]_i_5_n_0 ,\DELAY_COUNTER[0]_i_6_n_0 ,\DELAY_COUNTER[0]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[10] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[8]_i_1_n_5 ),
        .Q(DELAY_COUNTER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[11] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[8]_i_1_n_4 ),
        .Q(DELAY_COUNTER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[12] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[12]_i_1_n_7 ),
        .Q(DELAY_COUNTER_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DELAY_COUNTER_reg[12]_i_1 
       (.CI(\DELAY_COUNTER_reg[8]_i_1_n_0 ),
        .CO(\NLW_DELAY_COUNTER_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DELAY_COUNTER_reg[12]_i_1_O_UNCONNECTED [3:1],\DELAY_COUNTER_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\DELAY_COUNTER[12]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[1] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[0]_i_2_n_6 ),
        .Q(DELAY_COUNTER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[2] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[0]_i_2_n_5 ),
        .Q(DELAY_COUNTER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[3] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[0]_i_2_n_4 ),
        .Q(DELAY_COUNTER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[4] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[4]_i_1_n_7 ),
        .Q(DELAY_COUNTER_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DELAY_COUNTER_reg[4]_i_1 
       (.CI(\DELAY_COUNTER_reg[0]_i_2_n_0 ),
        .CO({\DELAY_COUNTER_reg[4]_i_1_n_0 ,\DELAY_COUNTER_reg[4]_i_1_n_1 ,\DELAY_COUNTER_reg[4]_i_1_n_2 ,\DELAY_COUNTER_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DELAY_COUNTER_reg[4]_i_1_n_4 ,\DELAY_COUNTER_reg[4]_i_1_n_5 ,\DELAY_COUNTER_reg[4]_i_1_n_6 ,\DELAY_COUNTER_reg[4]_i_1_n_7 }),
        .S({\DELAY_COUNTER[4]_i_2_n_0 ,\DELAY_COUNTER[4]_i_3_n_0 ,\DELAY_COUNTER[4]_i_4_n_0 ,\DELAY_COUNTER[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[5] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[4]_i_1_n_6 ),
        .Q(DELAY_COUNTER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[6] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[4]_i_1_n_5 ),
        .Q(DELAY_COUNTER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[7] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[4]_i_1_n_4 ),
        .Q(DELAY_COUNTER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[8] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[8]_i_1_n_7 ),
        .Q(DELAY_COUNTER_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DELAY_COUNTER_reg[8]_i_1 
       (.CI(\DELAY_COUNTER_reg[4]_i_1_n_0 ),
        .CO({\DELAY_COUNTER_reg[8]_i_1_n_0 ,\DELAY_COUNTER_reg[8]_i_1_n_1 ,\DELAY_COUNTER_reg[8]_i_1_n_2 ,\DELAY_COUNTER_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DELAY_COUNTER_reg[8]_i_1_n_4 ,\DELAY_COUNTER_reg[8]_i_1_n_5 ,\DELAY_COUNTER_reg[8]_i_1_n_6 ,\DELAY_COUNTER_reg[8]_i_1_n_7 }),
        .S({\DELAY_COUNTER[8]_i_2_n_0 ,\DELAY_COUNTER[8]_i_3_n_0 ,\DELAY_COUNTER[8]_i_4_n_0 ,\DELAY_COUNTER[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_COUNTER_reg[9] 
       (.C(aclk),
        .CE(\DELAY_COUNTER[0]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\DELAY_COUNTER_reg[8]_i_1_n_6 ),
        .Q(DELAY_COUNTER_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \DELAY_TO_WAIT[11]_i_1 
       (.I0(state_cmd__0[1]),
        .I1(state_cmd__0[0]),
        .O(DELAY_TO_WAIT[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \DELAY_TO_WAIT[6]_i_1 
       (.I0(state_cmd__0[2]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .O(DELAY_TO_WAIT[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \DELAY_TO_WAIT[9]_i_1 
       (.I0(state_cmd__0[2]),
        .I1(state_cmd__0[1]),
        .O(DELAY_TO_WAIT[9]));
  FDPE #(
    .INIT(1'b1)) 
    \DELAY_TO_WAIT_reg[11] 
       (.C(aclk),
        .CE(\precedent_state_cmd[2]_i_1_n_0 ),
        .D(DELAY_TO_WAIT[11]),
        .PRE(m_axis_tvalid_int_i_2_n_0),
        .Q(\DELAY_TO_WAIT_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_TO_WAIT_reg[6] 
       (.C(aclk),
        .CE(\precedent_state_cmd[2]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(DELAY_TO_WAIT[6]),
        .Q(\DELAY_TO_WAIT_reg_n_0_[6] ));
  FDPE #(
    .INIT(1'b1)) 
    \DELAY_TO_WAIT_reg[9] 
       (.C(aclk),
        .CE(\precedent_state_cmd[2]_i_1_n_0 ),
        .D(DELAY_TO_WAIT[9]),
        .PRE(m_axis_tvalid_int_i_2_n_0),
        .Q(\DELAY_TO_WAIT_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state_cmd[0]_i_1 
       (.I0(state_cmd__1[0]),
        .I1(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .I2(state_cmd__0[0]),
        .O(\FSM_sequential_state_cmd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011101011)) 
    \FSM_sequential_state_cmd[0]_i_2 
       (.I0(state_cmd__0[0]),
        .I1(state_cmd__0[2]),
        .I2(\precedent_state_cmd_reg_n_0_[0] ),
        .I3(\precedent_state_cmd_reg_n_0_[2] ),
        .I4(\precedent_state_cmd_reg_n_0_[1] ),
        .I5(state_cmd__0[1]),
        .O(state_cmd__1[0]));
  LUT6 #(
    .INIT(64'h0000FFFF00100000)) 
    \FSM_sequential_state_cmd[1]_i_1 
       (.I0(state_cmd__0[0]),
        .I1(state_cmd__0[2]),
        .I2(\precedent_state_cmd_reg_n_0_[1] ),
        .I3(\precedent_state_cmd_reg_n_0_[2] ),
        .I4(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .I5(state_cmd__0[1]),
        .O(\FSM_sequential_state_cmd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state_cmd[2]_i_1 
       (.I0(state_cmd__1[2]),
        .I1(\FSM_sequential_state_cmd[2]_i_3_n_0 ),
        .I2(state_cmd__0[2]),
        .O(\FSM_sequential_state_cmd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010101011)) 
    \FSM_sequential_state_cmd[2]_i_2 
       (.I0(state_cmd__0[0]),
        .I1(state_cmd__0[2]),
        .I2(\precedent_state_cmd_reg_n_0_[2] ),
        .I3(\precedent_state_cmd_reg_n_0_[1] ),
        .I4(\precedent_state_cmd_reg_n_0_[0] ),
        .I5(state_cmd__0[1]),
        .O(state_cmd__1[2]));
  LUT6 #(
    .INIT(64'h0FFF0FF800000008)) 
    \FSM_sequential_state_cmd[2]_i_3 
       (.I0(\FSM_sequential_state_cmd[2]_i_4_n_0 ),
        .I1(DELAY_COUNTER1_carry__0_n_3),
        .I2(state_cmd__0[2]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[0]),
        .I5(\FSM_sequential_state_cmd[2]_i_5_n_0 ),
        .O(\FSM_sequential_state_cmd[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h5E)) 
    \FSM_sequential_state_cmd[2]_i_4 
       (.I0(\precedent_state_cmd_reg_n_0_[1] ),
        .I1(\precedent_state_cmd_reg_n_0_[0] ),
        .I2(\precedent_state_cmd_reg_n_0_[2] ),
        .O(\FSM_sequential_state_cmd[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state_cmd[2]_i_5 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_int_reg_0),
        .O(\FSM_sequential_state_cmd[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:101,send_dummy:100,send_blue:011,send_green:010,send_red:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_cmd_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\FSM_sequential_state_cmd[0]_i_1_n_0 ),
        .Q(state_cmd__0[0]));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:101,send_dummy:100,send_blue:011,send_green:010,send_red:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_cmd_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\FSM_sequential_state_cmd[1]_i_1_n_0 ),
        .Q(state_cmd__0[1]));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:101,send_dummy:100,send_blue:011,send_green:010,send_red:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_cmd_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\FSM_sequential_state_cmd[2]_i_1_n_0 ),
        .Q(state_cmd__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_state_sts[0]_i_1 
       (.I0(state_sts[2]),
        .I1(s_axis_tvalid),
        .I2(state_sts[0]),
        .O(\FSM_sequential_state_sts[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state_sts[1]_i_1 
       (.I0(state_sts[0]),
        .I1(state_sts[2]),
        .I2(s_axis_tvalid),
        .I3(state_sts[1]),
        .O(\FSM_sequential_state_sts[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_state_sts[2]_i_1 
       (.I0(state_sts[0]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(state_sts[2]),
        .O(\FSM_sequential_state_sts[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\FSM_sequential_state_sts[0]_i_1_n_0 ),
        .Q(state_sts[0]));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\FSM_sequential_state_sts[1]_i_1_n_0 ),
        .Q(state_sts[1]));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\FSM_sequential_state_sts[2]_i_1_n_0 ),
        .Q(state_sts[2]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \m_axis_tdata[0]_i_1 
       (.I0(led_b[0]),
        .I1(state_cmd__0[0]),
        .I2(led_g[0]),
        .I3(led_r[0]),
        .I4(state_cmd__0[1]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \m_axis_tdata[1]_i_1 
       (.I0(led_b[1]),
        .I1(state_cmd__0[0]),
        .I2(led_g[1]),
        .I3(led_r[1]),
        .I4(state_cmd__0[1]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[2]_i_1 
       (.I0(\m_axis_tdata[2]_i_2_n_0 ),
        .I1(m_axis_tdata0),
        .I2(m_axis_tdata[2]),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCCE2E2FF22)) 
    \m_axis_tdata[2]_i_2 
       (.I0(led_g[2]),
        .I1(state_cmd__0[0]),
        .I2(led_b[2]),
        .I3(led_r[2]),
        .I4(state_cmd__0[1]),
        .I5(state_cmd__0[2]),
        .O(\m_axis_tdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \m_axis_tdata[3]_i_1 
       (.I0(led_b[3]),
        .I1(state_cmd__0[0]),
        .I2(led_g[3]),
        .I3(led_r[3]),
        .I4(state_cmd__0[1]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \m_axis_tdata[4]_i_1 
       (.I0(led_b[4]),
        .I1(state_cmd__0[0]),
        .I2(led_g[4]),
        .I3(led_r[4]),
        .I4(state_cmd__0[1]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \m_axis_tdata[5]_i_1 
       (.I0(led_b[5]),
        .I1(state_cmd__0[0]),
        .I2(led_g[5]),
        .I3(led_r[5]),
        .I4(state_cmd__0[1]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata[6]_i_1 
       (.I0(m_axis_tvalid_int_reg_0),
        .I1(m_axis_tready),
        .I2(state_cmd__0[1]),
        .I3(state_cmd__0[2]),
        .I4(aresetn),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22A8000000000000)) 
    \m_axis_tdata[6]_i_2 
       (.I0(aresetn),
        .I1(state_cmd__0[2]),
        .I2(state_cmd__0[0]),
        .I3(state_cmd__0[1]),
        .I4(m_axis_tready),
        .I5(m_axis_tvalid_int_reg_0),
        .O(m_axis_tdata0));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \m_axis_tdata[6]_i_3 
       (.I0(led_b[6]),
        .I1(state_cmd__0[0]),
        .I2(led_g[6]),
        .I3(led_r[6]),
        .I4(state_cmd__0[1]),
        .O(\m_axis_tdata[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[7]_i_1 
       (.I0(\m_axis_tdata[7]_i_2_n_0 ),
        .I1(m_axis_tdata0),
        .I2(m_axis_tdata[7]),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCCE2E2FF22)) 
    \m_axis_tdata[7]_i_2 
       (.I0(led_g[7]),
        .I1(state_cmd__0[0]),
        .I2(led_b[7]),
        .I3(led_r[7]),
        .I4(state_cmd__0[1]),
        .I5(state_cmd__0[2]),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[6]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[6]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[6]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[6]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[6]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[6]_i_3_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[6]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[7]_i_1_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE3E)) 
    m_axis_tvalid_int_i_1
       (.I0(state_cmd__0[0]),
        .I1(state_cmd__0[1]),
        .I2(state_cmd__0[2]),
        .I3(m_axis_tvalid_int_reg_0),
        .O(m_axis_tvalid_int_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_int_i_2
       (.I0(aresetn),
        .O(m_axis_tvalid_int_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    m_axis_tvalid_int_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(m_axis_tvalid_int_i_1_n_0),
        .Q(m_axis_tvalid_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \precedent_state_cmd[0]_i_1 
       (.I0(state_cmd__0[0]),
        .I1(state_cmd__0[2]),
        .I2(state_cmd__0[1]),
        .O(precedent_state_cmd[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \precedent_state_cmd[1]_i_1 
       (.I0(state_cmd__0[1]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[2]),
        .O(\precedent_state_cmd[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08088880)) 
    \precedent_state_cmd[2]_i_1 
       (.I0(m_axis_tvalid_int_reg_0),
        .I1(m_axis_tready),
        .I2(state_cmd__0[1]),
        .I3(state_cmd__0[0]),
        .I4(state_cmd__0[2]),
        .O(\precedent_state_cmd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h43)) 
    \precedent_state_cmd[2]_i_2 
       (.I0(state_cmd__0[2]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .O(precedent_state_cmd[2]));
  FDPE #(
    .INIT(1'b1)) 
    \precedent_state_cmd_reg[0] 
       (.C(aclk),
        .CE(\precedent_state_cmd[2]_i_1_n_0 ),
        .D(precedent_state_cmd[0]),
        .PRE(m_axis_tvalid_int_i_2_n_0),
        .Q(\precedent_state_cmd_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \precedent_state_cmd_reg[1] 
       (.C(aclk),
        .CE(\precedent_state_cmd[2]_i_1_n_0 ),
        .CLR(m_axis_tvalid_int_i_2_n_0),
        .D(\precedent_state_cmd[1]_i_1_n_0 ),
        .Q(\precedent_state_cmd_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b0)) 
    \precedent_state_cmd_reg[2] 
       (.C(aclk),
        .CE(\precedent_state_cmd[2]_i_1_n_0 ),
        .D(precedent_state_cmd[2]),
        .PRE(m_axis_tvalid_int_i_2_n_0),
        .Q(\precedent_state_cmd_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_btn[0]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(sig_btn0),
        .I2(btn_trigger),
        .O(\sig_btn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_btn[1]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(sig_btn0),
        .I2(btn_jstk),
        .O(\sig_btn[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \sig_btn[1]_i_2 
       (.I0(aresetn),
        .I1(state_sts[2]),
        .I2(s_axis_tvalid),
        .I3(state_sts[1]),
        .I4(state_sts[0]),
        .O(sig_btn0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btn_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sig_btn[0]_i_1_n_0 ),
        .Q(btn_trigger),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btn_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sig_btn[1]_i_1_n_0 ),
        .Q(btn_jstk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sig_jstk_x[0]_i_1 
       (.I0(state_sts[2]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(state_sts[0]),
        .I4(aresetn),
        .O(\sig_jstk_x[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \sig_jstk_x[8]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[7]),
        .I2(state_sts[2]),
        .I3(\sig_jstk_x[8]_i_2_n_0 ),
        .I4(jstk_x[1]),
        .O(\sig_jstk_x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \sig_jstk_x[8]_i_2 
       (.I0(state_sts[1]),
        .I1(state_sts[0]),
        .I2(state_sts[2]),
        .I3(s_axis_tvalid),
        .I4(aresetn),
        .O(\sig_jstk_x[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \sig_jstk_x[9]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[6]),
        .I2(state_sts[2]),
        .I3(\sig_jstk_x[8]_i_2_n_0 ),
        .I4(jstk_x[0]),
        .O(\sig_jstk_x[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[0] 
       (.C(aclk),
        .CE(\sig_jstk_x[0]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(jstk_x[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[1] 
       (.C(aclk),
        .CE(\sig_jstk_x[0]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(jstk_x[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[2] 
       (.C(aclk),
        .CE(\sig_jstk_x[0]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(jstk_x[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[3] 
       (.C(aclk),
        .CE(\sig_jstk_x[0]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(jstk_x[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[4] 
       (.C(aclk),
        .CE(\sig_jstk_x[0]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(jstk_x[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[5] 
       (.C(aclk),
        .CE(\sig_jstk_x[0]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(jstk_x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[6] 
       (.C(aclk),
        .CE(\sig_jstk_x[0]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(jstk_x[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[7] 
       (.C(aclk),
        .CE(\sig_jstk_x[0]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(jstk_x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sig_jstk_x[8]_i_1_n_0 ),
        .Q(jstk_x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_x_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sig_jstk_x[9]_i_1_n_0 ),
        .Q(jstk_x[0]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sig_jstk_y[0]_i_1 
       (.I0(state_sts[2]),
        .I1(state_sts[1]),
        .I2(state_sts[0]),
        .I3(s_axis_tvalid),
        .I4(aresetn),
        .O(\sig_jstk_y[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \sig_jstk_y[8]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[7]),
        .I2(state_sts[2]),
        .I3(\sig_jstk_y[8]_i_2_n_0 ),
        .I4(jstk_y[1]),
        .O(\sig_jstk_y[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \sig_jstk_y[8]_i_2 
       (.I0(state_sts[2]),
        .I1(state_sts[0]),
        .I2(s_axis_tvalid),
        .I3(state_sts[1]),
        .I4(aresetn),
        .O(\sig_jstk_y[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \sig_jstk_y[9]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[6]),
        .I2(state_sts[2]),
        .I3(\sig_jstk_y[8]_i_2_n_0 ),
        .I4(jstk_y[0]),
        .O(\sig_jstk_y[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[0] 
       (.C(aclk),
        .CE(\sig_jstk_y[0]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(jstk_y[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[1] 
       (.C(aclk),
        .CE(\sig_jstk_y[0]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(jstk_y[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[2] 
       (.C(aclk),
        .CE(\sig_jstk_y[0]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(jstk_y[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[3] 
       (.C(aclk),
        .CE(\sig_jstk_y[0]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(jstk_y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[4] 
       (.C(aclk),
        .CE(\sig_jstk_y[0]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(jstk_y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[5] 
       (.C(aclk),
        .CE(\sig_jstk_y[0]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(jstk_y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[6] 
       (.C(aclk),
        .CE(\sig_jstk_y[0]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(jstk_y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[7] 
       (.C(aclk),
        .CE(\sig_jstk_y[0]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(jstk_y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sig_jstk_y[8]_i_1_n_0 ),
        .Q(jstk_y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_jstk_y_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sig_jstk_y[9]_i_1_n_0 ),
        .Q(jstk_y[0]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
