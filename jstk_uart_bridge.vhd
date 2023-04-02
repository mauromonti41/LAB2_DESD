library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jstk_uart_bridge is
	generic (
		HEADER_CODE		: std_logic_vector(7 downto 0) := x"c0"; -- Header of the packet
		TX_DELAY		: positive := 1_000_000;    -- Pause (in clock cycles) between two packets
		JSTK_BITS		: integer range 1 to 7 := 7    -- Number of bits of the joystick axis to transfer to the PC 
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

	-- These are examples of FSM states, you can use these if you want.

	type tx_state_type is (DELAY, SEND_HEADER, SEND_JSTK_X, SEND_JSTK_Y, SEND_BUTTONS);
	signal tx_state			: tx_state_type;

	-- ...

	--------------------------------------------

	type rx_state_type is (IDLE, GET_HEADER, GET_LED_R, GET_LED_G, GET_LED_B);
	signal rx_state			: rx_state_type;
	

	-- internal signals
	signal m_axis_tvalid_int : std_logic;
	signal s_axis_tready_int : std_logic;
	signal delay_counter : positive range 1 to TX_DELAY := 0;


	----------position and button signals------------------
	signal jstk_x_sign : std_logic_vector (JSTK_BITS downto 0);
	signal jstk_y_sign : std_logic_vector (JSTK_BITS downto 0);
	signal buttons 	   : std_logic_vector (JSTK_BITS downto 0);
    --------------------------------------------------------

begin

----------position and button signals------------------
	m_axis_tvalid <= m_axis_tvalid_int;
	s_axis_tready <= s_axis_tready_int;
	jstk_x_sign  <= jstk_x(jstk_x'HIGH downto 2);
	jstk_y_sign  <= jstk_y(jstk_y'HIGH downto 2);
	buttons <=(JSTK_BITS downto 2 => '0') & btn_trigger & btn_jstk;
-----------------------------------------------------------

	reset_process : process(aclk, aresetn)
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				tx_state <= SEND_HEADER;
				rx_state <= GET_HEADER;
				m_axis_tvalid_int <= '0';
				s_axis_tready_int <= '0';
				delay_counter <= 0;
			else
				s_axis_tready_int <= '1';
			end if;
		end if;
	end process;
	
	jstk_X_Y_Button_transfer : process(tx_state,jstk_x,jstk_y,btn_jstk,btn_trigger,aclk)
	begin
		if rising_edge(aclk) then
			case (tx_state) is
				when DELAY =>
					m_axis_tvalid_int <= '1';
					if delay_counter = TX_DELAY  then
						delay_counter <= 0;
						tx_state <= SEND_HEADER;
					else
						delay_counter <= delay_counter + 1;	
					end if;
				
				when SEND_HEADER =>
					m_axis_tvalid_int <= '1';
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= HEADER_CODE;
						tx_state <= SEND_JSTK_X;
						m_axis_tvalid_int <= '0';
					end if;
				when SEND_JSTK_X =>
					m_axis_tvalid_int <= '1';
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= jstk_x;
						
						tx_state <= SEND_JSTK_Y;
						m_axis_tvalid_int <= '0';
					end if;
				when SEND_JSTK_Y =>
					m_axis_tvalid_int<= '1';
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= jstk_x;
					
						tx_state <= SEND_BUTTONS;
						m_axis_tvalid_int <= '0';
					end if;
				when SEND_BUTTONS =>
					m_axis_tvalid_int <= '1';
					if m_axis_tready = '1' and m_axis_tvalid_int = '1'then
						m_axis_tdata <= buttons;
						tx_state <= DELAY;
						m_axis_tvalid_int <= '0';
					end if;
				
				when others =>
					tx_state <= DELAY;
				end case;
		end if;
	end process;

	led_rgb_receive : process(rx_state,led_r,led_g,led_b,aclk)
	begin
		if rising_edge(aclk) then
			case (rx_state) is
				when IDLE =>
					if delay_counter = TX_DELAY  then
						delay_counter <= 0;
						tx_state <= SEND_HEADER;
					else
						delay_counter <= delay_counter + 1;	
					end if;
				
				when GET_HEADER =>
					if m_axis_tvalid_int = '1' and s_axis_tready_int = '1'then
						if s_axis_tdata = HEADER_CODE then
							rx_state <= GET_LED_R;
						end if;
					end if;
				when GET_LED_R =>
					if m_axis_tvalid_int = '1' and s_axis_tready_int = '1'then
						led_r <= s_axis_tdata;
						rx_state <= GET_LED_G;
					end if;
				when GET_LED_B =>
					if m_axis_tvalid_int = '1' and s_axis_tready_int = '1'then
						led_b <= s_axis_tdata;
						rx_state <= GET_LED_G;
					end if;
				when GET_LED_G =>
					if m_axis_tvalid_int = '1' and s_axis_tready_int = '1'then
						led_g <= s_axis_tdata;
						rx_state <= IDLE;
					end if;
				
				when others =>
					rx_state <= IDLE;
				end case;
		end if;
	end process;

end architecture;