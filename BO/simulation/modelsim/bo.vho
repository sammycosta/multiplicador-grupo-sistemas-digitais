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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/26/2022 12:03:37"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bo IS
    PORT (
	clk : IN std_logic;
	cEnt : IN std_logic;
	mB : IN std_logic;
	op : IN std_logic;
	cmult : IN std_logic;
	mmult : IN std_logic;
	entA : IN std_logic_vector(3 DOWNTO 0);
	entB : IN std_logic_vector(3 DOWNTO 0);
	Az : OUT std_logic;
	Bz : OUT std_logic;
	ovf : OUT std_logic;
	mult : OUT std_logic_vector(7 DOWNTO 0)
	);
END bo;

-- Design Ports Information
-- mmult	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Az	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Bz	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovf	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[0]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[1]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[2]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[3]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[5]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[7]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cmult	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cEnt	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mB	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_cEnt : std_logic;
SIGNAL ww_mB : std_logic;
SIGNAL ww_op : std_logic;
SIGNAL ww_cmult : std_logic;
SIGNAL ww_mmult : std_logic;
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Az : std_logic;
SIGNAL ww_Bz : std_logic;
SIGNAL ww_ovf : std_logic;
SIGNAL ww_mult : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \geraBz|Equal0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \somasub|Add0~4_combout\ : std_logic;
SIGNAL \muxsoma1|y[5]~2_combout\ : std_logic;
SIGNAL \muxsoma2|y[4]~20_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:3:FAi|s~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cEnt~combout\ : std_logic;
SIGNAL \geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \mB~combout\ : std_logic;
SIGNAL \geraBz|Equal0~2clkctrl_outclk\ : std_logic;
SIGNAL \op~combout\ : std_logic;
SIGNAL \muxsoma1|y[7]~0_combout\ : std_logic;
SIGNAL \muxsoma2|y[7]~3_combout\ : std_logic;
SIGNAL \muxsoma2|y[6]~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \muxsoma2|y[6]~5_combout\ : std_logic;
SIGNAL \muxsoma2|y[5]~8_combout\ : std_logic;
SIGNAL \muxsoma2|y[5]~6_combout\ : std_logic;
SIGNAL \muxsoma2|y[5]~7_combout\ : std_logic;
SIGNAL \muxsoma2|y[5]~9_combout\ : std_logic;
SIGNAL \muxsoma1|y[4]~3_combout\ : std_logic;
SIGNAL \somasub|Add0~7\ : std_logic;
SIGNAL \somasub|Add0~9\ : std_logic;
SIGNAL \somasub|Add0~11\ : std_logic;
SIGNAL \somasub|Add0~12_combout\ : std_logic;
SIGNAL \somasub|Add0~14_combout\ : std_logic;
SIGNAL \somasub|Add0~15_combout\ : std_logic;
SIGNAL \muxsoma1|y[6]~1_combout\ : std_logic;
SIGNAL \somasub|Add0~13\ : std_logic;
SIGNAL \somasub|Add0~16_combout\ : std_logic;
SIGNAL \muxsoma2|y[4]~10_combout\ : std_logic;
SIGNAL \muxsoma2|y[4]~11_combout\ : std_logic;
SIGNAL \muxsoma2|y[4]~12_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:4:FAi|cout~0_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:5:FAi|cout~0_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:7:FAi|s~combout\ : std_logic;
SIGNAL \somasub|Add0~18_combout\ : std_logic;
SIGNAL \quantosZero|process_0~2_combout\ : std_logic;
SIGNAL \quantosZero|process_0~3_combout\ : std_logic;
SIGNAL \muxsoma2|y[0]~13_combout\ : std_logic;
SIGNAL \muxsoma2|y[0]~17_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:0:FAi|s~2_combout\ : std_logic;
SIGNAL \somasub|Add0~0_combout\ : std_logic;
SIGNAL \regB|q[0]~0_combout\ : std_logic;
SIGNAL \muxsoma1|y[0]~5_combout\ : std_logic;
SIGNAL \somasub|Add0~1\ : std_logic;
SIGNAL \somasub|Add0~2_combout\ : std_logic;
SIGNAL \muxsoma2|y[1]~18_combout\ : std_logic;
SIGNAL \muxsoma2|y[1]~19_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:1:FAi|s~combout\ : std_logic;
SIGNAL \regB|q[1]~1_combout\ : std_logic;
SIGNAL \muxsoma1|y[1]~6_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:1:FAi|cout~0_combout\ : std_logic;
SIGNAL \muxsoma2|y[2]~15_combout\ : std_logic;
SIGNAL \muxsoma2|y[2]~16_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:2:FAi|s~combout\ : std_logic;
SIGNAL \regB|q[2]~2_combout\ : std_logic;
SIGNAL \muxsoma1|y[2]~7_combout\ : std_logic;
SIGNAL \somasub|Add0~3\ : std_logic;
SIGNAL \somasub|Add0~5\ : std_logic;
SIGNAL \somasub|Add0~6_combout\ : std_logic;
SIGNAL \regB|q[3]~3_combout\ : std_logic;
SIGNAL \muxsoma1|y[3]~4_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:4:FAi|cout~1_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:2:FAi|cout~0_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:4:FAi|cout~2_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:5:FAi|s~combout\ : std_logic;
SIGNAL \somasub|Add0~10_combout\ : std_logic;
SIGNAL \somasub|Add0~20_combout\ : std_logic;
SIGNAL \quantosZero|process_0~0_combout\ : std_logic;
SIGNAL \quantosZero|process_0~1_combout\ : std_logic;
SIGNAL \muxsoma2|y[7]~0_combout\ : std_logic;
SIGNAL \muxsoma2|y[7]~1_combout\ : std_logic;
SIGNAL \muxsoma2|y[7]~2_combout\ : std_logic;
SIGNAL \muxsoma2|y[3]~14_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:4:FAi|s~combout\ : std_logic;
SIGNAL \somasub|Add0~8_combout\ : std_logic;
SIGNAL \somasub|Add0~19_combout\ : std_logic;
SIGNAL \geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \geraBz|Equal0~1_combout\ : std_logic;
SIGNAL \geraBz|Equal0~2_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:6:FAi|cout~2_combout\ : std_logic;
SIGNAL \somasub|SUM|FA:7:FAi|cout~4_combout\ : std_logic;
SIGNAL \regA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \quantosZero|posicao\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regB|q\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_cEnt <= cEnt;
ww_mB <= mB;
ww_op <= op;
ww_cmult <= cmult;
ww_mmult <= mmult;
ww_entA <= entA;
ww_entB <= entB;
Az <= ww_Az;
Bz <= ww_Bz;
ovf <= ww_ovf;
mult <= ww_mult;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\geraBz|Equal0~2clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \geraBz|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y35_N16
\somasub|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~4_combout\ = ((\muxsoma2|y[2]~16_combout\ $ (\muxsoma1|y[2]~7_combout\ $ (\somasub|Add0~3\)))) # (GND)
-- \somasub|Add0~5\ = CARRY((\muxsoma2|y[2]~16_combout\ & (\muxsoma1|y[2]~7_combout\ & !\somasub|Add0~3\)) # (!\muxsoma2|y[2]~16_combout\ & ((\muxsoma1|y[2]~7_combout\) # (!\somasub|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[2]~16_combout\,
	datab => \muxsoma1|y[2]~7_combout\,
	datad => VCC,
	cin => \somasub|Add0~3\,
	combout => \somasub|Add0~4_combout\,
	cout => \somasub|Add0~5\);

-- Location: LCCOMB_X50_Y35_N4
\muxsoma1|y[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma1|y[5]~2_combout\ = (\op~combout\ & \regB|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~combout\,
	datad => \regB|q\(5),
	combout => \muxsoma1|y[5]~2_combout\);

-- Location: LCCOMB_X46_Y35_N26
\muxsoma2|y[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[4]~20_combout\ = (\muxsoma2|y[4]~12_combout\) # ((\quantosZero|posicao\(2) & \muxsoma2|y[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quantosZero|posicao\(2),
	datac => \muxsoma2|y[0]~13_combout\,
	datad => \muxsoma2|y[4]~12_combout\,
	combout => \muxsoma2|y[4]~20_combout\);

-- Location: LCCOMB_X47_Y35_N10
\somasub|SUM|FA:3:FAi|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:3:FAi|s~combout\ = \muxsoma2|y[3]~14_combout\ $ (\somasub|SUM|FA:2:FAi|cout~0_combout\ $ (((\op~combout\ & \regB|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \muxsoma2|y[3]~14_combout\,
	datac => \regB|q\(3),
	datad => \somasub|SUM|FA:2:FAi|cout~0_combout\,
	combout => \somasub|SUM|FA:3:FAi|s~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(3),
	combout => \entA~combout\(3));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cEnt~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cEnt,
	combout => \cEnt~combout\);

-- Location: LCFF_X46_Y35_N21
\regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entA~combout\(3),
	sload => VCC,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|q\(3));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(0),
	combout => \entA~combout\(0));

-- Location: LCFF_X47_Y35_N5
\regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entA~combout\(0),
	sload => VCC,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|q\(0));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(1),
	combout => \entA~combout\(1));

-- Location: LCFF_X46_Y35_N25
\regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entA~combout\(1),
	sload => VCC,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|q\(1));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(2),
	combout => \entA~combout\(2));

-- Location: LCFF_X46_Y35_N31
\regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entA~combout\(2),
	sload => VCC,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|q\(2));

-- Location: LCCOMB_X45_Y35_N0
\geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \geraAz|Equal0~0_combout\ = (!\regA|q\(3) & (!\regA|q\(0) & (!\regA|q\(1) & !\regA|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|q\(3),
	datab => \regA|q\(0),
	datac => \regA|q\(1),
	datad => \regA|q\(2),
	combout => \geraAz|Equal0~0_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mB,
	combout => \mB~combout\);

-- Location: CLKCTRL_G8
\geraBz|Equal0~2clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \geraBz|Equal0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \geraBz|Equal0~2clkctrl_outclk\);

-- Location: LCCOMB_X47_Y35_N8
\quantosZero|posicao[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \quantosZero|posicao\(2) = (GLOBAL(\geraBz|Equal0~2clkctrl_outclk\) & ((\quantosZero|posicao\(2)))) # (!GLOBAL(\geraBz|Equal0~2clkctrl_outclk\) & (!\geraBz|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \geraBz|Equal0~0_combout\,
	datac => \quantosZero|posicao\(2),
	datad => \geraBz|Equal0~2clkctrl_outclk\,
	combout => \quantosZero|posicao\(2));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_op,
	combout => \op~combout\);

-- Location: LCCOMB_X50_Y35_N28
\muxsoma1|y[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma1|y[7]~0_combout\ = (\op~combout\ & \regB|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~combout\,
	datad => \regB|q\(7),
	combout => \muxsoma1|y[7]~0_combout\);

-- Location: LCCOMB_X50_Y35_N18
\muxsoma2|y[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[7]~3_combout\ = (\quantosZero|posicao\(2) & \muxsoma2|y[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \quantosZero|posicao\(2),
	datad => \muxsoma2|y[7]~2_combout\,
	combout => \muxsoma2|y[7]~3_combout\);

-- Location: LCCOMB_X46_Y35_N20
\muxsoma2|y[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[6]~4_combout\ = (\quantosZero|posicao\(1) & ((\quantosZero|posicao\(0) & (!\op~combout\ & \regA|q\(3))) # (!\quantosZero|posicao\(0) & (\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quantosZero|posicao\(0),
	datab => \op~combout\,
	datac => \regA|q\(3),
	datad => \quantosZero|posicao\(1),
	combout => \muxsoma2|y[6]~4_combout\);

-- Location: LCCOMB_X46_Y35_N30
\ShiftLeft0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (!\quantosZero|posicao\(0) & ((\quantosZero|posicao\(1) & (\regA|q\(0))) # (!\quantosZero|posicao\(1) & ((\regA|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|q\(0),
	datab => \quantosZero|posicao\(1),
	datac => \regA|q\(2),
	datad => \quantosZero|posicao\(0),
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X46_Y35_N12
\ShiftLeft0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\ShiftLeft0~0_combout\) # ((!\quantosZero|posicao\(1) & (\regA|q\(1) & \quantosZero|posicao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quantosZero|posicao\(1),
	datab => \regA|q\(1),
	datac => \quantosZero|posicao\(0),
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~1_combout\);

-- Location: LCCOMB_X46_Y35_N18
\muxsoma2|y[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[6]~5_combout\ = (\op~combout\ & (\quantosZero|posicao\(2) & (\muxsoma2|y[6]~4_combout\))) # (!\op~combout\ & ((\quantosZero|posicao\(2) & ((\ShiftLeft0~1_combout\))) # (!\quantosZero|posicao\(2) & (\muxsoma2|y[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \quantosZero|posicao\(2),
	datac => \muxsoma2|y[6]~4_combout\,
	datad => \ShiftLeft0~1_combout\,
	combout => \muxsoma2|y[6]~5_combout\);

-- Location: LCCOMB_X47_Y35_N4
\muxsoma2|y[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[5]~8_combout\ = (\op~combout\ & (\quantosZero|posicao\(0))) # (!\op~combout\ & ((\quantosZero|posicao\(0) & (\regA|q\(0))) # (!\quantosZero|posicao\(0) & ((\regA|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \quantosZero|posicao\(0),
	datac => \regA|q\(0),
	datad => \regA|q\(1),
	combout => \muxsoma2|y[5]~8_combout\);

-- Location: LCCOMB_X46_Y35_N8
\muxsoma2|y[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[5]~6_combout\ = (\quantosZero|posicao\(1) & ((\quantosZero|posicao\(0) & ((\regA|q\(2)))) # (!\quantosZero|posicao\(0) & (\regA|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|q\(3),
	datab => \quantosZero|posicao\(1),
	datac => \regA|q\(2),
	datad => \quantosZero|posicao\(0),
	combout => \muxsoma2|y[5]~6_combout\);

-- Location: LCCOMB_X47_Y35_N14
\muxsoma2|y[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[5]~7_combout\ = (!\op~combout\ & (!\quantosZero|posicao\(2) & \muxsoma2|y[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datac => \quantosZero|posicao\(2),
	datad => \muxsoma2|y[5]~6_combout\,
	combout => \muxsoma2|y[5]~7_combout\);

-- Location: LCCOMB_X48_Y35_N6
\muxsoma2|y[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[5]~9_combout\ = (\muxsoma2|y[5]~7_combout\) # ((\quantosZero|posicao\(2) & (!\quantosZero|posicao\(1) & \muxsoma2|y[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quantosZero|posicao\(2),
	datab => \quantosZero|posicao\(1),
	datac => \muxsoma2|y[5]~8_combout\,
	datad => \muxsoma2|y[5]~7_combout\,
	combout => \muxsoma2|y[5]~9_combout\);

-- Location: LCCOMB_X48_Y35_N18
\muxsoma1|y[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma1|y[4]~3_combout\ = (\op~combout\ & \regB|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datac => \regB|q\(4),
	combout => \muxsoma1|y[4]~3_combout\);

-- Location: LCCOMB_X49_Y35_N18
\somasub|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~6_combout\ = (\muxsoma1|y[3]~4_combout\ & ((\muxsoma2|y[3]~14_combout\ & (!\somasub|Add0~5\)) # (!\muxsoma2|y[3]~14_combout\ & (\somasub|Add0~5\ & VCC)))) # (!\muxsoma1|y[3]~4_combout\ & ((\muxsoma2|y[3]~14_combout\ & ((\somasub|Add0~5\) # 
-- (GND))) # (!\muxsoma2|y[3]~14_combout\ & (!\somasub|Add0~5\))))
-- \somasub|Add0~7\ = CARRY((\muxsoma1|y[3]~4_combout\ & (\muxsoma2|y[3]~14_combout\ & !\somasub|Add0~5\)) # (!\muxsoma1|y[3]~4_combout\ & ((\muxsoma2|y[3]~14_combout\) # (!\somasub|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma1|y[3]~4_combout\,
	datab => \muxsoma2|y[3]~14_combout\,
	datad => VCC,
	cin => \somasub|Add0~5\,
	combout => \somasub|Add0~6_combout\,
	cout => \somasub|Add0~7\);

-- Location: LCCOMB_X49_Y35_N20
\somasub|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~8_combout\ = ((\muxsoma2|y[4]~20_combout\ $ (\muxsoma1|y[4]~3_combout\ $ (\somasub|Add0~7\)))) # (GND)
-- \somasub|Add0~9\ = CARRY((\muxsoma2|y[4]~20_combout\ & (\muxsoma1|y[4]~3_combout\ & !\somasub|Add0~7\)) # (!\muxsoma2|y[4]~20_combout\ & ((\muxsoma1|y[4]~3_combout\) # (!\somasub|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[4]~20_combout\,
	datab => \muxsoma1|y[4]~3_combout\,
	datad => VCC,
	cin => \somasub|Add0~7\,
	combout => \somasub|Add0~8_combout\,
	cout => \somasub|Add0~9\);

-- Location: LCCOMB_X49_Y35_N22
\somasub|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~10_combout\ = (\muxsoma1|y[5]~2_combout\ & ((\muxsoma2|y[5]~9_combout\ & (!\somasub|Add0~9\)) # (!\muxsoma2|y[5]~9_combout\ & (\somasub|Add0~9\ & VCC)))) # (!\muxsoma1|y[5]~2_combout\ & ((\muxsoma2|y[5]~9_combout\ & ((\somasub|Add0~9\) # 
-- (GND))) # (!\muxsoma2|y[5]~9_combout\ & (!\somasub|Add0~9\))))
-- \somasub|Add0~11\ = CARRY((\muxsoma1|y[5]~2_combout\ & (\muxsoma2|y[5]~9_combout\ & !\somasub|Add0~9\)) # (!\muxsoma1|y[5]~2_combout\ & ((\muxsoma2|y[5]~9_combout\) # (!\somasub|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma1|y[5]~2_combout\,
	datab => \muxsoma2|y[5]~9_combout\,
	datad => VCC,
	cin => \somasub|Add0~9\,
	combout => \somasub|Add0~10_combout\,
	cout => \somasub|Add0~11\);

-- Location: LCCOMB_X49_Y35_N24
\somasub|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~12_combout\ = ((\muxsoma2|y[6]~5_combout\ $ (\muxsoma1|y[6]~1_combout\ $ (\somasub|Add0~11\)))) # (GND)
-- \somasub|Add0~13\ = CARRY((\muxsoma2|y[6]~5_combout\ & (\muxsoma1|y[6]~1_combout\ & !\somasub|Add0~11\)) # (!\muxsoma2|y[6]~5_combout\ & ((\muxsoma1|y[6]~1_combout\) # (!\somasub|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[6]~5_combout\,
	datab => \muxsoma1|y[6]~1_combout\,
	datad => VCC,
	cin => \somasub|Add0~11\,
	combout => \somasub|Add0~12_combout\,
	cout => \somasub|Add0~13\);

-- Location: LCCOMB_X49_Y35_N10
\somasub|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~14_combout\ = (!\mB~combout\ & ((\somasub|Add0~12_combout\) # (!\op~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mB~combout\,
	datac => \somasub|Add0~12_combout\,
	datad => \op~combout\,
	combout => \somasub|Add0~14_combout\);

-- Location: LCCOMB_X49_Y35_N30
\somasub|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~15_combout\ = (\somasub|Add0~14_combout\ & ((\op~combout\) # (\somasub|SUM|FA:5:FAi|cout~0_combout\ $ (\muxsoma2|y[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somasub|SUM|FA:5:FAi|cout~0_combout\,
	datab => \op~combout\,
	datac => \muxsoma2|y[6]~5_combout\,
	datad => \somasub|Add0~14_combout\,
	combout => \somasub|Add0~15_combout\);

-- Location: LCFF_X49_Y35_N31
\regB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \somasub|Add0~15_combout\,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|q\(6));

-- Location: LCCOMB_X50_Y35_N10
\muxsoma1|y[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma1|y[6]~1_combout\ = (\op~combout\ & \regB|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\,
	datac => \regB|q\(6),
	combout => \muxsoma1|y[6]~1_combout\);

-- Location: LCCOMB_X49_Y35_N26
\somasub|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~16_combout\ = \muxsoma1|y[7]~0_combout\ $ (\somasub|Add0~13\ $ (!\muxsoma2|y[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \muxsoma1|y[7]~0_combout\,
	datad => \muxsoma2|y[7]~3_combout\,
	cin => \somasub|Add0~13\,
	combout => \somasub|Add0~16_combout\);

-- Location: LCCOMB_X46_Y35_N14
\muxsoma2|y[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[4]~10_combout\ = (\quantosZero|posicao\(0) & ((\quantosZero|posicao\(1) & ((\regA|q\(1)))) # (!\quantosZero|posicao\(1) & (\regA|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|q\(3),
	datab => \regA|q\(1),
	datac => \quantosZero|posicao\(1),
	datad => \quantosZero|posicao\(0),
	combout => \muxsoma2|y[4]~10_combout\);

-- Location: LCCOMB_X46_Y35_N28
\muxsoma2|y[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[4]~11_combout\ = (\regA|q\(2) & (\quantosZero|posicao\(1) & !\quantosZero|posicao\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|q\(2),
	datab => \quantosZero|posicao\(1),
	datad => \quantosZero|posicao\(0),
	combout => \muxsoma2|y[4]~11_combout\);

-- Location: LCCOMB_X46_Y35_N22
\muxsoma2|y[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[4]~12_combout\ = (!\op~combout\ & (!\quantosZero|posicao\(2) & ((\muxsoma2|y[4]~10_combout\) # (\muxsoma2|y[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \quantosZero|posicao\(2),
	datac => \muxsoma2|y[4]~10_combout\,
	datad => \muxsoma2|y[4]~11_combout\,
	combout => \muxsoma2|y[4]~12_combout\);

-- Location: LCCOMB_X48_Y35_N22
\somasub|SUM|FA:4:FAi|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:4:FAi|cout~0_combout\ = (\muxsoma1|y[4]~3_combout\ & ((\muxsoma2|y[4]~12_combout\) # ((\quantosZero|posicao\(2) & \muxsoma2|y[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quantosZero|posicao\(2),
	datab => \muxsoma2|y[4]~12_combout\,
	datac => \muxsoma2|y[0]~13_combout\,
	datad => \muxsoma1|y[4]~3_combout\,
	combout => \somasub|SUM|FA:4:FAi|cout~0_combout\);

-- Location: LCCOMB_X49_Y35_N6
\somasub|SUM|FA:5:FAi|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:5:FAi|cout~0_combout\ = (\muxsoma1|y[5]~2_combout\ & ((\somasub|SUM|FA:4:FAi|cout~0_combout\) # ((\muxsoma2|y[5]~9_combout\) # (\somasub|SUM|FA:4:FAi|cout~2_combout\)))) # (!\muxsoma1|y[5]~2_combout\ & (\muxsoma2|y[5]~9_combout\ & 
-- ((\somasub|SUM|FA:4:FAi|cout~0_combout\) # (\somasub|SUM|FA:4:FAi|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma1|y[5]~2_combout\,
	datab => \somasub|SUM|FA:4:FAi|cout~0_combout\,
	datac => \muxsoma2|y[5]~9_combout\,
	datad => \somasub|SUM|FA:4:FAi|cout~2_combout\,
	combout => \somasub|SUM|FA:5:FAi|cout~0_combout\);

-- Location: LCCOMB_X49_Y35_N2
\somasub|SUM|FA:7:FAi|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:7:FAi|s~combout\ = \muxsoma2|y[7]~3_combout\ $ (((\muxsoma2|y[6]~5_combout\ & ((\muxsoma1|y[6]~1_combout\) # (\somasub|SUM|FA:5:FAi|cout~0_combout\))) # (!\muxsoma2|y[6]~5_combout\ & (\muxsoma1|y[6]~1_combout\ & 
-- \somasub|SUM|FA:5:FAi|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[6]~5_combout\,
	datab => \muxsoma1|y[6]~1_combout\,
	datac => \muxsoma2|y[7]~3_combout\,
	datad => \somasub|SUM|FA:5:FAi|cout~0_combout\,
	combout => \somasub|SUM|FA:7:FAi|s~combout\);

-- Location: LCCOMB_X49_Y35_N0
\somasub|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~18_combout\ = (!\mB~combout\ & ((\op~combout\ & (\somasub|Add0~16_combout\)) # (!\op~combout\ & ((\somasub|SUM|FA:7:FAi|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mB~combout\,
	datab => \somasub|Add0~16_combout\,
	datac => \op~combout\,
	datad => \somasub|SUM|FA:7:FAi|s~combout\,
	combout => \somasub|Add0~18_combout\);

-- Location: LCFF_X49_Y35_N1
\regB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \somasub|Add0~18_combout\,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|q\(7));

-- Location: LCCOMB_X47_Y35_N22
\quantosZero|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \quantosZero|process_0~2_combout\ = (!\regB|q\(4) & (!\regB|q\(5) & ((\regB|q\(3)) # (\regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|q\(4),
	datab => \regB|q\(5),
	datac => \regB|q\(3),
	datad => \regB|q\(2),
	combout => \quantosZero|process_0~2_combout\);

-- Location: LCCOMB_X46_Y35_N24
\quantosZero|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \quantosZero|process_0~3_combout\ = (\regB|q\(6)) # ((\regB|q\(7)) # (\quantosZero|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|q\(6),
	datab => \regB|q\(7),
	datad => \quantosZero|process_0~2_combout\,
	combout => \quantosZero|process_0~3_combout\);

-- Location: LCCOMB_X46_Y35_N2
\quantosZero|posicao[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \quantosZero|posicao\(1) = (GLOBAL(\geraBz|Equal0~2clkctrl_outclk\) & (\quantosZero|posicao\(1))) # (!GLOBAL(\geraBz|Equal0~2clkctrl_outclk\) & ((\quantosZero|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quantosZero|posicao\(1),
	datac => \quantosZero|process_0~3_combout\,
	datad => \geraBz|Equal0~2clkctrl_outclk\,
	combout => \quantosZero|posicao\(1));

-- Location: LCCOMB_X47_Y35_N12
\muxsoma2|y[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[0]~13_combout\ = (!\quantosZero|posicao\(0) & (!\quantosZero|posicao\(1) & ((\op~combout\) # (\regA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \quantosZero|posicao\(0),
	datac => \regA|q\(0),
	datad => \quantosZero|posicao\(1),
	combout => \muxsoma2|y[0]~13_combout\);

-- Location: LCCOMB_X48_Y35_N26
\muxsoma2|y[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[0]~17_combout\ = (!\quantosZero|posicao\(2) & \muxsoma2|y[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quantosZero|posicao\(2),
	datad => \muxsoma2|y[0]~13_combout\,
	combout => \muxsoma2|y[0]~17_combout\);

-- Location: LCCOMB_X46_Y35_N4
\somasub|SUM|FA:0:FAi|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:0:FAi|s~2_combout\ = (\regB|q\(0) & (\op~combout\ $ (((!\quantosZero|posicao\(2) & \muxsoma2|y[0]~13_combout\))))) # (!\regB|q\(0) & (!\quantosZero|posicao\(2) & (\muxsoma2|y[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|q\(0),
	datab => \quantosZero|posicao\(2),
	datac => \muxsoma2|y[0]~13_combout\,
	datad => \op~combout\,
	combout => \somasub|SUM|FA:0:FAi|s~2_combout\);

-- Location: LCCOMB_X49_Y35_N12
\somasub|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~0_combout\ = (\muxsoma1|y[0]~5_combout\ & ((GND) # (!\muxsoma2|y[0]~17_combout\))) # (!\muxsoma1|y[0]~5_combout\ & (\muxsoma2|y[0]~17_combout\ $ (GND)))
-- \somasub|Add0~1\ = CARRY((\muxsoma1|y[0]~5_combout\) # (!\muxsoma2|y[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma1|y[0]~5_combout\,
	datab => \muxsoma2|y[0]~17_combout\,
	datad => VCC,
	combout => \somasub|Add0~0_combout\,
	cout => \somasub|Add0~1\);

-- Location: LCCOMB_X48_Y35_N28
\regB|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \regB|q[0]~0_combout\ = (\op~combout\ & ((\somasub|Add0~0_combout\))) # (!\op~combout\ & (\somasub|SUM|FA:0:FAi|s~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \somasub|SUM|FA:0:FAi|s~2_combout\,
	datad => \somasub|Add0~0_combout\,
	combout => \regB|q[0]~0_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(0),
	combout => \entB~combout\(0));

-- Location: LCFF_X48_Y35_N29
\regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \regB|q[0]~0_combout\,
	sdata => \entB~combout\(0),
	sload => \mB~combout\,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|q\(0));

-- Location: LCCOMB_X48_Y35_N16
\muxsoma1|y[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma1|y[0]~5_combout\ = (\regB|q\(0) & \op~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|q\(0),
	datad => \op~combout\,
	combout => \muxsoma1|y[0]~5_combout\);

-- Location: LCCOMB_X49_Y35_N14
\somasub|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~2_combout\ = (\muxsoma2|y[1]~19_combout\ & ((\muxsoma1|y[1]~6_combout\ & (!\somasub|Add0~1\)) # (!\muxsoma1|y[1]~6_combout\ & ((\somasub|Add0~1\) # (GND))))) # (!\muxsoma2|y[1]~19_combout\ & ((\muxsoma1|y[1]~6_combout\ & (\somasub|Add0~1\ & 
-- VCC)) # (!\muxsoma1|y[1]~6_combout\ & (!\somasub|Add0~1\))))
-- \somasub|Add0~3\ = CARRY((\muxsoma2|y[1]~19_combout\ & ((!\somasub|Add0~1\) # (!\muxsoma1|y[1]~6_combout\))) # (!\muxsoma2|y[1]~19_combout\ & (!\muxsoma1|y[1]~6_combout\ & !\somasub|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[1]~19_combout\,
	datab => \muxsoma1|y[1]~6_combout\,
	datad => VCC,
	cin => \somasub|Add0~1\,
	combout => \somasub|Add0~2_combout\,
	cout => \somasub|Add0~3\);

-- Location: LCCOMB_X47_Y35_N0
\muxsoma2|y[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[1]~18_combout\ = (\op~combout\ & (((\quantosZero|posicao\(0))))) # (!\op~combout\ & ((\quantosZero|posicao\(0) & ((\regA|q\(0)))) # (!\quantosZero|posicao\(0) & (\regA|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \regA|q\(1),
	datac => \regA|q\(0),
	datad => \quantosZero|posicao\(0),
	combout => \muxsoma2|y[1]~18_combout\);

-- Location: LCCOMB_X47_Y35_N2
\muxsoma2|y[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[1]~19_combout\ = (!\quantosZero|posicao\(1) & (!\quantosZero|posicao\(2) & \muxsoma2|y[1]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quantosZero|posicao\(1),
	datac => \quantosZero|posicao\(2),
	datad => \muxsoma2|y[1]~18_combout\,
	combout => \muxsoma2|y[1]~19_combout\);

-- Location: LCCOMB_X50_Y35_N30
\somasub|SUM|FA:1:FAi|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:1:FAi|s~combout\ = \muxsoma1|y[1]~6_combout\ $ (\muxsoma2|y[1]~19_combout\ $ (((\muxsoma1|y[0]~5_combout\ & \muxsoma2|y[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma1|y[0]~5_combout\,
	datab => \muxsoma1|y[1]~6_combout\,
	datac => \muxsoma2|y[1]~19_combout\,
	datad => \muxsoma2|y[0]~17_combout\,
	combout => \somasub|SUM|FA:1:FAi|s~combout\);

-- Location: LCCOMB_X49_Y35_N4
\regB|q[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \regB|q[1]~1_combout\ = (\op~combout\ & (\somasub|Add0~2_combout\)) # (!\op~combout\ & ((\somasub|SUM|FA:1:FAi|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \somasub|Add0~2_combout\,
	datad => \somasub|SUM|FA:1:FAi|s~combout\,
	combout => \regB|q[1]~1_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(1),
	combout => \entB~combout\(1));

-- Location: LCFF_X49_Y35_N5
\regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \regB|q[1]~1_combout\,
	sdata => \entB~combout\(1),
	sload => \mB~combout\,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|q\(1));

-- Location: LCCOMB_X49_Y35_N28
\muxsoma1|y[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma1|y[1]~6_combout\ = (\op~combout\ & \regB|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datac => \regB|q\(1),
	combout => \muxsoma1|y[1]~6_combout\);

-- Location: LCCOMB_X48_Y35_N0
\somasub|SUM|FA:1:FAi|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:1:FAi|cout~0_combout\ = (\muxsoma2|y[1]~19_combout\ & ((\muxsoma1|y[1]~6_combout\) # ((\muxsoma2|y[0]~17_combout\ & \muxsoma1|y[0]~5_combout\)))) # (!\muxsoma2|y[1]~19_combout\ & (\muxsoma2|y[0]~17_combout\ & (\muxsoma1|y[0]~5_combout\ & 
-- \muxsoma1|y[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[1]~19_combout\,
	datab => \muxsoma2|y[0]~17_combout\,
	datac => \muxsoma1|y[0]~5_combout\,
	datad => \muxsoma1|y[1]~6_combout\,
	combout => \somasub|SUM|FA:1:FAi|cout~0_combout\);

-- Location: LCCOMB_X47_Y35_N24
\muxsoma2|y[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[2]~15_combout\ = (\op~combout\ & (!\quantosZero|posicao\(0) & (!\quantosZero|posicao\(2) & \quantosZero|posicao\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \quantosZero|posicao\(0),
	datac => \quantosZero|posicao\(2),
	datad => \quantosZero|posicao\(1),
	combout => \muxsoma2|y[2]~15_combout\);

-- Location: LCCOMB_X47_Y35_N30
\muxsoma2|y[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[2]~16_combout\ = (\muxsoma2|y[2]~15_combout\) # ((!\op~combout\ & (!\quantosZero|posicao\(2) & \ShiftLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \quantosZero|posicao\(2),
	datac => \muxsoma2|y[2]~15_combout\,
	datad => \ShiftLeft0~1_combout\,
	combout => \muxsoma2|y[2]~16_combout\);

-- Location: LCCOMB_X47_Y35_N16
\somasub|SUM|FA:2:FAi|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:2:FAi|s~combout\ = \somasub|SUM|FA:1:FAi|cout~0_combout\ $ (\muxsoma2|y[2]~16_combout\ $ (((\op~combout\ & \regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \regB|q\(2),
	datac => \somasub|SUM|FA:1:FAi|cout~0_combout\,
	datad => \muxsoma2|y[2]~16_combout\,
	combout => \somasub|SUM|FA:2:FAi|s~combout\);

-- Location: LCCOMB_X48_Y35_N2
\regB|q[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \regB|q[2]~2_combout\ = (\op~combout\ & (\somasub|Add0~4_combout\)) # (!\op~combout\ & ((\somasub|SUM|FA:2:FAi|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somasub|Add0~4_combout\,
	datab => \op~combout\,
	datad => \somasub|SUM|FA:2:FAi|s~combout\,
	combout => \regB|q[2]~2_combout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(2),
	combout => \entB~combout\(2));

-- Location: LCFF_X48_Y35_N3
\regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \regB|q[2]~2_combout\,
	sdata => \entB~combout\(2),
	sload => \mB~combout\,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|q\(2));

-- Location: LCCOMB_X50_Y35_N14
\muxsoma1|y[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma1|y[2]~7_combout\ = (\op~combout\ & \regB|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~combout\,
	datad => \regB|q\(2),
	combout => \muxsoma1|y[2]~7_combout\);

-- Location: LCCOMB_X48_Y35_N8
\regB|q[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \regB|q[3]~3_combout\ = (\op~combout\ & ((\somasub|Add0~6_combout\))) # (!\op~combout\ & (\somasub|SUM|FA:3:FAi|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somasub|SUM|FA:3:FAi|s~combout\,
	datab => \op~combout\,
	datad => \somasub|Add0~6_combout\,
	combout => \regB|q[3]~3_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(3),
	combout => \entB~combout\(3));

-- Location: LCFF_X48_Y35_N9
\regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \regB|q[3]~3_combout\,
	sdata => \entB~combout\(3),
	sload => \mB~combout\,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|q\(3));

-- Location: LCCOMB_X48_Y35_N12
\muxsoma1|y[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma1|y[3]~4_combout\ = (\regB|q\(3) & \op~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|q\(3),
	datad => \op~combout\,
	combout => \muxsoma1|y[3]~4_combout\);

-- Location: LCCOMB_X47_Y35_N6
\somasub|SUM|FA:4:FAi|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:4:FAi|cout~1_combout\ = (\muxsoma2|y[4]~12_combout\) # ((\muxsoma1|y[4]~3_combout\) # ((\muxsoma2|y[0]~13_combout\ & \quantosZero|posicao\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[0]~13_combout\,
	datab => \muxsoma2|y[4]~12_combout\,
	datac => \quantosZero|posicao\(2),
	datad => \muxsoma1|y[4]~3_combout\,
	combout => \somasub|SUM|FA:4:FAi|cout~1_combout\);

-- Location: LCCOMB_X48_Y35_N10
\somasub|SUM|FA:2:FAi|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:2:FAi|cout~0_combout\ = (\muxsoma2|y[2]~16_combout\ & ((\somasub|SUM|FA:1:FAi|cout~0_combout\) # ((\op~combout\ & \regB|q\(2))))) # (!\muxsoma2|y[2]~16_combout\ & (\op~combout\ & (\regB|q\(2) & \somasub|SUM|FA:1:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \regB|q\(2),
	datac => \muxsoma2|y[2]~16_combout\,
	datad => \somasub|SUM|FA:1:FAi|cout~0_combout\,
	combout => \somasub|SUM|FA:2:FAi|cout~0_combout\);

-- Location: LCCOMB_X48_Y35_N14
\somasub|SUM|FA:4:FAi|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:4:FAi|cout~2_combout\ = (\somasub|SUM|FA:4:FAi|cout~1_combout\ & ((\muxsoma2|y[3]~14_combout\ & ((\muxsoma1|y[3]~4_combout\) # (\somasub|SUM|FA:2:FAi|cout~0_combout\))) # (!\muxsoma2|y[3]~14_combout\ & (\muxsoma1|y[3]~4_combout\ & 
-- \somasub|SUM|FA:2:FAi|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[3]~14_combout\,
	datab => \muxsoma1|y[3]~4_combout\,
	datac => \somasub|SUM|FA:4:FAi|cout~1_combout\,
	datad => \somasub|SUM|FA:2:FAi|cout~0_combout\,
	combout => \somasub|SUM|FA:4:FAi|cout~2_combout\);

-- Location: LCCOMB_X48_Y35_N24
\somasub|SUM|FA:5:FAi|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:5:FAi|s~combout\ = \muxsoma2|y[5]~9_combout\ $ (((\somasub|SUM|FA:4:FAi|cout~2_combout\) # (\somasub|SUM|FA:4:FAi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[5]~9_combout\,
	datac => \somasub|SUM|FA:4:FAi|cout~2_combout\,
	datad => \somasub|SUM|FA:4:FAi|cout~0_combout\,
	combout => \somasub|SUM|FA:5:FAi|s~combout\);

-- Location: LCCOMB_X48_Y35_N20
\somasub|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~20_combout\ = (!\mB~combout\ & ((\op~combout\ & ((\somasub|Add0~10_combout\))) # (!\op~combout\ & (\somasub|SUM|FA:5:FAi|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \mB~combout\,
	datac => \somasub|SUM|FA:5:FAi|s~combout\,
	datad => \somasub|Add0~10_combout\,
	combout => \somasub|Add0~20_combout\);

-- Location: LCFF_X48_Y35_N21
\regB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \somasub|Add0~20_combout\,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|q\(5));

-- Location: LCCOMB_X47_Y35_N26
\quantosZero|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \quantosZero|process_0~0_combout\ = (\geraBz|Equal0~0_combout\ & ((\regB|q\(3)) # ((\regB|q\(1) & !\regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|q\(1),
	datab => \regB|q\(2),
	datac => \regB|q\(3),
	datad => \geraBz|Equal0~0_combout\,
	combout => \quantosZero|process_0~0_combout\);

-- Location: LCCOMB_X47_Y35_N28
\quantosZero|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \quantosZero|process_0~1_combout\ = (\regB|q\(7)) # ((\quantosZero|process_0~0_combout\) # ((\regB|q\(5) & !\regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|q\(7),
	datab => \regB|q\(5),
	datac => \regB|q\(6),
	datad => \quantosZero|process_0~0_combout\,
	combout => \quantosZero|process_0~1_combout\);

-- Location: LCCOMB_X47_Y35_N18
\quantosZero|posicao[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \quantosZero|posicao\(0) = (GLOBAL(\geraBz|Equal0~2clkctrl_outclk\) & (\quantosZero|posicao\(0))) # (!GLOBAL(\geraBz|Equal0~2clkctrl_outclk\) & ((\quantosZero|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quantosZero|posicao\(0),
	datac => \geraBz|Equal0~2clkctrl_outclk\,
	datad => \quantosZero|process_0~1_combout\,
	combout => \quantosZero|posicao\(0));

-- Location: LCCOMB_X46_Y35_N6
\muxsoma2|y[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[7]~0_combout\ = (\quantosZero|posicao\(1) & (((\regA|q\(1)) # (\quantosZero|posicao\(0))))) # (!\quantosZero|posicao\(1) & (\regA|q\(3) & ((!\quantosZero|posicao\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|q\(3),
	datab => \regA|q\(1),
	datac => \quantosZero|posicao\(1),
	datad => \quantosZero|posicao\(0),
	combout => \muxsoma2|y[7]~0_combout\);

-- Location: LCCOMB_X46_Y35_N0
\muxsoma2|y[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[7]~1_combout\ = (\muxsoma2|y[7]~0_combout\ & (\regA|q\(0))) # (!\muxsoma2|y[7]~0_combout\ & ((\regA|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|q\(0),
	datac => \regA|q\(2),
	datad => \muxsoma2|y[7]~0_combout\,
	combout => \muxsoma2|y[7]~1_combout\);

-- Location: LCCOMB_X46_Y35_N10
\muxsoma2|y[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[7]~2_combout\ = (\op~combout\ & (\muxsoma2|y[7]~0_combout\ & (\quantosZero|posicao\(0)))) # (!\op~combout\ & ((\quantosZero|posicao\(0) & ((\muxsoma2|y[7]~1_combout\))) # (!\quantosZero|posicao\(0) & (\muxsoma2|y[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[7]~0_combout\,
	datab => \op~combout\,
	datac => \quantosZero|posicao\(0),
	datad => \muxsoma2|y[7]~1_combout\,
	combout => \muxsoma2|y[7]~2_combout\);

-- Location: LCCOMB_X46_Y35_N16
\muxsoma2|y[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \muxsoma2|y[3]~14_combout\ = (!\quantosZero|posicao\(2) & \muxsoma2|y[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \quantosZero|posicao\(2),
	datad => \muxsoma2|y[7]~2_combout\,
	combout => \muxsoma2|y[3]~14_combout\);

-- Location: LCCOMB_X47_Y35_N20
\somasub|SUM|FA:4:FAi|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:4:FAi|s~combout\ = \muxsoma2|y[4]~20_combout\ $ (((\muxsoma2|y[3]~14_combout\ & ((\muxsoma1|y[3]~4_combout\) # (\somasub|SUM|FA:2:FAi|cout~0_combout\))) # (!\muxsoma2|y[3]~14_combout\ & (\muxsoma1|y[3]~4_combout\ & 
-- \somasub|SUM|FA:2:FAi|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxsoma2|y[4]~20_combout\,
	datab => \muxsoma2|y[3]~14_combout\,
	datac => \muxsoma1|y[3]~4_combout\,
	datad => \somasub|SUM|FA:2:FAi|cout~0_combout\,
	combout => \somasub|SUM|FA:4:FAi|s~combout\);

-- Location: LCCOMB_X48_Y35_N4
\somasub|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|Add0~19_combout\ = (!\mB~combout\ & ((\op~combout\ & ((\somasub|Add0~8_combout\))) # (!\op~combout\ & (\somasub|SUM|FA:4:FAi|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \mB~combout\,
	datac => \somasub|SUM|FA:4:FAi|s~combout\,
	datad => \somasub|Add0~8_combout\,
	combout => \somasub|Add0~19_combout\);

-- Location: LCFF_X48_Y35_N5
\regB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \somasub|Add0~19_combout\,
	ena => \cEnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|q\(4));

-- Location: LCCOMB_X48_Y35_N30
\geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \geraBz|Equal0~0_combout\ = (!\regB|q\(5) & (!\regB|q\(4) & (!\regB|q\(7) & !\regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|q\(5),
	datab => \regB|q\(4),
	datac => \regB|q\(7),
	datad => \regB|q\(6),
	combout => \geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y35_N8
\geraBz|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \geraBz|Equal0~1_combout\ = (!\regB|q\(2) & (!\regB|q\(0) & (!\regB|q\(1) & !\regB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|q\(2),
	datab => \regB|q\(0),
	datac => \regB|q\(1),
	datad => \regB|q\(3),
	combout => \geraBz|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y35_N26
\geraBz|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \geraBz|Equal0~2_combout\ = (\geraBz|Equal0~0_combout\ & \geraBz|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \geraBz|Equal0~0_combout\,
	datad => \geraBz|Equal0~1_combout\,
	combout => \geraBz|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y35_N20
\somasub|SUM|FA:6:FAi|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:6:FAi|cout~2_combout\ = (\somasub|SUM|FA:5:FAi|cout~0_combout\ & ((\muxsoma2|y[6]~5_combout\) # ((\op~combout\ & \regB|q\(6))))) # (!\somasub|SUM|FA:5:FAi|cout~0_combout\ & (\op~combout\ & (\regB|q\(6) & \muxsoma2|y[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somasub|SUM|FA:5:FAi|cout~0_combout\,
	datab => \op~combout\,
	datac => \regB|q\(6),
	datad => \muxsoma2|y[6]~5_combout\,
	combout => \somasub|SUM|FA:6:FAi|cout~2_combout\);

-- Location: LCCOMB_X50_Y35_N24
\somasub|SUM|FA:7:FAi|cout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somasub|SUM|FA:7:FAi|cout~4_combout\ = (\somasub|SUM|FA:6:FAi|cout~2_combout\ & ((\muxsoma2|y[7]~3_combout\) # ((\op~combout\ & \regB|q\(7))))) # (!\somasub|SUM|FA:6:FAi|cout~2_combout\ & (\muxsoma2|y[7]~3_combout\ & (\op~combout\ & \regB|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somasub|SUM|FA:6:FAi|cout~2_combout\,
	datab => \muxsoma2|y[7]~3_combout\,
	datac => \op~combout\,
	datad => \regB|q\(7),
	combout => \somasub|SUM|FA:7:FAi|cout~4_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mmult~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mmult);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Az~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \geraAz|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Az);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Bz~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \geraBz|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Bz);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovf~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somasub|SUM|FA:7:FAi|cout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovf);

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(0));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(1));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(2));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(3));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(4));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(6));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(7));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cmult~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cmult);
END structure;


