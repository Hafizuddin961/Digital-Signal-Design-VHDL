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

-- DATE "01/11/2018 12:09:12"

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

ENTITY 	Hangman IS
    PORT (
	CLK : IN std_logic;
	EN : IN std_logic;
	CLR : IN std_logic;
	start : IN std_logic;
	SW : IN std_logic_vector(15 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(1 DOWNTO 0)
	);
END Hangman;

-- Design Ports Information
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Hangman IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \comb_4|Q[0]~4_combout\ : std_logic;
SIGNAL \comb_4|Q[1]~3_combout\ : std_logic;
SIGNAL \comb_4|Q[2]~0_combout\ : std_logic;
SIGNAL \comb_4|Q[3]~1_combout\ : std_logic;
SIGNAL \comb_4|Q[3]~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \comb_3|press~12_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \comb_3|press~11_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \comb_3|press~7_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \comb_3|press~4_combout\ : std_logic;
SIGNAL \comb_3|press~14_combout\ : std_logic;
SIGNAL \comb_3|press[2]~feeder_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \comb_3|press[0]~10_combout\ : std_logic;
SIGNAL \comb_3|press~21_combout\ : std_logic;
SIGNAL \comb_3|press[0]~13_combout\ : std_logic;
SIGNAL \comb_3|press[3]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|press~8_combout\ : std_logic;
SIGNAL \comb_3|press~5_combout\ : std_logic;
SIGNAL \comb_3|press~6_combout\ : std_logic;
SIGNAL \comb_3|press~9_combout\ : std_logic;
SIGNAL \comb_3|press~19_combout\ : std_logic;
SIGNAL \comb_3|press~15_combout\ : std_logic;
SIGNAL \comb_3|press~16_combout\ : std_logic;
SIGNAL \comb_3|press~17_combout\ : std_logic;
SIGNAL \comb_3|press~18_combout\ : std_logic;
SIGNAL \comb_3|press~20_combout\ : std_logic;
SIGNAL \comb_3|press[0]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.S5~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \life[0]~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \HEX7~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \comb_5|led6[1]~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \comb_5|led6[4]~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \comb_5|led6[6]~2_combout\ : std_logic;
SIGNAL \comb_5|led6[6]~3_combout\ : std_logic;
SIGNAL \HEX5~1_combout\ : std_logic;
SIGNAL \HEX4~0_combout\ : std_logic;
SIGNAL \HEX3~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \HEX2~0_combout\ : std_logic;
SIGNAL life : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_3|press\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \ALT_INV_HEX4~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX5~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.S4~q\ : std_logic;
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_EN <= EN;
ww_CLR <= CLR;
ww_start <= start;
ww_SW <= SW;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_WideOr1~combout\ <= NOT \WideOr1~combout\;
\ALT_INV_HEX4~0_combout\ <= NOT \HEX4~0_combout\;
\ALT_INV_HEX5~1_combout\ <= NOT \HEX5~1_combout\;
\ALT_INV_state.S4~q\ <= NOT \state.S4~q\;
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector19~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector19~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector19~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector19~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector13~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector12~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector11~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector10~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector8~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_5|led6[6]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S0~q\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S0~q\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S0~q\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S0~q\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S0~q\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S0~q\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S4~q\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S0~q\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S4~q\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S4~q\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S4~q\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S4~q\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => life(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => life(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X110_Y28_N26
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.S0~q\) # (!\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
	datac => \state.S0~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: FF_X110_Y28_N27
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	d => \Selector0~0_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y28_N6
\comb_4|Q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|Q[0]~4_combout\ = \EN~input_o\ $ (!\comb_4|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \comb_4|Q\(0),
	combout => \comb_4|Q[0]~4_combout\);

-- Location: FF_X112_Y28_N7
\comb_4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \comb_4|Q[0]~4_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|Q\(0));

-- Location: LCCOMB_X112_Y28_N8
\comb_4|Q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|Q[1]~3_combout\ = \comb_4|Q\(1) $ (((!\EN~input_o\ & \comb_4|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \comb_4|Q\(1),
	datad => \comb_4|Q\(0),
	combout => \comb_4|Q[1]~3_combout\);

-- Location: FF_X112_Y28_N9
\comb_4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \comb_4|Q[1]~3_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|Q\(1));

-- Location: LCCOMB_X112_Y28_N12
\comb_4|Q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|Q[2]~0_combout\ = \comb_4|Q\(2) $ (((!\EN~input_o\ & (\comb_4|Q\(1) & \comb_4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \comb_4|Q\(1),
	datac => \comb_4|Q\(2),
	datad => \comb_4|Q\(0),
	combout => \comb_4|Q[2]~0_combout\);

-- Location: FF_X112_Y28_N13
\comb_4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \comb_4|Q[2]~0_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|Q\(2));

-- Location: LCCOMB_X112_Y28_N28
\comb_4|Q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|Q[3]~1_combout\ = (\EN~input_o\) # (!\comb_4|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EN~input_o\,
	datad => \comb_4|Q\(0),
	combout => \comb_4|Q[3]~1_combout\);

-- Location: LCCOMB_X112_Y28_N10
\comb_4|Q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_4|Q[3]~2_combout\ = \comb_4|Q\(3) $ (((\comb_4|Q\(2) & (\comb_4|Q\(1) & !\comb_4|Q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|Q\(2),
	datab => \comb_4|Q\(1),
	datac => \comb_4|Q\(3),
	datad => \comb_4|Q[3]~1_combout\,
	combout => \comb_4|Q[3]~2_combout\);

-- Location: FF_X112_Y28_N11
\comb_4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \comb_4|Q[3]~2_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|Q\(3));

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y8_N10
\comb_3|press~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~12_combout\ = (!\SW[8]~input_o\ & (!\SW[11]~input_o\ & (!\SW[10]~input_o\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \comb_3|press~12_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X114_Y12_N0
\comb_3|press~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~11_combout\ = (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \comb_3|press~11_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X114_Y12_N22
\comb_3|press~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~7_combout\ = (!\SW[6]~input_o\ & !\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \comb_3|press~7_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y12_N12
\comb_3|press~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~4_combout\ = (!\SW[5]~input_o\ & !\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|press~4_combout\);

-- Location: LCCOMB_X114_Y12_N24
\comb_3|press~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~14_combout\ = (\comb_3|press~11_combout\ & ((\comb_3|press~12_combout\) # ((!\comb_3|press~4_combout\) # (!\comb_3|press~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press~12_combout\,
	datab => \comb_3|press~11_combout\,
	datac => \comb_3|press~7_combout\,
	datad => \comb_3|press~4_combout\,
	combout => \comb_3|press~14_combout\);

-- Location: LCCOMB_X111_Y28_N20
\comb_3|press[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press[2]~feeder_combout\ = \comb_3|press~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|press~14_combout\,
	combout => \comb_3|press[2]~feeder_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X114_Y8_N28
\comb_3|press[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press[0]~10_combout\ = (\SW[15]~input_o\) # ((\SW[13]~input_o\) # ((\SW[12]~input_o\) # (\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \comb_3|press[0]~10_combout\);

-- Location: LCCOMB_X114_Y12_N16
\comb_3|press~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~21_combout\ = (\comb_3|press~7_combout\ & (\comb_3|press~11_combout\ & (!\SW[5]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press~7_combout\,
	datab => \comb_3|press~11_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|press~21_combout\);

-- Location: LCCOMB_X114_Y12_N10
\comb_3|press[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press[0]~13_combout\ = (\comb_3|press[0]~10_combout\) # ((!\comb_3|press~12_combout\) # (!\comb_3|press~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press[0]~10_combout\,
	datab => \comb_3|press~21_combout\,
	datad => \comb_3|press~12_combout\,
	combout => \comb_3|press[0]~13_combout\);

-- Location: FF_X111_Y28_N21
\comb_3|press[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \comb_3|press[2]~feeder_combout\,
	clrn => \CLR~input_o\,
	ena => \comb_3|press[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|press\(2));

-- Location: LCCOMB_X111_Y28_N6
\comb_3|press[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press[3]~feeder_combout\ = \comb_3|press~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|press~21_combout\,
	combout => \comb_3|press[3]~feeder_combout\);

-- Location: FF_X111_Y28_N7
\comb_3|press[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \comb_3|press[3]~feeder_combout\,
	clrn => \CLR~input_o\,
	ena => \comb_3|press[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|press\(3));

-- Location: LCCOMB_X111_Y28_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\comb_4|Q\(3) & (\comb_3|press\(3) & (\comb_3|press\(2) $ (!\comb_4|Q\(2))))) # (!\comb_4|Q\(3) & (!\comb_3|press\(3) & (\comb_3|press\(2) $ (!\comb_4|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|Q\(3),
	datab => \comb_3|press\(2),
	datac => \comb_4|Q\(2),
	datad => \comb_3|press\(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X114_Y12_N8
\comb_3|press~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~8_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((\comb_3|press~4_combout\ & !\comb_3|press~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press~4_combout\,
	datab => \comb_3|press~7_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \comb_3|press~8_combout\);

-- Location: LCCOMB_X114_Y8_N0
\comb_3|press~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~5_combout\ = (\SW[10]~input_o\) # ((\SW[11]~input_o\) # ((!\SW[12]~input_o\ & !\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \comb_3|press~5_combout\);

-- Location: LCCOMB_X114_Y8_N2
\comb_3|press~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~6_combout\ = (!\SW[8]~input_o\ & (\comb_3|press~5_combout\ & (\comb_3|press~4_combout\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \comb_3|press~5_combout\,
	datac => \comb_3|press~4_combout\,
	datad => \SW[9]~input_o\,
	combout => \comb_3|press~6_combout\);

-- Location: LCCOMB_X114_Y12_N2
\comb_3|press~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~9_combout\ = (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\comb_3|press~8_combout\) # (\comb_3|press~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \comb_3|press~8_combout\,
	datac => \comb_3|press~6_combout\,
	datad => \SW[0]~input_o\,
	combout => \comb_3|press~9_combout\);

-- Location: FF_X111_Y28_N9
\comb_3|press[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \comb_3|press~9_combout\,
	clrn => \CLR~input_o\,
	sload => VCC,
	ena => \comb_3|press[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|press\(1));

-- Location: LCCOMB_X114_Y12_N20
\comb_3|press~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~19_combout\ = (!\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\SW[5]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|press~19_combout\);

-- Location: LCCOMB_X114_Y8_N12
\comb_3|press~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~15_combout\ = (!\SW[8]~input_o\ & ((\SW[9]~input_o\) # ((\SW[11]~input_o\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \comb_3|press~15_combout\);

-- Location: LCCOMB_X114_Y8_N18
\comb_3|press~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~16_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & ((\SW[13]~input_o\) # (!\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \comb_3|press~16_combout\);

-- Location: LCCOMB_X114_Y8_N4
\comb_3|press~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~17_combout\ = (\comb_3|press~15_combout\) # ((\SW[7]~input_o\) # ((\comb_3|press~16_combout\ & !\SW[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press~15_combout\,
	datab => \comb_3|press~16_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \comb_3|press~17_combout\);

-- Location: LCCOMB_X114_Y12_N26
\comb_3|press~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~18_combout\ = (!\SW[2]~input_o\ & (\comb_3|press~17_combout\ & (!\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \comb_3|press~17_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|press~18_combout\);

-- Location: LCCOMB_X114_Y12_N18
\comb_3|press~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press~20_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\comb_3|press~19_combout\) # (\comb_3|press~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \comb_3|press~19_combout\,
	datac => \comb_3|press~18_combout\,
	datad => \SW[0]~input_o\,
	combout => \comb_3|press~20_combout\);

-- Location: LCCOMB_X111_Y28_N18
\comb_3|press[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|press[0]~feeder_combout\ = \comb_3|press~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|press~20_combout\,
	combout => \comb_3|press[0]~feeder_combout\);

-- Location: FF_X111_Y28_N19
\comb_3|press[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \comb_3|press[0]~feeder_combout\,
	clrn => \CLR~input_o\,
	ena => \comb_3|press[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|press\(0));

-- Location: LCCOMB_X111_Y28_N16
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\comb_4|Q\(1) & (((\comb_4|Q\(0) & !\comb_3|press\(0))) # (!\comb_3|press\(1)))) # (!\comb_4|Q\(1) & (\comb_4|Q\(0) & (!\comb_3|press\(1) & !\comb_3|press\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|Q\(0),
	datab => \comb_4|Q\(1),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y28_N26
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\comb_4|Q\(3) & (((!\comb_3|press\(2) & \comb_4|Q\(2))) # (!\comb_3|press\(3)))) # (!\comb_4|Q\(3) & (!\comb_3|press\(2) & (\comb_4|Q\(2) & !\comb_3|press\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|Q\(3),
	datab => \comb_3|press\(2),
	datac => \comb_4|Q\(2),
	datad => \comb_3|press\(3),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X111_Y28_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\comb_3|press\(3) & (\comb_4|Q\(3) & ((\comb_4|Q\(2)) # (!\comb_3|press\(2))))) # (!\comb_3|press\(3) & ((\comb_4|Q\(3)) # ((\comb_4|Q\(2)) # (!\comb_3|press\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(3),
	datab => \comb_4|Q\(3),
	datac => \comb_4|Q\(2),
	datad => \comb_3|press\(2),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X111_Y28_N30
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\comb_4|Q\(1) & (!\comb_4|Q\(0) & (\comb_3|press\(1) & \comb_3|press\(0)))) # (!\comb_4|Q\(1) & ((\comb_3|press\(1)) # ((!\comb_4|Q\(0) & \comb_3|press\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|Q\(0),
	datab => \comb_4|Q\(1),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X111_Y28_N4
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\LessThan0~1_combout\ & (((!\LessThan1~0_combout\ & !\LessThan0~0_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X111_Y28_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\comb_4|Q\(0) & (\comb_3|press\(0) & (\comb_4|Q\(1) $ (!\comb_3|press\(1))))) # (!\comb_4|Q\(0) & (!\comb_3|press\(0) & (\comb_4|Q\(1) $ (!\comb_3|press\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|Q\(0),
	datab => \comb_4|Q\(1),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X111_Y28_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X111_Y28_N12
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.S1~q\ & (!\Equal0~2_combout\ & ((!\Selector1~1_combout\) # (!\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \state.S1~q\,
	datac => \Selector1~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X110_Y28_N10
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\ & ((\LessThan0~1_combout\) # ((\Equal0~0_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X110_Y28_N11
\state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	d => \Selector5~1_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S5~q\);

-- Location: LCCOMB_X111_Y28_N0
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\state.S1~q\) # (!life(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => life(0),
	datad => \state.S1~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X111_Y28_N14
\life[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \life[0]~0_combout\ = (\CLR~input_o\ & ((\Selector5~0_combout\) # ((!\EN~input_o\ & !\state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \EN~input_o\,
	datac => \state.S0~q\,
	datad => \Selector5~0_combout\,
	combout => \life[0]~0_combout\);

-- Location: FF_X111_Y28_N1
\life[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	d => \Selector7~0_combout\,
	ena => \life[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => life(0));

-- Location: LCCOMB_X111_Y28_N22
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (life(0) $ (!life(1))) # (!\state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => life(0),
	datac => life(1),
	datad => \state.S1~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X111_Y28_N23
\life[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	d => \Selector6~0_combout\,
	ena => \life[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => life(1));

-- Location: LCCOMB_X110_Y28_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\LessThan0~1_combout\ & (\Selector5~0_combout\ & ((!\LessThan0~0_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X110_Y28_N21
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	d => \Selector2~0_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X110_Y28_N14
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\state.S5~q\ & ((life(1)) # ((life(0))))) # (!\state.S5~q\ & (\state.S2~q\ & ((life(1)) # (life(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S5~q\,
	datab => life(1),
	datac => life(0),
	datad => \state.S2~q\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X110_Y28_N12
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\Equal0~2_combout\ & (\Selector1~0_combout\ & (\state.S1~q\ & \Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Selector1~0_combout\,
	datac => \state.S1~q\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X110_Y28_N6
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Selector1~3_combout\) # ((\Selector1~2_combout\) # ((!\state.S0~q\ & !\EN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datab => \EN~input_o\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X110_Y28_N7
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	d => \Selector1~4_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X114_Y28_N4
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.S3~q\) # ((\state.S1~q\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~q\,
	datab => \Equal0~1_combout\,
	datac => \state.S3~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X114_Y28_N5
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	d => \Selector3~0_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X109_Y28_N14
\Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\comb_3|press\(3) & ((\comb_3|press\(1)) # (\comb_3|press\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|press\(3),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(2),
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X110_Y28_N0
\HEX5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = (!\state.S2~q\ & !\state.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datad => \state.S5~q\,
	combout => \HEX5~0_combout\);

-- Location: LCCOMB_X110_Y28_N4
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.S4~q\) # ((!life(0) & (!life(1) & !\HEX5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => life(0),
	datab => life(1),
	datac => \state.S4~q\,
	datad => \HEX5~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X110_Y28_N5
\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	d => \Selector4~0_combout\,
	clrn => \CLR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

-- Location: LCCOMB_X110_Y28_N16
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\state.S2~q\) # ((\state.S1~q\) # (\state.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \state.S1~q\,
	datad => \state.S5~q\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X109_Y28_N2
\Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\state.S3~q\) # ((\state.S4~q\) # ((\Selector19~2_combout\ & \WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \Selector19~2_combout\,
	datac => \state.S4~q\,
	datad => \WideOr2~combout\,
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X109_Y28_N20
\HEX7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~0_combout\ = (\state.S4~q\) # (\state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S4~q\,
	datad => \state.S3~q\,
	combout => \HEX7~0_combout\);

-- Location: LCCOMB_X109_Y28_N12
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\comb_3|press\(1) & (\comb_3|press\(2) $ (\comb_3|press\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(1),
	datab => \comb_3|press\(2),
	datad => \comb_3|press\(0),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X109_Y28_N26
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\comb_3|press\(3) & (\comb_3|press\(2) $ (\comb_3|press\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(3),
	datab => \comb_3|press\(2),
	datad => \comb_3|press\(0),
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X110_Y28_N18
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\comb_3|press\(1) & ((\state.S2~q\) # ((\state.S1~q\) # (\state.S5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(1),
	datab => \state.S2~q\,
	datac => \state.S1~q\,
	datad => \state.S5~q\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X109_Y28_N8
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (!\state.S3~q\ & (!\state.S4~q\ & ((!\Selector13~1_combout\) # (!\Selector13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \state.S4~q\,
	datac => \Selector13~2_combout\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~3_combout\);

-- Location: LCCOMB_X109_Y28_N6
\Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = ((\Selector13~0_combout\ & (!\comb_3|press\(3) & \WideOr2~combout\))) # (!\Selector13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector13~3_combout\,
	datac => \comb_3|press\(3),
	datad => \WideOr2~combout\,
	combout => \Selector13~4_combout\);

-- Location: LCCOMB_X109_Y28_N24
\comb_5|led6[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_5|led6[1]~0_combout\ = (\comb_3|press\(2) & ((\comb_3|press\(3) & (\comb_3|press\(1) & \comb_3|press\(0))) # (!\comb_3|press\(3) & (\comb_3|press\(1) $ (\comb_3|press\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(3),
	datab => \comb_3|press\(2),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(0),
	combout => \comb_5|led6[1]~0_combout\);

-- Location: LCCOMB_X110_Y28_N22
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\HEX7~0_combout\) # ((\comb_5|led6[1]~0_combout\ & ((\state.S1~q\) # (!\HEX5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7~0_combout\,
	datab => \comb_5|led6[1]~0_combout\,
	datac => \state.S1~q\,
	datad => \HEX5~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X109_Y28_N10
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\comb_3|press\(3) & (!\comb_3|press\(1) & \comb_3|press\(2))) # (!\comb_3|press\(3) & (\comb_3|press\(1) & !\comb_3|press\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|press\(3),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(2),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X109_Y28_N28
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\HEX7~0_combout\) # ((\Selector11~0_combout\ & (!\comb_3|press\(0) & \WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \comb_3|press\(0),
	datac => \HEX7~0_combout\,
	datad => \WideOr2~combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X109_Y28_N30
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\comb_3|press\(1) & (\comb_3|press\(2) & \comb_3|press\(0))) # (!\comb_3|press\(1) & (\comb_3|press\(2) $ (\comb_3|press\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(1),
	datab => \comb_3|press\(2),
	datad => \comb_3|press\(0),
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X109_Y28_N4
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ((\Selector10~0_combout\ & (!\comb_3|press\(3) & \WideOr2~combout\))) # (!\Selector13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector13~3_combout\,
	datac => \comb_3|press\(3),
	datad => \WideOr2~combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X111_Y28_N8
\comb_5|led6[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_5|led6[4]~1_combout\ = (\comb_3|press\(0)) # ((\comb_3|press\(2) & (\comb_3|press\(3) $ (!\comb_3|press\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(3),
	datab => \comb_3|press\(2),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(0),
	combout => \comb_5|led6[4]~1_combout\);

-- Location: LCCOMB_X110_Y28_N24
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\HEX7~0_combout\) # ((\comb_5|led6[4]~1_combout\ & ((\state.S1~q\) # (!\HEX5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7~0_combout\,
	datab => \state.S1~q\,
	datac => \comb_5|led6[4]~1_combout\,
	datad => \HEX5~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X109_Y28_N0
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\comb_3|press\(3) & (\comb_3|press\(2) & (!\comb_3|press\(1)))) # (!\comb_3|press\(3) & (!\comb_3|press\(2) & ((\comb_3|press\(1)) # (\comb_3|press\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(3),
	datab => \comb_3|press\(2),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(0),
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X109_Y28_N22
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\comb_3|press\(0) & (\Selector13~1_combout\ & (\comb_3|press\(3) $ (\comb_3|press\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(3),
	datab => \comb_3|press\(0),
	datac => \comb_3|press\(2),
	datad => \Selector13~1_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X109_Y28_N18
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\HEX7~0_combout\) # ((\Selector8~0_combout\) # ((\Selector8~1_combout\ & \WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7~0_combout\,
	datab => \Selector8~1_combout\,
	datac => \Selector8~0_combout\,
	datad => \WideOr2~combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X109_Y28_N16
\comb_5|led6[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_5|led6[6]~2_combout\ = (\comb_3|press\(2) & ((\comb_3|press\(3)) # ((!\comb_3|press\(0)) # (!\comb_3|press\(1))))) # (!\comb_3|press\(2) & (\comb_3|press\(3) $ ((\comb_3|press\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|press\(3),
	datab => \comb_3|press\(2),
	datac => \comb_3|press\(1),
	datad => \comb_3|press\(0),
	combout => \comb_5|led6[6]~2_combout\);

-- Location: LCCOMB_X110_Y28_N8
\comb_5|led6[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_5|led6[6]~3_combout\ = ((\state.S4~q\) # ((\state.S3~q\) # (!\state.S0~q\))) # (!\comb_5|led6[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|led6[6]~2_combout\,
	datab => \state.S4~q\,
	datac => \state.S3~q\,
	datad => \state.S0~q\,
	combout => \comb_5|led6[6]~3_combout\);

-- Location: LCCOMB_X110_Y8_N12
\HEX5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~1_combout\ = (\state.S5~q\) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datad => \state.S5~q\,
	combout => \HEX5~1_combout\);

-- Location: LCCOMB_X110_Y8_N26
\HEX4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~0_combout\ = (\state.S2~q\) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datad => \state.S2~q\,
	combout => \HEX4~0_combout\);

-- Location: LCCOMB_X110_Y28_N30
\HEX3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~0_combout\ = (\state.S0~q\ & !\state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S0~q\,
	datad => \state.S3~q\,
	combout => \HEX3~0_combout\);

-- Location: LCCOMB_X110_Y28_N28
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\state.S3~q\) # ((\state.S4~q\) # (!\state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \state.S4~q\,
	datad => \state.S0~q\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X110_Y28_N2
\HEX2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~0_combout\ = (!\state.S4~q\ & \state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S4~q\,
	datad => \state.S0~q\,
	combout => \HEX2~0_combout\);

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;
END structure;


