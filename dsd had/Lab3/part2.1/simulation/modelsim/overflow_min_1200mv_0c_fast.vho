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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/06/2017 14:41:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	overflow IS
    PORT (
	add_sub : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 4);
	B : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(8 DOWNTO 0);
	\out\ : OUT std_logic_vector(4 DOWNTO 0)
	);
END overflow;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_sub	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF overflow IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_add_sub : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 4);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(8 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \out[4]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \add_sub~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \out~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|m1|m~0_combout\ : std_logic;
SIGNAL \comb_3|FA2|s~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \out~1_combout\ : std_logic;
SIGNAL \comb_3|comb_3|m2|m~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|m2|m~1_combout\ : std_logic;
SIGNAL \comb_3|FA2|co~0_combout\ : std_logic;
SIGNAL \comb_3|FA3|s~combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \out~2_combout\ : std_logic;
SIGNAL \comb_3|comb_3|comb_3|Add0~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|m3|m~1_combout\ : std_logic;
SIGNAL \comb_3|comb_3|m3|m~0_combout\ : std_logic;
SIGNAL \comb_3|FA3|co~0_combout\ : std_logic;
SIGNAL \comb_3|FA4|s~combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \out~3_combout\ : std_logic;
SIGNAL \comb_3|FA4|co~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \out~4_combout\ : std_logic;

BEGIN

ww_add_sub <= add_sub;
ww_A <= A;
ww_B <= B;
LEDR <= ww_LEDR;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_sub~input_o\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~0_combout\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~1_combout\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~2_combout\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~3_combout\,
	devoe => ww_devoe,
	o => \out[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~4_combout\,
	devoe => ww_devoe,
	o => \out[4]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\add_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_sub,
	o => \add_sub~input_o\);

-- Location: LCCOMB_X87_Y70_N20
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \B[0]~input_o\ $ (\A[4]~input_o\ $ (VCC))
-- \Add0~1\ = CARRY(\B[0]~input_o\ $ (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X88_Y70_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & !\A[4]~input_o\)) # (!\A[5]~input_o\))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (!\A[5]~input_o\ & !\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X88_Y70_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\A[6]~input_o\ & (\LessThan0~0_combout\ & \B[2]~input_o\)) # (!\A[6]~input_o\ & ((\LessThan0~0_combout\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \LessThan0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X87_Y70_N0
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\ & ((\B[3]~input_o\) # (!\A[7]~input_o\))) # (!\LessThan0~1_combout\ & (\B[3]~input_o\ & !\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \B[3]~input_o\,
	datac => \A[7]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X87_Y70_N18
\out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~0_combout\ = (\LessThan0~2_combout\ & (!\Add0~0_combout\)) # (!\LessThan0~2_combout\ & ((\B[0]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \out~0_combout\);

-- Location: LCCOMB_X88_Y70_N20
\comb_3|comb_3|m1|m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|m1|m~0_combout\ = \B[1]~input_o\ $ (((\add_sub~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \comb_3|comb_3|m1|m~0_combout\);

-- Location: LCCOMB_X88_Y70_N30
\comb_3|FA2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA2|s~combout\ = \comb_3|comb_3|m1|m~0_combout\ $ (\A[5]~input_o\ $ (((\B[0]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \comb_3|comb_3|m1|m~0_combout\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \comb_3|FA2|s~combout\);

-- Location: LCCOMB_X87_Y70_N22
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\comb_3|FA2|s~combout\ & (!\Add0~1\)) # (!\comb_3|FA2|s~combout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\comb_3|FA2|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|FA2|s~combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X87_Y70_N4
\out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~1_combout\ = (\LessThan0~2_combout\ & ((!\Add0~2_combout\))) # (!\LessThan0~2_combout\ & (\comb_3|FA2|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|FA2|s~combout\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~2_combout\,
	combout => \out~1_combout\);

-- Location: LCCOMB_X88_Y70_N10
\comb_3|comb_3|m2|m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|m2|m~0_combout\ = (!\add_sub~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub~input_o\,
	datad => \B[2]~input_o\,
	combout => \comb_3|comb_3|m2|m~0_combout\);

-- Location: LCCOMB_X88_Y70_N28
\comb_3|comb_3|m2|m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|m2|m~1_combout\ = (\add_sub~input_o\ & (\B[2]~input_o\ $ (((\B[1]~input_o\) # (\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \add_sub~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \comb_3|comb_3|m2|m~1_combout\);

-- Location: LCCOMB_X88_Y70_N8
\comb_3|FA2|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA2|co~0_combout\ = (\comb_3|comb_3|m1|m~0_combout\ & ((\A[5]~input_o\) # ((\B[0]~input_o\ & \A[4]~input_o\)))) # (!\comb_3|comb_3|m1|m~0_combout\ & (\B[0]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \comb_3|comb_3|m1|m~0_combout\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \comb_3|FA2|co~0_combout\);

-- Location: LCCOMB_X88_Y70_N6
\comb_3|FA3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA3|s~combout\ = \comb_3|FA2|co~0_combout\ $ (\A[6]~input_o\ $ (((\comb_3|comb_3|m2|m~0_combout\) # (\comb_3|comb_3|m2|m~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|m2|m~0_combout\,
	datab => \comb_3|comb_3|m2|m~1_combout\,
	datac => \comb_3|FA2|co~0_combout\,
	datad => \A[6]~input_o\,
	combout => \comb_3|FA3|s~combout\);

-- Location: LCCOMB_X87_Y70_N24
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\comb_3|FA3|s~combout\ & (\Add0~3\ $ (GND))) # (!\comb_3|FA3|s~combout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\comb_3|FA3|s~combout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|FA3|s~combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X87_Y70_N6
\out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~2_combout\ = (\LessThan0~2_combout\ & ((!\Add0~4_combout\))) # (!\LessThan0~2_combout\ & (\comb_3|FA3|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|FA3|s~combout\,
	datab => \Add0~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \out~2_combout\);

-- Location: LCCOMB_X88_Y70_N12
\comb_3|comb_3|comb_3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|comb_3|Add0~0_combout\ = \B[3]~input_o\ $ (((\B[2]~input_o\) # ((\B[1]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \comb_3|comb_3|comb_3|Add0~0_combout\);

-- Location: LCCOMB_X88_Y70_N22
\comb_3|comb_3|m3|m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|m3|m~1_combout\ = (\comb_3|comb_3|comb_3|Add0~0_combout\ & \add_sub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|comb_3|Add0~0_combout\,
	datad => \add_sub~input_o\,
	combout => \comb_3|comb_3|m3|m~1_combout\);

-- Location: LCCOMB_X88_Y70_N18
\comb_3|comb_3|m3|m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|m3|m~0_combout\ = (!\add_sub~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub~input_o\,
	datad => \B[3]~input_o\,
	combout => \comb_3|comb_3|m3|m~0_combout\);

-- Location: LCCOMB_X88_Y70_N24
\comb_3|FA3|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA3|co~0_combout\ = (\comb_3|FA2|co~0_combout\ & ((\comb_3|comb_3|m2|m~0_combout\) # ((\comb_3|comb_3|m2|m~1_combout\) # (\A[6]~input_o\)))) # (!\comb_3|FA2|co~0_combout\ & (\A[6]~input_o\ & ((\comb_3|comb_3|m2|m~0_combout\) # 
-- (\comb_3|comb_3|m2|m~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|m2|m~0_combout\,
	datab => \comb_3|comb_3|m2|m~1_combout\,
	datac => \comb_3|FA2|co~0_combout\,
	datad => \A[6]~input_o\,
	combout => \comb_3|FA3|co~0_combout\);

-- Location: LCCOMB_X87_Y70_N8
\comb_3|FA4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA4|s~combout\ = \A[7]~input_o\ $ (\comb_3|FA3|co~0_combout\ $ (((\comb_3|comb_3|m3|m~1_combout\) # (\comb_3|comb_3|m3|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|m3|m~1_combout\,
	datab => \comb_3|comb_3|m3|m~0_combout\,
	datac => \A[7]~input_o\,
	datad => \comb_3|FA3|co~0_combout\,
	combout => \comb_3|FA4|s~combout\);

-- Location: LCCOMB_X87_Y70_N26
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\comb_3|FA4|s~combout\ & (!\Add0~5\)) # (!\comb_3|FA4|s~combout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\comb_3|FA4|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|FA4|s~combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X87_Y70_N2
\out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~3_combout\ = (\LessThan0~2_combout\ & ((!\Add0~6_combout\))) # (!\LessThan0~2_combout\ & (\comb_3|FA4|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|FA4|s~combout\,
	datac => \Add0~6_combout\,
	datad => \LessThan0~2_combout\,
	combout => \out~3_combout\);

-- Location: LCCOMB_X87_Y70_N12
\comb_3|FA4|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA4|co~0_combout\ = (\A[7]~input_o\ & ((\comb_3|comb_3|m3|m~1_combout\) # ((\comb_3|comb_3|m3|m~0_combout\) # (\comb_3|FA3|co~0_combout\)))) # (!\A[7]~input_o\ & (\comb_3|FA3|co~0_combout\ & ((\comb_3|comb_3|m3|m~1_combout\) # 
-- (\comb_3|comb_3|m3|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|m3|m~1_combout\,
	datab => \comb_3|comb_3|m3|m~0_combout\,
	datac => \A[7]~input_o\,
	datad => \comb_3|FA3|co~0_combout\,
	combout => \comb_3|FA4|co~0_combout\);

-- Location: LCCOMB_X87_Y70_N28
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \comb_3|FA4|co~0_combout\ $ (\Add0~7\ $ (\comb_3|FA3|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|FA4|co~0_combout\,
	datad => \comb_3|FA3|co~0_combout\,
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X87_Y70_N30
\out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~4_combout\ = (\LessThan0~2_combout\ & (((\Add0~8_combout\)))) # (!\LessThan0~2_combout\ & (\comb_3|FA4|co~0_combout\ $ (((\comb_3|FA3|co~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|FA4|co~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~8_combout\,
	datad => \comb_3|FA3|co~0_combout\,
	combout => \out~4_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

\ww_out\(0) <= \out[0]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;

\ww_out\(4) <= \out[4]~output_o\;
END structure;


