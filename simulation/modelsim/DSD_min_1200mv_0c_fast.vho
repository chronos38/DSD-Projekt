-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/02/2014 15:21:49"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dezctr IS
    PORT (
	clk50 : IN std_logic;
	reset_n : IN std_logic;
	sw_i : IN std_logic_vector(9 DOWNTO 0);
	pb_i : IN std_logic_vector(1 DOWNTO 0);
	ss0_o : BUFFER std_logic_vector(7 DOWNTO 0);
	ss1_o : BUFFER std_logic_vector(7 DOWNTO 0);
	ss2_o : BUFFER std_logic_vector(7 DOWNTO 0);
	ss3_o : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END dezctr;

-- Design Ports Information
-- ss0_o[0]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss0_o[1]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss0_o[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss0_o[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss0_o[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss0_o[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss0_o[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss0_o[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss1_o[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss1_o[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss1_o[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss1_o[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss1_o[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss1_o[5]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss1_o[6]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss1_o[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss2_o[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss2_o[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss2_o[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss2_o[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss2_o[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss2_o[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss2_o[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss2_o[7]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss3_o[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss3_o[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss3_o[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss3_o[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss3_o[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss3_o[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss3_o[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ss3_o[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk50	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pb_i[0]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pb_i[1]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[8]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[9]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[3]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[4]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[5]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[6]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_i[7]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF dezctr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_sw_i : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pb_i : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ss0_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ss1_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ss2_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ss3_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_cntr|i_prescaler|s_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ss0_o[0]~output_o\ : std_logic;
SIGNAL \ss0_o[1]~output_o\ : std_logic;
SIGNAL \ss0_o[2]~output_o\ : std_logic;
SIGNAL \ss0_o[3]~output_o\ : std_logic;
SIGNAL \ss0_o[4]~output_o\ : std_logic;
SIGNAL \ss0_o[5]~output_o\ : std_logic;
SIGNAL \ss0_o[6]~output_o\ : std_logic;
SIGNAL \ss0_o[7]~output_o\ : std_logic;
SIGNAL \ss1_o[0]~output_o\ : std_logic;
SIGNAL \ss1_o[1]~output_o\ : std_logic;
SIGNAL \ss1_o[2]~output_o\ : std_logic;
SIGNAL \ss1_o[3]~output_o\ : std_logic;
SIGNAL \ss1_o[4]~output_o\ : std_logic;
SIGNAL \ss1_o[5]~output_o\ : std_logic;
SIGNAL \ss1_o[6]~output_o\ : std_logic;
SIGNAL \ss1_o[7]~output_o\ : std_logic;
SIGNAL \ss2_o[0]~output_o\ : std_logic;
SIGNAL \ss2_o[1]~output_o\ : std_logic;
SIGNAL \ss2_o[2]~output_o\ : std_logic;
SIGNAL \ss2_o[3]~output_o\ : std_logic;
SIGNAL \ss2_o[4]~output_o\ : std_logic;
SIGNAL \ss2_o[5]~output_o\ : std_logic;
SIGNAL \ss2_o[6]~output_o\ : std_logic;
SIGNAL \ss2_o[7]~output_o\ : std_logic;
SIGNAL \ss3_o[0]~output_o\ : std_logic;
SIGNAL \ss3_o[1]~output_o\ : std_logic;
SIGNAL \ss3_o[2]~output_o\ : std_logic;
SIGNAL \ss3_o[3]~output_o\ : std_logic;
SIGNAL \ss3_o[4]~output_o\ : std_logic;
SIGNAL \ss3_o[5]~output_o\ : std_logic;
SIGNAL \ss3_o[6]~output_o\ : std_logic;
SIGNAL \ss3_o[7]~output_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~2_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~1\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~2_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~3\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~4_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~5\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~6_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~7\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~8_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~9\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~10_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Equal0~6_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~11\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~12_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~12_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~13\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~14_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~15\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~16_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~17\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~18_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~19\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~20_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~21\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~22_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~11_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~23\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~24_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~10_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~25\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~26_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~9_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~27\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~28_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~8_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~29\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~30_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~31\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~32_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~7_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~33\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~34_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~35\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~36_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~6_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~37\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~38_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~5_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~39\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~40_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~4_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~41\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~42_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~3_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~43\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~44_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~1_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~45\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~46_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~47\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Add0~48_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_counter~0_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Equal0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Equal0~2_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Equal0~3_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Equal0~1_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Equal0~4_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Equal0~5_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|Equal0~7_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_clk1~0_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_clk1~feeder_combout\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_clk1~q\ : std_logic;
SIGNAL \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \pb_i[1]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_pbsync0[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_pbsync1[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_keydeb[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[0]~5_combout\ : std_logic;
SIGNAL \pb_i[0]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_pbsync0[0]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_pbsync1[0]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_keydeb[0]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|Equal0~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[0]~6\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[1]~7_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[1]~8\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[2]~9_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[2]~10\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[3]~11_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|Equal1~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[3]~12\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt[4]~13_combout\ : std_logic;
SIGNAL \i_ioctrl|i_pb_debouncer|Equal1~1_combout\ : std_logic;
SIGNAL \i_ioctrl|pbsync_o[1]~feeder_combout\ : std_logic;
SIGNAL \sw_i[0]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[0]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[0]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[0]~5_combout\ : std_logic;
SIGNAL \sw_i[1]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_keydeb[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal0~1_combout\ : std_logic;
SIGNAL \sw_i[4]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[4]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[4]~feeder_combout\ : std_logic;
SIGNAL \sw_i[5]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[5]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[5]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_keydeb[5]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal0~3_combout\ : std_logic;
SIGNAL \sw_i[6]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[6]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[6]~feeder_combout\ : std_logic;
SIGNAL \sw_i[7]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[7]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[7]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal0~4_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal0~5_combout\ : std_logic;
SIGNAL \sw_i[9]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[9]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[9]~feeder_combout\ : std_logic;
SIGNAL \sw_i[8]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[8]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[8]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_keydeb[8]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal0~0_combout\ : std_logic;
SIGNAL \sw_i[2]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[2]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[2]~feeder_combout\ : std_logic;
SIGNAL \sw_i[3]~input_o\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync0[3]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|s_ff_swsync1[3]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_keydeb[3]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal0~2_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal0~6_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[0]~6\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[1]~7_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[1]~8\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[2]~9_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[2]~10\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[3]~11_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal1~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[3]~12\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt[4]~13_combout\ : std_logic;
SIGNAL \i_ioctrl|i_sw_debouncer|Equal1~1_combout\ : std_logic;
SIGNAL \i_ioctrl|swsync_o[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|pbsync_o[0]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|comb~0_combout\ : std_logic;
SIGNAL \i_cntr|s_next_state.DOWN_198~combout\ : std_logic;
SIGNAL \i_cntr|s_present_state.DOWN~feeder_combout\ : std_logic;
SIGNAL \i_cntr|s_present_state.DOWN~q\ : std_logic;
SIGNAL \i_cntr|s_next_state.UP~0_combout\ : std_logic;
SIGNAL \i_cntr|comb~1_combout\ : std_logic;
SIGNAL \i_cntr|s_next_state.UP_207~combout\ : std_logic;
SIGNAL \i_cntr|s_present_state.UP~0_combout\ : std_logic;
SIGNAL \i_cntr|s_present_state.UP~q\ : std_logic;
SIGNAL \i_cntr|i_bcd0|s_cntr~0_combout\ : std_logic;
SIGNAL \i_cntr|comb~2_combout\ : std_logic;
SIGNAL \i_cntr|s_next_state.RESET_180~combout\ : std_logic;
SIGNAL \i_cntr|s_present_state.RESET~feeder_combout\ : std_logic;
SIGNAL \i_cntr|s_present_state.RESET~q\ : std_logic;
SIGNAL \i_cntr|i_bcd0|s_cntr~5_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd0|s_cntr~6_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd0|s_cntr[1]~2_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd0|Equal0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd0|Add0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd0|s_cntr~1_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd0|Equal1~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd0|s_cntr~3_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd0|s_cntr~4_combout\ : std_logic;
SIGNAL \i_cntr|cntr0_o[2]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr0_o[3]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr0_o[1]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr0_o[0]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|Mux7~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \i_cntr|Selector2~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|s_cntr~0_combout\ : std_logic;
SIGNAL \i_cntr|cntr1_o[0]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|Add0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|s_cntr~1_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|s_cntr[1]~2_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|Equal1~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|s_cntr~3_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|s_cntr~4_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|Equal0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|s_cntr~5_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd1|s_cntr~6_combout\ : std_logic;
SIGNAL \i_cntr|cntr1_o[3]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr1_o[2]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr1_o[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder1|Mux7~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder1|Mux6~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder1|Mux5~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder1|Mux4~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder1|Mux3~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder1|Mux2~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder1|Mux1~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder1|Mux0~0_combout\ : std_logic;
SIGNAL \i_cntr|Selector1~0_combout\ : std_logic;
SIGNAL \i_cntr|Selector1~1_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|s_cntr~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|s_cntr~4_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|s_cntr~5_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|s_cntr[1]~2_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|s_cntr[1]~3_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|Equal1~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|Add0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|Equal0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|s_cntr~1_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|s_cntr~6_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd2|s_cntr~7_combout\ : std_logic;
SIGNAL \i_cntr|cntr2_o[3]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr2_o[2]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr2_o[0]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr2_o[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder2|Mux7~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder2|Mux6~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder2|Mux5~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder2|Mux4~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder2|Mux3~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder2|Mux2~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder2|Mux1~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder2|Mux0~0_combout\ : std_logic;
SIGNAL \i_cntr|Selector0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|s_cntr~0_combout\ : std_logic;
SIGNAL \i_cntr|cntr3_o[0]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|Add0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|s_cntr~5_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|s_cntr~6_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|s_cntr[2]~2_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|Equal0~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|s_cntr~1_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|Equal1~0_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|s_cntr~3_combout\ : std_logic;
SIGNAL \i_cntr|i_bcd3|s_cntr~4_combout\ : std_logic;
SIGNAL \i_cntr|cntr3_o[2]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr3_o[3]~feeder_combout\ : std_logic;
SIGNAL \i_cntr|cntr3_o[1]~feeder_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder3|Mux7~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder3|Mux6~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder3|Mux5~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder3|Mux4~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder3|Mux3~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder3|Mux2~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder3|Mux1~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder3|Mux0~0_combout\ : std_logic;
SIGNAL \i_ioctrl|i_decoder0|ss_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_cntr|cntr3_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_cntr|cntr2_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_cntr|cntr1_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_cntr|cntr0_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_cntr|i_prescaler|s_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \i_cntr|i_bcd0|s_cntr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_cntr|i_bcd3|s_cntr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_ioctrl|i_pb_debouncer|s_keydeb\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_ioctrl|pbsync_o\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_ioctrl|s_ff_swsync0\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_ioctrl|s_ff_pbsync0\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_ioctrl|i_decoder1|ss_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_ioctrl|swsync_o\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_ioctrl|s_ff_swsync1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_ioctrl|i_decoder2|ss_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_cntr|i_bcd1|s_cntr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_ioctrl|i_sw_debouncer|s_debcnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_ioctrl|i_pb_debouncer|s_debcnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_ioctrl|i_sw_debouncer|s_keydeb\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_cntr|i_bcd2|s_cntr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_ioctrl|i_decoder3|ss_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_ioctrl|s_ff_pbsync1\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk50 <= clk50;
ww_reset_n <= reset_n;
ww_sw_i <= sw_i;
ww_pb_i <= pb_i;
ss0_o <= ww_ss0_o;
ss1_o <= ww_ss1_o;
ss2_o <= ww_ss2_o;
ss3_o <= ww_ss3_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_cntr|i_prescaler|s_clk1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_cntr|i_prescaler|s_clk1~q\);

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);

-- Location: IOOBUF_X21_Y29_N23
\ss0_o[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder0|ss_o\(0),
	devoe => ww_devoe,
	o => \ss0_o[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\ss0_o[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder0|ss_o\(1),
	devoe => ww_devoe,
	o => \ss0_o[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\ss0_o[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder0|ss_o\(2),
	devoe => ww_devoe,
	o => \ss0_o[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\ss0_o[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder0|ss_o\(3),
	devoe => ww_devoe,
	o => \ss0_o[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\ss0_o[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder0|ss_o\(4),
	devoe => ww_devoe,
	o => \ss0_o[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\ss0_o[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder0|ss_o\(5),
	devoe => ww_devoe,
	o => \ss0_o[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\ss0_o[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder0|ss_o\(6),
	devoe => ww_devoe,
	o => \ss0_o[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\ss0_o[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder0|ss_o\(7),
	devoe => ww_devoe,
	o => \ss0_o[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\ss1_o[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder1|ss_o\(0),
	devoe => ww_devoe,
	o => \ss1_o[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\ss1_o[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder1|ss_o\(1),
	devoe => ww_devoe,
	o => \ss1_o[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\ss1_o[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder1|ss_o\(2),
	devoe => ww_devoe,
	o => \ss1_o[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\ss1_o[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder1|ss_o\(3),
	devoe => ww_devoe,
	o => \ss1_o[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\ss1_o[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder1|ss_o\(4),
	devoe => ww_devoe,
	o => \ss1_o[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\ss1_o[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder1|ss_o\(5),
	devoe => ww_devoe,
	o => \ss1_o[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\ss1_o[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder1|ss_o\(6),
	devoe => ww_devoe,
	o => \ss1_o[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\ss1_o[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder1|ss_o\(7),
	devoe => ww_devoe,
	o => \ss1_o[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\ss2_o[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder2|ss_o\(0),
	devoe => ww_devoe,
	o => \ss2_o[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\ss2_o[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder2|ss_o\(1),
	devoe => ww_devoe,
	o => \ss2_o[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\ss2_o[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder2|ss_o\(2),
	devoe => ww_devoe,
	o => \ss2_o[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\ss2_o[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder2|ss_o\(3),
	devoe => ww_devoe,
	o => \ss2_o[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\ss2_o[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder2|ss_o\(4),
	devoe => ww_devoe,
	o => \ss2_o[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\ss2_o[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder2|ss_o\(5),
	devoe => ww_devoe,
	o => \ss2_o[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\ss2_o[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder2|ss_o\(6),
	devoe => ww_devoe,
	o => \ss2_o[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\ss2_o[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder2|ss_o\(7),
	devoe => ww_devoe,
	o => \ss2_o[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\ss3_o[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder3|ss_o\(0),
	devoe => ww_devoe,
	o => \ss3_o[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\ss3_o[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder3|ss_o\(1),
	devoe => ww_devoe,
	o => \ss3_o[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\ss3_o[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder3|ss_o\(2),
	devoe => ww_devoe,
	o => \ss3_o[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\ss3_o[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder3|ss_o\(3),
	devoe => ww_devoe,
	o => \ss3_o[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\ss3_o[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder3|ss_o\(4),
	devoe => ww_devoe,
	o => \ss3_o[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\ss3_o[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder3|ss_o\(5),
	devoe => ww_devoe,
	o => \ss3_o[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\ss3_o[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder3|ss_o\(6),
	devoe => ww_devoe,
	o => \ss3_o[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\ss3_o[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ioctrl|i_decoder3|ss_o\(7),
	devoe => ww_devoe,
	o => \ss3_o[7]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G9
\clk50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y24_N8
\i_cntr|i_prescaler|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~0_combout\ = \i_cntr|i_prescaler|s_counter\(0) $ (VCC)
-- \i_cntr|i_prescaler|Add0~1\ = CARRY(\i_cntr|i_prescaler|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(0),
	datad => VCC,
	combout => \i_cntr|i_prescaler|Add0~0_combout\,
	cout => \i_cntr|i_prescaler|Add0~1\);

-- Location: LCCOMB_X16_Y24_N8
\i_cntr|i_prescaler|s_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~2_combout\ = (\i_cntr|i_prescaler|Add0~0_combout\ & !\i_cntr|i_prescaler|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_prescaler|Add0~0_combout\,
	datad => \i_cntr|i_prescaler|Equal0~7_combout\,
	combout => \i_cntr|i_prescaler|s_counter~2_combout\);

-- Location: IOIBUF_X0_Y23_N1
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X16_Y24_N9
\i_cntr|i_prescaler|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(0));

-- Location: LCCOMB_X17_Y24_N10
\i_cntr|i_prescaler|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~2_combout\ = (\i_cntr|i_prescaler|s_counter\(1) & (!\i_cntr|i_prescaler|Add0~1\)) # (!\i_cntr|i_prescaler|s_counter\(1) & ((\i_cntr|i_prescaler|Add0~1\) # (GND)))
-- \i_cntr|i_prescaler|Add0~3\ = CARRY((!\i_cntr|i_prescaler|Add0~1\) # (!\i_cntr|i_prescaler|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(1),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~1\,
	combout => \i_cntr|i_prescaler|Add0~2_combout\,
	cout => \i_cntr|i_prescaler|Add0~3\);

-- Location: FF_X17_Y24_N11
\i_cntr|i_prescaler|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(1));

-- Location: LCCOMB_X17_Y24_N12
\i_cntr|i_prescaler|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~4_combout\ = (\i_cntr|i_prescaler|s_counter\(2) & (\i_cntr|i_prescaler|Add0~3\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(2) & (!\i_cntr|i_prescaler|Add0~3\ & VCC))
-- \i_cntr|i_prescaler|Add0~5\ = CARRY((\i_cntr|i_prescaler|s_counter\(2) & !\i_cntr|i_prescaler|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(2),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~3\,
	combout => \i_cntr|i_prescaler|Add0~4_combout\,
	cout => \i_cntr|i_prescaler|Add0~5\);

-- Location: FF_X17_Y24_N13
\i_cntr|i_prescaler|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(2));

-- Location: LCCOMB_X17_Y24_N14
\i_cntr|i_prescaler|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~6_combout\ = (\i_cntr|i_prescaler|s_counter\(3) & (!\i_cntr|i_prescaler|Add0~5\)) # (!\i_cntr|i_prescaler|s_counter\(3) & ((\i_cntr|i_prescaler|Add0~5\) # (GND)))
-- \i_cntr|i_prescaler|Add0~7\ = CARRY((!\i_cntr|i_prescaler|Add0~5\) # (!\i_cntr|i_prescaler|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(3),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~5\,
	combout => \i_cntr|i_prescaler|Add0~6_combout\,
	cout => \i_cntr|i_prescaler|Add0~7\);

-- Location: FF_X17_Y24_N15
\i_cntr|i_prescaler|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(3));

-- Location: LCCOMB_X17_Y24_N16
\i_cntr|i_prescaler|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~8_combout\ = (\i_cntr|i_prescaler|s_counter\(4) & (\i_cntr|i_prescaler|Add0~7\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(4) & (!\i_cntr|i_prescaler|Add0~7\ & VCC))
-- \i_cntr|i_prescaler|Add0~9\ = CARRY((\i_cntr|i_prescaler|s_counter\(4) & !\i_cntr|i_prescaler|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(4),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~7\,
	combout => \i_cntr|i_prescaler|Add0~8_combout\,
	cout => \i_cntr|i_prescaler|Add0~9\);

-- Location: FF_X17_Y24_N17
\i_cntr|i_prescaler|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(4));

-- Location: LCCOMB_X17_Y24_N18
\i_cntr|i_prescaler|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~10_combout\ = (\i_cntr|i_prescaler|s_counter\(5) & (!\i_cntr|i_prescaler|Add0~9\)) # (!\i_cntr|i_prescaler|s_counter\(5) & ((\i_cntr|i_prescaler|Add0~9\) # (GND)))
-- \i_cntr|i_prescaler|Add0~11\ = CARRY((!\i_cntr|i_prescaler|Add0~9\) # (!\i_cntr|i_prescaler|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(5),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~9\,
	combout => \i_cntr|i_prescaler|Add0~10_combout\,
	cout => \i_cntr|i_prescaler|Add0~11\);

-- Location: FF_X17_Y24_N19
\i_cntr|i_prescaler|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(5));

-- Location: LCCOMB_X17_Y24_N6
\i_cntr|i_prescaler|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Equal0~6_combout\ = (!\i_cntr|i_prescaler|s_counter\(2) & (!\i_cntr|i_prescaler|s_counter\(4) & (!\i_cntr|i_prescaler|s_counter\(3) & !\i_cntr|i_prescaler|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(2),
	datab => \i_cntr|i_prescaler|s_counter\(4),
	datac => \i_cntr|i_prescaler|s_counter\(3),
	datad => \i_cntr|i_prescaler|s_counter\(5),
	combout => \i_cntr|i_prescaler|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y24_N20
\i_cntr|i_prescaler|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~12_combout\ = (\i_cntr|i_prescaler|s_counter\(6) & (\i_cntr|i_prescaler|Add0~11\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(6) & (!\i_cntr|i_prescaler|Add0~11\ & VCC))
-- \i_cntr|i_prescaler|Add0~13\ = CARRY((\i_cntr|i_prescaler|s_counter\(6) & !\i_cntr|i_prescaler|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(6),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~11\,
	combout => \i_cntr|i_prescaler|Add0~12_combout\,
	cout => \i_cntr|i_prescaler|Add0~13\);

-- Location: LCCOMB_X16_Y24_N6
\i_cntr|i_prescaler|s_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~12_combout\ = (\i_cntr|i_prescaler|Add0~12_combout\ & !\i_cntr|i_prescaler|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_prescaler|Add0~12_combout\,
	datad => \i_cntr|i_prescaler|Equal0~7_combout\,
	combout => \i_cntr|i_prescaler|s_counter~12_combout\);

-- Location: FF_X16_Y24_N7
\i_cntr|i_prescaler|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~12_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(6));

-- Location: LCCOMB_X17_Y24_N22
\i_cntr|i_prescaler|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~14_combout\ = (\i_cntr|i_prescaler|s_counter\(7) & (!\i_cntr|i_prescaler|Add0~13\)) # (!\i_cntr|i_prescaler|s_counter\(7) & ((\i_cntr|i_prescaler|Add0~13\) # (GND)))
-- \i_cntr|i_prescaler|Add0~15\ = CARRY((!\i_cntr|i_prescaler|Add0~13\) # (!\i_cntr|i_prescaler|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(7),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~13\,
	combout => \i_cntr|i_prescaler|Add0~14_combout\,
	cout => \i_cntr|i_prescaler|Add0~15\);

-- Location: FF_X17_Y24_N23
\i_cntr|i_prescaler|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~14_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(7));

-- Location: LCCOMB_X17_Y24_N24
\i_cntr|i_prescaler|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~16_combout\ = (\i_cntr|i_prescaler|s_counter\(8) & (\i_cntr|i_prescaler|Add0~15\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(8) & (!\i_cntr|i_prescaler|Add0~15\ & VCC))
-- \i_cntr|i_prescaler|Add0~17\ = CARRY((\i_cntr|i_prescaler|s_counter\(8) & !\i_cntr|i_prescaler|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(8),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~15\,
	combout => \i_cntr|i_prescaler|Add0~16_combout\,
	cout => \i_cntr|i_prescaler|Add0~17\);

-- Location: FF_X17_Y24_N25
\i_cntr|i_prescaler|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~16_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(8));

-- Location: LCCOMB_X17_Y24_N26
\i_cntr|i_prescaler|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~18_combout\ = (\i_cntr|i_prescaler|s_counter\(9) & (!\i_cntr|i_prescaler|Add0~17\)) # (!\i_cntr|i_prescaler|s_counter\(9) & ((\i_cntr|i_prescaler|Add0~17\) # (GND)))
-- \i_cntr|i_prescaler|Add0~19\ = CARRY((!\i_cntr|i_prescaler|Add0~17\) # (!\i_cntr|i_prescaler|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(9),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~17\,
	combout => \i_cntr|i_prescaler|Add0~18_combout\,
	cout => \i_cntr|i_prescaler|Add0~19\);

-- Location: FF_X17_Y24_N27
\i_cntr|i_prescaler|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~18_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(9));

-- Location: LCCOMB_X17_Y24_N28
\i_cntr|i_prescaler|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~20_combout\ = (\i_cntr|i_prescaler|s_counter\(10) & (\i_cntr|i_prescaler|Add0~19\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(10) & (!\i_cntr|i_prescaler|Add0~19\ & VCC))
-- \i_cntr|i_prescaler|Add0~21\ = CARRY((\i_cntr|i_prescaler|s_counter\(10) & !\i_cntr|i_prescaler|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(10),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~19\,
	combout => \i_cntr|i_prescaler|Add0~20_combout\,
	cout => \i_cntr|i_prescaler|Add0~21\);

-- Location: FF_X17_Y24_N29
\i_cntr|i_prescaler|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~20_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(10));

-- Location: LCCOMB_X17_Y24_N30
\i_cntr|i_prescaler|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~22_combout\ = (\i_cntr|i_prescaler|s_counter\(11) & (!\i_cntr|i_prescaler|Add0~21\)) # (!\i_cntr|i_prescaler|s_counter\(11) & ((\i_cntr|i_prescaler|Add0~21\) # (GND)))
-- \i_cntr|i_prescaler|Add0~23\ = CARRY((!\i_cntr|i_prescaler|Add0~21\) # (!\i_cntr|i_prescaler|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(11),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~21\,
	combout => \i_cntr|i_prescaler|Add0~22_combout\,
	cout => \i_cntr|i_prescaler|Add0~23\);

-- Location: LCCOMB_X17_Y24_N2
\i_cntr|i_prescaler|s_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~11_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|Add0~22_combout\,
	combout => \i_cntr|i_prescaler|s_counter~11_combout\);

-- Location: FF_X17_Y24_N3
\i_cntr|i_prescaler|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(11));

-- Location: LCCOMB_X17_Y23_N0
\i_cntr|i_prescaler|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~24_combout\ = (\i_cntr|i_prescaler|s_counter\(12) & (\i_cntr|i_prescaler|Add0~23\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(12) & (!\i_cntr|i_prescaler|Add0~23\ & VCC))
-- \i_cntr|i_prescaler|Add0~25\ = CARRY((\i_cntr|i_prescaler|s_counter\(12) & !\i_cntr|i_prescaler|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(12),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~23\,
	combout => \i_cntr|i_prescaler|Add0~24_combout\,
	cout => \i_cntr|i_prescaler|Add0~25\);

-- Location: LCCOMB_X16_Y23_N16
\i_cntr|i_prescaler|s_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~10_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|Equal0~7_combout\,
	datac => \i_cntr|i_prescaler|Add0~24_combout\,
	combout => \i_cntr|i_prescaler|s_counter~10_combout\);

-- Location: FF_X16_Y23_N17
\i_cntr|i_prescaler|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(12));

-- Location: LCCOMB_X17_Y23_N2
\i_cntr|i_prescaler|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~26_combout\ = (\i_cntr|i_prescaler|s_counter\(13) & (!\i_cntr|i_prescaler|Add0~25\)) # (!\i_cntr|i_prescaler|s_counter\(13) & ((\i_cntr|i_prescaler|Add0~25\) # (GND)))
-- \i_cntr|i_prescaler|Add0~27\ = CARRY((!\i_cntr|i_prescaler|Add0~25\) # (!\i_cntr|i_prescaler|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(13),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~25\,
	combout => \i_cntr|i_prescaler|Add0~26_combout\,
	cout => \i_cntr|i_prescaler|Add0~27\);

-- Location: LCCOMB_X17_Y23_N26
\i_cntr|i_prescaler|s_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~9_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|Add0~26_combout\,
	combout => \i_cntr|i_prescaler|s_counter~9_combout\);

-- Location: FF_X17_Y23_N27
\i_cntr|i_prescaler|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~9_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(13));

-- Location: LCCOMB_X17_Y23_N4
\i_cntr|i_prescaler|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~28_combout\ = (\i_cntr|i_prescaler|s_counter\(14) & (\i_cntr|i_prescaler|Add0~27\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(14) & (!\i_cntr|i_prescaler|Add0~27\ & VCC))
-- \i_cntr|i_prescaler|Add0~29\ = CARRY((\i_cntr|i_prescaler|s_counter\(14) & !\i_cntr|i_prescaler|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(14),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~27\,
	combout => \i_cntr|i_prescaler|Add0~28_combout\,
	cout => \i_cntr|i_prescaler|Add0~29\);

-- Location: LCCOMB_X16_Y23_N24
\i_cntr|i_prescaler|s_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~8_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|Add0~28_combout\,
	combout => \i_cntr|i_prescaler|s_counter~8_combout\);

-- Location: FF_X16_Y23_N25
\i_cntr|i_prescaler|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(14));

-- Location: LCCOMB_X17_Y23_N6
\i_cntr|i_prescaler|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~30_combout\ = (\i_cntr|i_prescaler|s_counter\(15) & (!\i_cntr|i_prescaler|Add0~29\)) # (!\i_cntr|i_prescaler|s_counter\(15) & ((\i_cntr|i_prescaler|Add0~29\) # (GND)))
-- \i_cntr|i_prescaler|Add0~31\ = CARRY((!\i_cntr|i_prescaler|Add0~29\) # (!\i_cntr|i_prescaler|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(15),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~29\,
	combout => \i_cntr|i_prescaler|Add0~30_combout\,
	cout => \i_cntr|i_prescaler|Add0~31\);

-- Location: FF_X17_Y23_N7
\i_cntr|i_prescaler|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~30_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(15));

-- Location: LCCOMB_X17_Y23_N8
\i_cntr|i_prescaler|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~32_combout\ = (\i_cntr|i_prescaler|s_counter\(16) & (\i_cntr|i_prescaler|Add0~31\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(16) & (!\i_cntr|i_prescaler|Add0~31\ & VCC))
-- \i_cntr|i_prescaler|Add0~33\ = CARRY((\i_cntr|i_prescaler|s_counter\(16) & !\i_cntr|i_prescaler|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(16),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~31\,
	combout => \i_cntr|i_prescaler|Add0~32_combout\,
	cout => \i_cntr|i_prescaler|Add0~33\);

-- Location: LCCOMB_X16_Y23_N6
\i_cntr|i_prescaler|s_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~7_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|Equal0~7_combout\,
	datac => \i_cntr|i_prescaler|Add0~32_combout\,
	combout => \i_cntr|i_prescaler|s_counter~7_combout\);

-- Location: FF_X16_Y23_N7
\i_cntr|i_prescaler|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~7_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(16));

-- Location: LCCOMB_X17_Y23_N10
\i_cntr|i_prescaler|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~34_combout\ = (\i_cntr|i_prescaler|s_counter\(17) & (!\i_cntr|i_prescaler|Add0~33\)) # (!\i_cntr|i_prescaler|s_counter\(17) & ((\i_cntr|i_prescaler|Add0~33\) # (GND)))
-- \i_cntr|i_prescaler|Add0~35\ = CARRY((!\i_cntr|i_prescaler|Add0~33\) # (!\i_cntr|i_prescaler|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(17),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~33\,
	combout => \i_cntr|i_prescaler|Add0~34_combout\,
	cout => \i_cntr|i_prescaler|Add0~35\);

-- Location: FF_X17_Y23_N11
\i_cntr|i_prescaler|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~34_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(17));

-- Location: LCCOMB_X17_Y23_N12
\i_cntr|i_prescaler|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~36_combout\ = (\i_cntr|i_prescaler|s_counter\(18) & (\i_cntr|i_prescaler|Add0~35\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(18) & (!\i_cntr|i_prescaler|Add0~35\ & VCC))
-- \i_cntr|i_prescaler|Add0~37\ = CARRY((\i_cntr|i_prescaler|s_counter\(18) & !\i_cntr|i_prescaler|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(18),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~35\,
	combout => \i_cntr|i_prescaler|Add0~36_combout\,
	cout => \i_cntr|i_prescaler|Add0~37\);

-- Location: LCCOMB_X17_Y22_N2
\i_cntr|i_prescaler|s_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~6_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|Add0~36_combout\,
	combout => \i_cntr|i_prescaler|s_counter~6_combout\);

-- Location: FF_X17_Y22_N3
\i_cntr|i_prescaler|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(18));

-- Location: LCCOMB_X17_Y23_N14
\i_cntr|i_prescaler|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~38_combout\ = (\i_cntr|i_prescaler|s_counter\(19) & (!\i_cntr|i_prescaler|Add0~37\)) # (!\i_cntr|i_prescaler|s_counter\(19) & ((\i_cntr|i_prescaler|Add0~37\) # (GND)))
-- \i_cntr|i_prescaler|Add0~39\ = CARRY((!\i_cntr|i_prescaler|Add0~37\) # (!\i_cntr|i_prescaler|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(19),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~37\,
	combout => \i_cntr|i_prescaler|Add0~38_combout\,
	cout => \i_cntr|i_prescaler|Add0~39\);

-- Location: LCCOMB_X17_Y24_N0
\i_cntr|i_prescaler|s_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~5_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|Add0~38_combout\,
	combout => \i_cntr|i_prescaler|s_counter~5_combout\);

-- Location: FF_X17_Y24_N1
\i_cntr|i_prescaler|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(19));

-- Location: LCCOMB_X17_Y23_N16
\i_cntr|i_prescaler|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~40_combout\ = (\i_cntr|i_prescaler|s_counter\(20) & (\i_cntr|i_prescaler|Add0~39\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(20) & (!\i_cntr|i_prescaler|Add0~39\ & VCC))
-- \i_cntr|i_prescaler|Add0~41\ = CARRY((\i_cntr|i_prescaler|s_counter\(20) & !\i_cntr|i_prescaler|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(20),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~39\,
	combout => \i_cntr|i_prescaler|Add0~40_combout\,
	cout => \i_cntr|i_prescaler|Add0~41\);

-- Location: LCCOMB_X17_Y23_N30
\i_cntr|i_prescaler|s_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~4_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|Add0~40_combout\,
	combout => \i_cntr|i_prescaler|s_counter~4_combout\);

-- Location: FF_X17_Y23_N31
\i_cntr|i_prescaler|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(20));

-- Location: LCCOMB_X17_Y23_N18
\i_cntr|i_prescaler|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~42_combout\ = (\i_cntr|i_prescaler|s_counter\(21) & (!\i_cntr|i_prescaler|Add0~41\)) # (!\i_cntr|i_prescaler|s_counter\(21) & ((\i_cntr|i_prescaler|Add0~41\) # (GND)))
-- \i_cntr|i_prescaler|Add0~43\ = CARRY((!\i_cntr|i_prescaler|Add0~41\) # (!\i_cntr|i_prescaler|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(21),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~41\,
	combout => \i_cntr|i_prescaler|Add0~42_combout\,
	cout => \i_cntr|i_prescaler|Add0~43\);

-- Location: LCCOMB_X16_Y23_N12
\i_cntr|i_prescaler|s_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~3_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|Add0~42_combout\,
	combout => \i_cntr|i_prescaler|s_counter~3_combout\);

-- Location: FF_X16_Y23_N13
\i_cntr|i_prescaler|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(21));

-- Location: LCCOMB_X17_Y23_N20
\i_cntr|i_prescaler|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~44_combout\ = (\i_cntr|i_prescaler|s_counter\(22) & (\i_cntr|i_prescaler|Add0~43\ $ (GND))) # (!\i_cntr|i_prescaler|s_counter\(22) & (!\i_cntr|i_prescaler|Add0~43\ & VCC))
-- \i_cntr|i_prescaler|Add0~45\ = CARRY((\i_cntr|i_prescaler|s_counter\(22) & !\i_cntr|i_prescaler|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|s_counter\(22),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~43\,
	combout => \i_cntr|i_prescaler|Add0~44_combout\,
	cout => \i_cntr|i_prescaler|Add0~45\);

-- Location: LCCOMB_X17_Y22_N10
\i_cntr|i_prescaler|s_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~1_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|Equal0~7_combout\,
	datac => \i_cntr|i_prescaler|Add0~44_combout\,
	combout => \i_cntr|i_prescaler|s_counter~1_combout\);

-- Location: FF_X17_Y22_N11
\i_cntr|i_prescaler|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(22));

-- Location: LCCOMB_X17_Y23_N22
\i_cntr|i_prescaler|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~46_combout\ = (\i_cntr|i_prescaler|s_counter\(23) & (!\i_cntr|i_prescaler|Add0~45\)) # (!\i_cntr|i_prescaler|s_counter\(23) & ((\i_cntr|i_prescaler|Add0~45\) # (GND)))
-- \i_cntr|i_prescaler|Add0~47\ = CARRY((!\i_cntr|i_prescaler|Add0~45\) # (!\i_cntr|i_prescaler|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(23),
	datad => VCC,
	cin => \i_cntr|i_prescaler|Add0~45\,
	combout => \i_cntr|i_prescaler|Add0~46_combout\,
	cout => \i_cntr|i_prescaler|Add0~47\);

-- Location: FF_X17_Y23_N23
\i_cntr|i_prescaler|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|Add0~46_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(23));

-- Location: LCCOMB_X17_Y23_N24
\i_cntr|i_prescaler|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Add0~48_combout\ = \i_cntr|i_prescaler|Add0~47\ $ (!\i_cntr|i_prescaler|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_prescaler|s_counter\(24),
	cin => \i_cntr|i_prescaler|Add0~47\,
	combout => \i_cntr|i_prescaler|Add0~48_combout\);

-- Location: LCCOMB_X17_Y22_N12
\i_cntr|i_prescaler|s_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_counter~0_combout\ = (!\i_cntr|i_prescaler|Equal0~7_combout\ & \i_cntr|i_prescaler|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|Add0~48_combout\,
	combout => \i_cntr|i_prescaler|s_counter~0_combout\);

-- Location: FF_X17_Y22_N13
\i_cntr|i_prescaler|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_counter~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_counter\(24));

-- Location: LCCOMB_X17_Y22_N0
\i_cntr|i_prescaler|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Equal0~0_combout\ = (\i_cntr|i_prescaler|s_counter\(24) & (!\i_cntr|i_prescaler|s_counter\(23) & (!\i_cntr|i_prescaler|s_counter\(0) & \i_cntr|i_prescaler|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(24),
	datab => \i_cntr|i_prescaler|s_counter\(23),
	datac => \i_cntr|i_prescaler|s_counter\(0),
	datad => \i_cntr|i_prescaler|s_counter\(22),
	combout => \i_cntr|i_prescaler|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y23_N2
\i_cntr|i_prescaler|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Equal0~2_combout\ = (\i_cntr|i_prescaler|s_counter\(16) & (\i_cntr|i_prescaler|s_counter\(14) & (!\i_cntr|i_prescaler|s_counter\(17) & !\i_cntr|i_prescaler|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(16),
	datab => \i_cntr|i_prescaler|s_counter\(14),
	datac => \i_cntr|i_prescaler|s_counter\(17),
	datad => \i_cntr|i_prescaler|s_counter\(15),
	combout => \i_cntr|i_prescaler|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y23_N22
\i_cntr|i_prescaler|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Equal0~3_combout\ = (!\i_cntr|i_prescaler|s_counter\(10) & (\i_cntr|i_prescaler|s_counter\(13) & (\i_cntr|i_prescaler|s_counter\(11) & \i_cntr|i_prescaler|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(10),
	datab => \i_cntr|i_prescaler|s_counter\(13),
	datac => \i_cntr|i_prescaler|s_counter\(11),
	datad => \i_cntr|i_prescaler|s_counter\(12),
	combout => \i_cntr|i_prescaler|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y23_N28
\i_cntr|i_prescaler|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Equal0~1_combout\ = (\i_cntr|i_prescaler|s_counter\(21) & (\i_cntr|i_prescaler|s_counter\(18) & (\i_cntr|i_prescaler|s_counter\(20) & \i_cntr|i_prescaler|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(21),
	datab => \i_cntr|i_prescaler|s_counter\(18),
	datac => \i_cntr|i_prescaler|s_counter\(20),
	datad => \i_cntr|i_prescaler|s_counter\(19),
	combout => \i_cntr|i_prescaler|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y23_N0
\i_cntr|i_prescaler|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Equal0~4_combout\ = (\i_cntr|i_prescaler|Equal0~0_combout\ & (\i_cntr|i_prescaler|Equal0~2_combout\ & (\i_cntr|i_prescaler|Equal0~3_combout\ & \i_cntr|i_prescaler|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|Equal0~0_combout\,
	datab => \i_cntr|i_prescaler|Equal0~2_combout\,
	datac => \i_cntr|i_prescaler|Equal0~3_combout\,
	datad => \i_cntr|i_prescaler|Equal0~1_combout\,
	combout => \i_cntr|i_prescaler|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y24_N4
\i_cntr|i_prescaler|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Equal0~5_combout\ = (!\i_cntr|i_prescaler|s_counter\(7) & (\i_cntr|i_prescaler|s_counter\(6) & (!\i_cntr|i_prescaler|s_counter\(9) & !\i_cntr|i_prescaler|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|s_counter\(7),
	datab => \i_cntr|i_prescaler|s_counter\(6),
	datac => \i_cntr|i_prescaler|s_counter\(9),
	datad => \i_cntr|i_prescaler|s_counter\(8),
	combout => \i_cntr|i_prescaler|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y24_N0
\i_cntr|i_prescaler|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|Equal0~7_combout\ = (\i_cntr|i_prescaler|Equal0~6_combout\ & (\i_cntr|i_prescaler|Equal0~4_combout\ & (!\i_cntr|i_prescaler|s_counter\(1) & \i_cntr|i_prescaler|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_prescaler|Equal0~6_combout\,
	datab => \i_cntr|i_prescaler|Equal0~4_combout\,
	datac => \i_cntr|i_prescaler|s_counter\(1),
	datad => \i_cntr|i_prescaler|Equal0~5_combout\,
	combout => \i_cntr|i_prescaler|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y25_N0
\i_cntr|i_prescaler|s_clk1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_clk1~0_combout\ = \i_cntr|i_prescaler|Equal0~7_combout\ $ (\i_cntr|i_prescaler|s_clk1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_prescaler|Equal0~7_combout\,
	datad => \i_cntr|i_prescaler|s_clk1~q\,
	combout => \i_cntr|i_prescaler|s_clk1~0_combout\);

-- Location: LCCOMB_X19_Y25_N30
\i_cntr|i_prescaler|s_clk1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_prescaler|s_clk1~feeder_combout\ = \i_cntr|i_prescaler|s_clk1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_prescaler|s_clk1~0_combout\,
	combout => \i_cntr|i_prescaler|s_clk1~feeder_combout\);

-- Location: FF_X19_Y25_N31
\i_cntr|i_prescaler|s_clk1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|i_prescaler|s_clk1~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_prescaler|s_clk1~q\);

-- Location: CLKCTRL_G11
\i_cntr|i_prescaler|s_clk1~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_cntr|i_prescaler|s_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\pb_i[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_i(1),
	o => \pb_i[1]~input_o\);

-- Location: LCCOMB_X2_Y26_N24
\i_ioctrl|s_ff_pbsync0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_pbsync0[1]~feeder_combout\ = \pb_i[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_i[1]~input_o\,
	combout => \i_ioctrl|s_ff_pbsync0[1]~feeder_combout\);

-- Location: FF_X2_Y26_N25
\i_ioctrl|s_ff_pbsync0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_pbsync0[1]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_pbsync0\(1));

-- Location: LCCOMB_X2_Y26_N22
\i_ioctrl|s_ff_pbsync1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_pbsync1[1]~feeder_combout\ = \i_ioctrl|s_ff_pbsync0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_pbsync0\(1),
	combout => \i_ioctrl|s_ff_pbsync1[1]~feeder_combout\);

-- Location: FF_X2_Y26_N23
\i_ioctrl|s_ff_pbsync1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_pbsync1[1]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_pbsync1\(1));

-- Location: LCCOMB_X21_Y27_N14
\i_ioctrl|i_pb_debouncer|s_keydeb[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|s_keydeb[1]~feeder_combout\ = \i_ioctrl|s_ff_pbsync1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_pbsync1\(1),
	combout => \i_ioctrl|i_pb_debouncer|s_keydeb[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y27_N20
\i_ioctrl|i_pb_debouncer|s_debcnt[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|s_debcnt[0]~5_combout\ = \i_ioctrl|i_pb_debouncer|s_debcnt\(0) $ (VCC)
-- \i_ioctrl|i_pb_debouncer|s_debcnt[0]~6\ = CARRY(\i_ioctrl|i_pb_debouncer|s_debcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ioctrl|i_pb_debouncer|s_debcnt\(0),
	datad => VCC,
	combout => \i_ioctrl|i_pb_debouncer|s_debcnt[0]~5_combout\,
	cout => \i_ioctrl|i_pb_debouncer|s_debcnt[0]~6\);

-- Location: IOIBUF_X0_Y23_N15
\pb_i[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_i(0),
	o => \pb_i[0]~input_o\);

-- Location: LCCOMB_X2_Y26_N6
\i_ioctrl|s_ff_pbsync0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_pbsync0[0]~feeder_combout\ = \pb_i[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_i[0]~input_o\,
	combout => \i_ioctrl|s_ff_pbsync0[0]~feeder_combout\);

-- Location: FF_X2_Y26_N7
\i_ioctrl|s_ff_pbsync0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_pbsync0[0]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_pbsync0\(0));

-- Location: LCCOMB_X26_Y27_N24
\i_ioctrl|s_ff_pbsync1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_pbsync1[0]~feeder_combout\ = \i_ioctrl|s_ff_pbsync0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_pbsync0\(0),
	combout => \i_ioctrl|s_ff_pbsync1[0]~feeder_combout\);

-- Location: FF_X26_Y27_N25
\i_ioctrl|s_ff_pbsync1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_pbsync1[0]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_pbsync1\(0));

-- Location: LCCOMB_X21_Y27_N8
\i_ioctrl|i_pb_debouncer|s_keydeb[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|s_keydeb[0]~feeder_combout\ = \i_ioctrl|s_ff_pbsync1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_pbsync1\(0),
	combout => \i_ioctrl|i_pb_debouncer|s_keydeb[0]~feeder_combout\);

-- Location: FF_X21_Y27_N9
\i_ioctrl|i_pb_debouncer|s_keydeb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_pb_debouncer|s_keydeb[0]~feeder_combout\,
	ena => \i_ioctrl|i_pb_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_pb_debouncer|s_keydeb\(0));

-- Location: LCCOMB_X21_Y27_N0
\i_ioctrl|i_pb_debouncer|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|Equal0~0_combout\ = (\i_ioctrl|s_ff_pbsync1\(1) & (\i_ioctrl|i_pb_debouncer|s_keydeb\(1) & (\i_ioctrl|i_pb_debouncer|s_keydeb\(0) $ (!\i_ioctrl|s_ff_pbsync1\(0))))) # (!\i_ioctrl|s_ff_pbsync1\(1) & 
-- (!\i_ioctrl|i_pb_debouncer|s_keydeb\(1) & (\i_ioctrl|i_pb_debouncer|s_keydeb\(0) $ (!\i_ioctrl|s_ff_pbsync1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|s_ff_pbsync1\(1),
	datab => \i_ioctrl|i_pb_debouncer|s_keydeb\(0),
	datac => \i_ioctrl|i_pb_debouncer|s_keydeb\(1),
	datad => \i_ioctrl|s_ff_pbsync1\(0),
	combout => \i_ioctrl|i_pb_debouncer|Equal0~0_combout\);

-- Location: FF_X21_Y27_N21
\i_ioctrl|i_pb_debouncer|s_debcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_pb_debouncer|s_debcnt[0]~5_combout\,
	sclr => \i_ioctrl|i_pb_debouncer|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_pb_debouncer|s_debcnt\(0));

-- Location: LCCOMB_X21_Y27_N22
\i_ioctrl|i_pb_debouncer|s_debcnt[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|s_debcnt[1]~7_combout\ = (\i_ioctrl|i_pb_debouncer|s_debcnt\(1) & (!\i_ioctrl|i_pb_debouncer|s_debcnt[0]~6\)) # (!\i_ioctrl|i_pb_debouncer|s_debcnt\(1) & ((\i_ioctrl|i_pb_debouncer|s_debcnt[0]~6\) # (GND)))
-- \i_ioctrl|i_pb_debouncer|s_debcnt[1]~8\ = CARRY((!\i_ioctrl|i_pb_debouncer|s_debcnt[0]~6\) # (!\i_ioctrl|i_pb_debouncer|s_debcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_pb_debouncer|s_debcnt\(1),
	datad => VCC,
	cin => \i_ioctrl|i_pb_debouncer|s_debcnt[0]~6\,
	combout => \i_ioctrl|i_pb_debouncer|s_debcnt[1]~7_combout\,
	cout => \i_ioctrl|i_pb_debouncer|s_debcnt[1]~8\);

-- Location: FF_X21_Y27_N23
\i_ioctrl|i_pb_debouncer|s_debcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_pb_debouncer|s_debcnt[1]~7_combout\,
	sclr => \i_ioctrl|i_pb_debouncer|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_pb_debouncer|s_debcnt\(1));

-- Location: LCCOMB_X21_Y27_N24
\i_ioctrl|i_pb_debouncer|s_debcnt[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|s_debcnt[2]~9_combout\ = (\i_ioctrl|i_pb_debouncer|s_debcnt\(2) & (\i_ioctrl|i_pb_debouncer|s_debcnt[1]~8\ $ (GND))) # (!\i_ioctrl|i_pb_debouncer|s_debcnt\(2) & (!\i_ioctrl|i_pb_debouncer|s_debcnt[1]~8\ & VCC))
-- \i_ioctrl|i_pb_debouncer|s_debcnt[2]~10\ = CARRY((\i_ioctrl|i_pb_debouncer|s_debcnt\(2) & !\i_ioctrl|i_pb_debouncer|s_debcnt[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_pb_debouncer|s_debcnt\(2),
	datad => VCC,
	cin => \i_ioctrl|i_pb_debouncer|s_debcnt[1]~8\,
	combout => \i_ioctrl|i_pb_debouncer|s_debcnt[2]~9_combout\,
	cout => \i_ioctrl|i_pb_debouncer|s_debcnt[2]~10\);

-- Location: FF_X21_Y27_N25
\i_ioctrl|i_pb_debouncer|s_debcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_pb_debouncer|s_debcnt[2]~9_combout\,
	sclr => \i_ioctrl|i_pb_debouncer|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_pb_debouncer|s_debcnt\(2));

-- Location: LCCOMB_X21_Y27_N26
\i_ioctrl|i_pb_debouncer|s_debcnt[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|s_debcnt[3]~11_combout\ = (\i_ioctrl|i_pb_debouncer|s_debcnt\(3) & (!\i_ioctrl|i_pb_debouncer|s_debcnt[2]~10\)) # (!\i_ioctrl|i_pb_debouncer|s_debcnt\(3) & ((\i_ioctrl|i_pb_debouncer|s_debcnt[2]~10\) # (GND)))
-- \i_ioctrl|i_pb_debouncer|s_debcnt[3]~12\ = CARRY((!\i_ioctrl|i_pb_debouncer|s_debcnt[2]~10\) # (!\i_ioctrl|i_pb_debouncer|s_debcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_pb_debouncer|s_debcnt\(3),
	datad => VCC,
	cin => \i_ioctrl|i_pb_debouncer|s_debcnt[2]~10\,
	combout => \i_ioctrl|i_pb_debouncer|s_debcnt[3]~11_combout\,
	cout => \i_ioctrl|i_pb_debouncer|s_debcnt[3]~12\);

-- Location: FF_X21_Y27_N27
\i_ioctrl|i_pb_debouncer|s_debcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_pb_debouncer|s_debcnt[3]~11_combout\,
	sclr => \i_ioctrl|i_pb_debouncer|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_pb_debouncer|s_debcnt\(3));

-- Location: LCCOMB_X21_Y27_N12
\i_ioctrl|i_pb_debouncer|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|Equal1~0_combout\ = (!\i_ioctrl|i_pb_debouncer|s_debcnt\(1) & (\i_ioctrl|i_pb_debouncer|s_debcnt\(2) & (!\i_ioctrl|i_pb_debouncer|s_debcnt\(3) & !\i_ioctrl|i_pb_debouncer|s_debcnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_pb_debouncer|s_debcnt\(1),
	datab => \i_ioctrl|i_pb_debouncer|s_debcnt\(2),
	datac => \i_ioctrl|i_pb_debouncer|s_debcnt\(3),
	datad => \i_ioctrl|i_pb_debouncer|s_debcnt\(0),
	combout => \i_ioctrl|i_pb_debouncer|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y27_N28
\i_ioctrl|i_pb_debouncer|s_debcnt[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|s_debcnt[4]~13_combout\ = \i_ioctrl|i_pb_debouncer|s_debcnt[3]~12\ $ (!\i_ioctrl|i_pb_debouncer|s_debcnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|i_pb_debouncer|s_debcnt\(4),
	cin => \i_ioctrl|i_pb_debouncer|s_debcnt[3]~12\,
	combout => \i_ioctrl|i_pb_debouncer|s_debcnt[4]~13_combout\);

-- Location: FF_X21_Y27_N29
\i_ioctrl|i_pb_debouncer|s_debcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_pb_debouncer|s_debcnt[4]~13_combout\,
	sclr => \i_ioctrl|i_pb_debouncer|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_pb_debouncer|s_debcnt\(4));

-- Location: LCCOMB_X21_Y27_N2
\i_ioctrl|i_pb_debouncer|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_pb_debouncer|Equal1~1_combout\ = (\i_ioctrl|i_pb_debouncer|Equal1~0_combout\ & \i_ioctrl|i_pb_debouncer|s_debcnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_pb_debouncer|Equal1~0_combout\,
	datad => \i_ioctrl|i_pb_debouncer|s_debcnt\(4),
	combout => \i_ioctrl|i_pb_debouncer|Equal1~1_combout\);

-- Location: FF_X21_Y27_N15
\i_ioctrl|i_pb_debouncer|s_keydeb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_pb_debouncer|s_keydeb[1]~feeder_combout\,
	ena => \i_ioctrl|i_pb_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_pb_debouncer|s_keydeb\(1));

-- Location: LCCOMB_X22_Y27_N20
\i_ioctrl|pbsync_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|pbsync_o[1]~feeder_combout\ = \i_ioctrl|i_pb_debouncer|s_keydeb\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|i_pb_debouncer|s_keydeb\(1),
	combout => \i_ioctrl|pbsync_o[1]~feeder_combout\);

-- Location: FF_X22_Y27_N21
\i_ioctrl|pbsync_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|pbsync_o[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|pbsync_o\(1));

-- Location: IOIBUF_X0_Y24_N1
\sw_i[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(0),
	o => \sw_i[0]~input_o\);

-- Location: LCCOMB_X2_Y26_N16
\i_ioctrl|s_ff_swsync0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[0]~feeder_combout\ = \sw_i[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[0]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[0]~feeder_combout\);

-- Location: FF_X2_Y26_N17
\i_ioctrl|s_ff_swsync0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[0]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(0));

-- Location: LCCOMB_X2_Y26_N14
\i_ioctrl|s_ff_swsync1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[0]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(0),
	combout => \i_ioctrl|s_ff_swsync1[0]~feeder_combout\);

-- Location: FF_X2_Y26_N15
\i_ioctrl|s_ff_swsync1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[0]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(0));

-- Location: LCCOMB_X2_Y25_N16
\i_ioctrl|i_sw_debouncer|s_debcnt[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_debcnt[0]~5_combout\ = \i_ioctrl|i_sw_debouncer|s_debcnt\(0) $ (VCC)
-- \i_ioctrl|i_sw_debouncer|s_debcnt[0]~6\ = CARRY(\i_ioctrl|i_sw_debouncer|s_debcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ioctrl|i_sw_debouncer|s_debcnt\(0),
	datad => VCC,
	combout => \i_ioctrl|i_sw_debouncer|s_debcnt[0]~5_combout\,
	cout => \i_ioctrl|i_sw_debouncer|s_debcnt[0]~6\);

-- Location: IOIBUF_X0_Y27_N1
\sw_i[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(1),
	o => \sw_i[1]~input_o\);

-- Location: LCCOMB_X2_Y26_N10
\i_ioctrl|s_ff_swsync0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[1]~feeder_combout\ = \sw_i[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[1]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[1]~feeder_combout\);

-- Location: FF_X2_Y26_N11
\i_ioctrl|s_ff_swsync0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[1]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(1));

-- Location: LCCOMB_X2_Y26_N18
\i_ioctrl|s_ff_swsync1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[1]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(1),
	combout => \i_ioctrl|s_ff_swsync1[1]~feeder_combout\);

-- Location: FF_X2_Y26_N19
\i_ioctrl|s_ff_swsync1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[1]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(1));

-- Location: LCCOMB_X2_Y26_N8
\i_ioctrl|i_sw_debouncer|s_keydeb[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_keydeb[1]~feeder_combout\ = \i_ioctrl|s_ff_swsync1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync1\(1),
	combout => \i_ioctrl|i_sw_debouncer|s_keydeb[1]~feeder_combout\);

-- Location: FF_X2_Y26_N9
\i_ioctrl|i_sw_debouncer|s_keydeb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_keydeb[1]~feeder_combout\,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(1));

-- Location: LCCOMB_X2_Y26_N4
\i_ioctrl|i_sw_debouncer|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal0~1_combout\ = (\i_ioctrl|i_sw_debouncer|s_keydeb\(0) & (\i_ioctrl|s_ff_swsync1\(0) & (\i_ioctrl|i_sw_debouncer|s_keydeb\(1) $ (!\i_ioctrl|s_ff_swsync1\(1))))) # (!\i_ioctrl|i_sw_debouncer|s_keydeb\(0) & 
-- (!\i_ioctrl|s_ff_swsync1\(0) & (\i_ioctrl|i_sw_debouncer|s_keydeb\(1) $ (!\i_ioctrl|s_ff_swsync1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_sw_debouncer|s_keydeb\(0),
	datab => \i_ioctrl|s_ff_swsync1\(0),
	datac => \i_ioctrl|i_sw_debouncer|s_keydeb\(1),
	datad => \i_ioctrl|s_ff_swsync1\(1),
	combout => \i_ioctrl|i_sw_debouncer|Equal0~1_combout\);

-- Location: IOIBUF_X0_Y27_N22
\sw_i[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(4),
	o => \sw_i[4]~input_o\);

-- Location: LCCOMB_X1_Y25_N0
\i_ioctrl|s_ff_swsync0[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[4]~feeder_combout\ = \sw_i[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[4]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[4]~feeder_combout\);

-- Location: FF_X1_Y25_N1
\i_ioctrl|s_ff_swsync0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[4]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(4));

-- Location: LCCOMB_X1_Y25_N26
\i_ioctrl|s_ff_swsync1[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[4]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(4),
	combout => \i_ioctrl|s_ff_swsync1[4]~feeder_combout\);

-- Location: FF_X1_Y25_N27
\i_ioctrl|s_ff_swsync1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[4]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(4));

-- Location: IOIBUF_X0_Y22_N15
\sw_i[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(5),
	o => \sw_i[5]~input_o\);

-- Location: LCCOMB_X1_Y25_N2
\i_ioctrl|s_ff_swsync0[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[5]~feeder_combout\ = \sw_i[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[5]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[5]~feeder_combout\);

-- Location: FF_X1_Y25_N3
\i_ioctrl|s_ff_swsync0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[5]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(5));

-- Location: LCCOMB_X1_Y25_N12
\i_ioctrl|s_ff_swsync1[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[5]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(5),
	combout => \i_ioctrl|s_ff_swsync1[5]~feeder_combout\);

-- Location: FF_X1_Y25_N13
\i_ioctrl|s_ff_swsync1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[5]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(5));

-- Location: FF_X1_Y25_N11
\i_ioctrl|i_sw_debouncer|s_keydeb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \i_ioctrl|s_ff_swsync1\(4),
	sload => VCC,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(4));

-- Location: LCCOMB_X2_Y25_N26
\i_ioctrl|i_sw_debouncer|s_keydeb[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_keydeb[5]~feeder_combout\ = \i_ioctrl|s_ff_swsync1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync1\(5),
	combout => \i_ioctrl|i_sw_debouncer|s_keydeb[5]~feeder_combout\);

-- Location: FF_X2_Y25_N27
\i_ioctrl|i_sw_debouncer|s_keydeb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_keydeb[5]~feeder_combout\,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(5));

-- Location: LCCOMB_X1_Y25_N10
\i_ioctrl|i_sw_debouncer|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal0~3_combout\ = (\i_ioctrl|s_ff_swsync1\(4) & (\i_ioctrl|i_sw_debouncer|s_keydeb\(4) & (\i_ioctrl|s_ff_swsync1\(5) $ (!\i_ioctrl|i_sw_debouncer|s_keydeb\(5))))) # (!\i_ioctrl|s_ff_swsync1\(4) & 
-- (!\i_ioctrl|i_sw_debouncer|s_keydeb\(4) & (\i_ioctrl|s_ff_swsync1\(5) $ (!\i_ioctrl|i_sw_debouncer|s_keydeb\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|s_ff_swsync1\(4),
	datab => \i_ioctrl|s_ff_swsync1\(5),
	datac => \i_ioctrl|i_sw_debouncer|s_keydeb\(4),
	datad => \i_ioctrl|i_sw_debouncer|s_keydeb\(5),
	combout => \i_ioctrl|i_sw_debouncer|Equal0~3_combout\);

-- Location: IOIBUF_X0_Y25_N15
\sw_i[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(6),
	o => \sw_i[6]~input_o\);

-- Location: LCCOMB_X1_Y25_N20
\i_ioctrl|s_ff_swsync0[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[6]~feeder_combout\ = \sw_i[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[6]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[6]~feeder_combout\);

-- Location: FF_X1_Y25_N21
\i_ioctrl|s_ff_swsync0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[6]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(6));

-- Location: LCCOMB_X1_Y25_N22
\i_ioctrl|s_ff_swsync1[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[6]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(6),
	combout => \i_ioctrl|s_ff_swsync1[6]~feeder_combout\);

-- Location: FF_X1_Y25_N23
\i_ioctrl|s_ff_swsync1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[6]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(6));

-- Location: IOIBUF_X0_Y26_N8
\sw_i[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(7),
	o => \sw_i[7]~input_o\);

-- Location: LCCOMB_X1_Y25_N24
\i_ioctrl|s_ff_swsync0[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[7]~feeder_combout\ = \sw_i[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[7]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[7]~feeder_combout\);

-- Location: FF_X1_Y25_N25
\i_ioctrl|s_ff_swsync0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[7]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(7));

-- Location: LCCOMB_X1_Y25_N4
\i_ioctrl|s_ff_swsync1[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[7]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(7),
	combout => \i_ioctrl|s_ff_swsync1[7]~feeder_combout\);

-- Location: FF_X1_Y25_N5
\i_ioctrl|s_ff_swsync1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[7]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(7));

-- Location: FF_X1_Y25_N7
\i_ioctrl|i_sw_debouncer|s_keydeb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \i_ioctrl|s_ff_swsync1\(6),
	sload => VCC,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(6));

-- Location: FF_X1_Y25_N19
\i_ioctrl|i_sw_debouncer|s_keydeb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \i_ioctrl|s_ff_swsync1\(7),
	sload => VCC,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(7));

-- Location: LCCOMB_X1_Y25_N6
\i_ioctrl|i_sw_debouncer|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal0~4_combout\ = (\i_ioctrl|s_ff_swsync1\(6) & (\i_ioctrl|i_sw_debouncer|s_keydeb\(6) & (\i_ioctrl|s_ff_swsync1\(7) $ (!\i_ioctrl|i_sw_debouncer|s_keydeb\(7))))) # (!\i_ioctrl|s_ff_swsync1\(6) & 
-- (!\i_ioctrl|i_sw_debouncer|s_keydeb\(6) & (\i_ioctrl|s_ff_swsync1\(7) $ (!\i_ioctrl|i_sw_debouncer|s_keydeb\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|s_ff_swsync1\(6),
	datab => \i_ioctrl|s_ff_swsync1\(7),
	datac => \i_ioctrl|i_sw_debouncer|s_keydeb\(6),
	datad => \i_ioctrl|i_sw_debouncer|s_keydeb\(7),
	combout => \i_ioctrl|i_sw_debouncer|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y25_N18
\i_ioctrl|i_sw_debouncer|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal0~5_combout\ = (\i_ioctrl|i_sw_debouncer|Equal0~3_combout\ & \i_ioctrl|i_sw_debouncer|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_sw_debouncer|Equal0~3_combout\,
	datad => \i_ioctrl|i_sw_debouncer|Equal0~4_combout\,
	combout => \i_ioctrl|i_sw_debouncer|Equal0~5_combout\);

-- Location: IOIBUF_X0_Y25_N1
\sw_i[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(9),
	o => \sw_i[9]~input_o\);

-- Location: LCCOMB_X2_Y26_N28
\i_ioctrl|s_ff_swsync0[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[9]~feeder_combout\ = \sw_i[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[9]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[9]~feeder_combout\);

-- Location: FF_X2_Y26_N29
\i_ioctrl|s_ff_swsync0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[9]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(9));

-- Location: LCCOMB_X2_Y26_N26
\i_ioctrl|s_ff_swsync1[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[9]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(9),
	combout => \i_ioctrl|s_ff_swsync1[9]~feeder_combout\);

-- Location: FF_X2_Y26_N27
\i_ioctrl|s_ff_swsync1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[9]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(9));

-- Location: IOIBUF_X0_Y26_N1
\sw_i[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(8),
	o => \sw_i[8]~input_o\);

-- Location: LCCOMB_X2_Y26_N20
\i_ioctrl|s_ff_swsync0[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[8]~feeder_combout\ = \sw_i[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[8]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[8]~feeder_combout\);

-- Location: FF_X2_Y26_N21
\i_ioctrl|s_ff_swsync0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[8]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(8));

-- Location: LCCOMB_X2_Y26_N12
\i_ioctrl|s_ff_swsync1[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[8]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(8),
	combout => \i_ioctrl|s_ff_swsync1[8]~feeder_combout\);

-- Location: FF_X2_Y26_N13
\i_ioctrl|s_ff_swsync1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[8]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(8));

-- Location: LCCOMB_X2_Y26_N2
\i_ioctrl|i_sw_debouncer|s_keydeb[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_keydeb[8]~feeder_combout\ = \i_ioctrl|s_ff_swsync1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync1\(8),
	combout => \i_ioctrl|i_sw_debouncer|s_keydeb[8]~feeder_combout\);

-- Location: FF_X2_Y26_N3
\i_ioctrl|i_sw_debouncer|s_keydeb[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_keydeb[8]~feeder_combout\,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(8));

-- Location: FF_X2_Y26_N31
\i_ioctrl|i_sw_debouncer|s_keydeb[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \i_ioctrl|s_ff_swsync1\(9),
	sload => VCC,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(9));

-- Location: LCCOMB_X2_Y26_N30
\i_ioctrl|i_sw_debouncer|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal0~0_combout\ = (\i_ioctrl|s_ff_swsync1\(9) & (\i_ioctrl|i_sw_debouncer|s_keydeb\(9) & (\i_ioctrl|i_sw_debouncer|s_keydeb\(8) $ (!\i_ioctrl|s_ff_swsync1\(8))))) # (!\i_ioctrl|s_ff_swsync1\(9) & 
-- (!\i_ioctrl|i_sw_debouncer|s_keydeb\(9) & (\i_ioctrl|i_sw_debouncer|s_keydeb\(8) $ (!\i_ioctrl|s_ff_swsync1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|s_ff_swsync1\(9),
	datab => \i_ioctrl|i_sw_debouncer|s_keydeb\(8),
	datac => \i_ioctrl|i_sw_debouncer|s_keydeb\(9),
	datad => \i_ioctrl|s_ff_swsync1\(8),
	combout => \i_ioctrl|i_sw_debouncer|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\sw_i[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(2),
	o => \sw_i[2]~input_o\);

-- Location: LCCOMB_X1_Y25_N16
\i_ioctrl|s_ff_swsync0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[2]~feeder_combout\ = \sw_i[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[2]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[2]~feeder_combout\);

-- Location: FF_X1_Y25_N17
\i_ioctrl|s_ff_swsync0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[2]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(2));

-- Location: LCCOMB_X1_Y25_N30
\i_ioctrl|s_ff_swsync1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[2]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(2),
	combout => \i_ioctrl|s_ff_swsync1[2]~feeder_combout\);

-- Location: FF_X1_Y25_N31
\i_ioctrl|s_ff_swsync1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[2]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(2));

-- Location: IOIBUF_X0_Y23_N8
\sw_i[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(3),
	o => \sw_i[3]~input_o\);

-- Location: LCCOMB_X1_Y25_N28
\i_ioctrl|s_ff_swsync0[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync0[3]~feeder_combout\ = \sw_i[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_i[3]~input_o\,
	combout => \i_ioctrl|s_ff_swsync0[3]~feeder_combout\);

-- Location: FF_X1_Y25_N29
\i_ioctrl|s_ff_swsync0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync0[3]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync0\(3));

-- Location: LCCOMB_X1_Y25_N8
\i_ioctrl|s_ff_swsync1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|s_ff_swsync1[3]~feeder_combout\ = \i_ioctrl|s_ff_swsync0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync0\(3),
	combout => \i_ioctrl|s_ff_swsync1[3]~feeder_combout\);

-- Location: FF_X1_Y25_N9
\i_ioctrl|s_ff_swsync1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|s_ff_swsync1[3]~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|s_ff_swsync1\(3));

-- Location: FF_X1_Y25_N15
\i_ioctrl|i_sw_debouncer|s_keydeb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \i_ioctrl|s_ff_swsync1\(2),
	sload => VCC,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(2));

-- Location: LCCOMB_X2_Y25_N4
\i_ioctrl|i_sw_debouncer|s_keydeb[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_keydeb[3]~feeder_combout\ = \i_ioctrl|s_ff_swsync1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|s_ff_swsync1\(3),
	combout => \i_ioctrl|i_sw_debouncer|s_keydeb[3]~feeder_combout\);

-- Location: FF_X2_Y25_N5
\i_ioctrl|i_sw_debouncer|s_keydeb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_keydeb[3]~feeder_combout\,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(3));

-- Location: LCCOMB_X1_Y25_N14
\i_ioctrl|i_sw_debouncer|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal0~2_combout\ = (\i_ioctrl|s_ff_swsync1\(2) & (\i_ioctrl|i_sw_debouncer|s_keydeb\(2) & (\i_ioctrl|s_ff_swsync1\(3) $ (!\i_ioctrl|i_sw_debouncer|s_keydeb\(3))))) # (!\i_ioctrl|s_ff_swsync1\(2) & 
-- (!\i_ioctrl|i_sw_debouncer|s_keydeb\(2) & (\i_ioctrl|s_ff_swsync1\(3) $ (!\i_ioctrl|i_sw_debouncer|s_keydeb\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|s_ff_swsync1\(2),
	datab => \i_ioctrl|s_ff_swsync1\(3),
	datac => \i_ioctrl|i_sw_debouncer|s_keydeb\(2),
	datad => \i_ioctrl|i_sw_debouncer|s_keydeb\(3),
	combout => \i_ioctrl|i_sw_debouncer|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y25_N0
\i_ioctrl|i_sw_debouncer|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal0~6_combout\ = (\i_ioctrl|i_sw_debouncer|Equal0~1_combout\ & (\i_ioctrl|i_sw_debouncer|Equal0~5_combout\ & (\i_ioctrl|i_sw_debouncer|Equal0~0_combout\ & \i_ioctrl|i_sw_debouncer|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_sw_debouncer|Equal0~1_combout\,
	datab => \i_ioctrl|i_sw_debouncer|Equal0~5_combout\,
	datac => \i_ioctrl|i_sw_debouncer|Equal0~0_combout\,
	datad => \i_ioctrl|i_sw_debouncer|Equal0~2_combout\,
	combout => \i_ioctrl|i_sw_debouncer|Equal0~6_combout\);

-- Location: FF_X2_Y25_N17
\i_ioctrl|i_sw_debouncer|s_debcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_debcnt[0]~5_combout\,
	sclr => \i_ioctrl|i_sw_debouncer|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_debcnt\(0));

-- Location: LCCOMB_X2_Y25_N18
\i_ioctrl|i_sw_debouncer|s_debcnt[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_debcnt[1]~7_combout\ = (\i_ioctrl|i_sw_debouncer|s_debcnt\(1) & (!\i_ioctrl|i_sw_debouncer|s_debcnt[0]~6\)) # (!\i_ioctrl|i_sw_debouncer|s_debcnt\(1) & ((\i_ioctrl|i_sw_debouncer|s_debcnt[0]~6\) # (GND)))
-- \i_ioctrl|i_sw_debouncer|s_debcnt[1]~8\ = CARRY((!\i_ioctrl|i_sw_debouncer|s_debcnt[0]~6\) # (!\i_ioctrl|i_sw_debouncer|s_debcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_ioctrl|i_sw_debouncer|s_debcnt\(1),
	datad => VCC,
	cin => \i_ioctrl|i_sw_debouncer|s_debcnt[0]~6\,
	combout => \i_ioctrl|i_sw_debouncer|s_debcnt[1]~7_combout\,
	cout => \i_ioctrl|i_sw_debouncer|s_debcnt[1]~8\);

-- Location: FF_X2_Y25_N19
\i_ioctrl|i_sw_debouncer|s_debcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_debcnt[1]~7_combout\,
	sclr => \i_ioctrl|i_sw_debouncer|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_debcnt\(1));

-- Location: LCCOMB_X2_Y25_N20
\i_ioctrl|i_sw_debouncer|s_debcnt[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_debcnt[2]~9_combout\ = (\i_ioctrl|i_sw_debouncer|s_debcnt\(2) & (\i_ioctrl|i_sw_debouncer|s_debcnt[1]~8\ $ (GND))) # (!\i_ioctrl|i_sw_debouncer|s_debcnt\(2) & (!\i_ioctrl|i_sw_debouncer|s_debcnt[1]~8\ & VCC))
-- \i_ioctrl|i_sw_debouncer|s_debcnt[2]~10\ = CARRY((\i_ioctrl|i_sw_debouncer|s_debcnt\(2) & !\i_ioctrl|i_sw_debouncer|s_debcnt[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_ioctrl|i_sw_debouncer|s_debcnt\(2),
	datad => VCC,
	cin => \i_ioctrl|i_sw_debouncer|s_debcnt[1]~8\,
	combout => \i_ioctrl|i_sw_debouncer|s_debcnt[2]~9_combout\,
	cout => \i_ioctrl|i_sw_debouncer|s_debcnt[2]~10\);

-- Location: FF_X2_Y25_N21
\i_ioctrl|i_sw_debouncer|s_debcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_debcnt[2]~9_combout\,
	sclr => \i_ioctrl|i_sw_debouncer|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_debcnt\(2));

-- Location: LCCOMB_X2_Y25_N22
\i_ioctrl|i_sw_debouncer|s_debcnt[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_debcnt[3]~11_combout\ = (\i_ioctrl|i_sw_debouncer|s_debcnt\(3) & (!\i_ioctrl|i_sw_debouncer|s_debcnt[2]~10\)) # (!\i_ioctrl|i_sw_debouncer|s_debcnt\(3) & ((\i_ioctrl|i_sw_debouncer|s_debcnt[2]~10\) # (GND)))
-- \i_ioctrl|i_sw_debouncer|s_debcnt[3]~12\ = CARRY((!\i_ioctrl|i_sw_debouncer|s_debcnt[2]~10\) # (!\i_ioctrl|i_sw_debouncer|s_debcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_sw_debouncer|s_debcnt\(3),
	datad => VCC,
	cin => \i_ioctrl|i_sw_debouncer|s_debcnt[2]~10\,
	combout => \i_ioctrl|i_sw_debouncer|s_debcnt[3]~11_combout\,
	cout => \i_ioctrl|i_sw_debouncer|s_debcnt[3]~12\);

-- Location: FF_X2_Y25_N23
\i_ioctrl|i_sw_debouncer|s_debcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_debcnt[3]~11_combout\,
	sclr => \i_ioctrl|i_sw_debouncer|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_debcnt\(3));

-- Location: LCCOMB_X2_Y25_N8
\i_ioctrl|i_sw_debouncer|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal1~0_combout\ = (\i_ioctrl|i_sw_debouncer|s_debcnt\(2) & (!\i_ioctrl|i_sw_debouncer|s_debcnt\(1) & (!\i_ioctrl|i_sw_debouncer|s_debcnt\(3) & !\i_ioctrl|i_sw_debouncer|s_debcnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|i_sw_debouncer|s_debcnt\(2),
	datab => \i_ioctrl|i_sw_debouncer|s_debcnt\(1),
	datac => \i_ioctrl|i_sw_debouncer|s_debcnt\(3),
	datad => \i_ioctrl|i_sw_debouncer|s_debcnt\(0),
	combout => \i_ioctrl|i_sw_debouncer|Equal1~0_combout\);

-- Location: LCCOMB_X2_Y25_N24
\i_ioctrl|i_sw_debouncer|s_debcnt[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|s_debcnt[4]~13_combout\ = \i_ioctrl|i_sw_debouncer|s_debcnt[3]~12\ $ (!\i_ioctrl|i_sw_debouncer|s_debcnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|i_sw_debouncer|s_debcnt\(4),
	cin => \i_ioctrl|i_sw_debouncer|s_debcnt[3]~12\,
	combout => \i_ioctrl|i_sw_debouncer|s_debcnt[4]~13_combout\);

-- Location: FF_X2_Y25_N25
\i_ioctrl|i_sw_debouncer|s_debcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_sw_debouncer|s_debcnt[4]~13_combout\,
	sclr => \i_ioctrl|i_sw_debouncer|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_debcnt\(4));

-- Location: LCCOMB_X2_Y25_N10
\i_ioctrl|i_sw_debouncer|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_sw_debouncer|Equal1~1_combout\ = (\i_ioctrl|i_sw_debouncer|Equal1~0_combout\ & \i_ioctrl|i_sw_debouncer|s_debcnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ioctrl|i_sw_debouncer|Equal1~0_combout\,
	datad => \i_ioctrl|i_sw_debouncer|s_debcnt\(4),
	combout => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\);

-- Location: FF_X2_Y26_N1
\i_ioctrl|i_sw_debouncer|s_keydeb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \i_ioctrl|s_ff_swsync1\(0),
	sload => VCC,
	ena => \i_ioctrl|i_sw_debouncer|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_sw_debouncer|s_keydeb\(0));

-- Location: FF_X26_Y27_N9
\i_ioctrl|swsync_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \i_ioctrl|i_sw_debouncer|s_keydeb\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|swsync_o\(0));

-- Location: LCCOMB_X26_Y27_N30
\i_ioctrl|swsync_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|swsync_o[1]~feeder_combout\ = \i_ioctrl|i_sw_debouncer|s_keydeb\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|i_sw_debouncer|s_keydeb\(1),
	combout => \i_ioctrl|swsync_o[1]~feeder_combout\);

-- Location: FF_X26_Y27_N31
\i_ioctrl|swsync_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|swsync_o[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|swsync_o\(1));

-- Location: LCCOMB_X22_Y27_N22
\i_ioctrl|pbsync_o[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|pbsync_o[0]~feeder_combout\ = \i_ioctrl|i_pb_debouncer|s_keydeb\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ioctrl|i_pb_debouncer|s_keydeb\(0),
	combout => \i_ioctrl|pbsync_o[0]~feeder_combout\);

-- Location: FF_X22_Y27_N23
\i_ioctrl|pbsync_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|pbsync_o[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|pbsync_o\(0));

-- Location: LCCOMB_X26_Y27_N28
\i_cntr|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|comb~0_combout\ = (!\i_ioctrl|swsync_o\(0) & (!\i_ioctrl|swsync_o\(1) & !\i_ioctrl|pbsync_o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|swsync_o\(0),
	datac => \i_ioctrl|swsync_o\(1),
	datad => \i_ioctrl|pbsync_o\(0),
	combout => \i_cntr|comb~0_combout\);

-- Location: LCCOMB_X26_Y27_N2
\i_cntr|s_next_state.DOWN_198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|s_next_state.DOWN_198~combout\ = (\i_cntr|comb~0_combout\ & ((\i_ioctrl|pbsync_o\(1)) # (\i_cntr|s_next_state.DOWN_198~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|pbsync_o\(1),
	datab => \i_cntr|comb~0_combout\,
	datad => \i_cntr|s_next_state.DOWN_198~combout\,
	combout => \i_cntr|s_next_state.DOWN_198~combout\);

-- Location: LCCOMB_X26_Y27_N12
\i_cntr|s_present_state.DOWN~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|s_present_state.DOWN~feeder_combout\ = \i_cntr|s_next_state.DOWN_198~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|s_next_state.DOWN_198~combout\,
	combout => \i_cntr|s_present_state.DOWN~feeder_combout\);

-- Location: FF_X26_Y27_N13
\i_cntr|s_present_state.DOWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|s_present_state.DOWN~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|s_present_state.DOWN~q\);

-- Location: LCCOMB_X26_Y27_N4
\i_cntr|s_next_state.UP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|s_next_state.UP~0_combout\ = (!\i_ioctrl|swsync_o\(0) & (!\i_ioctrl|swsync_o\(1) & \i_ioctrl|pbsync_o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|swsync_o\(0),
	datac => \i_ioctrl|swsync_o\(1),
	datad => \i_ioctrl|pbsync_o\(0),
	combout => \i_cntr|s_next_state.UP~0_combout\);

-- Location: LCCOMB_X26_Y27_N26
\i_cntr|comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|comb~1_combout\ = (\i_ioctrl|swsync_o\(0)) # ((\i_ioctrl|swsync_o\(1)) # ((\i_ioctrl|pbsync_o\(1) & !\i_ioctrl|pbsync_o\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|pbsync_o\(1),
	datab => \i_ioctrl|swsync_o\(0),
	datac => \i_ioctrl|swsync_o\(1),
	datad => \i_ioctrl|pbsync_o\(0),
	combout => \i_cntr|comb~1_combout\);

-- Location: LCCOMB_X26_Y27_N20
\i_cntr|s_next_state.UP_207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|s_next_state.UP_207~combout\ = (!\i_cntr|comb~1_combout\ & ((\i_cntr|s_next_state.UP~0_combout\) # (\i_cntr|s_next_state.UP_207~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|s_next_state.UP~0_combout\,
	datac => \i_cntr|comb~1_combout\,
	datad => \i_cntr|s_next_state.UP_207~combout\,
	combout => \i_cntr|s_next_state.UP_207~combout\);

-- Location: LCCOMB_X26_Y27_N14
\i_cntr|s_present_state.UP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|s_present_state.UP~0_combout\ = !\i_cntr|s_next_state.UP_207~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|s_next_state.UP_207~combout\,
	combout => \i_cntr|s_present_state.UP~0_combout\);

-- Location: FF_X26_Y27_N15
\i_cntr|s_present_state.UP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|s_present_state.UP~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|s_present_state.UP~q\);

-- Location: LCCOMB_X22_Y27_N12
\i_cntr|i_bcd0|s_cntr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|s_cntr~0_combout\ = \i_cntr|i_bcd0|s_cntr\(0) $ (((\i_cntr|s_present_state.DOWN~q\) # (!\i_cntr|s_present_state.UP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|s_present_state.UP~q\,
	datac => \i_cntr|i_bcd0|s_cntr\(0),
	datad => \i_cntr|s_present_state.DOWN~q\,
	combout => \i_cntr|i_bcd0|s_cntr~0_combout\);

-- Location: LCCOMB_X26_Y27_N22
\i_cntr|comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|comb~2_combout\ = (!\i_ioctrl|swsync_o\(0) & ((\i_ioctrl|pbsync_o\(1)) # ((\i_ioctrl|swsync_o\(1)) # (\i_ioctrl|pbsync_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|pbsync_o\(1),
	datab => \i_ioctrl|swsync_o\(0),
	datac => \i_ioctrl|swsync_o\(1),
	datad => \i_ioctrl|pbsync_o\(0),
	combout => \i_cntr|comb~2_combout\);

-- Location: LCCOMB_X26_Y27_N18
\i_cntr|s_next_state.RESET_180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|s_next_state.RESET_180~combout\ = (!\i_cntr|comb~2_combout\ & ((\i_ioctrl|swsync_o\(0)) # (\i_cntr|s_next_state.RESET_180~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ioctrl|swsync_o\(0),
	datac => \i_cntr|comb~2_combout\,
	datad => \i_cntr|s_next_state.RESET_180~combout\,
	combout => \i_cntr|s_next_state.RESET_180~combout\);

-- Location: LCCOMB_X26_Y27_N0
\i_cntr|s_present_state.RESET~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|s_present_state.RESET~feeder_combout\ = \i_cntr|s_next_state.RESET_180~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|s_next_state.RESET_180~combout\,
	combout => \i_cntr|s_present_state.RESET~feeder_combout\);

-- Location: FF_X26_Y27_N1
\i_cntr|s_present_state.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|s_present_state.RESET~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|s_present_state.RESET~q\);

-- Location: FF_X22_Y27_N13
\i_cntr|i_bcd0|s_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd0|s_cntr~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd0|s_cntr\(0));

-- Location: LCCOMB_X23_Y27_N18
\i_cntr|i_bcd0|s_cntr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|s_cntr~5_combout\ = (\i_cntr|i_bcd0|s_cntr\(1) & ((\i_cntr|s_present_state.DOWN~q\) # ((\i_cntr|i_bcd0|s_cntr\(2) & \i_cntr|i_bcd0|s_cntr\(0))))) # (!\i_cntr|i_bcd0|s_cntr\(1) & (\i_cntr|s_present_state.DOWN~q\ & 
-- ((\i_cntr|i_bcd0|s_cntr\(2)) # (\i_cntr|i_bcd0|s_cntr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd0|s_cntr\(1),
	datab => \i_cntr|i_bcd0|s_cntr\(2),
	datac => \i_cntr|s_present_state.DOWN~q\,
	datad => \i_cntr|i_bcd0|s_cntr\(0),
	combout => \i_cntr|i_bcd0|s_cntr~5_combout\);

-- Location: LCCOMB_X23_Y27_N8
\i_cntr|i_bcd0|s_cntr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|s_cntr~6_combout\ = (\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd0|s_cntr\(3) $ (!\i_cntr|i_bcd0|s_cntr~5_combout\)))) # (!\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd0|Equal0~0_combout\ & (\i_cntr|i_bcd0|s_cntr\(3) $ 
-- (\i_cntr|i_bcd0|s_cntr~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd0|Equal0~0_combout\,
	datac => \i_cntr|i_bcd0|s_cntr\(3),
	datad => \i_cntr|i_bcd0|s_cntr~5_combout\,
	combout => \i_cntr|i_bcd0|s_cntr~6_combout\);

-- Location: LCCOMB_X23_Y27_N2
\i_cntr|i_bcd0|s_cntr[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|s_cntr[1]~2_combout\ = (\i_cntr|s_present_state.DOWN~q\) # ((\i_cntr|s_present_state.RESET~q\) # (!\i_cntr|s_present_state.UP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datac => \i_cntr|s_present_state.RESET~q\,
	datad => \i_cntr|s_present_state.UP~q\,
	combout => \i_cntr|i_bcd0|s_cntr[1]~2_combout\);

-- Location: FF_X23_Y27_N9
\i_cntr|i_bcd0|s_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd0|s_cntr~6_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd0|s_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd0|s_cntr\(3));

-- Location: LCCOMB_X23_Y27_N16
\i_cntr|i_bcd0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|Equal0~0_combout\ = (!\i_cntr|i_bcd0|s_cntr\(1) & (\i_cntr|i_bcd0|s_cntr\(3) & (!\i_cntr|i_bcd0|s_cntr\(2) & \i_cntr|i_bcd0|s_cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd0|s_cntr\(1),
	datab => \i_cntr|i_bcd0|s_cntr\(3),
	datac => \i_cntr|i_bcd0|s_cntr\(2),
	datad => \i_cntr|i_bcd0|s_cntr\(0),
	combout => \i_cntr|i_bcd0|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y27_N4
\i_cntr|i_bcd0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|Add0~0_combout\ = \i_cntr|i_bcd0|s_cntr\(1) $ (\i_cntr|i_bcd0|s_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd0|s_cntr\(1),
	datad => \i_cntr|i_bcd0|s_cntr\(0),
	combout => \i_cntr|i_bcd0|Add0~0_combout\);

-- Location: LCCOMB_X23_Y27_N12
\i_cntr|i_bcd0|s_cntr~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|s_cntr~1_combout\ = (\i_cntr|i_bcd0|Add0~0_combout\ & (((!\i_cntr|i_bcd0|Equal0~0_combout\ & !\i_cntr|s_present_state.DOWN~q\)))) # (!\i_cntr|i_bcd0|Add0~0_combout\ & (!\i_cntr|i_bcd0|Equal1~0_combout\ & 
-- ((\i_cntr|s_present_state.DOWN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd0|Equal1~0_combout\,
	datab => \i_cntr|i_bcd0|Equal0~0_combout\,
	datac => \i_cntr|i_bcd0|Add0~0_combout\,
	datad => \i_cntr|s_present_state.DOWN~q\,
	combout => \i_cntr|i_bcd0|s_cntr~1_combout\);

-- Location: FF_X23_Y27_N13
\i_cntr|i_bcd0|s_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd0|s_cntr~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd0|s_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd0|s_cntr\(1));

-- Location: LCCOMB_X23_Y27_N26
\i_cntr|i_bcd0|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|Equal1~0_combout\ = (!\i_cntr|i_bcd0|s_cntr\(1) & (!\i_cntr|i_bcd0|s_cntr\(3) & (!\i_cntr|i_bcd0|s_cntr\(2) & !\i_cntr|i_bcd0|s_cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd0|s_cntr\(1),
	datab => \i_cntr|i_bcd0|s_cntr\(3),
	datac => \i_cntr|i_bcd0|s_cntr\(2),
	datad => \i_cntr|i_bcd0|s_cntr\(0),
	combout => \i_cntr|i_bcd0|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y27_N20
\i_cntr|i_bcd0|s_cntr~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|s_cntr~3_combout\ = (\i_cntr|i_bcd0|s_cntr\(0) & ((\i_cntr|s_present_state.DOWN~q\) # (\i_cntr|i_bcd0|s_cntr\(1)))) # (!\i_cntr|i_bcd0|s_cntr\(0) & (\i_cntr|s_present_state.DOWN~q\ & \i_cntr|i_bcd0|s_cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd0|s_cntr\(0),
	datac => \i_cntr|s_present_state.DOWN~q\,
	datad => \i_cntr|i_bcd0|s_cntr\(1),
	combout => \i_cntr|i_bcd0|s_cntr~3_combout\);

-- Location: LCCOMB_X23_Y27_N14
\i_cntr|i_bcd0|s_cntr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd0|s_cntr~4_combout\ = (\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd0|Equal1~0_combout\ & (\i_cntr|i_bcd0|s_cntr\(2) $ (!\i_cntr|i_bcd0|s_cntr~3_combout\)))) # (!\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd0|s_cntr\(2) $ 
-- (\i_cntr|i_bcd0|s_cntr~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd0|Equal1~0_combout\,
	datac => \i_cntr|i_bcd0|s_cntr\(2),
	datad => \i_cntr|i_bcd0|s_cntr~3_combout\,
	combout => \i_cntr|i_bcd0|s_cntr~4_combout\);

-- Location: FF_X23_Y27_N15
\i_cntr|i_bcd0|s_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd0|s_cntr~4_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd0|s_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd0|s_cntr\(2));

-- Location: LCCOMB_X24_Y27_N30
\i_cntr|cntr0_o[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr0_o[2]~feeder_combout\ = \i_cntr|i_bcd0|s_cntr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd0|s_cntr\(2),
	combout => \i_cntr|cntr0_o[2]~feeder_combout\);

-- Location: FF_X24_Y27_N31
\i_cntr|cntr0_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr0_o[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr0_o\(2));

-- Location: LCCOMB_X24_Y27_N28
\i_cntr|cntr0_o[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr0_o[3]~feeder_combout\ = \i_cntr|i_bcd0|s_cntr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd0|s_cntr\(3),
	combout => \i_cntr|cntr0_o[3]~feeder_combout\);

-- Location: FF_X24_Y27_N29
\i_cntr|cntr0_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr0_o[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr0_o\(3));

-- Location: LCCOMB_X24_Y27_N24
\i_cntr|cntr0_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr0_o[1]~feeder_combout\ = \i_cntr|i_bcd0|s_cntr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd0|s_cntr\(1),
	combout => \i_cntr|cntr0_o[1]~feeder_combout\);

-- Location: FF_X24_Y27_N25
\i_cntr|cntr0_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr0_o[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr0_o\(1));

-- Location: LCCOMB_X22_Y27_N24
\i_cntr|cntr0_o[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr0_o[0]~feeder_combout\ = \i_cntr|i_bcd0|s_cntr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd0|s_cntr\(0),
	combout => \i_cntr|cntr0_o[0]~feeder_combout\);

-- Location: FF_X22_Y27_N25
\i_cntr|cntr0_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr0_o[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr0_o\(0));

-- Location: LCCOMB_X24_Y28_N4
\i_ioctrl|i_decoder0|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder0|Mux7~0_combout\ = (\i_cntr|cntr0_o\(1) & (((\i_cntr|cntr0_o\(3))))) # (!\i_cntr|cntr0_o\(1) & (\i_cntr|cntr0_o\(2) $ (((!\i_cntr|cntr0_o\(3) & \i_cntr|cntr0_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr0_o\(2),
	datab => \i_cntr|cntr0_o\(3),
	datac => \i_cntr|cntr0_o\(1),
	datad => \i_cntr|cntr0_o\(0),
	combout => \i_ioctrl|i_decoder0|Mux7~0_combout\);

-- Location: FF_X24_Y28_N5
\i_ioctrl|i_decoder0|ss_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder0|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder0|ss_o\(0));

-- Location: LCCOMB_X24_Y28_N2
\i_ioctrl|i_decoder0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder0|Mux6~0_combout\ = (\i_cntr|cntr0_o\(2) & ((\i_cntr|cntr0_o\(3)) # (\i_cntr|cntr0_o\(1) $ (\i_cntr|cntr0_o\(0))))) # (!\i_cntr|cntr0_o\(2) & (\i_cntr|cntr0_o\(3) & (\i_cntr|cntr0_o\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr0_o\(2),
	datab => \i_cntr|cntr0_o\(3),
	datac => \i_cntr|cntr0_o\(1),
	datad => \i_cntr|cntr0_o\(0),
	combout => \i_ioctrl|i_decoder0|Mux6~0_combout\);

-- Location: FF_X24_Y28_N3
\i_ioctrl|i_decoder0|ss_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder0|ss_o\(1));

-- Location: LCCOMB_X24_Y28_N8
\i_ioctrl|i_decoder0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder0|Mux5~0_combout\ = (\i_cntr|cntr0_o\(2) & (\i_cntr|cntr0_o\(3))) # (!\i_cntr|cntr0_o\(2) & (\i_cntr|cntr0_o\(1) & ((\i_cntr|cntr0_o\(3)) # (!\i_cntr|cntr0_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr0_o\(2),
	datab => \i_cntr|cntr0_o\(3),
	datac => \i_cntr|cntr0_o\(1),
	datad => \i_cntr|cntr0_o\(0),
	combout => \i_ioctrl|i_decoder0|Mux5~0_combout\);

-- Location: FF_X24_Y28_N9
\i_ioctrl|i_decoder0|ss_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder0|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder0|ss_o\(2));

-- Location: LCCOMB_X24_Y28_N22
\i_ioctrl|i_decoder0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder0|Mux4~0_combout\ = (\i_cntr|cntr0_o\(1) & ((\i_cntr|cntr0_o\(3)) # ((\i_cntr|cntr0_o\(2) & \i_cntr|cntr0_o\(0))))) # (!\i_cntr|cntr0_o\(1) & (\i_cntr|cntr0_o\(2) $ (((!\i_cntr|cntr0_o\(3) & \i_cntr|cntr0_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr0_o\(2),
	datab => \i_cntr|cntr0_o\(3),
	datac => \i_cntr|cntr0_o\(1),
	datad => \i_cntr|cntr0_o\(0),
	combout => \i_ioctrl|i_decoder0|Mux4~0_combout\);

-- Location: FF_X24_Y28_N23
\i_ioctrl|i_decoder0|ss_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder0|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder0|ss_o\(3));

-- Location: LCCOMB_X24_Y28_N0
\i_ioctrl|i_decoder0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder0|Mux3~0_combout\ = (\i_cntr|cntr0_o\(0)) # ((\i_cntr|cntr0_o\(1) & ((\i_cntr|cntr0_o\(3)))) # (!\i_cntr|cntr0_o\(1) & (\i_cntr|cntr0_o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr0_o\(2),
	datab => \i_cntr|cntr0_o\(3),
	datac => \i_cntr|cntr0_o\(1),
	datad => \i_cntr|cntr0_o\(0),
	combout => \i_ioctrl|i_decoder0|Mux3~0_combout\);

-- Location: FF_X24_Y28_N1
\i_ioctrl|i_decoder0|ss_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder0|ss_o\(4));

-- Location: LCCOMB_X24_Y28_N6
\i_ioctrl|i_decoder0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder0|Mux2~0_combout\ = (\i_cntr|cntr0_o\(2) & ((\i_cntr|cntr0_o\(3)) # ((\i_cntr|cntr0_o\(1) & \i_cntr|cntr0_o\(0))))) # (!\i_cntr|cntr0_o\(2) & ((\i_cntr|cntr0_o\(1)) # ((!\i_cntr|cntr0_o\(3) & \i_cntr|cntr0_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr0_o\(2),
	datab => \i_cntr|cntr0_o\(3),
	datac => \i_cntr|cntr0_o\(1),
	datad => \i_cntr|cntr0_o\(0),
	combout => \i_ioctrl|i_decoder0|Mux2~0_combout\);

-- Location: FF_X24_Y28_N7
\i_ioctrl|i_decoder0|ss_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder0|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder0|ss_o\(5));

-- Location: LCCOMB_X24_Y28_N12
\i_ioctrl|i_decoder0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder0|Mux1~0_combout\ = (\i_cntr|cntr0_o\(2) & ((\i_cntr|cntr0_o\(3)) # ((\i_cntr|cntr0_o\(1) & \i_cntr|cntr0_o\(0))))) # (!\i_cntr|cntr0_o\(2) & (\i_cntr|cntr0_o\(3) $ ((!\i_cntr|cntr0_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr0_o\(2),
	datab => \i_cntr|cntr0_o\(3),
	datac => \i_cntr|cntr0_o\(1),
	datad => \i_cntr|cntr0_o\(0),
	combout => \i_ioctrl|i_decoder0|Mux1~0_combout\);

-- Location: FF_X24_Y28_N13
\i_ioctrl|i_decoder0|ss_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder0|ss_o\(6));

-- Location: LCCOMB_X24_Y28_N18
\i_ioctrl|i_decoder0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder0|Mux0~0_combout\ = ((!\i_cntr|cntr0_o\(2) & !\i_cntr|cntr0_o\(1))) # (!\i_cntr|cntr0_o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr0_o\(2),
	datab => \i_cntr|cntr0_o\(3),
	datac => \i_cntr|cntr0_o\(1),
	combout => \i_ioctrl|i_decoder0|Mux0~0_combout\);

-- Location: FF_X24_Y28_N19
\i_ioctrl|i_decoder0|ss_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder0|ss_o\(7));

-- Location: LCCOMB_X23_Y27_N28
\i_cntr|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|Selector2~0_combout\ = (\i_cntr|i_bcd0|Equal1~0_combout\ & ((\i_cntr|s_present_state.DOWN~q\) # ((\i_cntr|i_bcd0|Equal0~0_combout\ & !\i_cntr|s_present_state.UP~q\)))) # (!\i_cntr|i_bcd0|Equal1~0_combout\ & (\i_cntr|i_bcd0|Equal0~0_combout\ & 
-- (!\i_cntr|s_present_state.UP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd0|Equal1~0_combout\,
	datab => \i_cntr|i_bcd0|Equal0~0_combout\,
	datac => \i_cntr|s_present_state.UP~q\,
	datad => \i_cntr|s_present_state.DOWN~q\,
	combout => \i_cntr|Selector2~0_combout\);

-- Location: LCCOMB_X23_Y27_N22
\i_cntr|i_bcd1|s_cntr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|s_cntr~0_combout\ = \i_cntr|i_bcd1|s_cntr\(0) $ (\i_cntr|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_bcd1|s_cntr\(0),
	datad => \i_cntr|Selector2~0_combout\,
	combout => \i_cntr|i_bcd1|s_cntr~0_combout\);

-- Location: FF_X23_Y27_N23
\i_cntr|i_bcd1|s_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd1|s_cntr~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd1|s_cntr\(0));

-- Location: LCCOMB_X24_Y27_N2
\i_cntr|cntr1_o[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr1_o[0]~feeder_combout\ = \i_cntr|i_bcd1|s_cntr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd1|s_cntr\(0),
	combout => \i_cntr|cntr1_o[0]~feeder_combout\);

-- Location: FF_X24_Y27_N3
\i_cntr|cntr1_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr1_o[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr1_o\(0));

-- Location: LCCOMB_X24_Y27_N16
\i_cntr|i_bcd1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|Add0~0_combout\ = \i_cntr|i_bcd1|s_cntr\(1) $ (\i_cntr|i_bcd1|s_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd1|s_cntr\(1),
	datad => \i_cntr|i_bcd1|s_cntr\(0),
	combout => \i_cntr|i_bcd1|Add0~0_combout\);

-- Location: LCCOMB_X24_Y27_N8
\i_cntr|i_bcd1|s_cntr~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|s_cntr~1_combout\ = (\i_cntr|i_bcd1|Add0~0_combout\ & (!\i_cntr|i_bcd1|Equal0~0_combout\ & (!\i_cntr|s_present_state.DOWN~q\))) # (!\i_cntr|i_bcd1|Add0~0_combout\ & (((\i_cntr|s_present_state.DOWN~q\ & !\i_cntr|i_bcd1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd1|Equal0~0_combout\,
	datab => \i_cntr|i_bcd1|Add0~0_combout\,
	datac => \i_cntr|s_present_state.DOWN~q\,
	datad => \i_cntr|i_bcd1|Equal1~0_combout\,
	combout => \i_cntr|i_bcd1|s_cntr~1_combout\);

-- Location: LCCOMB_X24_Y27_N14
\i_cntr|i_bcd1|s_cntr[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|s_cntr[1]~2_combout\ = (\i_cntr|s_present_state.RESET~q\) # (\i_cntr|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|s_present_state.RESET~q\,
	datad => \i_cntr|Selector2~0_combout\,
	combout => \i_cntr|i_bcd1|s_cntr[1]~2_combout\);

-- Location: FF_X24_Y27_N9
\i_cntr|i_bcd1|s_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd1|s_cntr~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd1|s_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd1|s_cntr\(1));

-- Location: LCCOMB_X26_Y27_N10
\i_cntr|i_bcd1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|Equal1~0_combout\ = (!\i_cntr|i_bcd1|s_cntr\(3) & (!\i_cntr|i_bcd1|s_cntr\(2) & (!\i_cntr|i_bcd1|s_cntr\(0) & !\i_cntr|i_bcd1|s_cntr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd1|s_cntr\(3),
	datab => \i_cntr|i_bcd1|s_cntr\(2),
	datac => \i_cntr|i_bcd1|s_cntr\(0),
	datad => \i_cntr|i_bcd1|s_cntr\(1),
	combout => \i_cntr|i_bcd1|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y27_N20
\i_cntr|i_bcd1|s_cntr~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|s_cntr~3_combout\ = (\i_cntr|i_bcd1|s_cntr\(1) & ((\i_cntr|s_present_state.DOWN~q\) # (\i_cntr|i_bcd1|s_cntr\(0)))) # (!\i_cntr|i_bcd1|s_cntr\(1) & (\i_cntr|s_present_state.DOWN~q\ & \i_cntr|i_bcd1|s_cntr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd1|s_cntr\(1),
	datac => \i_cntr|s_present_state.DOWN~q\,
	datad => \i_cntr|i_bcd1|s_cntr\(0),
	combout => \i_cntr|i_bcd1|s_cntr~3_combout\);

-- Location: LCCOMB_X24_Y27_N10
\i_cntr|i_bcd1|s_cntr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|s_cntr~4_combout\ = (\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd1|Equal1~0_combout\ & (\i_cntr|i_bcd1|s_cntr\(2) $ (!\i_cntr|i_bcd1|s_cntr~3_combout\)))) # (!\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd1|s_cntr\(2) $ 
-- (\i_cntr|i_bcd1|s_cntr~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd1|Equal1~0_combout\,
	datac => \i_cntr|i_bcd1|s_cntr\(2),
	datad => \i_cntr|i_bcd1|s_cntr~3_combout\,
	combout => \i_cntr|i_bcd1|s_cntr~4_combout\);

-- Location: FF_X24_Y27_N11
\i_cntr|i_bcd1|s_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd1|s_cntr~4_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd1|s_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd1|s_cntr\(2));

-- Location: LCCOMB_X24_Y27_N22
\i_cntr|i_bcd1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|Equal0~0_combout\ = (!\i_cntr|i_bcd1|s_cntr\(2) & (\i_cntr|i_bcd1|s_cntr\(3) & (!\i_cntr|i_bcd1|s_cntr\(1) & \i_cntr|i_bcd1|s_cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd1|s_cntr\(2),
	datab => \i_cntr|i_bcd1|s_cntr\(3),
	datac => \i_cntr|i_bcd1|s_cntr\(1),
	datad => \i_cntr|i_bcd1|s_cntr\(0),
	combout => \i_cntr|i_bcd1|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y27_N18
\i_cntr|i_bcd1|s_cntr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|s_cntr~5_combout\ = (\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd1|s_cntr\(0)) # ((\i_cntr|i_bcd1|s_cntr\(2)) # (\i_cntr|i_bcd1|s_cntr\(1))))) # (!\i_cntr|s_present_state.DOWN~q\ & (\i_cntr|i_bcd1|s_cntr\(0) & 
-- (\i_cntr|i_bcd1|s_cntr\(2) & \i_cntr|i_bcd1|s_cntr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd1|s_cntr\(0),
	datac => \i_cntr|i_bcd1|s_cntr\(2),
	datad => \i_cntr|i_bcd1|s_cntr\(1),
	combout => \i_cntr|i_bcd1|s_cntr~5_combout\);

-- Location: LCCOMB_X24_Y27_N4
\i_cntr|i_bcd1|s_cntr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd1|s_cntr~6_combout\ = (\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd1|s_cntr\(3) $ (!\i_cntr|i_bcd1|s_cntr~5_combout\)))) # (!\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd1|Equal0~0_combout\ & (\i_cntr|i_bcd1|s_cntr\(3) $ 
-- (\i_cntr|i_bcd1|s_cntr~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd1|Equal0~0_combout\,
	datac => \i_cntr|i_bcd1|s_cntr\(3),
	datad => \i_cntr|i_bcd1|s_cntr~5_combout\,
	combout => \i_cntr|i_bcd1|s_cntr~6_combout\);

-- Location: FF_X24_Y27_N5
\i_cntr|i_bcd1|s_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd1|s_cntr~6_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd1|s_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd1|s_cntr\(3));

-- Location: LCCOMB_X24_Y27_N12
\i_cntr|cntr1_o[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr1_o[3]~feeder_combout\ = \i_cntr|i_bcd1|s_cntr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_bcd1|s_cntr\(3),
	combout => \i_cntr|cntr1_o[3]~feeder_combout\);

-- Location: FF_X24_Y27_N13
\i_cntr|cntr1_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr1_o[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr1_o\(3));

-- Location: LCCOMB_X24_Y27_N26
\i_cntr|cntr1_o[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr1_o[2]~feeder_combout\ = \i_cntr|i_bcd1|s_cntr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_bcd1|s_cntr\(2),
	combout => \i_cntr|cntr1_o[2]~feeder_combout\);

-- Location: FF_X24_Y27_N27
\i_cntr|cntr1_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr1_o[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr1_o\(2));

-- Location: LCCOMB_X24_Y27_N0
\i_cntr|cntr1_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr1_o[1]~feeder_combout\ = \i_cntr|i_bcd1|s_cntr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_bcd1|s_cntr\(1),
	combout => \i_cntr|cntr1_o[1]~feeder_combout\);

-- Location: FF_X24_Y27_N1
\i_cntr|cntr1_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr1_o[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr1_o\(1));

-- Location: LCCOMB_X24_Y28_N20
\i_ioctrl|i_decoder1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder1|Mux7~0_combout\ = (\i_cntr|cntr1_o\(1) & (((\i_cntr|cntr1_o\(3))))) # (!\i_cntr|cntr1_o\(1) & (\i_cntr|cntr1_o\(2) $ (((\i_cntr|cntr1_o\(0) & !\i_cntr|cntr1_o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr1_o\(0),
	datab => \i_cntr|cntr1_o\(3),
	datac => \i_cntr|cntr1_o\(2),
	datad => \i_cntr|cntr1_o\(1),
	combout => \i_ioctrl|i_decoder1|Mux7~0_combout\);

-- Location: FF_X24_Y28_N21
\i_ioctrl|i_decoder1|ss_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder1|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder1|ss_o\(0));

-- Location: LCCOMB_X24_Y28_N10
\i_ioctrl|i_decoder1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder1|Mux6~0_combout\ = (\i_cntr|cntr1_o\(3) & (((\i_cntr|cntr1_o\(2)) # (\i_cntr|cntr1_o\(1))))) # (!\i_cntr|cntr1_o\(3) & (\i_cntr|cntr1_o\(2) & (\i_cntr|cntr1_o\(0) $ (\i_cntr|cntr1_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr1_o\(0),
	datab => \i_cntr|cntr1_o\(3),
	datac => \i_cntr|cntr1_o\(2),
	datad => \i_cntr|cntr1_o\(1),
	combout => \i_ioctrl|i_decoder1|Mux6~0_combout\);

-- Location: FF_X24_Y28_N11
\i_ioctrl|i_decoder1|ss_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder1|ss_o\(1));

-- Location: LCCOMB_X24_Y28_N24
\i_ioctrl|i_decoder1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder1|Mux5~0_combout\ = (\i_cntr|cntr1_o\(2) & (((\i_cntr|cntr1_o\(3))))) # (!\i_cntr|cntr1_o\(2) & (\i_cntr|cntr1_o\(1) & ((\i_cntr|cntr1_o\(3)) # (!\i_cntr|cntr1_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr1_o\(0),
	datab => \i_cntr|cntr1_o\(3),
	datac => \i_cntr|cntr1_o\(2),
	datad => \i_cntr|cntr1_o\(1),
	combout => \i_ioctrl|i_decoder1|Mux5~0_combout\);

-- Location: FF_X24_Y28_N25
\i_ioctrl|i_decoder1|ss_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder1|ss_o\(2));

-- Location: LCCOMB_X24_Y27_N6
\i_ioctrl|i_decoder1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder1|Mux4~0_combout\ = (\i_cntr|cntr1_o\(1) & ((\i_cntr|cntr1_o\(3)) # ((\i_cntr|cntr1_o\(0) & \i_cntr|cntr1_o\(2))))) # (!\i_cntr|cntr1_o\(1) & (\i_cntr|cntr1_o\(2) $ (((\i_cntr|cntr1_o\(0) & !\i_cntr|cntr1_o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr1_o\(1),
	datab => \i_cntr|cntr1_o\(0),
	datac => \i_cntr|cntr1_o\(2),
	datad => \i_cntr|cntr1_o\(3),
	combout => \i_ioctrl|i_decoder1|Mux4~0_combout\);

-- Location: FF_X24_Y27_N7
\i_ioctrl|i_decoder1|ss_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder1|ss_o\(3));

-- Location: LCCOMB_X24_Y28_N26
\i_ioctrl|i_decoder1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder1|Mux3~0_combout\ = (\i_cntr|cntr1_o\(0)) # ((\i_cntr|cntr1_o\(1) & (\i_cntr|cntr1_o\(3))) # (!\i_cntr|cntr1_o\(1) & ((\i_cntr|cntr1_o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr1_o\(0),
	datab => \i_cntr|cntr1_o\(3),
	datac => \i_cntr|cntr1_o\(2),
	datad => \i_cntr|cntr1_o\(1),
	combout => \i_ioctrl|i_decoder1|Mux3~0_combout\);

-- Location: FF_X24_Y28_N27
\i_ioctrl|i_decoder1|ss_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder1|ss_o\(4));

-- Location: LCCOMB_X24_Y28_N28
\i_ioctrl|i_decoder1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder1|Mux2~0_combout\ = (\i_cntr|cntr1_o\(0) & ((\i_cntr|cntr1_o\(1)) # (\i_cntr|cntr1_o\(3) $ (!\i_cntr|cntr1_o\(2))))) # (!\i_cntr|cntr1_o\(0) & ((\i_cntr|cntr1_o\(2) & (\i_cntr|cntr1_o\(3))) # (!\i_cntr|cntr1_o\(2) & 
-- ((\i_cntr|cntr1_o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr1_o\(0),
	datab => \i_cntr|cntr1_o\(3),
	datac => \i_cntr|cntr1_o\(2),
	datad => \i_cntr|cntr1_o\(1),
	combout => \i_ioctrl|i_decoder1|Mux2~0_combout\);

-- Location: FF_X24_Y28_N29
\i_ioctrl|i_decoder1|ss_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder1|ss_o\(5));

-- Location: LCCOMB_X24_Y28_N30
\i_ioctrl|i_decoder1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder1|Mux1~0_combout\ = (\i_cntr|cntr1_o\(2) & ((\i_cntr|cntr1_o\(3)) # ((\i_cntr|cntr1_o\(0) & \i_cntr|cntr1_o\(1))))) # (!\i_cntr|cntr1_o\(2) & ((\i_cntr|cntr1_o\(3) $ (!\i_cntr|cntr1_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr1_o\(0),
	datab => \i_cntr|cntr1_o\(3),
	datac => \i_cntr|cntr1_o\(2),
	datad => \i_cntr|cntr1_o\(1),
	combout => \i_ioctrl|i_decoder1|Mux1~0_combout\);

-- Location: FF_X24_Y28_N31
\i_ioctrl|i_decoder1|ss_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder1|ss_o\(6));

-- Location: LCCOMB_X24_Y28_N16
\i_ioctrl|i_decoder1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder1|Mux0~0_combout\ = ((!\i_cntr|cntr1_o\(2) & !\i_cntr|cntr1_o\(1))) # (!\i_cntr|cntr1_o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|cntr1_o\(3),
	datac => \i_cntr|cntr1_o\(2),
	datad => \i_cntr|cntr1_o\(1),
	combout => \i_ioctrl|i_decoder1|Mux0~0_combout\);

-- Location: FF_X24_Y28_N17
\i_ioctrl|i_decoder1|ss_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder1|ss_o\(7));

-- Location: LCCOMB_X26_Y27_N8
\i_cntr|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|Selector1~0_combout\ = (\i_cntr|s_present_state.DOWN~q\ & (\i_cntr|i_bcd0|Equal1~0_combout\ & \i_cntr|i_bcd1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd0|Equal1~0_combout\,
	datad => \i_cntr|i_bcd1|Equal1~0_combout\,
	combout => \i_cntr|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y27_N28
\i_cntr|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|Selector1~1_combout\ = (\i_cntr|Selector1~0_combout\) # ((\i_cntr|i_bcd1|Equal0~0_combout\ & (\i_cntr|i_bcd0|Equal0~0_combout\ & !\i_cntr|s_present_state.UP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd1|Equal0~0_combout\,
	datab => \i_cntr|i_bcd0|Equal0~0_combout\,
	datac => \i_cntr|s_present_state.UP~q\,
	datad => \i_cntr|Selector1~0_combout\,
	combout => \i_cntr|Selector1~1_combout\);

-- Location: LCCOMB_X22_Y27_N14
\i_cntr|i_bcd2|s_cntr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|s_cntr~0_combout\ = \i_cntr|i_bcd2|s_cntr\(0) $ (\i_cntr|Selector1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_bcd2|s_cntr\(0),
	datad => \i_cntr|Selector1~1_combout\,
	combout => \i_cntr|i_bcd2|s_cntr~0_combout\);

-- Location: FF_X22_Y27_N15
\i_cntr|i_bcd2|s_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd2|s_cntr~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd2|s_cntr\(0));

-- Location: LCCOMB_X27_Y27_N2
\i_cntr|i_bcd2|s_cntr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|s_cntr~4_combout\ = (\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd2|s_cntr\(1)) # (\i_cntr|i_bcd2|s_cntr\(0)))) # (!\i_cntr|s_present_state.DOWN~q\ & (\i_cntr|i_bcd2|s_cntr\(1) & \i_cntr|i_bcd2|s_cntr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd2|s_cntr\(1),
	datad => \i_cntr|i_bcd2|s_cntr\(0),
	combout => \i_cntr|i_bcd2|s_cntr~4_combout\);

-- Location: LCCOMB_X27_Y27_N18
\i_cntr|i_bcd2|s_cntr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|s_cntr~5_combout\ = (\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd2|Equal1~0_combout\ & (\i_cntr|i_bcd2|s_cntr\(2) $ (!\i_cntr|i_bcd2|s_cntr~4_combout\)))) # (!\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd2|s_cntr\(2) $ 
-- (\i_cntr|i_bcd2|s_cntr~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd2|Equal1~0_combout\,
	datab => \i_cntr|s_present_state.DOWN~q\,
	datac => \i_cntr|i_bcd2|s_cntr\(2),
	datad => \i_cntr|i_bcd2|s_cntr~4_combout\,
	combout => \i_cntr|i_bcd2|s_cntr~5_combout\);

-- Location: LCCOMB_X27_Y27_N26
\i_cntr|i_bcd2|s_cntr[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|s_cntr[1]~2_combout\ = (\i_cntr|i_bcd0|Equal0~0_combout\ & \i_cntr|i_bcd1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_bcd0|Equal0~0_combout\,
	datad => \i_cntr|i_bcd1|Equal0~0_combout\,
	combout => \i_cntr|i_bcd2|s_cntr[1]~2_combout\);

-- Location: LCCOMB_X27_Y27_N0
\i_cntr|i_bcd2|s_cntr[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|s_cntr[1]~3_combout\ = (\i_cntr|s_present_state.RESET~q\) # ((\i_cntr|Selector1~0_combout\) # ((!\i_cntr|s_present_state.UP~q\ & \i_cntr|i_bcd2|s_cntr[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.UP~q\,
	datab => \i_cntr|s_present_state.RESET~q\,
	datac => \i_cntr|i_bcd2|s_cntr[1]~2_combout\,
	datad => \i_cntr|Selector1~0_combout\,
	combout => \i_cntr|i_bcd2|s_cntr[1]~3_combout\);

-- Location: FF_X27_Y27_N19
\i_cntr|i_bcd2|s_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd2|s_cntr~5_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd2|s_cntr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd2|s_cntr\(2));

-- Location: LCCOMB_X27_Y27_N10
\i_cntr|i_bcd2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|Equal1~0_combout\ = (!\i_cntr|i_bcd2|s_cntr\(1) & (!\i_cntr|i_bcd2|s_cntr\(2) & (!\i_cntr|i_bcd2|s_cntr\(3) & !\i_cntr|i_bcd2|s_cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd2|s_cntr\(1),
	datab => \i_cntr|i_bcd2|s_cntr\(2),
	datac => \i_cntr|i_bcd2|s_cntr\(3),
	datad => \i_cntr|i_bcd2|s_cntr\(0),
	combout => \i_cntr|i_bcd2|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y27_N4
\i_cntr|i_bcd2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|Add0~0_combout\ = \i_cntr|i_bcd2|s_cntr\(1) $ (\i_cntr|i_bcd2|s_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|i_bcd2|s_cntr\(1),
	datad => \i_cntr|i_bcd2|s_cntr\(0),
	combout => \i_cntr|i_bcd2|Add0~0_combout\);

-- Location: LCCOMB_X27_Y27_N28
\i_cntr|i_bcd2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|Equal0~0_combout\ = (!\i_cntr|i_bcd2|s_cntr\(1) & (!\i_cntr|i_bcd2|s_cntr\(2) & (\i_cntr|i_bcd2|s_cntr\(3) & \i_cntr|i_bcd2|s_cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd2|s_cntr\(1),
	datab => \i_cntr|i_bcd2|s_cntr\(2),
	datac => \i_cntr|i_bcd2|s_cntr\(3),
	datad => \i_cntr|i_bcd2|s_cntr\(0),
	combout => \i_cntr|i_bcd2|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y27_N24
\i_cntr|i_bcd2|s_cntr~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|s_cntr~1_combout\ = (\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd2|Equal1~0_combout\ & (!\i_cntr|i_bcd2|Add0~0_combout\))) # (!\i_cntr|s_present_state.DOWN~q\ & (((\i_cntr|i_bcd2|Add0~0_combout\ & !\i_cntr|i_bcd2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd2|Equal1~0_combout\,
	datab => \i_cntr|s_present_state.DOWN~q\,
	datac => \i_cntr|i_bcd2|Add0~0_combout\,
	datad => \i_cntr|i_bcd2|Equal0~0_combout\,
	combout => \i_cntr|i_bcd2|s_cntr~1_combout\);

-- Location: FF_X27_Y27_N25
\i_cntr|i_bcd2|s_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd2|s_cntr~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd2|s_cntr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd2|s_cntr\(1));

-- Location: LCCOMB_X27_Y27_N12
\i_cntr|i_bcd2|s_cntr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|s_cntr~6_combout\ = (\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd2|s_cntr\(1)) # ((\i_cntr|i_bcd2|s_cntr\(0)) # (\i_cntr|i_bcd2|s_cntr\(2))))) # (!\i_cntr|s_present_state.DOWN~q\ & (\i_cntr|i_bcd2|s_cntr\(1) & 
-- (\i_cntr|i_bcd2|s_cntr\(0) & \i_cntr|i_bcd2|s_cntr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd2|s_cntr\(1),
	datac => \i_cntr|i_bcd2|s_cntr\(0),
	datad => \i_cntr|i_bcd2|s_cntr\(2),
	combout => \i_cntr|i_bcd2|s_cntr~6_combout\);

-- Location: LCCOMB_X27_Y27_N8
\i_cntr|i_bcd2|s_cntr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd2|s_cntr~7_combout\ = (\i_cntr|s_present_state.DOWN~q\ & (\i_cntr|i_bcd2|s_cntr~6_combout\ $ ((!\i_cntr|i_bcd2|s_cntr\(3))))) # (!\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd2|Equal0~0_combout\ & (\i_cntr|i_bcd2|s_cntr~6_combout\ $ 
-- (\i_cntr|i_bcd2|s_cntr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd2|s_cntr~6_combout\,
	datab => \i_cntr|s_present_state.DOWN~q\,
	datac => \i_cntr|i_bcd2|s_cntr\(3),
	datad => \i_cntr|i_bcd2|Equal0~0_combout\,
	combout => \i_cntr|i_bcd2|s_cntr~7_combout\);

-- Location: FF_X27_Y27_N9
\i_cntr|i_bcd2|s_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd2|s_cntr~7_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd2|s_cntr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd2|s_cntr\(3));

-- Location: LCCOMB_X28_Y27_N8
\i_cntr|cntr2_o[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr2_o[3]~feeder_combout\ = \i_cntr|i_bcd2|s_cntr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd2|s_cntr\(3),
	combout => \i_cntr|cntr2_o[3]~feeder_combout\);

-- Location: FF_X28_Y27_N9
\i_cntr|cntr2_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr2_o[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr2_o\(3));

-- Location: LCCOMB_X28_Y27_N18
\i_cntr|cntr2_o[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr2_o[2]~feeder_combout\ = \i_cntr|i_bcd2|s_cntr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd2|s_cntr\(2),
	combout => \i_cntr|cntr2_o[2]~feeder_combout\);

-- Location: FF_X28_Y27_N19
\i_cntr|cntr2_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr2_o[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr2_o\(2));

-- Location: LCCOMB_X22_Y27_N6
\i_cntr|cntr2_o[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr2_o[0]~feeder_combout\ = \i_cntr|i_bcd2|s_cntr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_bcd2|s_cntr\(0),
	combout => \i_cntr|cntr2_o[0]~feeder_combout\);

-- Location: FF_X22_Y27_N7
\i_cntr|cntr2_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr2_o[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr2_o\(0));

-- Location: LCCOMB_X28_Y27_N12
\i_cntr|cntr2_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr2_o[1]~feeder_combout\ = \i_cntr|i_bcd2|s_cntr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd2|s_cntr\(1),
	combout => \i_cntr|cntr2_o[1]~feeder_combout\);

-- Location: FF_X28_Y27_N13
\i_cntr|cntr2_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr2_o[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr2_o\(1));

-- Location: LCCOMB_X29_Y27_N24
\i_ioctrl|i_decoder2|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder2|Mux7~0_combout\ = (\i_cntr|cntr2_o\(1) & (\i_cntr|cntr2_o\(3))) # (!\i_cntr|cntr2_o\(1) & (\i_cntr|cntr2_o\(2) $ (((!\i_cntr|cntr2_o\(3) & \i_cntr|cntr2_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr2_o\(3),
	datab => \i_cntr|cntr2_o\(2),
	datac => \i_cntr|cntr2_o\(0),
	datad => \i_cntr|cntr2_o\(1),
	combout => \i_ioctrl|i_decoder2|Mux7~0_combout\);

-- Location: FF_X29_Y27_N25
\i_ioctrl|i_decoder2|ss_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder2|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder2|ss_o\(0));

-- Location: LCCOMB_X29_Y27_N2
\i_ioctrl|i_decoder2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder2|Mux6~0_combout\ = (\i_cntr|cntr2_o\(3) & ((\i_cntr|cntr2_o\(2)) # ((\i_cntr|cntr2_o\(1))))) # (!\i_cntr|cntr2_o\(3) & (\i_cntr|cntr2_o\(2) & (\i_cntr|cntr2_o\(0) $ (\i_cntr|cntr2_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr2_o\(3),
	datab => \i_cntr|cntr2_o\(2),
	datac => \i_cntr|cntr2_o\(0),
	datad => \i_cntr|cntr2_o\(1),
	combout => \i_ioctrl|i_decoder2|Mux6~0_combout\);

-- Location: FF_X29_Y27_N3
\i_ioctrl|i_decoder2|ss_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder2|ss_o\(1));

-- Location: LCCOMB_X29_Y27_N0
\i_ioctrl|i_decoder2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder2|Mux5~0_combout\ = (\i_cntr|cntr2_o\(2) & (\i_cntr|cntr2_o\(3))) # (!\i_cntr|cntr2_o\(2) & (\i_cntr|cntr2_o\(1) & ((\i_cntr|cntr2_o\(3)) # (!\i_cntr|cntr2_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr2_o\(3),
	datab => \i_cntr|cntr2_o\(2),
	datac => \i_cntr|cntr2_o\(0),
	datad => \i_cntr|cntr2_o\(1),
	combout => \i_ioctrl|i_decoder2|Mux5~0_combout\);

-- Location: FF_X29_Y27_N1
\i_ioctrl|i_decoder2|ss_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder2|ss_o\(2));

-- Location: LCCOMB_X29_Y27_N22
\i_ioctrl|i_decoder2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder2|Mux4~0_combout\ = (\i_cntr|cntr2_o\(1) & ((\i_cntr|cntr2_o\(3)) # ((\i_cntr|cntr2_o\(2) & \i_cntr|cntr2_o\(0))))) # (!\i_cntr|cntr2_o\(1) & (\i_cntr|cntr2_o\(2) $ (((!\i_cntr|cntr2_o\(3) & \i_cntr|cntr2_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr2_o\(3),
	datab => \i_cntr|cntr2_o\(2),
	datac => \i_cntr|cntr2_o\(0),
	datad => \i_cntr|cntr2_o\(1),
	combout => \i_ioctrl|i_decoder2|Mux4~0_combout\);

-- Location: FF_X29_Y27_N23
\i_ioctrl|i_decoder2|ss_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder2|ss_o\(3));

-- Location: LCCOMB_X29_Y27_N4
\i_ioctrl|i_decoder2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder2|Mux3~0_combout\ = (\i_cntr|cntr2_o\(0)) # ((\i_cntr|cntr2_o\(1) & (\i_cntr|cntr2_o\(3))) # (!\i_cntr|cntr2_o\(1) & ((\i_cntr|cntr2_o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr2_o\(3),
	datab => \i_cntr|cntr2_o\(2),
	datac => \i_cntr|cntr2_o\(0),
	datad => \i_cntr|cntr2_o\(1),
	combout => \i_ioctrl|i_decoder2|Mux3~0_combout\);

-- Location: FF_X29_Y27_N5
\i_ioctrl|i_decoder2|ss_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder2|ss_o\(4));

-- Location: LCCOMB_X29_Y27_N10
\i_ioctrl|i_decoder2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder2|Mux2~0_combout\ = (\i_cntr|cntr2_o\(2) & ((\i_cntr|cntr2_o\(3)) # ((\i_cntr|cntr2_o\(0) & \i_cntr|cntr2_o\(1))))) # (!\i_cntr|cntr2_o\(2) & ((\i_cntr|cntr2_o\(1)) # ((!\i_cntr|cntr2_o\(3) & \i_cntr|cntr2_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr2_o\(3),
	datab => \i_cntr|cntr2_o\(2),
	datac => \i_cntr|cntr2_o\(0),
	datad => \i_cntr|cntr2_o\(1),
	combout => \i_ioctrl|i_decoder2|Mux2~0_combout\);

-- Location: FF_X29_Y27_N11
\i_ioctrl|i_decoder2|ss_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder2|ss_o\(5));

-- Location: LCCOMB_X29_Y27_N8
\i_ioctrl|i_decoder2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder2|Mux1~0_combout\ = (\i_cntr|cntr2_o\(2) & ((\i_cntr|cntr2_o\(3)) # ((\i_cntr|cntr2_o\(0) & \i_cntr|cntr2_o\(1))))) # (!\i_cntr|cntr2_o\(2) & (\i_cntr|cntr2_o\(3) $ (((!\i_cntr|cntr2_o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr2_o\(3),
	datab => \i_cntr|cntr2_o\(2),
	datac => \i_cntr|cntr2_o\(0),
	datad => \i_cntr|cntr2_o\(1),
	combout => \i_ioctrl|i_decoder2|Mux1~0_combout\);

-- Location: FF_X29_Y27_N9
\i_ioctrl|i_decoder2|ss_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder2|ss_o\(6));

-- Location: LCCOMB_X29_Y27_N6
\i_ioctrl|i_decoder2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder2|Mux0~0_combout\ = ((!\i_cntr|cntr2_o\(2) & !\i_cntr|cntr2_o\(1))) # (!\i_cntr|cntr2_o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr2_o\(3),
	datab => \i_cntr|cntr2_o\(2),
	datad => \i_cntr|cntr2_o\(1),
	combout => \i_ioctrl|i_decoder2|Mux0~0_combout\);

-- Location: FF_X29_Y27_N7
\i_ioctrl|i_decoder2|ss_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder2|ss_o\(7));

-- Location: LCCOMB_X26_Y27_N6
\i_cntr|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|Selector0~0_combout\ = (\i_cntr|i_bcd1|Equal0~0_combout\ & (!\i_cntr|s_present_state.UP~q\ & (\i_cntr|i_bcd0|Equal0~0_combout\ & \i_cntr|i_bcd2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd1|Equal0~0_combout\,
	datab => \i_cntr|s_present_state.UP~q\,
	datac => \i_cntr|i_bcd0|Equal0~0_combout\,
	datad => \i_cntr|i_bcd2|Equal0~0_combout\,
	combout => \i_cntr|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y27_N20
\i_cntr|i_bcd3|s_cntr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|s_cntr~0_combout\ = \i_cntr|i_bcd3|s_cntr\(0) $ (((\i_cntr|Selector0~0_combout\) # ((\i_cntr|i_bcd2|Equal1~0_combout\ & \i_cntr|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd2|Equal1~0_combout\,
	datab => \i_cntr|Selector0~0_combout\,
	datac => \i_cntr|i_bcd3|s_cntr\(0),
	datad => \i_cntr|Selector1~0_combout\,
	combout => \i_cntr|i_bcd3|s_cntr~0_combout\);

-- Location: FF_X28_Y27_N21
\i_cntr|i_bcd3|s_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd3|s_cntr~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd3|s_cntr\(0));

-- Location: LCCOMB_X28_Y27_N10
\i_cntr|cntr3_o[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr3_o[0]~feeder_combout\ = \i_cntr|i_bcd3|s_cntr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd3|s_cntr\(0),
	combout => \i_cntr|cntr3_o[0]~feeder_combout\);

-- Location: FF_X28_Y27_N11
\i_cntr|cntr3_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr3_o[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr3_o\(0));

-- Location: LCCOMB_X28_Y27_N4
\i_cntr|i_bcd3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|Add0~0_combout\ = \i_cntr|i_bcd3|s_cntr\(0) $ (\i_cntr|i_bcd3|s_cntr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_cntr|i_bcd3|s_cntr\(0),
	datad => \i_cntr|i_bcd3|s_cntr\(1),
	combout => \i_cntr|i_bcd3|Add0~0_combout\);

-- Location: LCCOMB_X27_Y27_N6
\i_cntr|i_bcd3|s_cntr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|s_cntr~5_combout\ = (\i_cntr|i_bcd3|s_cntr\(0) & ((\i_cntr|s_present_state.DOWN~q\) # ((\i_cntr|i_bcd3|s_cntr\(1) & \i_cntr|i_bcd3|s_cntr\(2))))) # (!\i_cntr|i_bcd3|s_cntr\(0) & (\i_cntr|s_present_state.DOWN~q\ & 
-- ((\i_cntr|i_bcd3|s_cntr\(1)) # (\i_cntr|i_bcd3|s_cntr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd3|s_cntr\(0),
	datab => \i_cntr|i_bcd3|s_cntr\(1),
	datac => \i_cntr|i_bcd3|s_cntr\(2),
	datad => \i_cntr|s_present_state.DOWN~q\,
	combout => \i_cntr|i_bcd3|s_cntr~5_combout\);

-- Location: LCCOMB_X27_Y27_N30
\i_cntr|i_bcd3|s_cntr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|s_cntr~6_combout\ = (\i_cntr|s_present_state.DOWN~q\ & (\i_cntr|i_bcd3|s_cntr~5_combout\ $ ((!\i_cntr|i_bcd3|s_cntr\(3))))) # (!\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd3|Equal0~0_combout\ & (\i_cntr|i_bcd3|s_cntr~5_combout\ $ 
-- (\i_cntr|i_bcd3|s_cntr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.DOWN~q\,
	datab => \i_cntr|i_bcd3|s_cntr~5_combout\,
	datac => \i_cntr|i_bcd3|s_cntr\(3),
	datad => \i_cntr|i_bcd3|Equal0~0_combout\,
	combout => \i_cntr|i_bcd3|s_cntr~6_combout\);

-- Location: LCCOMB_X26_Y27_N16
\i_cntr|i_bcd3|s_cntr[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|s_cntr[2]~2_combout\ = (\i_cntr|s_present_state.RESET~q\) # ((\i_cntr|Selector0~0_combout\) # ((\i_cntr|i_bcd2|Equal1~0_combout\ & \i_cntr|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|s_present_state.RESET~q\,
	datab => \i_cntr|i_bcd2|Equal1~0_combout\,
	datac => \i_cntr|Selector1~0_combout\,
	datad => \i_cntr|Selector0~0_combout\,
	combout => \i_cntr|i_bcd3|s_cntr[2]~2_combout\);

-- Location: FF_X27_Y27_N31
\i_cntr|i_bcd3|s_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd3|s_cntr~6_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd3|s_cntr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd3|s_cntr\(3));

-- Location: LCCOMB_X28_Y27_N26
\i_cntr|i_bcd3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|Equal0~0_combout\ = (!\i_cntr|i_bcd3|s_cntr\(1) & (!\i_cntr|i_bcd3|s_cntr\(2) & (\i_cntr|i_bcd3|s_cntr\(0) & \i_cntr|i_bcd3|s_cntr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd3|s_cntr\(1),
	datab => \i_cntr|i_bcd3|s_cntr\(2),
	datac => \i_cntr|i_bcd3|s_cntr\(0),
	datad => \i_cntr|i_bcd3|s_cntr\(3),
	combout => \i_cntr|i_bcd3|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y27_N14
\i_cntr|i_bcd3|s_cntr~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|s_cntr~1_combout\ = (\i_cntr|i_bcd3|Add0~0_combout\ & (!\i_cntr|s_present_state.DOWN~q\ & ((!\i_cntr|i_bcd3|Equal0~0_combout\)))) # (!\i_cntr|i_bcd3|Add0~0_combout\ & (\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd3|Add0~0_combout\,
	datab => \i_cntr|s_present_state.DOWN~q\,
	datac => \i_cntr|i_bcd3|Equal1~0_combout\,
	datad => \i_cntr|i_bcd3|Equal0~0_combout\,
	combout => \i_cntr|i_bcd3|s_cntr~1_combout\);

-- Location: FF_X27_Y27_N15
\i_cntr|i_bcd3|s_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd3|s_cntr~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd3|s_cntr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd3|s_cntr\(1));

-- Location: LCCOMB_X27_Y27_N22
\i_cntr|i_bcd3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|Equal1~0_combout\ = (!\i_cntr|i_bcd3|s_cntr\(0) & (!\i_cntr|i_bcd3|s_cntr\(1) & (!\i_cntr|i_bcd3|s_cntr\(3) & !\i_cntr|i_bcd3|s_cntr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd3|s_cntr\(0),
	datab => \i_cntr|i_bcd3|s_cntr\(1),
	datac => \i_cntr|i_bcd3|s_cntr\(3),
	datad => \i_cntr|i_bcd3|s_cntr\(2),
	combout => \i_cntr|i_bcd3|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y27_N16
\i_cntr|i_bcd3|s_cntr~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|s_cntr~3_combout\ = (\i_cntr|i_bcd3|s_cntr\(0) & ((\i_cntr|i_bcd3|s_cntr\(1)) # (\i_cntr|s_present_state.DOWN~q\))) # (!\i_cntr|i_bcd3|s_cntr\(0) & (\i_cntr|i_bcd3|s_cntr\(1) & \i_cntr|s_present_state.DOWN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd3|s_cntr\(0),
	datac => \i_cntr|i_bcd3|s_cntr\(1),
	datad => \i_cntr|s_present_state.DOWN~q\,
	combout => \i_cntr|i_bcd3|s_cntr~3_combout\);

-- Location: LCCOMB_X27_Y27_N20
\i_cntr|i_bcd3|s_cntr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|i_bcd3|s_cntr~4_combout\ = (\i_cntr|s_present_state.DOWN~q\ & (!\i_cntr|i_bcd3|Equal1~0_combout\ & (\i_cntr|i_bcd3|s_cntr\(2) $ (!\i_cntr|i_bcd3|s_cntr~3_combout\)))) # (!\i_cntr|s_present_state.DOWN~q\ & ((\i_cntr|i_bcd3|s_cntr\(2) $ 
-- (\i_cntr|i_bcd3|s_cntr~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|i_bcd3|Equal1~0_combout\,
	datab => \i_cntr|s_present_state.DOWN~q\,
	datac => \i_cntr|i_bcd3|s_cntr\(2),
	datad => \i_cntr|i_bcd3|s_cntr~3_combout\,
	combout => \i_cntr|i_bcd3|s_cntr~4_combout\);

-- Location: FF_X27_Y27_N21
\i_cntr|i_bcd3|s_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_cntr|i_prescaler|s_clk1~clkctrl_outclk\,
	d => \i_cntr|i_bcd3|s_cntr~4_combout\,
	clrn => \reset_n~input_o\,
	sclr => \i_cntr|s_present_state.RESET~q\,
	ena => \i_cntr|i_bcd3|s_cntr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|i_bcd3|s_cntr\(2));

-- Location: LCCOMB_X28_Y27_N22
\i_cntr|cntr3_o[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr3_o[2]~feeder_combout\ = \i_cntr|i_bcd3|s_cntr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd3|s_cntr\(2),
	combout => \i_cntr|cntr3_o[2]~feeder_combout\);

-- Location: FF_X28_Y27_N23
\i_cntr|cntr3_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr3_o[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr3_o\(2));

-- Location: LCCOMB_X28_Y27_N16
\i_cntr|cntr3_o[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr3_o[3]~feeder_combout\ = \i_cntr|i_bcd3|s_cntr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd3|s_cntr\(3),
	combout => \i_cntr|cntr3_o[3]~feeder_combout\);

-- Location: FF_X28_Y27_N17
\i_cntr|cntr3_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr3_o[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr3_o\(3));

-- Location: LCCOMB_X28_Y27_N24
\i_cntr|cntr3_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_cntr|cntr3_o[1]~feeder_combout\ = \i_cntr|i_bcd3|s_cntr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_cntr|i_bcd3|s_cntr\(1),
	combout => \i_cntr|cntr3_o[1]~feeder_combout\);

-- Location: FF_X28_Y27_N25
\i_cntr|cntr3_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_cntr|cntr3_o[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_cntr|cntr3_o\(1));

-- Location: LCCOMB_X29_Y27_N20
\i_ioctrl|i_decoder3|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder3|Mux7~0_combout\ = (\i_cntr|cntr3_o\(1) & (((\i_cntr|cntr3_o\(3))))) # (!\i_cntr|cntr3_o\(1) & (\i_cntr|cntr3_o\(2) $ (((\i_cntr|cntr3_o\(0) & !\i_cntr|cntr3_o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr3_o\(0),
	datab => \i_cntr|cntr3_o\(2),
	datac => \i_cntr|cntr3_o\(3),
	datad => \i_cntr|cntr3_o\(1),
	combout => \i_ioctrl|i_decoder3|Mux7~0_combout\);

-- Location: FF_X29_Y27_N21
\i_ioctrl|i_decoder3|ss_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder3|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder3|ss_o\(0));

-- Location: LCCOMB_X29_Y27_N26
\i_ioctrl|i_decoder3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder3|Mux6~0_combout\ = (\i_cntr|cntr3_o\(2) & ((\i_cntr|cntr3_o\(3)) # (\i_cntr|cntr3_o\(0) $ (\i_cntr|cntr3_o\(1))))) # (!\i_cntr|cntr3_o\(2) & (((\i_cntr|cntr3_o\(3) & \i_cntr|cntr3_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr3_o\(0),
	datab => \i_cntr|cntr3_o\(2),
	datac => \i_cntr|cntr3_o\(3),
	datad => \i_cntr|cntr3_o\(1),
	combout => \i_ioctrl|i_decoder3|Mux6~0_combout\);

-- Location: FF_X29_Y27_N27
\i_ioctrl|i_decoder3|ss_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder3|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder3|ss_o\(1));

-- Location: LCCOMB_X29_Y27_N16
\i_ioctrl|i_decoder3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder3|Mux5~0_combout\ = (\i_cntr|cntr3_o\(2) & (((\i_cntr|cntr3_o\(3))))) # (!\i_cntr|cntr3_o\(2) & (\i_cntr|cntr3_o\(1) & ((\i_cntr|cntr3_o\(3)) # (!\i_cntr|cntr3_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr3_o\(0),
	datab => \i_cntr|cntr3_o\(2),
	datac => \i_cntr|cntr3_o\(3),
	datad => \i_cntr|cntr3_o\(1),
	combout => \i_ioctrl|i_decoder3|Mux5~0_combout\);

-- Location: FF_X29_Y27_N17
\i_ioctrl|i_decoder3|ss_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder3|ss_o\(2));

-- Location: LCCOMB_X29_Y27_N30
\i_ioctrl|i_decoder3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder3|Mux4~0_combout\ = (\i_cntr|cntr3_o\(1) & ((\i_cntr|cntr3_o\(3)) # ((\i_cntr|cntr3_o\(0) & \i_cntr|cntr3_o\(2))))) # (!\i_cntr|cntr3_o\(1) & (\i_cntr|cntr3_o\(2) $ (((\i_cntr|cntr3_o\(0) & !\i_cntr|cntr3_o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr3_o\(0),
	datab => \i_cntr|cntr3_o\(2),
	datac => \i_cntr|cntr3_o\(3),
	datad => \i_cntr|cntr3_o\(1),
	combout => \i_ioctrl|i_decoder3|Mux4~0_combout\);

-- Location: FF_X29_Y27_N31
\i_ioctrl|i_decoder3|ss_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder3|ss_o\(3));

-- Location: LCCOMB_X29_Y27_N28
\i_ioctrl|i_decoder3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder3|Mux3~0_combout\ = (\i_cntr|cntr3_o\(0)) # ((\i_cntr|cntr3_o\(1) & ((\i_cntr|cntr3_o\(3)))) # (!\i_cntr|cntr3_o\(1) & (\i_cntr|cntr3_o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr3_o\(0),
	datab => \i_cntr|cntr3_o\(2),
	datac => \i_cntr|cntr3_o\(3),
	datad => \i_cntr|cntr3_o\(1),
	combout => \i_ioctrl|i_decoder3|Mux3~0_combout\);

-- Location: FF_X29_Y27_N29
\i_ioctrl|i_decoder3|ss_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder3|ss_o\(4));

-- Location: LCCOMB_X29_Y27_N14
\i_ioctrl|i_decoder3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder3|Mux2~0_combout\ = (\i_cntr|cntr3_o\(0) & ((\i_cntr|cntr3_o\(1)) # (\i_cntr|cntr3_o\(2) $ (!\i_cntr|cntr3_o\(3))))) # (!\i_cntr|cntr3_o\(0) & ((\i_cntr|cntr3_o\(2) & (\i_cntr|cntr3_o\(3))) # (!\i_cntr|cntr3_o\(2) & 
-- ((\i_cntr|cntr3_o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr3_o\(0),
	datab => \i_cntr|cntr3_o\(2),
	datac => \i_cntr|cntr3_o\(3),
	datad => \i_cntr|cntr3_o\(1),
	combout => \i_ioctrl|i_decoder3|Mux2~0_combout\);

-- Location: FF_X29_Y27_N15
\i_ioctrl|i_decoder3|ss_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder3|ss_o\(5));

-- Location: LCCOMB_X28_Y27_N6
\i_ioctrl|i_decoder3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder3|Mux1~0_combout\ = (\i_cntr|cntr3_o\(2) & ((\i_cntr|cntr3_o\(3)) # ((\i_cntr|cntr3_o\(0) & \i_cntr|cntr3_o\(1))))) # (!\i_cntr|cntr3_o\(2) & ((\i_cntr|cntr3_o\(3) $ (!\i_cntr|cntr3_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cntr|cntr3_o\(0),
	datab => \i_cntr|cntr3_o\(3),
	datac => \i_cntr|cntr3_o\(2),
	datad => \i_cntr|cntr3_o\(1),
	combout => \i_ioctrl|i_decoder3|Mux1~0_combout\);

-- Location: FF_X28_Y27_N7
\i_ioctrl|i_decoder3|ss_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder3|ss_o\(6));

-- Location: LCCOMB_X29_Y27_N12
\i_ioctrl|i_decoder3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i_ioctrl|i_decoder3|Mux0~0_combout\ = ((!\i_cntr|cntr3_o\(2) & !\i_cntr|cntr3_o\(1))) # (!\i_cntr|cntr3_o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_cntr|cntr3_o\(2),
	datac => \i_cntr|cntr3_o\(3),
	datad => \i_cntr|cntr3_o\(1),
	combout => \i_ioctrl|i_decoder3|Mux0~0_combout\);

-- Location: FF_X29_Y27_N13
\i_ioctrl|i_decoder3|ss_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \i_ioctrl|i_decoder3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ioctrl|i_decoder3|ss_o\(7));

ww_ss0_o(0) <= \ss0_o[0]~output_o\;

ww_ss0_o(1) <= \ss0_o[1]~output_o\;

ww_ss0_o(2) <= \ss0_o[2]~output_o\;

ww_ss0_o(3) <= \ss0_o[3]~output_o\;

ww_ss0_o(4) <= \ss0_o[4]~output_o\;

ww_ss0_o(5) <= \ss0_o[5]~output_o\;

ww_ss0_o(6) <= \ss0_o[6]~output_o\;

ww_ss0_o(7) <= \ss0_o[7]~output_o\;

ww_ss1_o(0) <= \ss1_o[0]~output_o\;

ww_ss1_o(1) <= \ss1_o[1]~output_o\;

ww_ss1_o(2) <= \ss1_o[2]~output_o\;

ww_ss1_o(3) <= \ss1_o[3]~output_o\;

ww_ss1_o(4) <= \ss1_o[4]~output_o\;

ww_ss1_o(5) <= \ss1_o[5]~output_o\;

ww_ss1_o(6) <= \ss1_o[6]~output_o\;

ww_ss1_o(7) <= \ss1_o[7]~output_o\;

ww_ss2_o(0) <= \ss2_o[0]~output_o\;

ww_ss2_o(1) <= \ss2_o[1]~output_o\;

ww_ss2_o(2) <= \ss2_o[2]~output_o\;

ww_ss2_o(3) <= \ss2_o[3]~output_o\;

ww_ss2_o(4) <= \ss2_o[4]~output_o\;

ww_ss2_o(5) <= \ss2_o[5]~output_o\;

ww_ss2_o(6) <= \ss2_o[6]~output_o\;

ww_ss2_o(7) <= \ss2_o[7]~output_o\;

ww_ss3_o(0) <= \ss3_o[0]~output_o\;

ww_ss3_o(1) <= \ss3_o[1]~output_o\;

ww_ss3_o(2) <= \ss3_o[2]~output_o\;

ww_ss3_o(3) <= \ss3_o[3]~output_o\;

ww_ss3_o(4) <= \ss3_o[4]~output_o\;

ww_ss3_o(5) <= \ss3_o[5]~output_o\;

ww_ss3_o(6) <= \ss3_o[6]~output_o\;

ww_ss3_o(7) <= \ss3_o[7]~output_o\;
END structure;


