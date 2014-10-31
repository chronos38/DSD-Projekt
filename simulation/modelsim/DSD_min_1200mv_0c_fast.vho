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

-- DATE "10/31/2014 16:16:36"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dezctr IS
    PORT (
	clk50 : IN std_logic;
	reset_n : IN std_logic;
	sw_i : IN std_logic_vector(9 DOWNTO 0);
	pb_i : IN std_logic_vector(1 DOWNTO 0)
	);
END dezctr;

-- Design Ports Information
-- clk50	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_i[9]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_i[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_i[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \sw_i[0]~input_o\ : std_logic;
SIGNAL \sw_i[1]~input_o\ : std_logic;
SIGNAL \sw_i[2]~input_o\ : std_logic;
SIGNAL \sw_i[3]~input_o\ : std_logic;
SIGNAL \sw_i[4]~input_o\ : std_logic;
SIGNAL \sw_i[5]~input_o\ : std_logic;
SIGNAL \sw_i[6]~input_o\ : std_logic;
SIGNAL \sw_i[7]~input_o\ : std_logic;
SIGNAL \sw_i[8]~input_o\ : std_logic;
SIGNAL \sw_i[9]~input_o\ : std_logic;
SIGNAL \pb_i[0]~input_o\ : std_logic;
SIGNAL \pb_i[1]~input_o\ : std_logic;

BEGIN

ww_clk50 <= clk50;
ww_reset_n <= reset_n;
ww_sw_i <= sw_i;
ww_pb_i <= pb_i;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X41_Y18_N15
\clk50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: IOIBUF_X39_Y29_N29
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\sw_i[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(0),
	o => \sw_i[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw_i[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(1),
	o => \sw_i[1]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\sw_i[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(2),
	o => \sw_i[2]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\sw_i[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(3),
	o => \sw_i[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\sw_i[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(4),
	o => \sw_i[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\sw_i[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(5),
	o => \sw_i[5]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\sw_i[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(6),
	o => \sw_i[6]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\sw_i[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(7),
	o => \sw_i[7]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\sw_i[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(8),
	o => \sw_i[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\sw_i[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_i(9),
	o => \sw_i[9]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\pb_i[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_i(0),
	o => \pb_i[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\pb_i[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_i(1),
	o => \pb_i[1]~input_o\);
END structure;


