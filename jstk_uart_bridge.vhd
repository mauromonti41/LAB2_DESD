library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jstk_uart_bridge is
	generic (
		HEADER_CODE		: std_logic_vector(7 downto 0) := x"c0"; -- Header of the packet
		TX_DELAY		: positive := 1_000_000;    -- Pause (in clock cycles) between two packets
		JSTK_BITS		: integer range 1 to 7 := 7    -- Number of bits of the joystick sensitivity
	);
	Port ( 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;
 
		-- Data going TO the PC (i.e., joystick position and buttons state)
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in  STD_LOGIC;

		-- Data coming FROM the PC (i.e., LED color)
		s_axis_tvalid	: in  STD_LOGIC;
		s_axis_tdata	: in  STD_LOGIC_VECTOR(7 downto 0);
		s_axis_tready	: out STD_LOGIC;

		jstk_x			: in std_logic_vector(9 downto 0);
		jstk_y			: in std_logic_vector(9 downto 0);
		btn_jstk		: in std_logic;
		btn_trigger		: in std_logic;

		led_r			: out std_logic_vector(7 downto 0);
		led_g			: out std_logic_vector(7 downto 0);
		led_b			: out std_logic_vector(7 downto 0)
	);
end jstk_uart_bridge;

architecture Behavioral of jstk_uart_bridge is

	type tx_state_type is (DELAY, SEND_HEADER, SEND_JSTK_X, SEND_JSTK_Y, SEND_BUTTONS);
	signal tx_state			: tx_state_type := SEND_HEADER;
	
	--------------------------------------------

	type rx_state_type is (IDLE, GET_HEADER, GET_LED_R, GET_LED_G, GET_LED_B);
	signal rx_state			: rx_state_type := GET_HEADER;
	

	-- internal signals
	signal delay_counter_tx  : integer range 0 to TX_DELAY := 0;
	signal m_axis_tdata_int  : std_logic_vector(JSTK_BITS DOWNTO 0) := (Others => '0');

	constant NUM_OF_BITS : integer range 0 to 8 := 8;
	constant ZERO_BITS : std_logic_vector(NUM_OF_BITS-JSTK_BITS-1 DOWNTO 0) := (Others => '0');
	
begin

		-----master multiplexers	
	with tx_state select m_axis_tvalid <=
		'0' when DELAY,
		'1' when SEND_HEADER,
		'1' when SEND_JSTK_X,
		'1' when SEND_JSTK_Y,
		'1' when SEND_BUTTONS;

	with tx_state select m_axis_tdata <=
    	(Others => '0') when DELAY,  -- we don't care about this byte since the m_axis_tvalid is '0' in this state
		HEADER_CODE when SEND_HEADER,
		ZERO_BITS & jstk_x(jstk_x'HIGH downto (jstk_x'HIGH-JSTK_BITS+1)) when SEND_JSTK_X,
		ZERO_BITS & jstk_y(jstk_y'HIGH downto (jstk_y'HIGH-JSTK_BITS+1)) when SEND_JSTK_Y,
		((NUM_OF_BITS-1 downto 2 => '0') & btn_trigger & btn_jstk) when SEND_BUTTONS;
	
		-----------------------------------------------------------------------------------------
		
		-----slave multiplexer
	with rx_state select s_axis_tready <=
		'0' when IDLE,
		'1' when GET_HEADER,
		'1'	when GET_LED_R,
		'1' when GET_LED_G,
		'1' when GET_LED_B;
		
	jstk_X_Y_Button_transfer : process(aclk)
	begin
		if aresetn = '0' then --reset is not working, as explained on piazza
			tx_state <= SEND_HEADER;
			delay_counter_tx <= 0;
		elsif rising_edge(aclk) then
			case (tx_state) is
				when DELAY =>
					if delay_counter_tx = TX_DELAY  then
						delay_counter_tx <= 0;
						tx_state <= SEND_HEADER;
					else
						delay_counter_tx <= delay_counter_tx + 1;	
					end if;
				when SEND_HEADER =>
					if m_axis_tready = '1' then
						tx_state <= SEND_JSTK_X;
					end if;
				when SEND_JSTK_X =>
					if m_axis_tready = '1' then
						tx_state <= SEND_JSTK_Y;
					end if;
				when SEND_JSTK_Y =>
					if m_axis_tready = '1' then
						tx_state <= SEND_BUTTONS;
					end if;
				when SEND_BUTTONS =>
					if m_axis_tready = '1' then
						tx_state <= DELAY;
					end if;
				when others =>
					tx_state <= DELAY;
				end case;
		end if;
	end process;

	led_rgb_receive : process(aclk)
	begin
		if aresetn = '0' then --reset is not working
			rx_state <= GET_HEADER;
		elsif rising_edge(aclk) then
			case (rx_state) is
				when GET_HEADER =>
					if s_axis_tvalid = '1' then
						if s_axis_tdata = HEADER_CODE then
							rx_state <= GET_LED_R;
						end if;
					end if;
				when GET_LED_R =>
					if s_axis_tvalid = '1' then
						led_r <= s_axis_tdata;
						rx_state <= GET_LED_G;
					end if;
				when GET_LED_G =>
					if s_axis_tvalid = '1' then
						led_g <= s_axis_tdata;
						rx_state <= GET_LED_B;
					end if;
				when GET_LED_B =>
					if s_axis_tvalid = '1' then
						led_b <= s_axis_tdata;
						rx_state <= GET_HEADER;
					end if;
				when others =>
					rx_state <= GET_HEADER;
				end case;
			end if;
		end process;
end architecture;