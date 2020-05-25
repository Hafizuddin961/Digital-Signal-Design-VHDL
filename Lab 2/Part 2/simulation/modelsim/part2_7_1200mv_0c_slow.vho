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

-- DATE "10/07/2017 19:56:17"

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

ENTITY 	part2 IS
    PORT (
	v : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END part2;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_v : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL HEX0_a0_a_aoutput_o : std_logic;
SIGNAL HEX0_a1_a_aoutput_o : std_logic;
SIGNAL HEX0_a2_a_aoutput_o : std_logic;
SIGNAL HEX0_a3_a_aoutput_o : std_logic;
SIGNAL HEX0_a4_a_aoutput_o : std_logic;
SIGNAL HEX0_a5_a_aoutput_o : std_logic;
SIGNAL HEX0_a6_a_aoutput_o : std_logic;
SIGNAL HEX1_a0_a_aoutput_o : std_logic;
SIGNAL HEX1_a1_a_aoutput_o : std_logic;
SIGNAL HEX1_a2_a_aoutput_o : std_logic;
SIGNAL HEX1_a3_a_aoutput_o : std_logic;
SIGNAL HEX1_a4_a_aoutput_o : std_logic;
SIGNAL HEX1_a5_a_aoutput_o : std_logic;
SIGNAL HEX1_a6_a_aoutput_o : std_logic;
SIGNAL v_a3_a_ainput_o : std_logic;
SIGNAL v_a2_a_ainput_o : std_logic;
SIGNAL v_a0_a_ainput_o : std_logic;
SIGNAL v_a1_a_ainput_o : std_logic;
SIGNAL comb_7_aHEX0_a0_a_a0_combout : std_logic;
SIGNAL comb_7_aHEX0_a1_a_a1_combout : std_logic;
SIGNAL comb_7_aHEX0_a2_a_a2_combout : std_logic;
SIGNAL comb_7_aHEX0_a3_a_a3_combout : std_logic;
SIGNAL comb_7_aHEX0_a4_a_a4_combout : std_logic;
SIGNAL comb_7_aHEX0_a5_a_a5_combout : std_logic;
SIGNAL comb_7_aHEX0_a6_a_a6_combout : std_logic;
SIGNAL comb_3_aWideOr0_a0_combout : std_logic;
SIGNAL ALT_INV_comb_3_aWideOr0_a0_combout : std_logic;
SIGNAL HEX0_a0_a_aoutput_I_driver : std_logic;
SIGNAL HEX0_a1_a_aoutput_I_driver : std_logic;
SIGNAL HEX0_a2_a_aoutput_I_driver : std_logic;
SIGNAL HEX0_a3_a_aoutput_I_driver : std_logic;
SIGNAL HEX0_a4_a_aoutput_I_driver : std_logic;
SIGNAL HEX0_a5_a_aoutput_I_driver : std_logic;
SIGNAL HEX0_a6_a_aoutput_I_driver : std_logic;
SIGNAL HEX1_a0_a_aoutput_I_driver : std_logic;
SIGNAL HEX1_a3_a_aoutput_I_driver : std_logic;
SIGNAL HEX1_a4_a_aoutput_I_driver : std_logic;
SIGNAL HEX1_a5_a_aoutput_I_driver : std_logic;
SIGNAL v_a3_a_ainput_I_driver : std_logic;
SIGNAL v_a2_a_ainput_I_driver : std_logic;
SIGNAL v_a0_a_ainput_I_driver : std_logic;
SIGNAL v_a1_a_ainput_I_driver : std_logic;
SIGNAL comb_7_aHEX0_a0_a_a0_DATAA_driver : std_logic;
SIGNAL comb_7_aHEX0_a0_a_a0_DATAB_driver : std_logic;
SIGNAL comb_7_aHEX0_a0_a_a0_DATAC_driver : std_logic;
SIGNAL comb_7_aHEX0_a0_a_a0_DATAD_driver : std_logic;
SIGNAL comb_7_aHEX0_a1_a_a1_DATAA_driver : std_logic;
SIGNAL comb_7_aHEX0_a1_a_a1_DATAB_driver : std_logic;
SIGNAL comb_7_aHEX0_a1_a_a1_DATAC_driver : std_logic;
SIGNAL comb_7_aHEX0_a1_a_a1_DATAD_driver : std_logic;
SIGNAL comb_7_aHEX0_a2_a_a2_DATAA_driver : std_logic;
SIGNAL comb_7_aHEX0_a2_a_a2_DATAB_driver : std_logic;
SIGNAL comb_7_aHEX0_a2_a_a2_DATAC_driver : std_logic;
SIGNAL comb_7_aHEX0_a2_a_a2_DATAD_driver : std_logic;
SIGNAL comb_7_aHEX0_a3_a_a3_DATAA_driver : std_logic;
SIGNAL comb_7_aHEX0_a3_a_a3_DATAB_driver : std_logic;
SIGNAL comb_7_aHEX0_a3_a_a3_DATAC_driver : std_logic;
SIGNAL comb_7_aHEX0_a3_a_a3_DATAD_driver : std_logic;
SIGNAL comb_7_aHEX0_a4_a_a4_DATAA_driver : std_logic;
SIGNAL comb_7_aHEX0_a4_a_a4_DATAB_driver : std_logic;
SIGNAL comb_7_aHEX0_a4_a_a4_DATAC_driver : std_logic;
SIGNAL comb_7_aHEX0_a4_a_a4_DATAD_driver : std_logic;
SIGNAL comb_7_aHEX0_a5_a_a5_DATAA_driver : std_logic;
SIGNAL comb_7_aHEX0_a5_a_a5_DATAB_driver : std_logic;
SIGNAL comb_7_aHEX0_a5_a_a5_DATAC_driver : std_logic;
SIGNAL comb_7_aHEX0_a5_a_a5_DATAD_driver : std_logic;
SIGNAL comb_7_aHEX0_a6_a_a6_DATAA_driver : std_logic;
SIGNAL comb_7_aHEX0_a6_a_a6_DATAB_driver : std_logic;
SIGNAL comb_7_aHEX0_a6_a_a6_DATAC_driver : std_logic;
SIGNAL comb_7_aHEX0_a6_a_a6_DATAD_driver : std_logic;
SIGNAL comb_3_aWideOr0_a0_DATAA_driver : std_logic;
SIGNAL comb_3_aWideOr0_a0_DATAB_driver : std_logic;
SIGNAL comb_3_aWideOr0_a0_DATAD_driver : std_logic;

BEGIN

ww_v <= v;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_comb_3_aWideOr0_a0_combout <= NOT comb_3_aWideOr0_a0_combout;

HEX0_a0_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => comb_7_aHEX0_a0_a_a0_combout,
	dataout => HEX0_a0_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y11_N23
HEX0_a0_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_a0_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX0_a0_a_aoutput_o);

HEX0_a1_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => comb_7_aHEX0_a1_a_a1_combout,
	dataout => HEX0_a1_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y4_N9
HEX0_a1_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_a1_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX0_a1_a_aoutput_o);

HEX0_a2_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => comb_7_aHEX0_a2_a_a2_combout,
	dataout => HEX0_a2_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y14_N2
HEX0_a2_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_a2_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX0_a2_a_aoutput_o);

HEX0_a3_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => comb_7_aHEX0_a3_a_a3_combout,
	dataout => HEX0_a3_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y16_N23
HEX0_a3_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_a3_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX0_a3_a_aoutput_o);

HEX0_a4_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => comb_7_aHEX0_a4_a_a4_combout,
	dataout => HEX0_a4_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y13_N9
HEX0_a4_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_a4_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX0_a4_a_aoutput_o);

HEX0_a5_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => comb_7_aHEX0_a5_a_a5_combout,
	dataout => HEX0_a5_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y13_N2
HEX0_a5_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_a5_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX0_a5_a_aoutput_o);

HEX0_a6_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => comb_7_aHEX0_a6_a_a6_combout,
	dataout => HEX0_a6_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y16_N16
HEX0_a6_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_a6_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX0_a6_a_aoutput_o);

HEX1_a0_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_comb_3_aWideOr0_a0_combout,
	dataout => HEX1_a0_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y11_N16
HEX1_a0_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX1_a0_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX1_a0_a_aoutput_o);

-- Location: IOOBUF_X89_Y0_N23
HEX1_a1_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => HEX1_a1_a_aoutput_o);

-- Location: IOOBUF_X67_Y73_N2
HEX1_a2_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => HEX1_a2_a_aoutput_o);

HEX1_a3_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_comb_3_aWideOr0_a0_combout,
	dataout => HEX1_a3_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y10_N23
HEX1_a3_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX1_a3_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX1_a3_a_aoutput_o);

HEX1_a4_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_comb_3_aWideOr0_a0_combout,
	dataout => HEX1_a4_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y12_N16
HEX1_a4_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX1_a4_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX1_a4_a_aoutput_o);

HEX1_a5_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_comb_3_aWideOr0_a0_combout,
	dataout => HEX1_a5_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y10_N16
HEX1_a5_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => HEX1_a5_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => HEX1_a5_a_aoutput_o);

-- Location: IOOBUF_X115_Y51_N9
HEX1_a6_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HEX1_a6_a_aoutput_o);

v_a3_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_v(3),
	dataout => v_a3_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y14_N8
v_a3_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => v_a3_a_ainput_I_driver,
	o => v_a3_a_ainput_o);

v_a2_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_v(2),
	dataout => v_a2_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y15_N15
v_a2_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => v_a2_a_ainput_I_driver,
	o => v_a2_a_ainput_o);

v_a0_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_v(0),
	dataout => v_a0_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y12_N22
v_a0_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => v_a0_a_ainput_I_driver,
	o => v_a0_a_ainput_o);

v_a1_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_v(1),
	dataout => v_a1_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y15_N22
v_a1_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => v_a1_a_ainput_I_driver,
	o => v_a1_a_ainput_o);

comb_7_aHEX0_a0_a_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a3_a_ainput_o,
	dataout => comb_7_aHEX0_a0_a_a0_DATAA_driver);

comb_7_aHEX0_a0_a_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a2_a_ainput_o,
	dataout => comb_7_aHEX0_a0_a_a0_DATAB_driver);

comb_7_aHEX0_a0_a_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a0_a_ainput_o,
	dataout => comb_7_aHEX0_a0_a_a0_DATAC_driver);

comb_7_aHEX0_a0_a_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a1_a_ainput_o,
	dataout => comb_7_aHEX0_a0_a_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N24
comb_7_aHEX0_a0_a_a0 : cycloneive_lcell_comb
-- Equation(s):
-- comb_7_aHEX0_a0_a_a0_combout = (v_a3_a_ainput_o & (v_a1_a_ainput_o & (v_a2_a_ainput_o $ (v_a0_a_ainput_o)))) # (!v_a3_a_ainput_o & (!v_a1_a_ainput_o & (v_a2_a_ainput_o $ (v_a0_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => comb_7_aHEX0_a0_a_a0_DATAA_driver,
	datab => comb_7_aHEX0_a0_a_a0_DATAB_driver,
	datac => comb_7_aHEX0_a0_a_a0_DATAC_driver,
	datad => comb_7_aHEX0_a0_a_a0_DATAD_driver,
	combout => comb_7_aHEX0_a0_a_a0_combout);

comb_7_aHEX0_a1_a_a1_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a3_a_ainput_o,
	dataout => comb_7_aHEX0_a1_a_a1_DATAA_driver);

comb_7_aHEX0_a1_a_a1_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a2_a_ainput_o,
	dataout => comb_7_aHEX0_a1_a_a1_DATAB_driver);

comb_7_aHEX0_a1_a_a1_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a0_a_ainput_o,
	dataout => comb_7_aHEX0_a1_a_a1_DATAC_driver);

comb_7_aHEX0_a1_a_a1_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a1_a_ainput_o,
	dataout => comb_7_aHEX0_a1_a_a1_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N10
comb_7_aHEX0_a1_a_a1 : cycloneive_lcell_comb
-- Equation(s):
-- comb_7_aHEX0_a1_a_a1_combout = (v_a2_a_ainput_o & ((v_a3_a_ainput_o & (v_a0_a_ainput_o & v_a1_a_ainput_o)) # (!v_a3_a_ainput_o & (v_a0_a_ainput_o $ (v_a1_a_ainput_o)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => comb_7_aHEX0_a1_a_a1_DATAA_driver,
	datab => comb_7_aHEX0_a1_a_a1_DATAB_driver,
	datac => comb_7_aHEX0_a1_a_a1_DATAC_driver,
	datad => comb_7_aHEX0_a1_a_a1_DATAD_driver,
	combout => comb_7_aHEX0_a1_a_a1_combout);

comb_7_aHEX0_a2_a_a2_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a3_a_ainput_o,
	dataout => comb_7_aHEX0_a2_a_a2_DATAA_driver);

comb_7_aHEX0_a2_a_a2_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a2_a_ainput_o,
	dataout => comb_7_aHEX0_a2_a_a2_DATAB_driver);

comb_7_aHEX0_a2_a_a2_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a0_a_ainput_o,
	dataout => comb_7_aHEX0_a2_a_a2_DATAC_driver);

comb_7_aHEX0_a2_a_a2_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a1_a_ainput_o,
	dataout => comb_7_aHEX0_a2_a_a2_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N28
comb_7_aHEX0_a2_a_a2 : cycloneive_lcell_comb
-- Equation(s):
-- comb_7_aHEX0_a2_a_a2_combout = (!v_a0_a_ainput_o & ((v_a3_a_ainput_o & (v_a2_a_ainput_o & !v_a1_a_ainput_o)) # (!v_a3_a_ainput_o & (!v_a2_a_ainput_o & v_a1_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => comb_7_aHEX0_a2_a_a2_DATAA_driver,
	datab => comb_7_aHEX0_a2_a_a2_DATAB_driver,
	datac => comb_7_aHEX0_a2_a_a2_DATAC_driver,
	datad => comb_7_aHEX0_a2_a_a2_DATAD_driver,
	combout => comb_7_aHEX0_a2_a_a2_combout);

comb_7_aHEX0_a3_a_a3_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a3_a_ainput_o,
	dataout => comb_7_aHEX0_a3_a_a3_DATAA_driver);

comb_7_aHEX0_a3_a_a3_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a2_a_ainput_o,
	dataout => comb_7_aHEX0_a3_a_a3_DATAB_driver);

comb_7_aHEX0_a3_a_a3_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a0_a_ainput_o,
	dataout => comb_7_aHEX0_a3_a_a3_DATAC_driver);

comb_7_aHEX0_a3_a_a3_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a1_a_ainput_o,
	dataout => comb_7_aHEX0_a3_a_a3_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N14
comb_7_aHEX0_a3_a_a3 : cycloneive_lcell_comb
-- Equation(s):
-- comb_7_aHEX0_a3_a_a3_combout = (v_a0_a_ainput_o & (v_a2_a_ainput_o $ (((v_a1_a_ainput_o) # (!v_a3_a_ainput_o))))) # (!v_a0_a_ainput_o & (v_a2_a_ainput_o & (v_a3_a_ainput_o $ (!v_a1_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => comb_7_aHEX0_a3_a_a3_DATAA_driver,
	datab => comb_7_aHEX0_a3_a_a3_DATAB_driver,
	datac => comb_7_aHEX0_a3_a_a3_DATAC_driver,
	datad => comb_7_aHEX0_a3_a_a3_DATAD_driver,
	combout => comb_7_aHEX0_a3_a_a3_combout);

comb_7_aHEX0_a4_a_a4_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a3_a_ainput_o,
	dataout => comb_7_aHEX0_a4_a_a4_DATAA_driver);

comb_7_aHEX0_a4_a_a4_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a2_a_ainput_o,
	dataout => comb_7_aHEX0_a4_a_a4_DATAB_driver);

comb_7_aHEX0_a4_a_a4_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a0_a_ainput_o,
	dataout => comb_7_aHEX0_a4_a_a4_DATAC_driver);

comb_7_aHEX0_a4_a_a4_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a1_a_ainput_o,
	dataout => comb_7_aHEX0_a4_a_a4_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N16
comb_7_aHEX0_a4_a_a4 : cycloneive_lcell_comb
-- Equation(s):
-- comb_7_aHEX0_a4_a_a4_combout = (v_a0_a_ainput_o) # ((v_a2_a_ainput_o & (v_a3_a_ainput_o $ (!v_a1_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => comb_7_aHEX0_a4_a_a4_DATAA_driver,
	datab => comb_7_aHEX0_a4_a_a4_DATAB_driver,
	datac => comb_7_aHEX0_a4_a_a4_DATAC_driver,
	datad => comb_7_aHEX0_a4_a_a4_DATAD_driver,
	combout => comb_7_aHEX0_a4_a_a4_combout);

comb_7_aHEX0_a5_a_a5_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a3_a_ainput_o,
	dataout => comb_7_aHEX0_a5_a_a5_DATAA_driver);

comb_7_aHEX0_a5_a_a5_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a2_a_ainput_o,
	dataout => comb_7_aHEX0_a5_a_a5_DATAB_driver);

comb_7_aHEX0_a5_a_a5_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a0_a_ainput_o,
	dataout => comb_7_aHEX0_a5_a_a5_DATAC_driver);

comb_7_aHEX0_a5_a_a5_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a1_a_ainput_o,
	dataout => comb_7_aHEX0_a5_a_a5_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N26
comb_7_aHEX0_a5_a_a5 : cycloneive_lcell_comb
-- Equation(s):
-- comb_7_aHEX0_a5_a_a5_combout = (v_a3_a_ainput_o & ((v_a2_a_ainput_o & (!v_a0_a_ainput_o & !v_a1_a_ainput_o)) # (!v_a2_a_ainput_o & (v_a0_a_ainput_o & v_a1_a_ainput_o)))) # (!v_a3_a_ainput_o & ((v_a2_a_ainput_o & (v_a0_a_ainput_o & v_a1_a_ainput_o)) # 
-- (!v_a2_a_ainput_o & (v_a0_a_ainput_o $ (v_a1_a_ainput_o)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => comb_7_aHEX0_a5_a_a5_DATAA_driver,
	datab => comb_7_aHEX0_a5_a_a5_DATAB_driver,
	datac => comb_7_aHEX0_a5_a_a5_DATAC_driver,
	datad => comb_7_aHEX0_a5_a_a5_DATAD_driver,
	combout => comb_7_aHEX0_a5_a_a5_combout);

comb_7_aHEX0_a6_a_a6_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a3_a_ainput_o,
	dataout => comb_7_aHEX0_a6_a_a6_DATAA_driver);

comb_7_aHEX0_a6_a_a6_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a2_a_ainput_o,
	dataout => comb_7_aHEX0_a6_a_a6_DATAB_driver);

comb_7_aHEX0_a6_a_a6_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a0_a_ainput_o,
	dataout => comb_7_aHEX0_a6_a_a6_DATAC_driver);

comb_7_aHEX0_a6_a_a6_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a1_a_ainput_o,
	dataout => comb_7_aHEX0_a6_a_a6_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N12
comb_7_aHEX0_a6_a_a6 : cycloneive_lcell_comb
-- Equation(s):
-- comb_7_aHEX0_a6_a_a6_combout = (v_a2_a_ainput_o & (!v_a3_a_ainput_o & (v_a0_a_ainput_o & v_a1_a_ainput_o))) # (!v_a2_a_ainput_o & (v_a3_a_ainput_o $ (((!v_a1_a_ainput_o)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => comb_7_aHEX0_a6_a_a6_DATAA_driver,
	datab => comb_7_aHEX0_a6_a_a6_DATAB_driver,
	datac => comb_7_aHEX0_a6_a_a6_DATAC_driver,
	datad => comb_7_aHEX0_a6_a_a6_DATAD_driver,
	combout => comb_7_aHEX0_a6_a_a6_combout);

comb_3_aWideOr0_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a3_a_ainput_o,
	dataout => comb_3_aWideOr0_a0_DATAA_driver);

comb_3_aWideOr0_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a2_a_ainput_o,
	dataout => comb_3_aWideOr0_a0_DATAB_driver);

comb_3_aWideOr0_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => v_a1_a_ainput_o,
	dataout => comb_3_aWideOr0_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N30
comb_3_aWideOr0_a0 : cycloneive_lcell_comb
-- Equation(s):
-- comb_3_aWideOr0_a0_combout = ((!v_a2_a_ainput_o & !v_a1_a_ainput_o)) # (!v_a3_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => comb_3_aWideOr0_a0_DATAA_driver,
	datab => comb_3_aWideOr0_a0_DATAB_driver,
	datad => comb_3_aWideOr0_a0_DATAD_driver,
	combout => comb_3_aWideOr0_a0_combout);

ww_HEX0(0) <= HEX0_a0_a_aoutput_o;

ww_HEX0(1) <= HEX0_a1_a_aoutput_o;

ww_HEX0(2) <= HEX0_a2_a_aoutput_o;

ww_HEX0(3) <= HEX0_a3_a_aoutput_o;

ww_HEX0(4) <= HEX0_a4_a_aoutput_o;

ww_HEX0(5) <= HEX0_a5_a_aoutput_o;

ww_HEX0(6) <= HEX0_a6_a_aoutput_o;

ww_HEX1(0) <= HEX1_a0_a_aoutput_o;

ww_HEX1(1) <= HEX1_a1_a_aoutput_o;

ww_HEX1(2) <= HEX1_a2_a_aoutput_o;

ww_HEX1(3) <= HEX1_a3_a_aoutput_o;

ww_HEX1(4) <= HEX1_a4_a_aoutput_o;

ww_HEX1(5) <= HEX1_a5_a_aoutput_o;

ww_HEX1(6) <= HEX1_a6_a_aoutput_o;
END structure;


