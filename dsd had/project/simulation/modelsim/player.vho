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

-- DATE "12/19/2017 17:39:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	player IS
    PORT (
	move : IN std_logic;
	reset : IN std_logic;
	player : OUT std_logic_vector(6 DOWNTO 0)
	);
END player;

-- Design Ports Information
-- player[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- move	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF player IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_move : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_player : std_logic_vector(6 DOWNTO 0);
SIGNAL \player[0]~output_o\ : std_logic;
SIGNAL \player[1]~output_o\ : std_logic;
SIGNAL \player[2]~output_o\ : std_logic;
SIGNAL \player[3]~output_o\ : std_logic;
SIGNAL \player[4]~output_o\ : std_logic;
SIGNAL \player[5]~output_o\ : std_logic;
SIGNAL \player[6]~output_o\ : std_logic;
SIGNAL \move~input_o\ : std_logic;
SIGNAL \player[1]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \player[1]~reg0_q\ : std_logic;
SIGNAL \player[2]~reg0feeder_combout\ : std_logic;
SIGNAL \player[2]~reg0_q\ : std_logic;
SIGNAL \player[3]~reg0feeder_combout\ : std_logic;
SIGNAL \player[3]~reg0_q\ : std_logic;
SIGNAL \player[4]~reg0feeder_combout\ : std_logic;
SIGNAL \player[4]~reg0_q\ : std_logic;
SIGNAL \player[5]~reg0feeder_combout\ : std_logic;
SIGNAL \player[5]~reg0_q\ : std_logic;
SIGNAL \player[6]~reg0feeder_combout\ : std_logic;
SIGNAL \player[6]~reg0_q\ : std_logic;
SIGNAL \player[0]~0_combout\ : std_logic;
SIGNAL \player[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_player[0]~reg0_q\ : std_logic;

BEGIN

ww_move <= move;
ww_reset <= reset;
player <= ww_player;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_player[0]~reg0_q\ <= NOT \player[0]~reg0_q\;

-- Location: IOOBUF_X69_Y73_N16
\player[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_player[0]~reg0_q\,
	devoe => ww_devoe,
	o => \player[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\player[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \player[1]~reg0_q\,
	devoe => ww_devoe,
	o => \player[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\player[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \player[2]~reg0_q\,
	devoe => ww_devoe,
	o => \player[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\player[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \player[3]~reg0_q\,
	devoe => ww_devoe,
	o => \player[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\player[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \player[4]~reg0_q\,
	devoe => ww_devoe,
	o => \player[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\player[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \player[5]~reg0_q\,
	devoe => ww_devoe,
	o => \player[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\player[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \player[6]~reg0_q\,
	devoe => ww_devoe,
	o => \player[6]~output_o\);

-- Location: IOIBUF_X115_Y53_N15
\move~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_move,
	o => \move~input_o\);

-- Location: LCCOMB_X114_Y53_N18
\player[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \player[1]~1_combout\ = !\player[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player[0]~reg0_q\,
	combout => \player[1]~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X114_Y53_N19
\player[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move~input_o\,
	d => \player[1]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player[1]~reg0_q\);

-- Location: LCCOMB_X114_Y53_N24
\player[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \player[2]~reg0feeder_combout\ = \player[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player[1]~reg0_q\,
	combout => \player[2]~reg0feeder_combout\);

-- Location: FF_X114_Y53_N25
\player[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move~input_o\,
	d => \player[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player[2]~reg0_q\);

-- Location: LCCOMB_X114_Y53_N2
\player[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \player[3]~reg0feeder_combout\ = \player[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player[2]~reg0_q\,
	combout => \player[3]~reg0feeder_combout\);

-- Location: FF_X114_Y53_N3
\player[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move~input_o\,
	d => \player[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player[3]~reg0_q\);

-- Location: LCCOMB_X114_Y53_N12
\player[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \player[4]~reg0feeder_combout\ = \player[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player[3]~reg0_q\,
	combout => \player[4]~reg0feeder_combout\);

-- Location: FF_X114_Y53_N13
\player[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move~input_o\,
	d => \player[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player[4]~reg0_q\);

-- Location: LCCOMB_X114_Y53_N6
\player[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \player[5]~reg0feeder_combout\ = \player[4]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player[4]~reg0_q\,
	combout => \player[5]~reg0feeder_combout\);

-- Location: FF_X114_Y53_N7
\player[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move~input_o\,
	d => \player[5]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player[5]~reg0_q\);

-- Location: LCCOMB_X114_Y53_N16
\player[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \player[6]~reg0feeder_combout\ = \player[5]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player[5]~reg0_q\,
	combout => \player[6]~reg0feeder_combout\);

-- Location: FF_X114_Y53_N17
\player[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move~input_o\,
	d => \player[6]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player[6]~reg0_q\);

-- Location: LCCOMB_X114_Y53_N28
\player[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \player[0]~0_combout\ = !\player[6]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player[6]~reg0_q\,
	combout => \player[0]~0_combout\);

-- Location: FF_X114_Y53_N29
\player[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move~input_o\,
	d => \player[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player[0]~reg0_q\);

ww_player(0) <= \player[0]~output_o\;

ww_player(1) <= \player[1]~output_o\;

ww_player(2) <= \player[2]~output_o\;

ww_player(3) <= \player[3]~output_o\;

ww_player(4) <= \player[4]~output_o\;

ww_player(5) <= \player[5]~output_o\;

ww_player(6) <= \player[6]~output_o\;
END structure;


