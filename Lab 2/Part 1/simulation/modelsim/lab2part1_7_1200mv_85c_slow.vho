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

-- DATE "10/03/2017 11:37:02"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab2part1 IS
    PORT (
	SW : IN std_logic_vector(15 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab2part1;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \HEX0~22_combout\ : std_logic;
SIGNAL \HEX0~23_combout\ : std_logic;
SIGNAL \HEX0~24_combout\ : std_logic;
SIGNAL \HEX0~25_combout\ : std_logic;
SIGNAL \HEX0~26_combout\ : std_logic;
SIGNAL \HEX0~27_combout\ : std_logic;
SIGNAL \HEX0~28_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \HEX1~22_combout\ : std_logic;
SIGNAL \HEX1~23_combout\ : std_logic;
SIGNAL \HEX1~24_combout\ : std_logic;
SIGNAL \HEX1~25_combout\ : std_logic;
SIGNAL \HEX1~26_combout\ : std_logic;
SIGNAL \HEX1~27_combout\ : std_logic;
SIGNAL \HEX1~28_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \HEX2~24_combout\ : std_logic;
SIGNAL \HEX2~25_combout\ : std_logic;
SIGNAL \HEX2~26_combout\ : std_logic;
SIGNAL \HEX2~27_combout\ : std_logic;
SIGNAL \HEX2~28_combout\ : std_logic;
SIGNAL \HEX2~29_combout\ : std_logic;
SIGNAL \HEX2~30_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \HEX3~24_combout\ : std_logic;
SIGNAL \HEX3~25_combout\ : std_logic;
SIGNAL \HEX3~26_combout\ : std_logic;
SIGNAL \HEX3~27_combout\ : std_logic;
SIGNAL \HEX3~28_combout\ : std_logic;
SIGNAL \HEX3~29_combout\ : std_logic;
SIGNAL \HEX3~30_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X115_Y27_N9
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~22_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~23_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~24_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~25_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~26_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~27_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~28_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~22_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~23_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~24_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~25_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~26_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~27_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~28_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~24_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~25_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~26_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~27_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~28_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~29_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~30_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~24_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~25_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~26_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~27_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~28_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~29_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~30_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOIBUF_X115_Y33_N8
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y34_N8
\HEX0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0~22_combout\ = (\SW[1]~input_o\ & ((\SW[3]~input_o\) # ((!\SW[2]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (((!\SW[3]~input_o\ & \SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~22_combout\);

-- Location: LCCOMB_X114_Y34_N2
\HEX0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0~23_combout\ = (\SW[1]~input_o\ & (((\SW[3]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & ((\SW[3]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~23_combout\);

-- Location: LCCOMB_X114_Y34_N12
\HEX0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0~24_combout\ = (\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \HEX0~24_combout\);

-- Location: LCCOMB_X114_Y34_N30
\HEX0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0~25_combout\ = (\SW[3]~input_o\ & ((\SW[1]~input_o\) # ((\SW[2]~input_o\) # (\SW[0]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~25_combout\);

-- Location: LCCOMB_X114_Y34_N0
\HEX0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0~26_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\ & ((\SW[3]~input_o\) # (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~26_combout\);

-- Location: LCCOMB_X114_Y34_N18
\HEX0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0~27_combout\ = (\SW[3]~input_o\ & ((\SW[1]~input_o\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[0]~input_o\ & ((\SW[1]~input_o\) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~27_combout\);

-- Location: LCCOMB_X114_Y34_N28
\HEX0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0~28_combout\ = (\SW[1]~input_o\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\ $ (!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ ((!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~28_combout\);

-- Location: IOIBUF_X35_Y73_N15
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X35_Y72_N16
\HEX1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1~22_combout\ = (\SW[6]~input_o\ & ((\SW[7]~input_o\) # ((!\SW[4]~input_o\ & !\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ $ (((\SW[4]~input_o\ & !\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \HEX1~22_combout\);

-- Location: LCCOMB_X35_Y72_N2
\HEX1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1~23_combout\ = (\SW[5]~input_o\ & (((\SW[7]~input_o\)) # (!\SW[4]~input_o\))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ & ((\SW[4]~input_o\) # (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \HEX1~23_combout\);

-- Location: LCCOMB_X35_Y72_N12
\HEX1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1~24_combout\ = (\SW[7]~input_o\ & ((\SW[6]~input_o\) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \HEX1~24_combout\);

-- Location: LCCOMB_X35_Y72_N14
\HEX1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1~25_combout\ = (\SW[7]~input_o\ & ((\SW[4]~input_o\) # ((\SW[6]~input_o\) # (\SW[5]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[4]~input_o\ $ (\SW[6]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \HEX1~25_combout\);

-- Location: LCCOMB_X35_Y72_N24
\HEX1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1~26_combout\ = (\SW[4]~input_o\) # ((\SW[6]~input_o\ & ((\SW[7]~input_o\) # (!\SW[5]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \HEX1~26_combout\);

-- Location: LCCOMB_X35_Y72_N10
\HEX1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1~27_combout\ = (\SW[7]~input_o\ & (((\SW[6]~input_o\) # (\SW[5]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[4]~input_o\ & ((\SW[5]~input_o\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \HEX1~27_combout\);

-- Location: LCCOMB_X35_Y72_N4
\HEX1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1~28_combout\ = (\SW[7]~input_o\ & (((\SW[6]~input_o\) # (\SW[5]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[6]~input_o\ $ (((!\SW[5]~input_o\) # (!\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \HEX1~28_combout\);

-- Location: IOIBUF_X115_Y61_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y56_N22
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X114_Y61_N16
\HEX2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~24_combout\ = (\SW[10]~input_o\ & ((\SW[11]~input_o\) # ((!\SW[9]~input_o\ & !\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[9]~input_o\ $ (((!\SW[11]~input_o\ & \SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX2~24_combout\);

-- Location: LCCOMB_X114_Y61_N18
\HEX2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~25_combout\ = (\SW[9]~input_o\ & (((\SW[11]~input_o\) # (!\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\SW[10]~input_o\ & ((\SW[11]~input_o\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX2~25_combout\);

-- Location: LCCOMB_X114_Y61_N20
\HEX2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~26_combout\ = (\SW[11]~input_o\ & ((\SW[10]~input_o\) # (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[9]~input_o\,
	combout => \HEX2~26_combout\);

-- Location: LCCOMB_X114_Y61_N6
\HEX2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~27_combout\ = (\SW[11]~input_o\ & ((\SW[10]~input_o\) # ((\SW[9]~input_o\) # (\SW[8]~input_o\)))) # (!\SW[11]~input_o\ & (\SW[10]~input_o\ $ (\SW[9]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX2~27_combout\);

-- Location: LCCOMB_X114_Y61_N0
\HEX2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~28_combout\ = (\SW[8]~input_o\) # ((\SW[10]~input_o\ & ((\SW[11]~input_o\) # (!\SW[9]~input_o\))) # (!\SW[10]~input_o\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX2~28_combout\);

-- Location: LCCOMB_X114_Y61_N2
\HEX2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~29_combout\ = (\SW[11]~input_o\ & ((\SW[10]~input_o\) # ((\SW[9]~input_o\)))) # (!\SW[11]~input_o\ & (\SW[8]~input_o\ & ((\SW[9]~input_o\) # (!\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX2~29_combout\);

-- Location: LCCOMB_X114_Y61_N4
\HEX2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~30_combout\ = (\SW[11]~input_o\ & ((\SW[10]~input_o\) # ((\SW[9]~input_o\)))) # (!\SW[11]~input_o\ & (\SW[10]~input_o\ $ (((!\SW[8]~input_o\) # (!\SW[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX2~30_combout\);

-- Location: IOIBUF_X85_Y73_N1
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X89_Y51_N0
\HEX3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~24_combout\ = (\SW[13]~input_o\ & ((\SW[15]~input_o\) # ((!\SW[14]~input_o\ & !\SW[12]~input_o\)))) # (!\SW[13]~input_o\ & (\SW[14]~input_o\ $ (((!\SW[15]~input_o\ & \SW[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \HEX3~24_combout\);

-- Location: LCCOMB_X89_Y51_N10
\HEX3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~25_combout\ = (\SW[13]~input_o\ & ((\SW[15]~input_o\) # ((!\SW[12]~input_o\)))) # (!\SW[13]~input_o\ & (\SW[14]~input_o\ & ((\SW[15]~input_o\) # (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \HEX3~25_combout\);

-- Location: LCCOMB_X89_Y51_N4
\HEX3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~26_combout\ = (\SW[15]~input_o\ & ((\SW[14]~input_o\) # (\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \HEX3~26_combout\);

-- Location: LCCOMB_X89_Y51_N22
\HEX3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~27_combout\ = (\SW[15]~input_o\ & ((\SW[13]~input_o\) # ((\SW[14]~input_o\) # (\SW[12]~input_o\)))) # (!\SW[15]~input_o\ & (\SW[13]~input_o\ $ (\SW[14]~input_o\ $ (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \HEX3~27_combout\);

-- Location: LCCOMB_X89_Y51_N8
\HEX3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~28_combout\ = (\SW[12]~input_o\) # ((\SW[13]~input_o\ & ((\SW[15]~input_o\) # (!\SW[14]~input_o\))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \HEX3~28_combout\);

-- Location: LCCOMB_X89_Y51_N26
\HEX3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~29_combout\ = (\SW[15]~input_o\ & ((\SW[13]~input_o\) # ((\SW[14]~input_o\)))) # (!\SW[15]~input_o\ & (\SW[12]~input_o\ & ((\SW[13]~input_o\) # (!\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \HEX3~29_combout\);

-- Location: LCCOMB_X89_Y51_N28
\HEX3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~30_combout\ = (\SW[13]~input_o\ & ((\SW[15]~input_o\) # (\SW[14]~input_o\ $ (!\SW[12]~input_o\)))) # (!\SW[13]~input_o\ & (\SW[15]~input_o\ $ ((!\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \HEX3~30_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


