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

-- DATE "12/19/2017 16:37:44"

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

ENTITY 	obstacle IS
    PORT (
	Player : IN std_logic_vector(6 DOWNTO 0);
	Blink : IN std_logic;
	Reset : IN std_logic;
	obstacle : OUT std_logic_vector(6 DOWNTO 0)
	);
END obstacle;

-- Design Ports Information
-- Player[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Player[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Player[5]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Player[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Player[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Player[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Player[4]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Blink	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF obstacle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Player : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Blink : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_obstacle : std_logic_vector(6 DOWNTO 0);
SIGNAL \Blink~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Player[1]~input_o\ : std_logic;
SIGNAL \Player[3]~input_o\ : std_logic;
SIGNAL \Player[5]~input_o\ : std_logic;
SIGNAL \Player[6]~input_o\ : std_logic;
SIGNAL \obstacle[0]~output_o\ : std_logic;
SIGNAL \obstacle[1]~output_o\ : std_logic;
SIGNAL \obstacle[2]~output_o\ : std_logic;
SIGNAL \obstacle[3]~output_o\ : std_logic;
SIGNAL \obstacle[4]~output_o\ : std_logic;
SIGNAL \obstacle[5]~output_o\ : std_logic;
SIGNAL \obstacle[6]~output_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Player[2]~input_o\ : std_logic;
SIGNAL \Player[4]~input_o\ : std_logic;
SIGNAL \Player[0]~input_o\ : std_logic;
SIGNAL \obstacle[1]~1_combout\ : std_logic;
SIGNAL \Blink~input_o\ : std_logic;
SIGNAL \Blink~inputclkctrl_outclk\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|count~0_combout\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \t1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|Add0~9\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \t1|count~12_combout\ : std_logic;
SIGNAL \t1|Add0~13\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|Add0~15\ : std_logic;
SIGNAL \t1|Add0~16_combout\ : std_logic;
SIGNAL \t1|Add0~17\ : std_logic;
SIGNAL \t1|Add0~18_combout\ : std_logic;
SIGNAL \t1|Add0~19\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \t1|Add0~21\ : std_logic;
SIGNAL \t1|Add0~22_combout\ : std_logic;
SIGNAL \t1|count~11_combout\ : std_logic;
SIGNAL \t1|Add0~23\ : std_logic;
SIGNAL \t1|Add0~24_combout\ : std_logic;
SIGNAL \t1|count~10_combout\ : std_logic;
SIGNAL \t1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|Add0~25\ : std_logic;
SIGNAL \t1|Add0~26_combout\ : std_logic;
SIGNAL \t1|count~9_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~28_combout\ : std_logic;
SIGNAL \t1|count~8_combout\ : std_logic;
SIGNAL \t1|Add0~29\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|Add0~31\ : std_logic;
SIGNAL \t1|Add0~32_combout\ : std_logic;
SIGNAL \t1|count~7_combout\ : std_logic;
SIGNAL \t1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|Add0~33\ : std_logic;
SIGNAL \t1|Add0~34_combout\ : std_logic;
SIGNAL \t1|Add0~35\ : std_logic;
SIGNAL \t1|Add0~36_combout\ : std_logic;
SIGNAL \t1|count~6_combout\ : std_logic;
SIGNAL \t1|Add0~37\ : std_logic;
SIGNAL \t1|Add0~38_combout\ : std_logic;
SIGNAL \t1|count~5_combout\ : std_logic;
SIGNAL \t1|Add0~39\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \t1|count~4_combout\ : std_logic;
SIGNAL \t1|Add0~41\ : std_logic;
SIGNAL \t1|Add0~42_combout\ : std_logic;
SIGNAL \t1|count~3_combout\ : std_logic;
SIGNAL \t1|Add0~43\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \t1|count~2_combout\ : std_logic;
SIGNAL \t1|Add0~45\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \t1|count~1_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Add0~49\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|Add0~51\ : std_logic;
SIGNAL \t1|Add0~52_combout\ : std_logic;
SIGNAL \t1|Add0~53\ : std_logic;
SIGNAL \t1|Add0~54_combout\ : std_logic;
SIGNAL \t1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Equal0~8_combout\ : std_logic;
SIGNAL \t1|delay~0_combout\ : std_logic;
SIGNAL \t1|delay~q\ : std_logic;
SIGNAL \obstacle[1]~0_combout\ : std_logic;
SIGNAL \obstacle[1]$latch~combout\ : std_logic;
SIGNAL \obstacle[3]~3_combout\ : std_logic;
SIGNAL \obstacle[3]~2_combout\ : std_logic;
SIGNAL \obstacle[3]$latch~combout\ : std_logic;
SIGNAL \obstacle[5]~5_combout\ : std_logic;
SIGNAL \obstacle~4_combout\ : std_logic;
SIGNAL \obstacle[5]$latch~combout\ : std_logic;
SIGNAL \t1|count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;

BEGIN

ww_Player <= Player;
ww_Blink <= Blink;
ww_Reset <= Reset;
obstacle <= ww_obstacle;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Blink~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Blink~input_o\);
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;

-- Location: IOOBUF_X69_Y73_N16
\obstacle[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \obstacle[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\obstacle[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obstacle[1]$latch~combout\,
	devoe => ww_devoe,
	o => \obstacle[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\obstacle[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \obstacle[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\obstacle[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obstacle[3]$latch~combout\,
	devoe => ww_devoe,
	o => \obstacle[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\obstacle[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \obstacle[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\obstacle[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obstacle[5]$latch~combout\,
	devoe => ww_devoe,
	o => \obstacle[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\obstacle[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \obstacle[6]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\Player[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Player(2),
	o => \Player[2]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\Player[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Player(4),
	o => \Player[4]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\Player[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Player(0),
	o => \Player[0]~input_o\);

-- Location: LCCOMB_X114_Y14_N22
\obstacle[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle[1]~1_combout\ = (\Player[0]~input_o\) # ((!\Player[2]~input_o\ & !\Player[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Player[2]~input_o\,
	datac => \Player[4]~input_o\,
	datad => \Player[0]~input_o\,
	combout => \obstacle[1]~1_combout\);

-- Location: IOIBUF_X0_Y36_N15
\Blink~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Blink,
	o => \Blink~input_o\);

-- Location: CLKCTRL_G4
\Blink~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Blink~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Blink~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y14_N4
\t1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~0_combout\ = \t1|count\(0) $ (VCC)
-- \t1|Add0~1\ = CARRY(\t1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(0),
	datad => VCC,
	combout => \t1|Add0~0_combout\,
	cout => \t1|Add0~1\);

-- Location: LCCOMB_X112_Y14_N0
\t1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~0_combout\ = (\t1|Add0~0_combout\ & !\t1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~0_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|count~0_combout\);

-- Location: FF_X112_Y14_N1
\t1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(0));

-- Location: LCCOMB_X112_Y14_N6
\t1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~2_combout\ = (\t1|count\(1) & (!\t1|Add0~1\)) # (!\t1|count\(1) & ((\t1|Add0~1\) # (GND)))
-- \t1|Add0~3\ = CARRY((!\t1|Add0~1\) # (!\t1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(1),
	datad => VCC,
	cin => \t1|Add0~1\,
	combout => \t1|Add0~2_combout\,
	cout => \t1|Add0~3\);

-- Location: FF_X112_Y14_N7
\t1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(1));

-- Location: LCCOMB_X112_Y14_N8
\t1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~4_combout\ = (\t1|count\(2) & (\t1|Add0~3\ $ (GND))) # (!\t1|count\(2) & (!\t1|Add0~3\ & VCC))
-- \t1|Add0~5\ = CARRY((\t1|count\(2) & !\t1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(2),
	datad => VCC,
	cin => \t1|Add0~3\,
	combout => \t1|Add0~4_combout\,
	cout => \t1|Add0~5\);

-- Location: FF_X112_Y14_N9
\t1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(2));

-- Location: LCCOMB_X112_Y14_N10
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = (\t1|count\(3) & (!\t1|Add0~5\)) # (!\t1|count\(3) & ((\t1|Add0~5\) # (GND)))
-- \t1|Add0~7\ = CARRY((!\t1|Add0~5\) # (!\t1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(3),
	datad => VCC,
	cin => \t1|Add0~5\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: FF_X112_Y14_N11
\t1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~6_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(3));

-- Location: LCCOMB_X112_Y14_N12
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|count\(4) & (\t1|Add0~7\ $ (GND))) # (!\t1|count\(4) & (!\t1|Add0~7\ & VCC))
-- \t1|Add0~9\ = CARRY((\t1|count\(4) & !\t1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(4),
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~8_combout\,
	cout => \t1|Add0~9\);

-- Location: FF_X112_Y14_N13
\t1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~8_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(4));

-- Location: LCCOMB_X113_Y14_N30
\t1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~7_combout\ = (!\t1|count\(2) & (!\t1|count\(1) & (!\t1|count\(3) & !\t1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(2),
	datab => \t1|count\(1),
	datac => \t1|count\(3),
	datad => \t1|count\(4),
	combout => \t1|Equal0~7_combout\);

-- Location: LCCOMB_X112_Y14_N14
\t1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~10_combout\ = (\t1|count\(5) & (!\t1|Add0~9\)) # (!\t1|count\(5) & ((\t1|Add0~9\) # (GND)))
-- \t1|Add0~11\ = CARRY((!\t1|Add0~9\) # (!\t1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(5),
	datad => VCC,
	cin => \t1|Add0~9\,
	combout => \t1|Add0~10_combout\,
	cout => \t1|Add0~11\);

-- Location: FF_X112_Y14_N15
\t1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~10_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(5));

-- Location: LCCOMB_X112_Y14_N16
\t1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~12_combout\ = (\t1|count\(6) & (\t1|Add0~11\ $ (GND))) # (!\t1|count\(6) & (!\t1|Add0~11\ & VCC))
-- \t1|Add0~13\ = CARRY((\t1|count\(6) & !\t1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(6),
	datad => VCC,
	cin => \t1|Add0~11\,
	combout => \t1|Add0~12_combout\,
	cout => \t1|Add0~13\);

-- Location: LCCOMB_X112_Y14_N2
\t1|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~12_combout\ = (\t1|Add0~12_combout\ & !\t1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Add0~12_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|count~12_combout\);

-- Location: FF_X112_Y14_N3
\t1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~12_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(6));

-- Location: LCCOMB_X112_Y14_N18
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = (\t1|count\(7) & (!\t1|Add0~13\)) # (!\t1|count\(7) & ((\t1|Add0~13\) # (GND)))
-- \t1|Add0~15\ = CARRY((!\t1|Add0~13\) # (!\t1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(7),
	datad => VCC,
	cin => \t1|Add0~13\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: FF_X112_Y14_N19
\t1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~14_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(7));

-- Location: LCCOMB_X112_Y14_N20
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|count\(8) & (\t1|Add0~15\ $ (GND))) # (!\t1|count\(8) & (!\t1|Add0~15\ & VCC))
-- \t1|Add0~17\ = CARRY((\t1|count\(8) & !\t1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(8),
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~16_combout\,
	cout => \t1|Add0~17\);

-- Location: FF_X112_Y14_N21
\t1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~16_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(8));

-- Location: LCCOMB_X112_Y14_N22
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|count\(9) & (!\t1|Add0~17\)) # (!\t1|count\(9) & ((\t1|Add0~17\) # (GND)))
-- \t1|Add0~19\ = CARRY((!\t1|Add0~17\) # (!\t1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: FF_X112_Y14_N23
\t1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~18_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(9));

-- Location: LCCOMB_X112_Y14_N24
\t1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|count\(10) & (\t1|Add0~19\ $ (GND))) # (!\t1|count\(10) & (!\t1|Add0~19\ & VCC))
-- \t1|Add0~21\ = CARRY((\t1|count\(10) & !\t1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(10),
	datad => VCC,
	cin => \t1|Add0~19\,
	combout => \t1|Add0~20_combout\,
	cout => \t1|Add0~21\);

-- Location: FF_X112_Y14_N25
\t1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~20_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(10));

-- Location: LCCOMB_X112_Y14_N26
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|count\(11) & (!\t1|Add0~21\)) # (!\t1|count\(11) & ((\t1|Add0~21\) # (GND)))
-- \t1|Add0~23\ = CARRY((!\t1|Add0~21\) # (!\t1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X113_Y13_N18
\t1|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~11_combout\ = (\t1|Add0~22_combout\ & !\t1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~22_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|count~11_combout\);

-- Location: FF_X113_Y13_N19
\t1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~11_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(11));

-- Location: LCCOMB_X112_Y14_N28
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|count\(12) & (\t1|Add0~23\ $ (GND))) # (!\t1|count\(12) & (!\t1|Add0~23\ & VCC))
-- \t1|Add0~25\ = CARRY((\t1|count\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: LCCOMB_X113_Y13_N24
\t1|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~10_combout\ = (\t1|Add0~24_combout\ & !\t1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~24_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|count~10_combout\);

-- Location: FF_X113_Y13_N25
\t1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~10_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(12));

-- Location: LCCOMB_X113_Y13_N28
\t1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~5_combout\ = (\t1|count\(12) & (\t1|count\(11) & (!\t1|count\(9) & !\t1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(12),
	datab => \t1|count\(11),
	datac => \t1|count\(9),
	datad => \t1|count\(10),
	combout => \t1|Equal0~5_combout\);

-- Location: LCCOMB_X112_Y14_N30
\t1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~26_combout\ = (\t1|count\(13) & (!\t1|Add0~25\)) # (!\t1|count\(13) & ((\t1|Add0~25\) # (GND)))
-- \t1|Add0~27\ = CARRY((!\t1|Add0~25\) # (!\t1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(13),
	datad => VCC,
	cin => \t1|Add0~25\,
	combout => \t1|Add0~26_combout\,
	cout => \t1|Add0~27\);

-- Location: LCCOMB_X113_Y13_N14
\t1|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~9_combout\ = (!\t1|Equal0~8_combout\ & \t1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datac => \t1|Add0~26_combout\,
	combout => \t1|count~9_combout\);

-- Location: FF_X113_Y13_N15
\t1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~9_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(13));

-- Location: LCCOMB_X112_Y13_N0
\t1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~28_combout\ = (\t1|count\(14) & (\t1|Add0~27\ $ (GND))) # (!\t1|count\(14) & (!\t1|Add0~27\ & VCC))
-- \t1|Add0~29\ = CARRY((\t1|count\(14) & !\t1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(14),
	datad => VCC,
	cin => \t1|Add0~27\,
	combout => \t1|Add0~28_combout\,
	cout => \t1|Add0~29\);

-- Location: LCCOMB_X113_Y13_N4
\t1|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~8_combout\ = (!\t1|Equal0~8_combout\ & \t1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datad => \t1|Add0~28_combout\,
	combout => \t1|count~8_combout\);

-- Location: FF_X113_Y13_N5
\t1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~8_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(14));

-- Location: LCCOMB_X112_Y13_N2
\t1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~30_combout\ = (\t1|count\(15) & (!\t1|Add0~29\)) # (!\t1|count\(15) & ((\t1|Add0~29\) # (GND)))
-- \t1|Add0~31\ = CARRY((!\t1|Add0~29\) # (!\t1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(15),
	datad => VCC,
	cin => \t1|Add0~29\,
	combout => \t1|Add0~30_combout\,
	cout => \t1|Add0~31\);

-- Location: FF_X112_Y13_N3
\t1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~30_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(15));

-- Location: LCCOMB_X112_Y13_N4
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|count\(16) & (\t1|Add0~31\ $ (GND))) # (!\t1|count\(16) & (!\t1|Add0~31\ & VCC))
-- \t1|Add0~33\ = CARRY((\t1|count\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X113_Y13_N26
\t1|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~7_combout\ = (\t1|Add0~32_combout\ & !\t1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~32_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|count~7_combout\);

-- Location: FF_X113_Y13_N27
\t1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~7_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(16));

-- Location: LCCOMB_X113_Y13_N12
\t1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~3_combout\ = (\t1|count\(16) & (\t1|count\(14) & (\t1|count\(13) & !\t1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(16),
	datab => \t1|count\(14),
	datac => \t1|count\(13),
	datad => \t1|count\(15),
	combout => \t1|Equal0~3_combout\);

-- Location: LCCOMB_X112_Y13_N6
\t1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~34_combout\ = (\t1|count\(17) & (!\t1|Add0~33\)) # (!\t1|count\(17) & ((\t1|Add0~33\) # (GND)))
-- \t1|Add0~35\ = CARRY((!\t1|Add0~33\) # (!\t1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(17),
	datad => VCC,
	cin => \t1|Add0~33\,
	combout => \t1|Add0~34_combout\,
	cout => \t1|Add0~35\);

-- Location: FF_X112_Y13_N7
\t1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~34_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(17));

-- Location: LCCOMB_X112_Y13_N8
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|count\(18) & (\t1|Add0~35\ $ (GND))) # (!\t1|count\(18) & (!\t1|Add0~35\ & VCC))
-- \t1|Add0~37\ = CARRY((\t1|count\(18) & !\t1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(18),
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~36_combout\,
	cout => \t1|Add0~37\);

-- Location: LCCOMB_X113_Y13_N2
\t1|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~6_combout\ = (!\t1|Equal0~8_combout\ & \t1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datad => \t1|Add0~36_combout\,
	combout => \t1|count~6_combout\);

-- Location: FF_X113_Y13_N3
\t1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~6_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(18));

-- Location: LCCOMB_X112_Y13_N10
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = (\t1|count\(19) & (!\t1|Add0~37\)) # (!\t1|count\(19) & ((\t1|Add0~37\) # (GND)))
-- \t1|Add0~39\ = CARRY((!\t1|Add0~37\) # (!\t1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(19),
	datad => VCC,
	cin => \t1|Add0~37\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: LCCOMB_X113_Y13_N20
\t1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~5_combout\ = (!\t1|Equal0~8_combout\ & \t1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datad => \t1|Add0~38_combout\,
	combout => \t1|count~5_combout\);

-- Location: FF_X113_Y13_N21
\t1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~5_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(19));

-- Location: LCCOMB_X112_Y13_N12
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|count\(20) & (\t1|Add0~39\ $ (GND))) # (!\t1|count\(20) & (!\t1|Add0~39\ & VCC))
-- \t1|Add0~41\ = CARRY((\t1|count\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: LCCOMB_X113_Y13_N30
\t1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~4_combout\ = (!\t1|Equal0~8_combout\ & \t1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datad => \t1|Add0~40_combout\,
	combout => \t1|count~4_combout\);

-- Location: FF_X113_Y13_N31
\t1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(20));

-- Location: LCCOMB_X112_Y13_N14
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|count\(21) & (!\t1|Add0~41\)) # (!\t1|count\(21) & ((\t1|Add0~41\) # (GND)))
-- \t1|Add0~43\ = CARRY((!\t1|Add0~41\) # (!\t1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(21),
	datad => VCC,
	cin => \t1|Add0~41\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X112_Y13_N30
\t1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~3_combout\ = (!\t1|Equal0~8_combout\ & \t1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~8_combout\,
	datac => \t1|Add0~42_combout\,
	combout => \t1|count~3_combout\);

-- Location: FF_X112_Y13_N31
\t1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(21));

-- Location: LCCOMB_X112_Y13_N16
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|count\(22) & (\t1|Add0~43\ $ (GND))) # (!\t1|count\(22) & (!\t1|Add0~43\ & VCC))
-- \t1|Add0~45\ = CARRY((\t1|count\(22) & !\t1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(22),
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~44_combout\,
	cout => \t1|Add0~45\);

-- Location: LCCOMB_X112_Y13_N28
\t1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~2_combout\ = (!\t1|Equal0~8_combout\ & \t1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~44_combout\,
	combout => \t1|count~2_combout\);

-- Location: FF_X112_Y13_N29
\t1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(22));

-- Location: LCCOMB_X112_Y13_N18
\t1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~46_combout\ = (\t1|count\(23) & (!\t1|Add0~45\)) # (!\t1|count\(23) & ((\t1|Add0~45\) # (GND)))
-- \t1|Add0~47\ = CARRY((!\t1|Add0~45\) # (!\t1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(23),
	datad => VCC,
	cin => \t1|Add0~45\,
	combout => \t1|Add0~46_combout\,
	cout => \t1|Add0~47\);

-- Location: FF_X112_Y13_N19
\t1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~46_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(23));

-- Location: LCCOMB_X112_Y13_N20
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = (\t1|count\(24) & (\t1|Add0~47\ $ (GND))) # (!\t1|count\(24) & (!\t1|Add0~47\ & VCC))
-- \t1|Add0~49\ = CARRY((\t1|count\(24) & !\t1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(24),
	datad => VCC,
	cin => \t1|Add0~47\,
	combout => \t1|Add0~48_combout\,
	cout => \t1|Add0~49\);

-- Location: LCCOMB_X113_Y13_N6
\t1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|count~1_combout\ = (!\t1|Equal0~8_combout\ & \t1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datad => \t1|Add0~48_combout\,
	combout => \t1|count~1_combout\);

-- Location: FF_X113_Y13_N7
\t1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|count~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(24));

-- Location: LCCOMB_X113_Y13_N16
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (\t1|count\(24) & (\t1|count\(21) & (!\t1|count\(23) & \t1|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(24),
	datab => \t1|count\(21),
	datac => \t1|count\(23),
	datad => \t1|count\(22),
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y13_N22
\t1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~50_combout\ = (\t1|count\(25) & (!\t1|Add0~49\)) # (!\t1|count\(25) & ((\t1|Add0~49\) # (GND)))
-- \t1|Add0~51\ = CARRY((!\t1|Add0~49\) # (!\t1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(25),
	datad => VCC,
	cin => \t1|Add0~49\,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~51\);

-- Location: FF_X112_Y13_N23
\t1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~50_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(25));

-- Location: LCCOMB_X112_Y13_N24
\t1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~52_combout\ = (\t1|count\(26) & (\t1|Add0~51\ $ (GND))) # (!\t1|count\(26) & (!\t1|Add0~51\ & VCC))
-- \t1|Add0~53\ = CARRY((\t1|count\(26) & !\t1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|count\(26),
	datad => VCC,
	cin => \t1|Add0~51\,
	combout => \t1|Add0~52_combout\,
	cout => \t1|Add0~53\);

-- Location: FF_X112_Y13_N25
\t1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~52_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(26));

-- Location: LCCOMB_X112_Y13_N26
\t1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~54_combout\ = \t1|count\(27) $ (\t1|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(27),
	cin => \t1|Add0~53\,
	combout => \t1|Add0~54_combout\);

-- Location: FF_X112_Y13_N27
\t1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|Add0~54_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|count\(27));

-- Location: LCCOMB_X113_Y13_N8
\t1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~0_combout\ = (!\t1|count\(26) & (!\t1|count\(25) & (!\t1|count\(27) & !\t1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(26),
	datab => \t1|count\(25),
	datac => \t1|count\(27),
	datad => \t1|count\(0),
	combout => \t1|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y13_N0
\t1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~2_combout\ = (\t1|count\(20) & (\t1|count\(19) & (!\t1|count\(17) & \t1|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(20),
	datab => \t1|count\(19),
	datac => \t1|count\(17),
	datad => \t1|count\(18),
	combout => \t1|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y13_N22
\t1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~4_combout\ = (\t1|Equal0~3_combout\ & (\t1|Equal0~1_combout\ & (\t1|Equal0~0_combout\ & \t1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~3_combout\,
	datab => \t1|Equal0~1_combout\,
	datac => \t1|Equal0~0_combout\,
	datad => \t1|Equal0~2_combout\,
	combout => \t1|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y14_N28
\t1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~6_combout\ = (\t1|count\(6) & (!\t1|count\(8) & (!\t1|count\(7) & !\t1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count\(6),
	datab => \t1|count\(8),
	datac => \t1|count\(7),
	datad => \t1|count\(5),
	combout => \t1|Equal0~6_combout\);

-- Location: LCCOMB_X113_Y13_N10
\t1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~8_combout\ = (\t1|Equal0~7_combout\ & (\t1|Equal0~5_combout\ & (\t1|Equal0~4_combout\ & \t1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~7_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~4_combout\,
	datad => \t1|Equal0~6_combout\,
	combout => \t1|Equal0~8_combout\);

-- Location: LCCOMB_X114_Y14_N28
\t1|delay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|delay~0_combout\ = \t1|delay~q\ $ (\t1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|delay~q\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|delay~0_combout\);

-- Location: FF_X114_Y14_N29
\t1|delay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blink~inputclkctrl_outclk\,
	d => \t1|delay~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|delay~q\);

-- Location: LCCOMB_X114_Y14_N24
\obstacle[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle[1]~0_combout\ = (\Player[0]~input_o\ & \t1|delay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Player[0]~input_o\,
	datad => \t1|delay~q\,
	combout => \obstacle[1]~0_combout\);

-- Location: LCCOMB_X114_Y14_N16
\obstacle[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle[1]$latch~combout\ = (!\Reset~input_o\ & ((\obstacle[1]~1_combout\ & ((\obstacle[1]~0_combout\))) # (!\obstacle[1]~1_combout\ & (\obstacle[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \obstacle[1]$latch~combout\,
	datac => \obstacle[1]~1_combout\,
	datad => \obstacle[1]~0_combout\,
	combout => \obstacle[1]$latch~combout\);

-- Location: LCCOMB_X114_Y14_N14
\obstacle[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle[3]~3_combout\ = (!\Player[0]~input_o\ & ((\Player[2]~input_o\) # (!\Player[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Player[2]~input_o\,
	datac => \Player[4]~input_o\,
	datad => \Player[0]~input_o\,
	combout => \obstacle[3]~3_combout\);

-- Location: LCCOMB_X114_Y14_N12
\obstacle[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle[3]~2_combout\ = (\Player[2]~input_o\ & \t1|delay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Player[2]~input_o\,
	datad => \t1|delay~q\,
	combout => \obstacle[3]~2_combout\);

-- Location: LCCOMB_X114_Y14_N26
\obstacle[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle[3]$latch~combout\ = (!\Reset~input_o\ & ((\obstacle[3]~3_combout\ & ((\obstacle[3]~2_combout\))) # (!\obstacle[3]~3_combout\ & (\obstacle[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obstacle[3]$latch~combout\,
	datab => \Reset~input_o\,
	datac => \obstacle[3]~3_combout\,
	datad => \obstacle[3]~2_combout\,
	combout => \obstacle[3]$latch~combout\);

-- Location: LCCOMB_X114_Y14_N30
\obstacle[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle[5]~5_combout\ = (\Player[2]~input_o\) # (\Player[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Player[2]~input_o\,
	datad => \Player[0]~input_o\,
	combout => \obstacle[5]~5_combout\);

-- Location: LCCOMB_X114_Y14_N18
\obstacle~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle~4_combout\ = (\Player[4]~input_o\ & \t1|delay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Player[4]~input_o\,
	datad => \t1|delay~q\,
	combout => \obstacle~4_combout\);

-- Location: LCCOMB_X114_Y14_N20
\obstacle[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \obstacle[5]$latch~combout\ = (!\Reset~input_o\ & ((\obstacle[5]~5_combout\ & (\obstacle[5]$latch~combout\)) # (!\obstacle[5]~5_combout\ & ((\obstacle~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \obstacle[5]$latch~combout\,
	datac => \obstacle[5]~5_combout\,
	datad => \obstacle~4_combout\,
	combout => \obstacle[5]$latch~combout\);

-- Location: IOIBUF_X115_Y15_N8
\Player[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Player(1),
	o => \Player[1]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\Player[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Player(3),
	o => \Player[3]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\Player[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Player(5),
	o => \Player[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\Player[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Player(6),
	o => \Player[6]~input_o\);

ww_obstacle(0) <= \obstacle[0]~output_o\;

ww_obstacle(1) <= \obstacle[1]~output_o\;

ww_obstacle(2) <= \obstacle[2]~output_o\;

ww_obstacle(3) <= \obstacle[3]~output_o\;

ww_obstacle(4) <= \obstacle[4]~output_o\;

ww_obstacle(5) <= \obstacle[5]~output_o\;

ww_obstacle(6) <= \obstacle[6]~output_o\;
END structure;


