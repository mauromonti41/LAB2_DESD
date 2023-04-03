// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr  3 15:31:39 2023
// Host        : LAPTOP-DUQD03P4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_jstk_uart_bridge_0_0_sim_netlist.v
// Design      : design_1_jstk_uart_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_jstk_uart_bridge_0_0,jstk_uart_bridge,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "jstk_uart_bridge,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  input [9:0]jstk_x;
  input [9:0]jstk_y;
  input btn_jstk;
  input btn_trigger;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [9:0]jstk_x;
  wire [9:0]jstk_y;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign led_b[7] = \<const0> ;
  assign led_b[6] = \<const0> ;
  assign led_b[5] = \<const0> ;
  assign led_b[4] = \<const0> ;
  assign led_b[3] = \<const0> ;
  assign led_b[2] = \<const0> ;
  assign led_b[1] = \<const0> ;
  assign led_b[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x[9:2]),
        .jstk_y(jstk_y[9:2]),
        .led_g(led_g),
        .led_r(led_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready_int_reg_0(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge
   (m_axis_tvalid,
    s_axis_tready_int_reg_0,
    m_axis_tdata,
    led_r,
    led_g,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata,
    aresetn,
    jstk_x,
    jstk_y,
    btn_trigger,
    btn_jstk);
  output m_axis_tvalid;
  output s_axis_tready_int_reg_0;
  output [7:0]m_axis_tdata;
  output [7:0]led_r;
  output [7:0]led_g;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  input aresetn;
  input [7:0]jstk_x;
  input [7:0]jstk_y;
  input btn_trigger;
  input btn_jstk;

  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [19:1]data0;
  wire [19:0]delay_counter_rx;
  wire delay_counter_rx0_carry__0_n_0;
  wire delay_counter_rx0_carry__0_n_1;
  wire delay_counter_rx0_carry__0_n_2;
  wire delay_counter_rx0_carry__0_n_3;
  wire delay_counter_rx0_carry__0_n_4;
  wire delay_counter_rx0_carry__0_n_5;
  wire delay_counter_rx0_carry__0_n_6;
  wire delay_counter_rx0_carry__0_n_7;
  wire delay_counter_rx0_carry__1_n_0;
  wire delay_counter_rx0_carry__1_n_1;
  wire delay_counter_rx0_carry__1_n_2;
  wire delay_counter_rx0_carry__1_n_3;
  wire delay_counter_rx0_carry__1_n_4;
  wire delay_counter_rx0_carry__1_n_5;
  wire delay_counter_rx0_carry__1_n_6;
  wire delay_counter_rx0_carry__1_n_7;
  wire delay_counter_rx0_carry__2_n_0;
  wire delay_counter_rx0_carry__2_n_1;
  wire delay_counter_rx0_carry__2_n_2;
  wire delay_counter_rx0_carry__2_n_3;
  wire delay_counter_rx0_carry__2_n_4;
  wire delay_counter_rx0_carry__2_n_5;
  wire delay_counter_rx0_carry__2_n_6;
  wire delay_counter_rx0_carry__2_n_7;
  wire delay_counter_rx0_carry__3_n_2;
  wire delay_counter_rx0_carry__3_n_3;
  wire delay_counter_rx0_carry__3_n_5;
  wire delay_counter_rx0_carry__3_n_6;
  wire delay_counter_rx0_carry__3_n_7;
  wire delay_counter_rx0_carry_n_0;
  wire delay_counter_rx0_carry_n_1;
  wire delay_counter_rx0_carry_n_2;
  wire delay_counter_rx0_carry_n_3;
  wire delay_counter_rx0_carry_n_4;
  wire delay_counter_rx0_carry_n_5;
  wire delay_counter_rx0_carry_n_6;
  wire delay_counter_rx0_carry_n_7;
  wire \delay_counter_rx[0]_i_2_n_0 ;
  wire \delay_counter_rx[0]_i_3_n_0 ;
  wire \delay_counter_rx[0]_i_4_n_0 ;
  wire \delay_counter_rx[0]_i_5_n_0 ;
  wire \delay_counter_rx[0]_i_6_n_0 ;
  wire [19:0]delay_counter_rx_1;
  wire delay_counter_rx__0;
  wire [19:0]delay_counter_tx;
  wire delay_counter_tx0_carry__0_n_0;
  wire delay_counter_tx0_carry__0_n_1;
  wire delay_counter_tx0_carry__0_n_2;
  wire delay_counter_tx0_carry__0_n_3;
  wire delay_counter_tx0_carry__1_n_0;
  wire delay_counter_tx0_carry__1_n_1;
  wire delay_counter_tx0_carry__1_n_2;
  wire delay_counter_tx0_carry__1_n_3;
  wire delay_counter_tx0_carry__2_n_0;
  wire delay_counter_tx0_carry__2_n_1;
  wire delay_counter_tx0_carry__2_n_2;
  wire delay_counter_tx0_carry__2_n_3;
  wire delay_counter_tx0_carry__3_n_2;
  wire delay_counter_tx0_carry__3_n_3;
  wire delay_counter_tx0_carry_n_0;
  wire delay_counter_tx0_carry_n_1;
  wire delay_counter_tx0_carry_n_2;
  wire delay_counter_tx0_carry_n_3;
  wire \delay_counter_tx[0]_i_2_n_0 ;
  wire \delay_counter_tx[0]_i_3_n_0 ;
  wire \delay_counter_tx[0]_i_4_n_0 ;
  wire \delay_counter_tx[0]_i_5_n_0 ;
  wire \delay_counter_tx[0]_i_6_n_0 ;
  wire [19:0]delay_counter_tx_0;
  wire [7:0]jstk_x;
  wire [7:0]jstk_y;
  wire [7:0]led_g;
  wire led_g0;
  wire [7:0]led_r;
  wire led_r0;
  wire [7:0]m_axis_tdata;
  wire [7:0]m_axis_tdata_int;
  wire m_axis_tdata_int0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_int;
  wire m_axis_tvalid_int_i_2_n_0;
  wire m_axis_tvalid_int_i_3_n_0;
  wire m_axis_tvalid_int_i_4_n_0;
  wire [1:0]rx_state__0;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready_int_i_1_n_0;
  wire s_axis_tready_int_reg_0;
  wire s_axis_tvalid;
  wire [2:0]tx_state;
  wire [3:2]NLW_delay_counter_rx0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_delay_counter_rx0_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_delay_counter_tx0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_delay_counter_tx0_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00F70007FF80FF80)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready_int_reg_0),
        .I2(rx_state__0[1]),
        .I3(\FSM_sequential_rx_state[1]_i_3_n_0 ),
        .I4(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I5(rx_state__0[0]),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FF02CF02CF02CF0)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_rx_state[1]_i_3_n_0 ),
        .I2(rx_state__0[1]),
        .I3(rx_state__0[0]),
        .I4(s_axis_tready_int_reg_0),
        .I5(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(\delay_counter_rx[0]_i_6_n_0 ),
        .I1(\delay_counter_rx[0]_i_5_n_0 ),
        .I2(\delay_counter_rx[0]_i_4_n_0 ),
        .I3(\delay_counter_rx[0]_i_3_n_0 ),
        .I4(\delay_counter_rx[0]_i_2_n_0 ),
        .I5(delay_counter_rx[0]),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \FSM_sequential_rx_state[1]_i_3 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready_int_reg_0),
        .I2(rx_state__0[0]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[0]),
        .I5(\FSM_sequential_rx_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_rx_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_sequential_rx_state[1]_i_4 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[2]),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tdata[7]),
        .I5(s_axis_tdata[6]),
        .O(\FSM_sequential_rx_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:11,get_header:00,get_led_r:01,get_led_b:100,get_led_g:10," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state__0[0]));
  (* FSM_ENCODED_STATES = "idle:11,get_header:00,get_led_r:01,get_led_b:100,get_led_g:10," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(m_axis_tready),
        .I3(m_axis_tvalid),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[1]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(m_axis_tready),
        .I4(m_axis_tvalid),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEC0FE00FE00FE00)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .I4(m_axis_tready),
        .I5(m_axis_tvalid),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]));
  (* FSM_ENCODED_STATES = "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state[1]));
  (* FSM_ENCODED_STATES = "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_rx0_carry
       (.CI(1'b0),
        .CO({delay_counter_rx0_carry_n_0,delay_counter_rx0_carry_n_1,delay_counter_rx0_carry_n_2,delay_counter_rx0_carry_n_3}),
        .CYINIT(delay_counter_rx[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay_counter_rx0_carry_n_4,delay_counter_rx0_carry_n_5,delay_counter_rx0_carry_n_6,delay_counter_rx0_carry_n_7}),
        .S(delay_counter_rx[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_rx0_carry__0
       (.CI(delay_counter_rx0_carry_n_0),
        .CO({delay_counter_rx0_carry__0_n_0,delay_counter_rx0_carry__0_n_1,delay_counter_rx0_carry__0_n_2,delay_counter_rx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay_counter_rx0_carry__0_n_4,delay_counter_rx0_carry__0_n_5,delay_counter_rx0_carry__0_n_6,delay_counter_rx0_carry__0_n_7}),
        .S(delay_counter_rx[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_rx0_carry__1
       (.CI(delay_counter_rx0_carry__0_n_0),
        .CO({delay_counter_rx0_carry__1_n_0,delay_counter_rx0_carry__1_n_1,delay_counter_rx0_carry__1_n_2,delay_counter_rx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay_counter_rx0_carry__1_n_4,delay_counter_rx0_carry__1_n_5,delay_counter_rx0_carry__1_n_6,delay_counter_rx0_carry__1_n_7}),
        .S(delay_counter_rx[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_rx0_carry__2
       (.CI(delay_counter_rx0_carry__1_n_0),
        .CO({delay_counter_rx0_carry__2_n_0,delay_counter_rx0_carry__2_n_1,delay_counter_rx0_carry__2_n_2,delay_counter_rx0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay_counter_rx0_carry__2_n_4,delay_counter_rx0_carry__2_n_5,delay_counter_rx0_carry__2_n_6,delay_counter_rx0_carry__2_n_7}),
        .S(delay_counter_rx[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_rx0_carry__3
       (.CI(delay_counter_rx0_carry__2_n_0),
        .CO({NLW_delay_counter_rx0_carry__3_CO_UNCONNECTED[3:2],delay_counter_rx0_carry__3_n_2,delay_counter_rx0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_delay_counter_rx0_carry__3_O_UNCONNECTED[3],delay_counter_rx0_carry__3_n_5,delay_counter_rx0_carry__3_n_6,delay_counter_rx0_carry__3_n_7}),
        .S({1'b0,delay_counter_rx[19:17]}));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \delay_counter_rx[0]_i_1 
       (.I0(\delay_counter_rx[0]_i_2_n_0 ),
        .I1(\delay_counter_rx[0]_i_3_n_0 ),
        .I2(\delay_counter_rx[0]_i_4_n_0 ),
        .I3(\delay_counter_rx[0]_i_5_n_0 ),
        .I4(\delay_counter_rx[0]_i_6_n_0 ),
        .I5(delay_counter_rx[0]),
        .O(delay_counter_rx_1[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delay_counter_rx[0]_i_2 
       (.I0(delay_counter_rx[3]),
        .I1(delay_counter_rx[2]),
        .I2(delay_counter_rx[5]),
        .I3(delay_counter_rx[4]),
        .O(\delay_counter_rx[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \delay_counter_rx[0]_i_3 
       (.I0(delay_counter_rx[14]),
        .I1(delay_counter_rx[15]),
        .I2(delay_counter_rx[17]),
        .I3(delay_counter_rx[16]),
        .O(\delay_counter_rx[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \delay_counter_rx[0]_i_4 
       (.I0(delay_counter_rx[19]),
        .I1(delay_counter_rx[18]),
        .I2(delay_counter_rx[1]),
        .O(\delay_counter_rx[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delay_counter_rx[0]_i_5 
       (.I0(delay_counter_rx[11]),
        .I1(delay_counter_rx[10]),
        .I2(delay_counter_rx[13]),
        .I3(delay_counter_rx[12]),
        .O(\delay_counter_rx[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \delay_counter_rx[0]_i_6 
       (.I0(delay_counter_rx[6]),
        .I1(delay_counter_rx[7]),
        .I2(delay_counter_rx[9]),
        .I3(delay_counter_rx[8]),
        .O(\delay_counter_rx[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[10]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__1_n_6),
        .O(delay_counter_rx_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[11]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__1_n_5),
        .O(delay_counter_rx_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[12]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__1_n_4),
        .O(delay_counter_rx_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[13]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__2_n_7),
        .O(delay_counter_rx_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[14]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__2_n_6),
        .O(delay_counter_rx_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[15]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__2_n_5),
        .O(delay_counter_rx_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[16]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__2_n_4),
        .O(delay_counter_rx_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[17]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__3_n_7),
        .O(delay_counter_rx_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[18]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__3_n_6),
        .O(delay_counter_rx_1[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[19]_i_1 
       (.I0(rx_state__0[0]),
        .I1(rx_state__0[1]),
        .O(delay_counter_rx__0));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[19]_i_2 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__3_n_5),
        .O(delay_counter_rx_1[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[1]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry_n_7),
        .O(delay_counter_rx_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[2]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry_n_6),
        .O(delay_counter_rx_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[3]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry_n_5),
        .O(delay_counter_rx_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[4]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry_n_4),
        .O(delay_counter_rx_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[5]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__0_n_7),
        .O(delay_counter_rx_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[6]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__0_n_6),
        .O(delay_counter_rx_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[7]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__0_n_5),
        .O(delay_counter_rx_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[8]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__0_n_4),
        .O(delay_counter_rx_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_rx[9]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I1(delay_counter_rx0_carry__1_n_7),
        .O(delay_counter_rx_1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[0] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[0]),
        .Q(delay_counter_rx[0]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[10] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[10]),
        .Q(delay_counter_rx[10]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[11] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[11]),
        .Q(delay_counter_rx[11]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[12] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[12]),
        .Q(delay_counter_rx[12]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[13] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[13]),
        .Q(delay_counter_rx[13]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[14] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[14]),
        .Q(delay_counter_rx[14]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[15] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[15]),
        .Q(delay_counter_rx[15]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[16] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[16]),
        .Q(delay_counter_rx[16]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[17] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[17]),
        .Q(delay_counter_rx[17]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[18] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[18]),
        .Q(delay_counter_rx[18]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[19] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[19]),
        .Q(delay_counter_rx[19]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[1] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[1]),
        .Q(delay_counter_rx[1]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[2] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[2]),
        .Q(delay_counter_rx[2]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[3] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[3]),
        .Q(delay_counter_rx[3]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[4] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[4]),
        .Q(delay_counter_rx[4]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[5] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[5]),
        .Q(delay_counter_rx[5]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[6] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[6]),
        .Q(delay_counter_rx[6]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[7] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[7]),
        .Q(delay_counter_rx[7]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[8] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[8]),
        .Q(delay_counter_rx[8]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_rx_reg[9] 
       (.C(aclk),
        .CE(delay_counter_rx__0),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_rx_1[9]),
        .Q(delay_counter_rx[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_tx0_carry
       (.CI(1'b0),
        .CO({delay_counter_tx0_carry_n_0,delay_counter_tx0_carry_n_1,delay_counter_tx0_carry_n_2,delay_counter_tx0_carry_n_3}),
        .CYINIT(delay_counter_tx[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(delay_counter_tx[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_tx0_carry__0
       (.CI(delay_counter_tx0_carry_n_0),
        .CO({delay_counter_tx0_carry__0_n_0,delay_counter_tx0_carry__0_n_1,delay_counter_tx0_carry__0_n_2,delay_counter_tx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(delay_counter_tx[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_tx0_carry__1
       (.CI(delay_counter_tx0_carry__0_n_0),
        .CO({delay_counter_tx0_carry__1_n_0,delay_counter_tx0_carry__1_n_1,delay_counter_tx0_carry__1_n_2,delay_counter_tx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(delay_counter_tx[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_tx0_carry__2
       (.CI(delay_counter_tx0_carry__1_n_0),
        .CO({delay_counter_tx0_carry__2_n_0,delay_counter_tx0_carry__2_n_1,delay_counter_tx0_carry__2_n_2,delay_counter_tx0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(delay_counter_tx[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter_tx0_carry__3
       (.CI(delay_counter_tx0_carry__2_n_0),
        .CO({NLW_delay_counter_tx0_carry__3_CO_UNCONNECTED[3:2],delay_counter_tx0_carry__3_n_2,delay_counter_tx0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_delay_counter_tx0_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,delay_counter_tx[19:17]}));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \delay_counter_tx[0]_i_1 
       (.I0(\delay_counter_tx[0]_i_2_n_0 ),
        .I1(\delay_counter_tx[0]_i_3_n_0 ),
        .I2(\delay_counter_tx[0]_i_4_n_0 ),
        .I3(\delay_counter_tx[0]_i_5_n_0 ),
        .I4(\delay_counter_tx[0]_i_6_n_0 ),
        .I5(delay_counter_tx[0]),
        .O(delay_counter_tx_0[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delay_counter_tx[0]_i_2 
       (.I0(delay_counter_tx[3]),
        .I1(delay_counter_tx[2]),
        .I2(delay_counter_tx[5]),
        .I3(delay_counter_tx[4]),
        .O(\delay_counter_tx[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \delay_counter_tx[0]_i_3 
       (.I0(delay_counter_tx[14]),
        .I1(delay_counter_tx[15]),
        .I2(delay_counter_tx[17]),
        .I3(delay_counter_tx[16]),
        .O(\delay_counter_tx[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \delay_counter_tx[0]_i_4 
       (.I0(delay_counter_tx[19]),
        .I1(delay_counter_tx[18]),
        .I2(delay_counter_tx[1]),
        .O(\delay_counter_tx[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delay_counter_tx[0]_i_5 
       (.I0(delay_counter_tx[11]),
        .I1(delay_counter_tx[10]),
        .I2(delay_counter_tx[13]),
        .I3(delay_counter_tx[12]),
        .O(\delay_counter_tx[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \delay_counter_tx[0]_i_6 
       (.I0(delay_counter_tx[6]),
        .I1(delay_counter_tx[7]),
        .I2(delay_counter_tx[9]),
        .I3(delay_counter_tx[8]),
        .O(\delay_counter_tx[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[10]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[10]),
        .O(delay_counter_tx_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[11]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[11]),
        .O(delay_counter_tx_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[12]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[12]),
        .O(delay_counter_tx_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[13]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[13]),
        .O(delay_counter_tx_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[14]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[14]),
        .O(delay_counter_tx_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[15]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[15]),
        .O(delay_counter_tx_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[16]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[16]),
        .O(delay_counter_tx_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[17]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[17]),
        .O(delay_counter_tx_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[18]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[18]),
        .O(delay_counter_tx_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[19]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[19]),
        .O(delay_counter_tx_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[1]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[1]),
        .O(delay_counter_tx_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[2]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[2]),
        .O(delay_counter_tx_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[3]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[3]),
        .O(delay_counter_tx_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[4]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[4]),
        .O(delay_counter_tx_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[5]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[5]),
        .O(delay_counter_tx_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[6]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[6]),
        .O(delay_counter_tx_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[7]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[7]),
        .O(delay_counter_tx_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[8]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[8]),
        .O(delay_counter_tx_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter_tx[9]_i_1 
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .I1(data0[9]),
        .O(delay_counter_tx_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[0] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[0]),
        .Q(delay_counter_tx[0]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[10] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[10]),
        .Q(delay_counter_tx[10]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[11] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[11]),
        .Q(delay_counter_tx[11]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[12] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[12]),
        .Q(delay_counter_tx[12]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[13] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[13]),
        .Q(delay_counter_tx[13]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[14] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[14]),
        .Q(delay_counter_tx[14]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[15] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[15]),
        .Q(delay_counter_tx[15]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[16] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[16]),
        .Q(delay_counter_tx[16]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[17] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[17]),
        .Q(delay_counter_tx[17]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[18] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[18]),
        .Q(delay_counter_tx[18]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[19] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[19]),
        .Q(delay_counter_tx[19]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[1] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[1]),
        .Q(delay_counter_tx[1]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[2] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[2]),
        .Q(delay_counter_tx[2]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[3] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[3]),
        .Q(delay_counter_tx[3]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[4] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[4]),
        .Q(delay_counter_tx[4]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[5] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[5]),
        .Q(delay_counter_tx[5]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[6] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[6]),
        .Q(delay_counter_tx[6]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[7] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[7]),
        .Q(delay_counter_tx[7]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[8] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[8]),
        .Q(delay_counter_tx[8]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_tx_reg[9] 
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(delay_counter_tx_0[9]),
        .Q(delay_counter_tx[9]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \led_g[7]_i_1 
       (.I0(rx_state__0[0]),
        .I1(rx_state__0[1]),
        .I2(aresetn),
        .I3(s_axis_tready_int_reg_0),
        .I4(s_axis_tvalid),
        .O(led_g0));
  FDRE \led_g_reg[0] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[0]),
        .Q(led_g[0]),
        .R(1'b0));
  FDRE \led_g_reg[1] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[1]),
        .Q(led_g[1]),
        .R(1'b0));
  FDRE \led_g_reg[2] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[2]),
        .Q(led_g[2]),
        .R(1'b0));
  FDRE \led_g_reg[3] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[3]),
        .Q(led_g[3]),
        .R(1'b0));
  FDRE \led_g_reg[4] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[4]),
        .Q(led_g[4]),
        .R(1'b0));
  FDRE \led_g_reg[5] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[5]),
        .Q(led_g[5]),
        .R(1'b0));
  FDRE \led_g_reg[6] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[6]),
        .Q(led_g[6]),
        .R(1'b0));
  FDRE \led_g_reg[7] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[7]),
        .Q(led_g[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08000000)) 
    \led_r[7]_i_1 
       (.I0(rx_state__0[0]),
        .I1(aresetn),
        .I2(rx_state__0[1]),
        .I3(s_axis_tready_int_reg_0),
        .I4(s_axis_tvalid),
        .O(led_r0));
  FDRE \led_r_reg[0] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[0]),
        .Q(led_r[0]),
        .R(1'b0));
  FDRE \led_r_reg[1] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[1]),
        .Q(led_r[1]),
        .R(1'b0));
  FDRE \led_r_reg[2] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[2]),
        .Q(led_r[2]),
        .R(1'b0));
  FDRE \led_r_reg[3] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[3]),
        .Q(led_r[3]),
        .R(1'b0));
  FDRE \led_r_reg[4] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[4]),
        .Q(led_r[4]),
        .R(1'b0));
  FDRE \led_r_reg[5] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[5]),
        .Q(led_r[5]),
        .R(1'b0));
  FDRE \led_r_reg[6] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[6]),
        .Q(led_r[6]),
        .R(1'b0));
  FDRE \led_r_reg[7] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[7]),
        .Q(led_r[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF388C088)) 
    \m_axis_tdata_int[0]_i_1 
       (.I0(jstk_y[0]),
        .I1(tx_state[1]),
        .I2(btn_jstk),
        .I3(tx_state[0]),
        .I4(jstk_x[0]),
        .O(m_axis_tdata_int[0]));
  LUT5 #(
    .INIT(32'hF388C088)) 
    \m_axis_tdata_int[1]_i_1 
       (.I0(jstk_y[1]),
        .I1(tx_state[1]),
        .I2(btn_trigger),
        .I3(tx_state[0]),
        .I4(jstk_x[1]),
        .O(m_axis_tdata_int[1]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \m_axis_tdata_int[2]_i_1 
       (.I0(jstk_y[2]),
        .I1(jstk_x[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(m_axis_tdata_int[2]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \m_axis_tdata_int[3]_i_1 
       (.I0(jstk_y[3]),
        .I1(jstk_x[3]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(m_axis_tdata_int[3]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \m_axis_tdata_int[4]_i_1 
       (.I0(jstk_y[4]),
        .I1(jstk_x[4]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(m_axis_tdata_int[4]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \m_axis_tdata_int[5]_i_1 
       (.I0(jstk_y[5]),
        .I1(jstk_x[5]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(m_axis_tdata_int[5]));
  LUT4 #(
    .INIT(16'h44F5)) 
    \m_axis_tdata_int[6]_i_1 
       (.I0(tx_state[1]),
        .I1(jstk_x[6]),
        .I2(jstk_y[6]),
        .I3(tx_state[0]),
        .O(m_axis_tdata_int[6]));
  LUT4 #(
    .INIT(16'h4000)) 
    \m_axis_tdata_int[7]_i_1 
       (.I0(tx_state[2]),
        .I1(aresetn),
        .I2(m_axis_tvalid),
        .I3(m_axis_tready),
        .O(m_axis_tdata_int0));
  LUT4 #(
    .INIT(16'h44F5)) 
    \m_axis_tdata_int[7]_i_2 
       (.I0(tx_state[1]),
        .I1(jstk_x[7]),
        .I2(jstk_y[7]),
        .I3(tx_state[0]),
        .O(m_axis_tdata_int[7]));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[0] 
       (.C(aclk),
        .CE(m_axis_tdata_int0),
        .D(m_axis_tdata_int[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[1] 
       (.C(aclk),
        .CE(m_axis_tdata_int0),
        .D(m_axis_tdata_int[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[2] 
       (.C(aclk),
        .CE(m_axis_tdata_int0),
        .D(m_axis_tdata_int[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[3] 
       (.C(aclk),
        .CE(m_axis_tdata_int0),
        .D(m_axis_tdata_int[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[4] 
       (.C(aclk),
        .CE(m_axis_tdata_int0),
        .D(m_axis_tdata_int[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[5] 
       (.C(aclk),
        .CE(m_axis_tdata_int0),
        .D(m_axis_tdata_int[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[6] 
       (.C(aclk),
        .CE(m_axis_tdata_int0),
        .D(m_axis_tdata_int[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[7] 
       (.C(aclk),
        .CE(m_axis_tdata_int0),
        .D(m_axis_tdata_int[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    m_axis_tvalid_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .O(m_axis_tvalid_int));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_int_i_2
       (.I0(m_axis_tvalid_int_i_4_n_0),
        .O(m_axis_tvalid_int_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_int_i_3
       (.I0(aresetn),
        .O(m_axis_tvalid_int_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_tvalid_int_i_4
       (.I0(\delay_counter_tx[0]_i_6_n_0 ),
        .I1(\delay_counter_tx[0]_i_5_n_0 ),
        .I2(\delay_counter_tx[0]_i_4_n_0 ),
        .I3(\delay_counter_tx[0]_i_3_n_0 ),
        .I4(\delay_counter_tx[0]_i_2_n_0 ),
        .I5(delay_counter_tx[0]),
        .O(m_axis_tvalid_int_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    m_axis_tvalid_int_reg
       (.C(aclk),
        .CE(m_axis_tvalid_int),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(m_axis_tvalid_int_i_2_n_0),
        .Q(m_axis_tvalid));
  LUT3 #(
    .INIT(8'hF1)) 
    s_axis_tready_int_i_1
       (.I0(rx_state__0[1]),
        .I1(rx_state__0[0]),
        .I2(s_axis_tready_int_reg_0),
        .O(s_axis_tready_int_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    s_axis_tready_int_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(m_axis_tvalid_int_i_3_n_0),
        .D(s_axis_tready_int_i_1_n_0),
        .Q(s_axis_tready_int_reg_0));
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
