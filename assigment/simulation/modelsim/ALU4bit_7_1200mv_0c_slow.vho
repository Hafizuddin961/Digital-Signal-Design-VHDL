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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/06/2017 08:50:00"

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

ENTITY 	ALU4bit IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 4);
	B : IN std_logic_vector(3 DOWNTO 0);
	M : IN std_logic_vector(2 DOWNTO 0);
	F : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU4bit;

-- Design Ports Information
-- F[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 4);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_3|FA2|s~combout\ : std_logic;
SIGNAL \comb_4|LessThan0~0_combout\ : std_logic;
SIGNAL \F~11_combout\ : std_logic;
SIGNAL \F~29_combout\ : std_logic;
SIGNAL \F~30_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \M[2]~input_o\ : std_logic;
SIGNAL \F~3_combout\ : std_logic;
SIGNAL \F~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \F~4_combout\ : std_logic;
SIGNAL \F~5_combout\ : std_logic;
SIGNAL \F~6_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \F~7_combout\ : std_logic;
SIGNAL \F~8_combout\ : std_logic;
SIGNAL \F~27_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \comb_4|LessThan0~1_combout\ : std_logic;
SIGNAL \comb_4|LessThan0~2_combout\ : std_logic;
SIGNAL \F~9_combout\ : std_logic;
SIGNAL \F~28_combout\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \comb_3|FA2|co~0_combout\ : std_logic;
SIGNAL \F~26_combout\ : std_logic;
SIGNAL \F~10_combout\ : std_logic;
SIGNAL \F~12_combout\ : std_logic;
SIGNAL \F~13_combout\ : std_logic;
SIGNAL \F~14_combout\ : std_logic;
SIGNAL \F~15_combout\ : std_logic;
SIGNAL \comb_3|FA3|co~0_combout\ : std_logic;
SIGNAL \comb_3|FA4|s~0_combout\ : std_logic;
SIGNAL \F~18_combout\ : std_logic;
SIGNAL \F~17_combout\ : std_logic;
SIGNAL \F~19_combout\ : std_logic;
SIGNAL \comb_4|Add0~0_combout\ : std_logic;
SIGNAL \F~20_combout\ : std_logic;
SIGNAL \F~16_combout\ : std_logic;
SIGNAL \F~21_combout\ : std_logic;
SIGNAL \F~22_combout\ : std_logic;
SIGNAL \F~23_combout\ : std_logic;
SIGNAL \F~24_combout\ : std_logic;
SIGNAL \F~25_combout\ : std_logic;
SIGNAL \ALT_INV_F~5_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_M <= M;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_F~5_combout\ <= NOT \F~5_combout\;

-- Location: LCCOMB_X1_Y18_N26
\comb_3|FA2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA2|s~combout\ = \B[1]~input_o\ $ (\A[5]~input_o\ $ (((\B[0]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \comb_3|FA2|s~combout\);

-- Location: LCCOMB_X1_Y18_N22
\comb_4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|LessThan0~0_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & !\A[4]~input_o\)) # (!\A[5]~input_o\))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (!\A[4]~input_o\ & !\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \comb_4|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y18_N4
\F~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~11_combout\ = \M[1]~input_o\ $ (((!\M[2]~input_o\ & ((\A[4]~input_o\) # (\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[1]~input_o\,
	datab => \M[2]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \F~11_combout\);

-- Location: LCCOMB_X1_Y18_N20
\F~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~29_combout\ = (\M[2]~input_o\ & ((\B[1]~input_o\) # ((\A[5]~input_o\)))) # (!\M[2]~input_o\ & ((\A[4]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \M[2]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \F~29_combout\);

-- Location: LCCOMB_X1_Y18_N30
\F~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~30_combout\ = (\M[1]~input_o\ & (\M[2]~input_o\ $ (((!\F~29_combout\))))) # (!\M[1]~input_o\ & ((\M[2]~input_o\ & (\A[6]~input_o\)) # (!\M[2]~input_o\ & ((\F~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[1]~input_o\,
	datab => \M[2]~input_o\,
	datac => \A[6]~input_o\,
	datad => \F~29_combout\,
	combout => \F~30_combout\);

-- Location: IOIBUF_X0_Y20_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOOBUF_X0_Y18_N23
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_F~5_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~28_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~15_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~21_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\F[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~25_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\F[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\F[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\F[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\M[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(2),
	o => \M[2]~input_o\);

-- Location: LCCOMB_X1_Y18_N10
\F~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~3_combout\ = (\M[1]~input_o\ & ((\B[0]~input_o\ $ (\A[4]~input_o\)) # (!\M[2]~input_o\))) # (!\M[1]~input_o\ & (\B[0]~input_o\ & ((!\M[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \M[2]~input_o\,
	combout => \F~3_combout\);

-- Location: LCCOMB_X1_Y18_N24
\F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~2_combout\ = (\B[0]~input_o\ & (!\M[1]~input_o\)) # (!\B[0]~input_o\ & (\M[2]~input_o\ & ((\A[4]~input_o\) # (!\M[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \M[2]~input_o\,
	combout => \F~2_combout\);

-- Location: IOIBUF_X0_Y22_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\M[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(0),
	o => \M[0]~input_o\);

-- Location: LCCOMB_X1_Y18_N12
\F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~4_combout\ = (\M[0]~input_o\ & ((\A[5]~input_o\) # (\F~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \M[0]~input_o\,
	datad => \F~3_combout\,
	combout => \F~4_combout\);

-- Location: LCCOMB_X1_Y18_N14
\F~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~5_combout\ = (\F~3_combout\ & (\F~2_combout\ $ (\A[4]~input_o\ $ (!\F~4_combout\)))) # (!\F~3_combout\ & ((\F~2_combout\ & ((!\F~4_combout\))) # (!\F~2_combout\ & (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~3_combout\,
	datab => \F~2_combout\,
	datac => \A[4]~input_o\,
	datad => \F~4_combout\,
	combout => \F~5_combout\);

-- Location: LCCOMB_X1_Y17_N0
\F~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~6_combout\ = (\M[1]~input_o\) # (\M[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[1]~input_o\,
	datac => \M[0]~input_o\,
	combout => \F~6_combout\);

-- Location: IOIBUF_X0_Y15_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y18_N0
\F~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~7_combout\ = (\M[0]~input_o\) # ((!\M[1]~input_o\ & \M[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[1]~input_o\,
	datab => \M[2]~input_o\,
	datac => \M[0]~input_o\,
	combout => \F~7_combout\);

-- Location: LCCOMB_X1_Y18_N28
\F~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~8_combout\ = (\F~6_combout\ & (((\F~7_combout\)))) # (!\F~6_combout\ & ((\F~7_combout\ & ((\A[4]~input_o\))) # (!\F~7_combout\ & (\comb_3|FA2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|FA2|s~combout\,
	datab => \F~6_combout\,
	datac => \A[4]~input_o\,
	datad => \F~7_combout\,
	combout => \F~8_combout\);

-- Location: LCCOMB_X1_Y18_N16
\F~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~27_combout\ = (\F~6_combout\ & ((\F~8_combout\ & (\F~30_combout\)) # (!\F~8_combout\ & ((\B[1]~input_o\))))) # (!\F~6_combout\ & (((\F~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~30_combout\,
	datab => \F~6_combout\,
	datac => \B[1]~input_o\,
	datad => \F~8_combout\,
	combout => \F~27_combout\);

-- Location: IOIBUF_X0_Y21_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y20_N16
\comb_4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|LessThan0~1_combout\ = (\comb_4|LessThan0~0_combout\ & ((\B[2]~input_o\) # (!\A[6]~input_o\))) # (!\comb_4|LessThan0~0_combout\ & (\B[2]~input_o\ & !\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|LessThan0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[6]~input_o\,
	combout => \comb_4|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y20_N10
\comb_4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|LessThan0~2_combout\ = (\B[3]~input_o\ & ((\comb_4|LessThan0~1_combout\) # (!\A[7]~input_o\))) # (!\B[3]~input_o\ & (!\A[7]~input_o\ & \comb_4|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[7]~input_o\,
	datad => \comb_4|LessThan0~1_combout\,
	combout => \comb_4|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y18_N8
\F~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~9_combout\ = (\M[2]~input_o\) # ((\M[1]~input_o\ & (\M[0]~input_o\)) # (!\M[1]~input_o\ & ((\comb_4|LessThan0~2_combout\) # (!\M[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[1]~input_o\,
	datab => \M[2]~input_o\,
	datac => \M[0]~input_o\,
	datad => \comb_4|LessThan0~2_combout\,
	combout => \F~9_combout\);

-- Location: LCCOMB_X1_Y18_N18
\F~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~28_combout\ = (\F~9_combout\ & (\F~27_combout\ & ((\A[5]~input_o\) # (\F~8_combout\)))) # (!\F~9_combout\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \F~27_combout\,
	datac => \F~9_combout\,
	datad => \F~8_combout\,
	combout => \F~28_combout\);

-- Location: IOIBUF_X0_Y16_N15
\M[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(1),
	o => \M[1]~input_o\);

-- Location: LCCOMB_X1_Y18_N2
\comb_3|FA2|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA2|co~0_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\) # ((\B[0]~input_o\ & \A[4]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[4]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \comb_3|FA2|co~0_combout\);

-- Location: LCCOMB_X1_Y20_N6
\F~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~26_combout\ = \B[2]~input_o\ $ (((!\M[0]~input_o\ & (!\M[1]~input_o\ & \comb_3|FA2|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \M[1]~input_o\,
	datad => \comb_3|FA2|co~0_combout\,
	combout => \F~26_combout\);

-- Location: LCCOMB_X1_Y17_N2
\F~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~10_combout\ = (\F~7_combout\ & (\F~6_combout\)) # (!\F~7_combout\ & ((\F~6_combout\ & (\A[6]~input_o\ & \F~26_combout\)) # (!\F~6_combout\ & (\A[6]~input_o\ $ (\F~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~7_combout\,
	datab => \F~6_combout\,
	datac => \A[6]~input_o\,
	datad => \F~26_combout\,
	combout => \F~10_combout\);

-- Location: LCCOMB_X1_Y20_N4
\F~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~12_combout\ = (\A[6]~input_o\) # ((\M[2]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \M[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \F~12_combout\);

-- Location: LCCOMB_X1_Y20_N30
\F~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~13_combout\ = (\F~11_combout\ & ((\F~12_combout\ $ (!\M[2]~input_o\)))) # (!\F~11_combout\ & ((\M[2]~input_o\ & (\A[7]~input_o\)) # (!\M[2]~input_o\ & ((\F~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~11_combout\,
	datab => \A[7]~input_o\,
	datac => \F~12_combout\,
	datad => \M[2]~input_o\,
	combout => \F~13_combout\);

-- Location: LCCOMB_X1_Y17_N12
\F~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~14_combout\ = (\F~7_combout\ & ((\F~10_combout\ & ((\F~13_combout\))) # (!\F~10_combout\ & (\A[5]~input_o\)))) # (!\F~7_combout\ & (\F~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~7_combout\,
	datab => \F~10_combout\,
	datac => \A[5]~input_o\,
	datad => \F~13_combout\,
	combout => \F~14_combout\);

-- Location: LCCOMB_X1_Y17_N14
\F~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~15_combout\ = (\F~9_combout\ & (\F~14_combout\)) # (!\F~9_combout\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~14_combout\,
	datac => \A[6]~input_o\,
	datad => \F~9_combout\,
	combout => \F~15_combout\);

-- Location: LCCOMB_X1_Y20_N14
\comb_3|FA3|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA3|co~0_combout\ = (\B[2]~input_o\ & ((\A[6]~input_o\) # (\comb_3|FA2|co~0_combout\))) # (!\B[2]~input_o\ & (\A[6]~input_o\ & \comb_3|FA2|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[6]~input_o\,
	datad => \comb_3|FA2|co~0_combout\,
	combout => \comb_3|FA3|co~0_combout\);

-- Location: LCCOMB_X1_Y20_N12
\comb_3|FA4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|FA4|s~0_combout\ = \B[3]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[7]~input_o\,
	combout => \comb_3|FA4|s~0_combout\);

-- Location: LCCOMB_X1_Y20_N24
\F~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~18_combout\ = (\M[2]~input_o\ & (\A[6]~input_o\)) # (!\M[2]~input_o\ & ((\comb_3|FA3|co~0_combout\ $ (\comb_3|FA4|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \comb_3|FA3|co~0_combout\,
	datac => \M[2]~input_o\,
	datad => \comb_3|FA4|s~0_combout\,
	combout => \F~18_combout\);

-- Location: LCCOMB_X1_Y20_N2
\F~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~17_combout\ = (\A[7]~input_o\ & ((\B[3]~input_o\) # (!\M[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[7]~input_o\,
	datac => \M[2]~input_o\,
	combout => \F~17_combout\);

-- Location: LCCOMB_X1_Y20_N26
\F~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~19_combout\ = (\M[0]~input_o\ & (((\M[1]~input_o\)))) # (!\M[0]~input_o\ & ((\M[1]~input_o\ & ((\F~17_combout\))) # (!\M[1]~input_o\ & (\F~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \F~18_combout\,
	datac => \M[1]~input_o\,
	datad => \F~17_combout\,
	combout => \F~19_combout\);

-- Location: LCCOMB_X1_Y18_N6
\comb_4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|Add0~0_combout\ = (\A[6]~input_o\) # ((\A[4]~input_o\) # (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \comb_4|Add0~0_combout\);

-- Location: LCCOMB_X1_Y20_N20
\F~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~20_combout\ = (\M[2]~input_o\ & ((\B[3]~input_o\) # ((\A[7]~input_o\)))) # (!\M[2]~input_o\ & ((\A[7]~input_o\ $ (!\comb_4|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[7]~input_o\,
	datac => \M[2]~input_o\,
	datad => \comb_4|Add0~0_combout\,
	combout => \F~20_combout\);

-- Location: LCCOMB_X1_Y20_N0
\F~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~16_combout\ = (!\M[2]~input_o\ & (\A[7]~input_o\ $ (((\comb_4|LessThan0~2_combout\ & \comb_4|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|LessThan0~2_combout\,
	datab => \A[7]~input_o\,
	datac => \M[2]~input_o\,
	datad => \comb_4|Add0~0_combout\,
	combout => \F~16_combout\);

-- Location: LCCOMB_X1_Y20_N22
\F~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~21_combout\ = (\F~19_combout\ & ((\F~20_combout\) # ((!\M[0]~input_o\)))) # (!\F~19_combout\ & (((\M[0]~input_o\ & \F~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~19_combout\,
	datab => \F~20_combout\,
	datac => \M[0]~input_o\,
	datad => \F~16_combout\,
	combout => \F~21_combout\);

-- Location: LCCOMB_X1_Y20_N8
\F~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~22_combout\ = (\M[0]~input_o\ & (\comb_4|LessThan0~2_combout\ & ((\A[7]~input_o\) # (\comb_4|Add0~0_combout\)))) # (!\M[0]~input_o\ & (((\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|LessThan0~2_combout\,
	datab => \A[7]~input_o\,
	datac => \M[0]~input_o\,
	datad => \comb_4|Add0~0_combout\,
	combout => \F~22_combout\);

-- Location: LCCOMB_X1_Y20_N18
\F~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~23_combout\ = (\B[3]~input_o\ & ((\comb_3|FA3|co~0_combout\) # (\F~22_combout\))) # (!\B[3]~input_o\ & (\comb_3|FA3|co~0_combout\ & \F~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \comb_3|FA3|co~0_combout\,
	datac => \F~22_combout\,
	combout => \F~23_combout\);

-- Location: LCCOMB_X1_Y20_N28
\F~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~24_combout\ = (\M[0]~input_o\ & (!\M[2]~input_o\ & (\F~22_combout\))) # (!\M[0]~input_o\ & ((\M[2]~input_o\ & (\F~22_combout\)) # (!\M[2]~input_o\ & ((\F~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \M[2]~input_o\,
	datac => \F~22_combout\,
	datad => \F~23_combout\,
	combout => \F~24_combout\);

-- Location: LCCOMB_X1_Y17_N24
\F~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~25_combout\ = (!\M[1]~input_o\ & \F~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[1]~input_o\,
	datad => \F~24_combout\,
	combout => \F~25_combout\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(7) <= \F[7]~output_o\;
END structure;


