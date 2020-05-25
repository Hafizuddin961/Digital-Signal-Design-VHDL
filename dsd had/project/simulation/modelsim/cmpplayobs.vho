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

-- DATE "12/19/2017 17:52:19"

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

ENTITY 	cmpplayobs IS
    PORT (
	player : IN std_logic_vector(6 DOWNTO 0);
	obstacle : IN std_logic_vector(6 DOWNTO 0);
	equal : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END cmpplayobs;

-- Design Ports Information
-- player[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[0]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[4]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[6]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equal[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equal[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equal[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cmpplayobs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_player : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_obstacle : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_equal : std_logic_vector(2 DOWNTO 0);
SIGNAL \player[0]~input_o\ : std_logic;
SIGNAL \player[2]~input_o\ : std_logic;
SIGNAL \player[4]~input_o\ : std_logic;
SIGNAL \player[6]~input_o\ : std_logic;
SIGNAL \obstacle[0]~input_o\ : std_logic;
SIGNAL \obstacle[2]~input_o\ : std_logic;
SIGNAL \obstacle[4]~input_o\ : std_logic;
SIGNAL \obstacle[6]~input_o\ : std_logic;
SIGNAL \equal[0]~output_o\ : std_logic;
SIGNAL \equal[1]~output_o\ : std_logic;
SIGNAL \equal[2]~output_o\ : std_logic;
SIGNAL \player[1]~input_o\ : std_logic;
SIGNAL \obstacle[1]~input_o\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \obstacle[5]~input_o\ : std_logic;
SIGNAL \player[3]~input_o\ : std_logic;
SIGNAL \player[5]~input_o\ : std_logic;
SIGNAL \obstacle[3]~input_o\ : std_logic;
SIGNAL \equal[0]~0_combout\ : std_logic;
SIGNAL \equal[0]$latch~combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \equal[1]~1_combout\ : std_logic;
SIGNAL \equal[1]$latch~combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \equal[2]~2_combout\ : std_logic;
SIGNAL \equal[2]$latch~combout\ : std_logic;

BEGIN

ww_player <= player;
ww_obstacle <= obstacle;
equal <= ww_equal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X107_Y73_N9
\equal[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \equal[0]$latch~combout\,
	devoe => ww_devoe,
	o => \equal[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\equal[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \equal[1]$latch~combout\,
	devoe => ww_devoe,
	o => \equal[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\equal[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \equal[2]$latch~combout\,
	devoe => ww_devoe,
	o => \equal[2]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\player[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_player(1),
	o => \player[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\obstacle[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_obstacle(1),
	o => \obstacle[1]~input_o\);

-- Location: LCCOMB_X114_Y4_N20
\always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\player[1]~input_o\ & \obstacle[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player[1]~input_o\,
	datad => \obstacle[1]~input_o\,
	combout => \always0~0_combout\);

-- Location: IOIBUF_X115_Y7_N15
\obstacle[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_obstacle(5),
	o => \obstacle[5]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\player[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_player(3),
	o => \player[3]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\player[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_player(5),
	o => \player[5]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\obstacle[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_obstacle(3),
	o => \obstacle[3]~input_o\);

-- Location: LCCOMB_X114_Y4_N26
\equal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal[0]~0_combout\ = (\obstacle[5]~input_o\ & ((\player[5]~input_o\) # ((\player[3]~input_o\ & \obstacle[3]~input_o\)))) # (!\obstacle[5]~input_o\ & (\player[3]~input_o\ & ((\obstacle[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obstacle[5]~input_o\,
	datab => \player[3]~input_o\,
	datac => \player[5]~input_o\,
	datad => \obstacle[3]~input_o\,
	combout => \equal[0]~0_combout\);

-- Location: LCCOMB_X114_Y4_N12
\equal[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal[0]$latch~combout\ = (\always0~0_combout\) # ((\equal[0]~0_combout\ & \equal[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always0~0_combout\,
	datac => \equal[0]~0_combout\,
	datad => \equal[0]$latch~combout\,
	combout => \equal[0]$latch~combout\);

-- Location: LCCOMB_X114_Y4_N22
\always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\obstacle[3]~input_o\ & \player[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \obstacle[3]~input_o\,
	datac => \player[3]~input_o\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X114_Y4_N18
\equal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal[1]~1_combout\ = (!\always0~0_combout\ & (((\always0~1_combout\) # (!\player[5]~input_o\)) # (!\obstacle[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obstacle[5]~input_o\,
	datab => \player[5]~input_o\,
	datac => \always0~1_combout\,
	datad => \always0~0_combout\,
	combout => \equal[1]~1_combout\);

-- Location: LCCOMB_X114_Y4_N10
\equal[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal[1]$latch~combout\ = (\equal[1]~1_combout\ & ((\always0~1_combout\))) # (!\equal[1]~1_combout\ & (\equal[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \equal[1]$latch~combout\,
	datac => \always0~1_combout\,
	datad => \equal[1]~1_combout\,
	combout => \equal[1]$latch~combout\);

-- Location: LCCOMB_X114_Y4_N6
\always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (\player[5]~input_o\ & \obstacle[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player[5]~input_o\,
	datac => \obstacle[5]~input_o\,
	combout => \always0~2_combout\);

-- Location: LCCOMB_X114_Y4_N24
\equal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal[2]~2_combout\ = (\player[1]~input_o\ & ((\obstacle[1]~input_o\) # ((\obstacle[3]~input_o\ & \player[3]~input_o\)))) # (!\player[1]~input_o\ & (\obstacle[3]~input_o\ & (\player[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player[1]~input_o\,
	datab => \obstacle[3]~input_o\,
	datac => \player[3]~input_o\,
	datad => \obstacle[1]~input_o\,
	combout => \equal[2]~2_combout\);

-- Location: LCCOMB_X114_Y4_N8
\equal[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal[2]$latch~combout\ = (\equal[2]~2_combout\ & ((\equal[2]$latch~combout\))) # (!\equal[2]~2_combout\ & (\always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datac => \equal[2]$latch~combout\,
	datad => \equal[2]~2_combout\,
	combout => \equal[2]$latch~combout\);

-- Location: IOIBUF_X115_Y17_N1
\player[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_player(0),
	o => \player[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\player[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_player(2),
	o => \player[2]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\player[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_player(4),
	o => \player[4]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\player[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_player(6),
	o => \player[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\obstacle[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_obstacle(0),
	o => \obstacle[0]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\obstacle[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_obstacle(2),
	o => \obstacle[2]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\obstacle[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_obstacle(4),
	o => \obstacle[4]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\obstacle[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_obstacle(6),
	o => \obstacle[6]~input_o\);

ww_equal(0) <= \equal[0]~output_o\;

ww_equal(1) <= \equal[1]~output_o\;

ww_equal(2) <= \equal[2]~output_o\;
END structure;


