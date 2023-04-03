-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Apr  3 15:31:39 2023
-- Host        : LAPTOP-DUQD03P4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/mauro/Documents/Github/LAB2_DESD/Progetto/jstk2_interface_template.xpr/jstk2_interface/jstk2_interface.gen/sources_1/bd/design_1/ip/design_1_digilent_jstk2_0_0/design_1_digilent_jstk2_0_0_sim_netlist.vhdl
-- Design      : design_1_digilent_jstk2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_digilent_jstk2_0_0_digilent_jstk2 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid_int_reg_0 : out STD_LOGIC;
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_r : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_digilent_jstk2_0_0_digilent_jstk2 : entity is "digilent_jstk2";
end design_1_digilent_jstk2_0_0_digilent_jstk2;

architecture STRUCTURE of design_1_digilent_jstk2_0_0_digilent_jstk2 is
  signal \DELAY_COUNTER1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER1_carry__0_n_3\ : STD_LOGIC;
  signal DELAY_COUNTER1_carry_i_1_n_0 : STD_LOGIC;
  signal DELAY_COUNTER1_carry_i_2_n_0 : STD_LOGIC;
  signal DELAY_COUNTER1_carry_i_3_n_0 : STD_LOGIC;
  signal DELAY_COUNTER1_carry_i_4_n_0 : STD_LOGIC;
  signal DELAY_COUNTER1_carry_n_0 : STD_LOGIC;
  signal DELAY_COUNTER1_carry_n_1 : STD_LOGIC;
  signal DELAY_COUNTER1_carry_n_2 : STD_LOGIC;
  signal DELAY_COUNTER1_carry_n_3 : STD_LOGIC;
  signal \DELAY_COUNTER[0]_i_1_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[0]_i_3_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[0]_i_4_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[0]_i_5_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[0]_i_6_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[0]_i_7_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[12]_i_2_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[4]_i_2_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[4]_i_3_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[4]_i_4_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[4]_i_5_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[8]_i_2_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[8]_i_3_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[8]_i_4_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER[8]_i_5_n_0\ : STD_LOGIC;
  signal DELAY_COUNTER_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \DELAY_COUNTER_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DELAY_COUNTER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal DELAY_TO_WAIT : STD_LOGIC_VECTOR ( 11 downto 6 );
  signal \DELAY_TO_WAIT_reg_n_0_[11]\ : STD_LOGIC;
  signal \DELAY_TO_WAIT_reg_n_0_[6]\ : STD_LOGIC;
  signal \DELAY_TO_WAIT_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[2]_i_1_n_0\ : STD_LOGIC;
  signal \^btn_jstk\ : STD_LOGIC;
  signal \^btn_trigger\ : STD_LOGIC;
  signal \^jstk_x\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^jstk_y\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_axis_tdata0 : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_int_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_int_i_2_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_int_reg_0\ : STD_LOGIC;
  signal precedent_state_cmd : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \precedent_state_cmd[1]_i_1_n_0\ : STD_LOGIC;
  signal \precedent_state_cmd[2]_i_1_n_0\ : STD_LOGIC;
  signal \precedent_state_cmd_reg_n_0_[0]\ : STD_LOGIC;
  signal \precedent_state_cmd_reg_n_0_[1]\ : STD_LOGIC;
  signal \precedent_state_cmd_reg_n_0_[2]\ : STD_LOGIC;
  signal sig_btn0 : STD_LOGIC;
  signal \sig_btn[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btn[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_jstk_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_jstk_x[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_jstk_x[8]_i_2_n_0\ : STD_LOGIC;
  signal \sig_jstk_x[9]_i_1_n_0\ : STD_LOGIC;
  signal \sig_jstk_y[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_jstk_y[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_jstk_y[8]_i_2_n_0\ : STD_LOGIC;
  signal \sig_jstk_y[9]_i_1_n_0\ : STD_LOGIC;
  signal \state_cmd__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_cmd__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state_sts : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_DELAY_COUNTER1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DELAY_COUNTER1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DELAY_COUNTER1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DELAY_COUNTER_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DELAY_COUNTER_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \DELAY_COUNTER_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \DELAY_COUNTER_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \DELAY_COUNTER_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \DELAY_COUNTER_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DELAY_TO_WAIT[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DELAY_TO_WAIT[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DELAY_TO_WAIT[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[2]_i_5\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[0]\ : label is "wait_delay:000,send_cmd:101,send_dummy:100,send_blue:011,send_green:010,send_red:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[1]\ : label is "wait_delay:000,send_cmd:101,send_dummy:100,send_blue:011,send_green:010,send_red:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[2]\ : label is "wait_delay:000,send_cmd:101,send_dummy:100,send_blue:011,send_green:010,send_red:001";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[0]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[1]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[2]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of m_axis_tvalid_int_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \precedent_state_cmd[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \precedent_state_cmd[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \precedent_state_cmd[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sig_btn[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sig_btn[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sig_btn[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sig_jstk_x[8]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sig_jstk_y[8]_i_2\ : label is "soft_lutpair0";
begin
  btn_jstk <= \^btn_jstk\;
  btn_trigger <= \^btn_trigger\;
  jstk_x(9 downto 0) <= \^jstk_x\(9 downto 0);
  jstk_y(9 downto 0) <= \^jstk_y\(9 downto 0);
  m_axis_tdata(7 downto 0) <= \^m_axis_tdata\(7 downto 0);
  m_axis_tvalid_int_reg_0 <= \^m_axis_tvalid_int_reg_0\;
DELAY_COUNTER1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DELAY_COUNTER1_carry_n_0,
      CO(2) => DELAY_COUNTER1_carry_n_1,
      CO(1) => DELAY_COUNTER1_carry_n_2,
      CO(0) => DELAY_COUNTER1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_DELAY_COUNTER1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => DELAY_COUNTER1_carry_i_1_n_0,
      S(2) => DELAY_COUNTER1_carry_i_2_n_0,
      S(1) => DELAY_COUNTER1_carry_i_3_n_0,
      S(0) => DELAY_COUNTER1_carry_i_4_n_0
    );
\DELAY_COUNTER1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => DELAY_COUNTER1_carry_n_0,
      CO(3 downto 1) => \NLW_DELAY_COUNTER1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \DELAY_COUNTER1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DELAY_COUNTER1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \DELAY_COUNTER1_carry__0_i_1_n_0\
    );
\DELAY_COUNTER1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DELAY_COUNTER_reg(12),
      O => \DELAY_COUNTER1_carry__0_i_1_n_0\
    );
DELAY_COUNTER1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000009"
    )
        port map (
      I0 => DELAY_COUNTER_reg(9),
      I1 => \DELAY_TO_WAIT_reg_n_0_[9]\,
      I2 => \DELAY_TO_WAIT_reg_n_0_[11]\,
      I3 => DELAY_COUNTER_reg(11),
      I4 => DELAY_COUNTER_reg(10),
      O => DELAY_COUNTER1_carry_i_1_n_0
    );
DELAY_COUNTER1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000009"
    )
        port map (
      I0 => DELAY_COUNTER_reg(6),
      I1 => \DELAY_TO_WAIT_reg_n_0_[6]\,
      I2 => \DELAY_TO_WAIT_reg_n_0_[9]\,
      I3 => DELAY_COUNTER_reg(8),
      I4 => DELAY_COUNTER_reg(7),
      O => DELAY_COUNTER1_carry_i_2_n_0
    );
DELAY_COUNTER1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => DELAY_COUNTER_reg(3),
      I1 => \DELAY_TO_WAIT_reg_n_0_[6]\,
      I2 => DELAY_COUNTER_reg(4),
      I3 => \DELAY_TO_WAIT_reg_n_0_[9]\,
      I4 => DELAY_COUNTER_reg(5),
      O => DELAY_COUNTER1_carry_i_3_n_0
    );
DELAY_COUNTER1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => DELAY_COUNTER_reg(2),
      I1 => DELAY_COUNTER_reg(1),
      I2 => DELAY_COUNTER_reg(0),
      O => DELAY_COUNTER1_carry_i_4_n_0
    );
\DELAY_COUNTER[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_cmd__0\(2),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      O => \DELAY_COUNTER[0]_i_1_n_0\
    );
\DELAY_COUNTER[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(0),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[0]_i_3_n_0\
    );
\DELAY_COUNTER[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(3),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[0]_i_4_n_0\
    );
\DELAY_COUNTER[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(2),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[0]_i_5_n_0\
    );
\DELAY_COUNTER[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(1),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[0]_i_6_n_0\
    );
\DELAY_COUNTER[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DELAY_COUNTER_reg(0),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[0]_i_7_n_0\
    );
\DELAY_COUNTER[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(12),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[12]_i_2_n_0\
    );
\DELAY_COUNTER[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(7),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[4]_i_2_n_0\
    );
\DELAY_COUNTER[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(6),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[4]_i_3_n_0\
    );
\DELAY_COUNTER[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(5),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[4]_i_4_n_0\
    );
\DELAY_COUNTER[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(4),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[4]_i_5_n_0\
    );
\DELAY_COUNTER[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(11),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[8]_i_2_n_0\
    );
\DELAY_COUNTER[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(10),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[8]_i_3_n_0\
    );
\DELAY_COUNTER[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(9),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[8]_i_4_n_0\
    );
\DELAY_COUNTER[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DELAY_COUNTER_reg(8),
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      O => \DELAY_COUNTER[8]_i_5_n_0\
    );
\DELAY_COUNTER_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[0]_i_2_n_7\,
      Q => DELAY_COUNTER_reg(0)
    );
\DELAY_COUNTER_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DELAY_COUNTER_reg[0]_i_2_n_0\,
      CO(2) => \DELAY_COUNTER_reg[0]_i_2_n_1\,
      CO(1) => \DELAY_COUNTER_reg[0]_i_2_n_2\,
      CO(0) => \DELAY_COUNTER_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DELAY_COUNTER[0]_i_3_n_0\,
      O(3) => \DELAY_COUNTER_reg[0]_i_2_n_4\,
      O(2) => \DELAY_COUNTER_reg[0]_i_2_n_5\,
      O(1) => \DELAY_COUNTER_reg[0]_i_2_n_6\,
      O(0) => \DELAY_COUNTER_reg[0]_i_2_n_7\,
      S(3) => \DELAY_COUNTER[0]_i_4_n_0\,
      S(2) => \DELAY_COUNTER[0]_i_5_n_0\,
      S(1) => \DELAY_COUNTER[0]_i_6_n_0\,
      S(0) => \DELAY_COUNTER[0]_i_7_n_0\
    );
\DELAY_COUNTER_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[8]_i_1_n_5\,
      Q => DELAY_COUNTER_reg(10)
    );
\DELAY_COUNTER_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[8]_i_1_n_4\,
      Q => DELAY_COUNTER_reg(11)
    );
\DELAY_COUNTER_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[12]_i_1_n_7\,
      Q => DELAY_COUNTER_reg(12)
    );
\DELAY_COUNTER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DELAY_COUNTER_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_DELAY_COUNTER_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_DELAY_COUNTER_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \DELAY_COUNTER_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \DELAY_COUNTER[12]_i_2_n_0\
    );
\DELAY_COUNTER_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[0]_i_2_n_6\,
      Q => DELAY_COUNTER_reg(1)
    );
\DELAY_COUNTER_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[0]_i_2_n_5\,
      Q => DELAY_COUNTER_reg(2)
    );
\DELAY_COUNTER_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[0]_i_2_n_4\,
      Q => DELAY_COUNTER_reg(3)
    );
\DELAY_COUNTER_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[4]_i_1_n_7\,
      Q => DELAY_COUNTER_reg(4)
    );
\DELAY_COUNTER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DELAY_COUNTER_reg[0]_i_2_n_0\,
      CO(3) => \DELAY_COUNTER_reg[4]_i_1_n_0\,
      CO(2) => \DELAY_COUNTER_reg[4]_i_1_n_1\,
      CO(1) => \DELAY_COUNTER_reg[4]_i_1_n_2\,
      CO(0) => \DELAY_COUNTER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DELAY_COUNTER_reg[4]_i_1_n_4\,
      O(2) => \DELAY_COUNTER_reg[4]_i_1_n_5\,
      O(1) => \DELAY_COUNTER_reg[4]_i_1_n_6\,
      O(0) => \DELAY_COUNTER_reg[4]_i_1_n_7\,
      S(3) => \DELAY_COUNTER[4]_i_2_n_0\,
      S(2) => \DELAY_COUNTER[4]_i_3_n_0\,
      S(1) => \DELAY_COUNTER[4]_i_4_n_0\,
      S(0) => \DELAY_COUNTER[4]_i_5_n_0\
    );
\DELAY_COUNTER_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[4]_i_1_n_6\,
      Q => DELAY_COUNTER_reg(5)
    );
\DELAY_COUNTER_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[4]_i_1_n_5\,
      Q => DELAY_COUNTER_reg(6)
    );
\DELAY_COUNTER_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[4]_i_1_n_4\,
      Q => DELAY_COUNTER_reg(7)
    );
\DELAY_COUNTER_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[8]_i_1_n_7\,
      Q => DELAY_COUNTER_reg(8)
    );
\DELAY_COUNTER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DELAY_COUNTER_reg[4]_i_1_n_0\,
      CO(3) => \DELAY_COUNTER_reg[8]_i_1_n_0\,
      CO(2) => \DELAY_COUNTER_reg[8]_i_1_n_1\,
      CO(1) => \DELAY_COUNTER_reg[8]_i_1_n_2\,
      CO(0) => \DELAY_COUNTER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DELAY_COUNTER_reg[8]_i_1_n_4\,
      O(2) => \DELAY_COUNTER_reg[8]_i_1_n_5\,
      O(1) => \DELAY_COUNTER_reg[8]_i_1_n_6\,
      O(0) => \DELAY_COUNTER_reg[8]_i_1_n_7\,
      S(3) => \DELAY_COUNTER[8]_i_2_n_0\,
      S(2) => \DELAY_COUNTER[8]_i_3_n_0\,
      S(1) => \DELAY_COUNTER[8]_i_4_n_0\,
      S(0) => \DELAY_COUNTER[8]_i_5_n_0\
    );
\DELAY_COUNTER_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \DELAY_COUNTER[0]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \DELAY_COUNTER_reg[8]_i_1_n_6\,
      Q => DELAY_COUNTER_reg(9)
    );
\DELAY_TO_WAIT[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_cmd__0\(1),
      I1 => \state_cmd__0\(0),
      O => DELAY_TO_WAIT(11)
    );
\DELAY_TO_WAIT[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => \state_cmd__0\(2),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      O => DELAY_TO_WAIT(6)
    );
\DELAY_TO_WAIT[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_cmd__0\(2),
      I1 => \state_cmd__0\(1),
      O => DELAY_TO_WAIT(9)
    );
\DELAY_TO_WAIT_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \precedent_state_cmd[2]_i_1_n_0\,
      D => DELAY_TO_WAIT(11),
      PRE => m_axis_tvalid_int_i_2_n_0,
      Q => \DELAY_TO_WAIT_reg_n_0_[11]\
    );
\DELAY_TO_WAIT_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \precedent_state_cmd[2]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => DELAY_TO_WAIT(6),
      Q => \DELAY_TO_WAIT_reg_n_0_[6]\
    );
\DELAY_TO_WAIT_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \precedent_state_cmd[2]_i_1_n_0\,
      D => DELAY_TO_WAIT(9),
      PRE => m_axis_tvalid_int_i_2_n_0,
      Q => \DELAY_TO_WAIT_reg_n_0_[9]\
    );
\FSM_sequential_state_cmd[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_cmd__1\(0),
      I1 => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      I2 => \state_cmd__0\(0),
      O => \FSM_sequential_state_cmd[0]_i_1_n_0\
    );
\FSM_sequential_state_cmd[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011101011"
    )
        port map (
      I0 => \state_cmd__0\(0),
      I1 => \state_cmd__0\(2),
      I2 => \precedent_state_cmd_reg_n_0_[0]\,
      I3 => \precedent_state_cmd_reg_n_0_[2]\,
      I4 => \precedent_state_cmd_reg_n_0_[1]\,
      I5 => \state_cmd__0\(1),
      O => \state_cmd__1\(0)
    );
\FSM_sequential_state_cmd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00100000"
    )
        port map (
      I0 => \state_cmd__0\(0),
      I1 => \state_cmd__0\(2),
      I2 => \precedent_state_cmd_reg_n_0_[1]\,
      I3 => \precedent_state_cmd_reg_n_0_[2]\,
      I4 => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      I5 => \state_cmd__0\(1),
      O => \FSM_sequential_state_cmd[1]_i_1_n_0\
    );
\FSM_sequential_state_cmd[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_cmd__1\(2),
      I1 => \FSM_sequential_state_cmd[2]_i_3_n_0\,
      I2 => \state_cmd__0\(2),
      O => \FSM_sequential_state_cmd[2]_i_1_n_0\
    );
\FSM_sequential_state_cmd[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010101011"
    )
        port map (
      I0 => \state_cmd__0\(0),
      I1 => \state_cmd__0\(2),
      I2 => \precedent_state_cmd_reg_n_0_[2]\,
      I3 => \precedent_state_cmd_reg_n_0_[1]\,
      I4 => \precedent_state_cmd_reg_n_0_[0]\,
      I5 => \state_cmd__0\(1),
      O => \state_cmd__1\(2)
    );
\FSM_sequential_state_cmd[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FF800000008"
    )
        port map (
      I0 => \FSM_sequential_state_cmd[2]_i_4_n_0\,
      I1 => \DELAY_COUNTER1_carry__0_n_3\,
      I2 => \state_cmd__0\(2),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(0),
      I5 => \FSM_sequential_state_cmd[2]_i_5_n_0\,
      O => \FSM_sequential_state_cmd[2]_i_3_n_0\
    );
\FSM_sequential_state_cmd[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5E"
    )
        port map (
      I0 => \precedent_state_cmd_reg_n_0_[1]\,
      I1 => \precedent_state_cmd_reg_n_0_[0]\,
      I2 => \precedent_state_cmd_reg_n_0_[2]\,
      O => \FSM_sequential_state_cmd[2]_i_4_n_0\
    );
\FSM_sequential_state_cmd[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_int_reg_0\,
      O => \FSM_sequential_state_cmd[2]_i_5_n_0\
    );
\FSM_sequential_state_cmd_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \FSM_sequential_state_cmd[0]_i_1_n_0\,
      Q => \state_cmd__0\(0)
    );
\FSM_sequential_state_cmd_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \FSM_sequential_state_cmd[1]_i_1_n_0\,
      Q => \state_cmd__0\(1)
    );
\FSM_sequential_state_cmd_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \FSM_sequential_state_cmd[2]_i_1_n_0\,
      Q => \state_cmd__0\(2)
    );
\FSM_sequential_state_sts[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => state_sts(2),
      I1 => s_axis_tvalid,
      I2 => state_sts(0),
      O => \FSM_sequential_state_sts[0]_i_1_n_0\
    );
\FSM_sequential_state_sts[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(2),
      I2 => s_axis_tvalid,
      I3 => state_sts(1),
      O => \FSM_sequential_state_sts[1]_i_1_n_0\
    );
\FSM_sequential_state_sts[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => state_sts(2),
      O => \FSM_sequential_state_sts[2]_i_1_n_0\
    );
\FSM_sequential_state_sts_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \FSM_sequential_state_sts[0]_i_1_n_0\,
      Q => state_sts(0)
    );
\FSM_sequential_state_sts_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \FSM_sequential_state_sts[1]_i_1_n_0\,
      Q => state_sts(1)
    );
\FSM_sequential_state_sts_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \FSM_sequential_state_sts[2]_i_1_n_0\,
      Q => state_sts(2)
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => led_b(0),
      I1 => \state_cmd__0\(0),
      I2 => led_g(0),
      I3 => led_r(0),
      I4 => \state_cmd__0\(1),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => led_b(1),
      I1 => \state_cmd__0\(0),
      I2 => led_g(1),
      I3 => led_r(1),
      I4 => \state_cmd__0\(1),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[2]_i_2_n_0\,
      I1 => m_axis_tdata0,
      I2 => \^m_axis_tdata\(2),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCCCE2E2FF22"
    )
        port map (
      I0 => led_g(2),
      I1 => \state_cmd__0\(0),
      I2 => led_b(2),
      I3 => led_r(2),
      I4 => \state_cmd__0\(1),
      I5 => \state_cmd__0\(2),
      O => \m_axis_tdata[2]_i_2_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => led_b(3),
      I1 => \state_cmd__0\(0),
      I2 => led_g(3),
      I3 => led_r(3),
      I4 => \state_cmd__0\(1),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => led_b(4),
      I1 => \state_cmd__0\(0),
      I2 => led_g(4),
      I3 => led_r(4),
      I4 => \state_cmd__0\(1),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => led_b(5),
      I1 => \state_cmd__0\(0),
      I2 => led_g(5),
      I3 => led_r(5),
      I4 => \state_cmd__0\(1),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^m_axis_tvalid_int_reg_0\,
      I1 => m_axis_tready,
      I2 => \state_cmd__0\(1),
      I3 => \state_cmd__0\(2),
      I4 => aresetn,
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A8000000000000"
    )
        port map (
      I0 => aresetn,
      I1 => \state_cmd__0\(2),
      I2 => \state_cmd__0\(0),
      I3 => \state_cmd__0\(1),
      I4 => m_axis_tready,
      I5 => \^m_axis_tvalid_int_reg_0\,
      O => m_axis_tdata0
    );
\m_axis_tdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => led_b(6),
      I1 => \state_cmd__0\(0),
      I2 => led_g(6),
      I3 => led_r(6),
      I4 => \state_cmd__0\(1),
      O => \m_axis_tdata[6]_i_3_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_2_n_0\,
      I1 => m_axis_tdata0,
      I2 => \^m_axis_tdata\(7),
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCCCE2E2FF22"
    )
        port map (
      I0 => led_g(7),
      I1 => \state_cmd__0\(0),
      I2 => led_b(7),
      I3 => led_r(7),
      I4 => \state_cmd__0\(1),
      I5 => \state_cmd__0\(2),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => \^m_axis_tdata\(0),
      R => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => \^m_axis_tdata\(1),
      R => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => \^m_axis_tdata\(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => \^m_axis_tdata\(3),
      R => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => \^m_axis_tdata\(4),
      R => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => \^m_axis_tdata\(5),
      R => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[6]_i_3_n_0\,
      Q => \^m_axis_tdata\(6),
      R => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[7]_i_1_n_0\,
      Q => \^m_axis_tdata\(7),
      R => '0'
    );
m_axis_tvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE3E"
    )
        port map (
      I0 => \state_cmd__0\(0),
      I1 => \state_cmd__0\(1),
      I2 => \state_cmd__0\(2),
      I3 => \^m_axis_tvalid_int_reg_0\,
      O => m_axis_tvalid_int_i_1_n_0
    );
m_axis_tvalid_int_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => m_axis_tvalid_int_i_2_n_0
    );
m_axis_tvalid_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => m_axis_tvalid_int_i_1_n_0,
      Q => \^m_axis_tvalid_int_reg_0\
    );
\precedent_state_cmd[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \state_cmd__0\(0),
      I1 => \state_cmd__0\(2),
      I2 => \state_cmd__0\(1),
      O => precedent_state_cmd(0)
    );
\precedent_state_cmd[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \state_cmd__0\(1),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(2),
      O => \precedent_state_cmd[1]_i_1_n_0\
    );
\precedent_state_cmd[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08088880"
    )
        port map (
      I0 => \^m_axis_tvalid_int_reg_0\,
      I1 => m_axis_tready,
      I2 => \state_cmd__0\(1),
      I3 => \state_cmd__0\(0),
      I4 => \state_cmd__0\(2),
      O => \precedent_state_cmd[2]_i_1_n_0\
    );
\precedent_state_cmd[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => \state_cmd__0\(2),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      O => precedent_state_cmd(2)
    );
\precedent_state_cmd_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \precedent_state_cmd[2]_i_1_n_0\,
      D => precedent_state_cmd(0),
      PRE => m_axis_tvalid_int_i_2_n_0,
      Q => \precedent_state_cmd_reg_n_0_[0]\
    );
\precedent_state_cmd_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \precedent_state_cmd[2]_i_1_n_0\,
      CLR => m_axis_tvalid_int_i_2_n_0,
      D => \precedent_state_cmd[1]_i_1_n_0\,
      Q => \precedent_state_cmd_reg_n_0_[1]\
    );
\precedent_state_cmd_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \precedent_state_cmd[2]_i_1_n_0\,
      D => precedent_state_cmd(2),
      PRE => m_axis_tvalid_int_i_2_n_0,
      Q => \precedent_state_cmd_reg_n_0_[2]\
    );
\sig_btn[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => sig_btn0,
      I2 => \^btn_trigger\,
      O => \sig_btn[0]_i_1_n_0\
    );
\sig_btn[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => sig_btn0,
      I2 => \^btn_jstk\,
      O => \sig_btn[1]_i_1_n_0\
    );
\sig_btn[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => aresetn,
      I1 => state_sts(2),
      I2 => s_axis_tvalid,
      I3 => state_sts(1),
      I4 => state_sts(0),
      O => sig_btn0
    );
\sig_btn_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sig_btn[0]_i_1_n_0\,
      Q => \^btn_trigger\,
      R => '0'
    );
\sig_btn_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sig_btn[1]_i_1_n_0\,
      Q => \^btn_jstk\,
      R => '0'
    );
\sig_jstk_x[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => state_sts(2),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => state_sts(0),
      I4 => aresetn,
      O => \sig_jstk_x[0]_i_1_n_0\
    );
\sig_jstk_x[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(7),
      I2 => state_sts(2),
      I3 => \sig_jstk_x[8]_i_2_n_0\,
      I4 => \^jstk_x\(1),
      O => \sig_jstk_x[8]_i_1_n_0\
    );
\sig_jstk_x[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => state_sts(1),
      I1 => state_sts(0),
      I2 => state_sts(2),
      I3 => s_axis_tvalid,
      I4 => aresetn,
      O => \sig_jstk_x[8]_i_2_n_0\
    );
\sig_jstk_x[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(6),
      I2 => state_sts(2),
      I3 => \sig_jstk_x[8]_i_2_n_0\,
      I4 => \^jstk_x\(0),
      O => \sig_jstk_x[9]_i_1_n_0\
    );
\sig_jstk_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_x[0]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \^jstk_x\(9),
      R => '0'
    );
\sig_jstk_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_x[0]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \^jstk_x\(8),
      R => '0'
    );
\sig_jstk_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_x[0]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \^jstk_x\(7),
      R => '0'
    );
\sig_jstk_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_x[0]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \^jstk_x\(6),
      R => '0'
    );
\sig_jstk_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_x[0]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \^jstk_x\(5),
      R => '0'
    );
\sig_jstk_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_x[0]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \^jstk_x\(4),
      R => '0'
    );
\sig_jstk_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_x[0]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \^jstk_x\(3),
      R => '0'
    );
\sig_jstk_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_x[0]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \^jstk_x\(2),
      R => '0'
    );
\sig_jstk_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sig_jstk_x[8]_i_1_n_0\,
      Q => \^jstk_x\(1),
      R => '0'
    );
\sig_jstk_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sig_jstk_x[9]_i_1_n_0\,
      Q => \^jstk_x\(0),
      R => '0'
    );
\sig_jstk_y[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => state_sts(2),
      I1 => state_sts(1),
      I2 => state_sts(0),
      I3 => s_axis_tvalid,
      I4 => aresetn,
      O => \sig_jstk_y[0]_i_1_n_0\
    );
\sig_jstk_y[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(7),
      I2 => state_sts(2),
      I3 => \sig_jstk_y[8]_i_2_n_0\,
      I4 => \^jstk_y\(1),
      O => \sig_jstk_y[8]_i_1_n_0\
    );
\sig_jstk_y[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => state_sts(2),
      I1 => state_sts(0),
      I2 => s_axis_tvalid,
      I3 => state_sts(1),
      I4 => aresetn,
      O => \sig_jstk_y[8]_i_2_n_0\
    );
\sig_jstk_y[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(6),
      I2 => state_sts(2),
      I3 => \sig_jstk_y[8]_i_2_n_0\,
      I4 => \^jstk_y\(0),
      O => \sig_jstk_y[9]_i_1_n_0\
    );
\sig_jstk_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_y[0]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \^jstk_y\(9),
      R => '0'
    );
\sig_jstk_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_y[0]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \^jstk_y\(8),
      R => '0'
    );
\sig_jstk_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_y[0]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \^jstk_y\(7),
      R => '0'
    );
\sig_jstk_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_y[0]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \^jstk_y\(6),
      R => '0'
    );
\sig_jstk_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_y[0]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \^jstk_y\(5),
      R => '0'
    );
\sig_jstk_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_y[0]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \^jstk_y\(4),
      R => '0'
    );
\sig_jstk_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_y[0]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \^jstk_y\(3),
      R => '0'
    );
\sig_jstk_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \sig_jstk_y[0]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \^jstk_y\(2),
      R => '0'
    );
\sig_jstk_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sig_jstk_y[8]_i_1_n_0\,
      Q => \^jstk_y\(1),
      R => '0'
    );
\sig_jstk_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sig_jstk_y[9]_i_1_n_0\,
      Q => \^jstk_y\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_digilent_jstk2_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    led_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_digilent_jstk2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_digilent_jstk2_0_0 : entity is "design_1_digilent_jstk2_0_0,digilent_jstk2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_digilent_jstk2_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_digilent_jstk2_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_digilent_jstk2_0_0 : entity is "digilent_jstk2,Vivado 2020.2";
end design_1_digilent_jstk2_0_0;

architecture STRUCTURE of design_1_digilent_jstk2_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.design_1_digilent_jstk2_0_0_digilent_jstk2
     port map (
      aclk => aclk,
      aresetn => aresetn,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      jstk_x(9 downto 0) => jstk_x(9 downto 0),
      jstk_y(9 downto 0) => jstk_y(9 downto 0),
      led_b(7 downto 0) => led_b(7 downto 0),
      led_g(7 downto 0) => led_g(7 downto 0),
      led_r(7 downto 0) => led_r(7 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_int_reg_0 => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
