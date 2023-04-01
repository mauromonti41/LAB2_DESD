library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.numeric_std.all;

entity digilent_jstk2 is
	generic (
		DELAY_US		: integer := 25;    -- Delay (in us) between two packets
		CLKFREQ		 	: integer := 100_000_000;  -- Frequency of the aclk signal (in Hz)
		SPI_SCLKFREQ 	: integer := 66_666 -- Frequency of the SPI SCLK clock signal (in Hz)
	);
	Port ( 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Data going TO the SPI IP-Core (and so, to the JSTK2 module)
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in STD_LOGIC;

		-- Data coming FROM the SPI IP-Core (and so, from the JSTK2 module)
		-- There is no tready signal, so you must be always ready to accept and use the incoming data, or it will be lost!
		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);

		-- Joystick and button values read from the module
		jstk_x			: out std_logic_vector(9 downto 0);
		jstk_y			: out std_logic_vector(9 downto 0);
		btn_jstk		: out std_logic;
		btn_trigger		: out std_logic;

		-- LED color to send to the module
		led_r			: in std_logic_vector(7 downto 0);
		led_g			: in std_logic_vector(7 downto 0);
		led_b			: in std_logic_vector(7 downto 0)
	);
end digilent_jstk2;

architecture Behavioral of digilent_jstk2 is

	-- FIFO per collezione byte da JSTK a FPGA
	
	signal   my_mem 			: std_logic_vector(39 DOWNTO 0);

	-- SetLEDRGB command, see the JSTK2 datasheet.
	
	constant CMDSETLEDRGB		: std_logic_vector(7 downto 0) := x"84";

	-- Do not forget that you MUST wait a bit between two packets. See the JSTK2 datasheet (and the SPI IP-Core README).
	-- Inter-packet delay plus the time needed to transfer 1 byte (for the CS de-assertion)
	constant DELAY_CYCLES_PACKET		: integer := DELAY_US * (CLKFREQ / 1_000_000) + CLKFREQ / SPI_SCLKFREQ;
	constant DELAY_CYCLES_BYTE			: integer := DELAY_CYCLES_PACKET/4;
	constant COUNTER_BITS				: integer := integer(log2(real(DELAY_CYCLES_PACKET)))+1;
	signal 	 DELAY_COUNTER				: unsigned(COUNTER_BITS-1 DOWNTO 0) := (others => '0');
	signal   DELAY_TO_WAIT				: unsigned(COUNTER_BITS-1 DOWNTO 0)	:= to_unsigned(DELAY_CYCLES_PACKET, COUNTER_BITS);
	
	--------------------------------------------------------------

	----------------FSM states for CMD and RGB TX-----------------

	type state_cmd_type is (WAIT_DELAY, SEND_CMD, SEND_RED, SEND_GREEN, SEND_BLUE, SEND_DUMMY);
	signal state_cmd			: state_cmd_type := WAIT_DELAY;

	---------------------------------------------------------------

	-----------------FSM states for XY and BTNS RX-----------------

	type state_sts_type is (GET_X_LSB, GET_X_MSB, GET_Y_LSB, GET_Y_MSB, GET_BUTTONS);
	signal state_sts	   : state_sts_type := GET_X_LSB;

	---------------------------------------------------------------

	------------signals for positions and buttons------------------

	signal sig_jstk_x      : std_logic_vector (0 TO 15);
	signal sig_jstk_y	   : std_logic_vector (0 TO 15);
	signal sig_btn_jstk    : std_logic;
	signal sig_btn_trigger : std_logic;

	----------------------------------------------------------------

	-------------------auxiliary signals----------------------------

	signal auxiliary_vector   	   : std_logic_vector (7 DOWNTO 0);
	signal precedent_state_cmd	   : state_cmd_type := SEND_CMD;
	signal precedent_state_sts 	   : state_sts_type := GET_BUTTONS;
	signal m_axis_tvalid_int       : std_logic;

	----------------------------------------------------------------

begin

	m_axis_tvalid <= m_axis_tvalid_int;

	reset_process : process(aclk, aresetn)
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				state_cmd <= WAIT_DELAY;
				precedent_state_cmd <= SEND_DUMMY;
				state_sts <= GET_X_LSB;
				DELAY_COUNTER <= (Others => '0');
				DELAY_TO_WAIT <= to_unsigned(DELAY_CYCLES_PACKET, COUNTER_BITS);
				m_axis_tvalid_int <= '0';
			end if;
		end if;
	end process;
	
	led_rgb_transfer : process(state_cmd,led_r,led_g,led_b,aclk)
		begin
			if rising_edge(aclk) then
				case (state_cmd) is
					when WAIT_DELAY =>
					m_axis_tvalid_int <= '1';
					if DELAY_COUNTER = DELAY_TO_WAIT  then
						DELAY_COUNTER <= (Others => '0');
						if precedent_state_cmd = SEND_CMD then
							state_cmd <= SEND_RED;
						elsif precedent_state_cmd = SEND_RED then
							state_cmd <= SEND_GREEN;
						elsif precedent_state_cmd = SEND_GREEN then
							state_cmd <= SEND_BLUE;
						elsif precedent_State_cmd = SEND_BLUE then
							state_cmd <= SEND_DUMMY;
						elsif precedent_State_cmd = SEND_DUMMY then
							state_cmd <= SEND_CMD;
						end if;
					else
							DELAY_COUNTER <= DELAY_COUNTER + 1;	
						end if;
				when SEND_CMD =>
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= CMDSETLEDRGB;
						precedent_state_cmd <= SEND_CMD;
						state_cmd <= WAIT_DELAY;
						m_axis_tvalid_int <= '0';
						DELAY_TO_WAIT <= to_unsigned(DELAY_CYCLES_BYTE, COUNTER_BITS);
					end if;
				when SEND_RED =>
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= led_r;
						precedent_state_cmd <= SEND_RED;
						state_cmd <= WAIT_DELAY;
						m_axis_tvalid_int <= '0';
						DELAY_TO_WAIT <= to_unsigned(DELAY_CYCLES_BYTE, COUNTER_BITS);
					end if;
				when SEND_GREEN =>
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= led_g;
						precedent_state_cmd <= SEND_GREEN;
						state_cmd <= WAIT_DELAY;
						m_axis_tvalid_int <= '0';
						DELAY_TO_WAIT <= to_unsigned(DELAY_CYCLES_BYTE, COUNTER_BITS);
					end if;
				when SEND_BLUE =>
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= led_b;
						precedent_state_cmd <= SEND_BLUE;
						state_cmd <= WAIT_DELAY;
						m_axis_tvalid_int <= '0';
						DELAY_TO_WAIT <= to_unsigned(DELAY_CYCLES_BYTE, COUNTER_BITS);
					end if;
				when SEND_DUMMY =>
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= (others => '0');
						precedent_state_cmd <= SEND_DUMMY;
						state_cmd <= WAIT_DELAY;
						m_axis_tvalid_int <= '0';
						DELAY_TO_WAIT <= to_unsigned(DELAY_CYCLES_PACKET, COUNTER_BITS);
					end if;
				when others =>
					precedent_state_cmd <= SEND_DUMMY;
					state_cmd <= WAIT_DELAY;
					DELAY_TO_WAIT <= to_unsigned(DELAY_CYCLES_PACKET, COUNTER_BITS);
				end case;
			end if;
	end process;
	
	jstk_X_Y_Button_receive : process(state_sts,aclk)
		begin
			if rising_edge(aclk) then	
				case (state_sts) is
					when GET_X_LSB =>
						if s_axis_tvalid = '1' then
							sig_jstk_x(7 TO 15) <= s_axis_tdata;
							state_sts <= GET_X_MSB;
						end if;
					when GET_X_MSB =>
						if s_axis_tvalid = '1' then
							sig_jstk_x(0 TO 7) <= s_axis_tdata;
							state_sts <= GET_Y_LSB;
						end if;
					when GET_Y_LSB =>
						if s_axis_tvalid = '1'then
							sig_jstk_y(7 TO 15) <= s_axis_tdata;
							state_sts <= GET_Y_MSB;
						end if;
					when GET_Y_MSB =>
						if s_axis_tvalid = '1' then
							sig_jstk_y(0 TO 7) <= s_axis_tdata;
							state_sts <= GET_BUTTONS;
						end if;
					when GET_BUTTONS =>
						if s_axis_tvalid = '1' then
							sig_btn_jstk <= s_axis_tdata(0);
							sig_btn_trigger <= s_axis_tdata(1);
							state_sts <= GET_X_LSB;
						end if;
					when others =>
						state_sts <= GET_X_LSB;
				end case;
			end if;
	end process;

		jstk_x <= sig_jstk_x(0 TO 9);
		jstk_y <= sig_jstk_y(0 TO 9);
		btn_jstk <= sig_btn_jstk;
		btn_trigger <= sig_btn_trigger;

end architecture;




