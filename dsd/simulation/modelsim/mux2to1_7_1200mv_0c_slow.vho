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

-- DATE "09/26/2017 23:52:56"

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

ENTITY 	mux5to1 IS
    PORT (
	SW_port_expr0 : IN std_logic_vector(17 DOWNTO 15);
	SW_port_expr1 : IN std_logic_vector(2 DOWNTO 0);
	SW_port_expr2 : IN std_logic_vector(5 DOWNTO 3);
	SW_port_expr3 : IN std_logic_vector(8 DOWNTO 6);
	SW_port_expr4 : IN std_logic_vector(11 DOWNTO 9);
	SW_port_expr5 : IN std_logic_vector(14 DOWNTO 12);
	M : OUT std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END mux5to1;

-- Design Ports Information
-- M[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr5[12]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr3[6]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr0[16]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr2[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr0[15]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr1[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr4[9]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr0[17]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr1[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr1[2]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr2[4]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr2[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr3[7]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr3[8]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr4[10]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr4[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr5[13]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_port_expr5[14]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux5to1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW_port_expr0 : std_logic_vector(17 DOWNTO 15);
SIGNAL ww_SW_port_expr1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW_port_expr2 : std_logic_vector(5 DOWNTO 3);
SIGNAL ww_SW_port_expr3 : std_logic_vector(8 DOWNTO 6);
SIGNAL ww_SW_port_expr4 : std_logic_vector(11 DOWNTO 9);
SIGNAL ww_SW_port_expr5 : std_logic_vector(14 DOWNTO 12);
SIGNAL ww_M : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \SW_port_expr0[17]~input_o\ : std_logic;
SIGNAL \SW_port_expr5[12]~input_o\ : std_logic;
SIGNAL \SW_port_expr3[6]~input_o\ : std_logic;
SIGNAL \SW_port_expr0[16]~input_o\ : std_logic;
SIGNAL \SW_port_expr1[0]~input_o\ : std_logic;
SIGNAL \SW_port_expr0[15]~input_o\ : std_logic;
SIGNAL \m2|m~0_combout\ : std_logic;
SIGNAL \m2|m~1_combout\ : std_logic;
SIGNAL \m|m~0_combout\ : std_logic;
SIGNAL \SW_port_expr1[1]~input_o\ : std_logic;
SIGNAL \SW_port_expr1[2]~input_o\ : std_logic;
SIGNAL \SW_port_expr2[3]~input_o\ : std_logic;
SIGNAL \SW_port_expr2[4]~input_o\ : std_logic;
SIGNAL \SW_port_expr2[5]~input_o\ : std_logic;
SIGNAL \SW_port_expr3[7]~input_o\ : std_logic;
SIGNAL \SW_port_expr3[8]~input_o\ : std_logic;
SIGNAL \SW_port_expr4[9]~input_o\ : std_logic;
SIGNAL \SW_port_expr4[10]~input_o\ : std_logic;
SIGNAL \SW_port_expr4[11]~input_o\ : std_logic;
SIGNAL \SW_port_expr5[13]~input_o\ : std_logic;
SIGNAL \SW_port_expr5[14]~input_o\ : std_logic;

BEGIN

ww_SW_port_expr0 <= SW_port_expr0;
ww_SW_port_expr1 <= SW_port_expr1;
ww_SW_port_expr2 <= SW_port_expr2;
ww_SW_port_expr3 <= SW_port_expr3;
ww_SW_port_expr4 <= SW_port_expr4;
ww_SW_port_expr5 <= SW_port_expr5;
M <= ww_M;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y66_N16
\M[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m|m~0_combout\,
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\M[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\M[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr1[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr1[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr1[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr2[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr2[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr2[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr3[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr3[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr3[8]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr4[9]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr4[10]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr4[11]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr5[12]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr5[13]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr5[14]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr0[15]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr0[16]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW_port_expr0[17]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y68_N15
\SW_port_expr0[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr0(17),
	o => \SW_port_expr0[17]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\SW_port_expr5[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr5(12),
	o => \SW_port_expr5[12]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\SW_port_expr3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr3(6),
	o => \SW_port_expr3[6]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\SW_port_expr0[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr0(16),
	o => \SW_port_expr0[16]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\SW_port_expr1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr1(0),
	o => \SW_port_expr1[0]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\SW_port_expr0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr0(15),
	o => \SW_port_expr0[15]~input_o\);

-- Location: LCCOMB_X1_Y64_N0
\m2|m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|m~0_combout\ = (\SW_port_expr0[16]~input_o\ & (((\SW_port_expr0[15]~input_o\)))) # (!\SW_port_expr0[16]~input_o\ & ((\SW_port_expr0[15]~input_o\ & (\SW_port_expr2[3]~input_o\)) # (!\SW_port_expr0[15]~input_o\ & ((\SW_port_expr1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_port_expr2[3]~input_o\,
	datab => \SW_port_expr1[0]~input_o\,
	datac => \SW_port_expr0[16]~input_o\,
	datad => \SW_port_expr0[15]~input_o\,
	combout => \m2|m~0_combout\);

-- Location: LCCOMB_X1_Y64_N2
\m2|m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|m~1_combout\ = (\SW_port_expr0[16]~input_o\ & ((\m2|m~0_combout\ & (\SW_port_expr4[9]~input_o\)) # (!\m2|m~0_combout\ & ((\SW_port_expr3[6]~input_o\))))) # (!\SW_port_expr0[16]~input_o\ & (((\m2|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_port_expr4[9]~input_o\,
	datab => \SW_port_expr3[6]~input_o\,
	datac => \SW_port_expr0[16]~input_o\,
	datad => \m2|m~0_combout\,
	combout => \m2|m~1_combout\);

-- Location: LCCOMB_X1_Y64_N28
\m|m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m|m~0_combout\ = (\SW_port_expr0[17]~input_o\ & (\SW_port_expr5[12]~input_o\)) # (!\SW_port_expr0[17]~input_o\ & ((\m2|m~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_port_expr0[17]~input_o\,
	datab => \SW_port_expr5[12]~input_o\,
	datad => \m2|m~1_combout\,
	combout => \m|m~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\SW_port_expr1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr1(1),
	o => \SW_port_expr1[1]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\SW_port_expr1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr1(2),
	o => \SW_port_expr1[2]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\SW_port_expr2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr2(3),
	o => \SW_port_expr2[3]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\SW_port_expr2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr2(4),
	o => \SW_port_expr2[4]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\SW_port_expr2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr2(5),
	o => \SW_port_expr2[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\SW_port_expr3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr3(7),
	o => \SW_port_expr3[7]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\SW_port_expr3[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr3(8),
	o => \SW_port_expr3[8]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\SW_port_expr4[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr4(9),
	o => \SW_port_expr4[9]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\SW_port_expr4[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr4(10),
	o => \SW_port_expr4[10]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\SW_port_expr4[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr4(11),
	o => \SW_port_expr4[11]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\SW_port_expr5[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr5(13),
	o => \SW_port_expr5[13]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\SW_port_expr5[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_port_expr5(14),
	o => \SW_port_expr5[14]~input_o\);

ww_M(0) <= \M[0]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


