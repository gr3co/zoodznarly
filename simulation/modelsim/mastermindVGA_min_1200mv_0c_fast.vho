-- Copyright (C) 1991-2012 Altera Corporation
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
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "04/02/2014 11:52:51"

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

ENTITY 	chipInterface IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_BLANK_N : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_HS : OUT std_logic
	);
END chipInterface;

-- Design Ports Information
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF chipInterface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tca|adderIn~1_combout\ : std_logic;
SIGNAL \tca|adderIn~2_combout\ : std_logic;
SIGNAL \ggt|lg|g0|Q~1_combout\ : std_logic;
SIGNAL \ggt|lg|g3|Q~3_combout\ : std_logic;
SIGNAL \ggt|lg|g2|Q~2_combout\ : std_logic;
SIGNAL \ggt|gcfsm|prevPrevGradeIt~q\ : std_logic;
SIGNAL \ggt|gz0|currentState.check0~q\ : std_logic;
SIGNAL \ggt|gz0|currentState.waiting~q\ : std_logic;
SIGNAL \ggt|gz0|Selector0~0_combout\ : std_logic;
SIGNAL \ggt|gz0|Selector4~0_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\ : std_logic;
SIGNAL \ggt|gcfsm|prevPrevGradeIt~feeder_combout\ : std_logic;
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
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \VGA_BLANK_N~output_o\ : std_logic;
SIGNAL \VGA_CLK~output_o\ : std_logic;
SIGNAL \VGA_SYNC_N~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \tca|r1|Q[0]~4_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \igp|prevstartGame~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \igp|prevstartGame~q\ : std_logic;
SIGNAL \igp|prevprevstartGame~feeder_combout\ : std_logic;
SIGNAL \igp|prevprevstartGame~q\ : std_logic;
SIGNAL \tca|r1|Q[1]~7\ : std_logic;
SIGNAL \tca|r1|Q[2]~8_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \tca|ca|prevCoinInserted~0_combout\ : std_logic;
SIGNAL \tca|ca|prevCoinInserted~q\ : std_logic;
SIGNAL \tca|ca|prevPrevCoinInserted~feeder_combout\ : std_logic;
SIGNAL \tca|ca|prevPrevCoinInserted~q\ : std_logic;
SIGNAL \tca|ca|goNow~0_combout\ : std_logic;
SIGNAL \tca|ca|goNow~q\ : std_logic;
SIGNAL \tca|ca|Mux0~0_combout\ : std_logic;
SIGNAL \tca|ca|Selector0~0_combout\ : std_logic;
SIGNAL \tca|ca|nextState~7_combout\ : std_logic;
SIGNAL \tca|ca|nextState.d1ch3~4_combout\ : std_logic;
SIGNAL \tca|ca|Selector1~0_combout\ : std_logic;
SIGNAL \tca|ca|currState.d0ch2~q\ : std_logic;
SIGNAL \tca|ca|nextState.d1ch3~5_combout\ : std_logic;
SIGNAL \tca|ca|currState.d1ch3~q\ : std_logic;
SIGNAL \tca|ca|Selector2~2_combout\ : std_logic;
SIGNAL \tca|ca|Selector2~4_combout\ : std_logic;
SIGNAL \tca|ca|currState.d0ch3~q\ : std_logic;
SIGNAL \tca|ca|Selector2~3_combout\ : std_logic;
SIGNAL \tca|ca|Selector5~0_combout\ : std_logic;
SIGNAL \tca|ca|currState.d1ch2~q\ : std_logic;
SIGNAL \tca|ca|nextState~6_combout\ : std_logic;
SIGNAL \tca|ca|Selector4~0_combout\ : std_logic;
SIGNAL \tca|ca|currState.d1ch1~q\ : std_logic;
SIGNAL \tca|ca|nextState~5_combout\ : std_logic;
SIGNAL \tca|ca|Selector3~0_combout\ : std_logic;
SIGNAL \tca|ca|Selector3~1_combout\ : std_logic;
SIGNAL \tca|ca|currState.d1ch0~q\ : std_logic;
SIGNAL \tca|ca|nextState.d0ch0~0_combout\ : std_logic;
SIGNAL \tca|ca|currState.d0ch0~q\ : std_logic;
SIGNAL \tca|ca|nextState~4_combout\ : std_logic;
SIGNAL \tca|ca|Selector0~1_combout\ : std_logic;
SIGNAL \tca|ca|currState.d0ch1~q\ : std_logic;
SIGNAL \tca|adderIn~0_combout\ : std_logic;
SIGNAL \tca|r1|Q[3]~12_combout\ : std_logic;
SIGNAL \tca|ready~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \igp|Selector0~0_combout\ : std_logic;
SIGNAL \igp|currState.waitingtoplay~q\ : std_logic;
SIGNAL \igp|Selector1~0_combout\ : std_logic;
SIGNAL \igp|currState.ingame~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \ggt|gcfsm|prevGradeIt~0_combout\ : std_logic;
SIGNAL \ggt|gcfsm|prevGradeIt~q\ : std_logic;
SIGNAL \ggt|gcfsm|GradeItNow~0_combout\ : std_logic;
SIGNAL \ggt|gcfsm|GradeItNow~q\ : std_logic;
SIGNAL \ggt|gcfsm|currState.gradeZnarlyS~feeder_combout\ : std_logic;
SIGNAL \ggt|gcfsm|currState.gradeZnarlyS~q\ : std_logic;
SIGNAL \ggt|gcfsm|Selector1~0_combout\ : std_logic;
SIGNAL \ggt|gcfsm|currState.gradeZoodS~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ggt|lg|g1|Q~0_combout\ : std_logic;
SIGNAL \ggt|lg|g3|Q[1]~1_combout\ : std_logic;
SIGNAL \ggt|lg|g1|Q~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \lms|m1|Q[1]~0_combout\ : std_logic;
SIGNAL \ggt|gzn|gm1|Equal0~0_combout\ : std_logic;
SIGNAL \ggt|gzn|gm1|Equal0~1_combout\ : std_logic;
SIGNAL \ggt|gzn|seenOutZnarly[1]~feeder_combout\ : std_logic;
SIGNAL \ggt|gz0|Selector1~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ggt|lg|g0|Q~2_combout\ : std_logic;
SIGNAL \lms|load2~0_combout\ : std_logic;
SIGNAL \lms|m0|Q[1]~0_combout\ : std_logic;
SIGNAL \lms|m0|Q[2]~2_combout\ : std_logic;
SIGNAL \lms|Equal0~0_combout\ : std_logic;
SIGNAL \lms|load0~0_combout\ : std_logic;
SIGNAL \lms|m0|Q[0]~1_combout\ : std_logic;
SIGNAL \ggt|lg|g0|Q~0_combout\ : std_logic;
SIGNAL \ggt|gzn|gm0|Equal0~0_combout\ : std_logic;
SIGNAL \ggt|gzn|gm0|Equal0~1_combout\ : std_logic;
SIGNAL \ggt|gz0|Selector1~1_combout\ : std_logic;
SIGNAL \ggt|gz0|currentState.check1~q\ : std_logic;
SIGNAL \lms|m2|Q[0]~1_combout\ : std_logic;
SIGNAL \lms|m2|Q[1]~0_combout\ : std_logic;
SIGNAL \lms|Equal2~0_combout\ : std_logic;
SIGNAL \lms|load2~1_combout\ : std_logic;
SIGNAL \lms|m2|Q[2]~2_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ggt|lg|g2|Q~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ggt|lg|g2|Q~0_combout\ : std_logic;
SIGNAL \ggt|gzn|gm2|Equal0~0_combout\ : std_logic;
SIGNAL \ggt|gzn|gm2|Equal0~1_combout\ : std_logic;
SIGNAL \ggt|gz0|Selector2~0_combout\ : std_logic;
SIGNAL \ggt|gz0|currentState.check2~q\ : std_logic;
SIGNAL \lms|load1~0_combout\ : std_logic;
SIGNAL \lms|m3|Q[0]~1_combout\ : std_logic;
SIGNAL \lms|m3|Q[1]~0_combout\ : std_logic;
SIGNAL \lms|Equal3~0_combout\ : std_logic;
SIGNAL \lms|load3~0_combout\ : std_logic;
SIGNAL \lms|m3|Q[2]~2_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \ggt|lg|g3|Q~4_combout\ : std_logic;
SIGNAL \ggt|lg|g3|Q~2_combout\ : std_logic;
SIGNAL \ggt|gzn|gm3|Equal0~0_combout\ : std_logic;
SIGNAL \ggt|gzn|gm3|Equal0~1_combout\ : std_logic;
SIGNAL \ggt|gz0|Selector5~0_combout\ : std_logic;
SIGNAL \ggt|gz0|currentState.done~q\ : std_logic;
SIGNAL \ggt|gcfsm|nextState.doneS~0_combout\ : std_logic;
SIGNAL \ggt|gcfsm|currState.doneS~q\ : std_logic;
SIGNAL \ggt|gcfsm|Selector0~0_combout\ : std_logic;
SIGNAL \ggt|gcfsm|currState.waitingS~q\ : std_logic;
SIGNAL \ggt|gcfsm|nextState.loadGuessS~0_combout\ : std_logic;
SIGNAL \ggt|gcfsm|currState.loadGuessS~q\ : std_logic;
SIGNAL \ggt|lg|g1|Q~2_combout\ : std_logic;
SIGNAL \ggt|gzn|Add0~4_combout\ : std_logic;
SIGNAL \ggt|gzn|Add1~1_combout\ : std_logic;
SIGNAL \ggt|gzn|Add1~0_combout\ : std_logic;
SIGNAL \ggt|gzn|gw|Equal0~0_combout\ : std_logic;
SIGNAL \ggt|gzn|GameWon~q\ : std_logic;
SIGNAL \ggt|rn|Q[0]~4_combout\ : std_logic;
SIGNAL \ggt|rn|Q[3]~12_combout\ : std_logic;
SIGNAL \ggt|rn|Q[0]~5\ : std_logic;
SIGNAL \ggt|rn|Q[1]~6_combout\ : std_logic;
SIGNAL \ggt|rn|Q[1]~7\ : std_logic;
SIGNAL \ggt|rn|Q[2]~9\ : std_logic;
SIGNAL \ggt|rn|Q[3]~10_combout\ : std_logic;
SIGNAL \ggt|rn|Q[2]~8_combout\ : std_logic;
SIGNAL \ggt|Equal0~0_combout\ : std_logic;
SIGNAL \igp|nextState.backtowaiting~0_combout\ : std_logic;
SIGNAL \igp|currState.backtowaiting~q\ : std_logic;
SIGNAL \ggt|lg|g3|Q[1]~0_combout\ : std_logic;
SIGNAL \lms|load1~1_combout\ : std_logic;
SIGNAL \lms|m1|Q[0]~1_combout\ : std_logic;
SIGNAL \lms|m1|Q[2]~2_combout\ : std_logic;
SIGNAL \lms|Equal1~0_combout\ : std_logic;
SIGNAL \lms|masterLoaded~0_combout\ : std_logic;
SIGNAL \tca|ready~1_combout\ : std_logic;
SIGNAL \igp|startGameNow~0_combout\ : std_logic;
SIGNAL \igp|startGameNow~q\ : std_logic;
SIGNAL \tca|en_reg~combout\ : std_logic;
SIGNAL \tca|r1|Q[0]~5\ : std_logic;
SIGNAL \tca|r1|Q[1]~6_combout\ : std_logic;
SIGNAL \tca|r1|Q[2]~9\ : std_logic;
SIGNAL \tca|r1|Q[3]~10_combout\ : std_logic;
SIGNAL \ng|segment[0]~0_combout\ : std_logic;
SIGNAL \ng|segment[1]~1_combout\ : std_logic;
SIGNAL \ng|segment[2]~2_combout\ : std_logic;
SIGNAL \ng|segment[3]~3_combout\ : std_logic;
SIGNAL \ng|segment[4]~4_combout\ : std_logic;
SIGNAL \ng|segment[5]~5_combout\ : std_logic;
SIGNAL \ng|segment[6]~6_combout\ : std_logic;
SIGNAL \rn|segment[0]~0_combout\ : std_logic;
SIGNAL \rn|segment[1]~1_combout\ : std_logic;
SIGNAL \rn|segment[2]~2_combout\ : std_logic;
SIGNAL \rn|segment[3]~3_combout\ : std_logic;
SIGNAL \rn|segment[4]~4_combout\ : std_logic;
SIGNAL \rn|segment[5]~5_combout\ : std_logic;
SIGNAL \rn|segment[6]~6_combout\ : std_logic;
SIGNAL \ggt|gzn|rsrl[0]~0_combout\ : std_logic;
SIGNAL \ggt|gzn|rsrl[1]~1_combout\ : std_logic;
SIGNAL \ggt|LessThan0~0_combout\ : std_logic;
SIGNAL \ggt|gzn|rsrl[2]~2_combout\ : std_logic;
SIGNAL \zo|segment[3]~0_combout\ : std_logic;
SIGNAL \zn|segment[0]~0_combout\ : std_logic;
SIGNAL \zn|segment[1]~1_combout\ : std_logic;
SIGNAL \zn|segment~2_combout\ : std_logic;
SIGNAL \zn|segment[5]~3_combout\ : std_logic;
SIGNAL \lms|h4|segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h4|segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h4|segment~2_combout\ : std_logic;
SIGNAL \lms|h4|segment[5]~3_combout\ : std_logic;
SIGNAL \lms|h3|segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h3|segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h3|segment~2_combout\ : std_logic;
SIGNAL \lms|h3|segment[5]~3_combout\ : std_logic;
SIGNAL \lms|h2|segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h2|segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h2|segment~2_combout\ : std_logic;
SIGNAL \lms|h2|segment[5]~3_combout\ : std_logic;
SIGNAL \lms|h1|segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h1|segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h1|segment~2_combout\ : std_logic;
SIGNAL \lms|h1|segment[5]~3_combout\ : std_logic;
SIGNAL \zo|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|h1|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|h2|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|h3|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|h4|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|m1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \lms|m2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \lms|m3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ggt|lg|g0|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ggt|lg|g1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ggt|lg|g2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ggt|lg|g3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ggt|rn|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \zn|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \tca|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lms|m0|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ggt|addIn\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ggt|gzn|seenOutZnarly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ggt|gzn|Znarly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ggt|gcfsm|ALT_INV_currState.loadGuessS~q\ : std_logic;
SIGNAL \lms|ALT_INV_masterLoaded~0_combout\ : std_logic;
SIGNAL \lms|h1|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h1|ALT_INV_segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h2|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h2|ALT_INV_segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h3|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h3|ALT_INV_segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h4|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h4|ALT_INV_segment[0]~0_combout\ : std_logic;
SIGNAL \zn|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \zn|ALT_INV_segment[0]~0_combout\ : std_logic;
SIGNAL \zo|ALT_INV_segment[3]~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_CLK <= ww_VGA_CLK;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_VS <= ww_VGA_VS;
VGA_HS <= ww_VGA_HS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\ggt|gcfsm|currState.gradeZnarlyS~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ggt|gcfsm|currState.gradeZnarlyS~q\);
\ggt|gcfsm|ALT_INV_currState.loadGuessS~q\ <= NOT \ggt|gcfsm|currState.loadGuessS~q\;
\lms|ALT_INV_masterLoaded~0_combout\ <= NOT \lms|masterLoaded~0_combout\;
\lms|h1|ALT_INV_segment[1]~1_combout\ <= NOT \lms|h1|segment[1]~1_combout\;
\lms|h1|ALT_INV_segment[0]~0_combout\ <= NOT \lms|h1|segment[0]~0_combout\;
\lms|h2|ALT_INV_segment[1]~1_combout\ <= NOT \lms|h2|segment[1]~1_combout\;
\lms|h2|ALT_INV_segment[0]~0_combout\ <= NOT \lms|h2|segment[0]~0_combout\;
\lms|h3|ALT_INV_segment[1]~1_combout\ <= NOT \lms|h3|segment[1]~1_combout\;
\lms|h3|ALT_INV_segment[0]~0_combout\ <= NOT \lms|h3|segment[0]~0_combout\;
\lms|h4|ALT_INV_segment[1]~1_combout\ <= NOT \lms|h4|segment[1]~1_combout\;
\lms|h4|ALT_INV_segment[0]~0_combout\ <= NOT \lms|h4|segment[0]~0_combout\;
\zn|ALT_INV_segment[1]~1_combout\ <= NOT \zn|segment[1]~1_combout\;
\zn|ALT_INV_segment[0]~0_combout\ <= NOT \zn|segment[0]~0_combout\;
\zo|ALT_INV_segment[3]~0_combout\ <= NOT \zo|segment[3]~0_combout\;

-- Location: LCCOMB_X109_Y20_N16
\tca|adderIn~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|adderIn~1_combout\ = (!\tca|r1|Q\(3) & (((!\tca|r1|Q\(0)) # (!\tca|r1|Q\(1))) # (!\tca|r1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(2),
	datab => \tca|r1|Q\(1),
	datac => \tca|r1|Q\(3),
	datad => \tca|r1|Q\(0),
	combout => \tca|adderIn~1_combout\);

-- Location: LCCOMB_X109_Y20_N30
\tca|adderIn~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|adderIn~2_combout\ = (\igp|startGameNow~q\) # ((\tca|adderIn~0_combout\ & \tca|adderIn~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \igp|startGameNow~q\,
	datac => \tca|adderIn~0_combout\,
	datad => \tca|adderIn~1_combout\,
	combout => \tca|adderIn~2_combout\);

-- Location: FF_X113_Y20_N11
\ggt|lg|g0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|lg|g0|Q~1_combout\,
	sload => VCC,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g0|Q\(1));

-- Location: FF_X113_Y20_N9
\ggt|lg|g3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|lg|g3|Q~3_combout\,
	sload => VCC,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g3|Q\(1));

-- Location: FF_X114_Y20_N5
\ggt|lg|g2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|lg|g2|Q~2_combout\,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g2|Q\(2));

-- Location: LCCOMB_X112_Y20_N16
\ggt|lg|g0|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g0|Q~1_combout\ = (\SW[1]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g0|Q~1_combout\);

-- Location: LCCOMB_X114_Y20_N10
\ggt|lg|g3|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g3|Q~3_combout\ = (\SW[10]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g3|Q~3_combout\);

-- Location: LCCOMB_X114_Y20_N4
\ggt|lg|g2|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g2|Q~2_combout\ = (\SW[8]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g2|Q~2_combout\);

-- Location: FF_X113_Y22_N11
\ggt|gcfsm|prevPrevGradeIt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gcfsm|prevPrevGradeIt~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gcfsm|prevPrevGradeIt~q\);

-- Location: FF_X112_Y20_N13
\ggt|gz0|currentState.check0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gz0|Selector0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gz0|currentState.check0~q\);

-- Location: FF_X112_Y20_N11
\ggt|gz0|currentState.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gz0|Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gz0|currentState.waiting~q\);

-- Location: LCCOMB_X112_Y20_N12
\ggt|gz0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gz0|Selector0~0_combout\ = (!\ggt|gz0|currentState.waiting~q\ & (\ggt|gzn|seenOutZnarly\(0) & \ggt|gcfsm|currState.gradeZoodS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gz0|currentState.waiting~q\,
	datac => \ggt|gzn|seenOutZnarly\(0),
	datad => \ggt|gcfsm|currState.gradeZoodS~q\,
	combout => \ggt|gz0|Selector0~0_combout\);

-- Location: LCCOMB_X112_Y20_N10
\ggt|gz0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gz0|Selector4~0_combout\ = (!\ggt|gz0|currentState.done~q\ & ((\ggt|gz0|currentState.waiting~q\) # (\ggt|gcfsm|currState.gradeZoodS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gz0|currentState.done~q\,
	datac => \ggt|gz0|currentState.waiting~q\,
	datad => \ggt|gcfsm|currState.gradeZoodS~q\,
	combout => \ggt|gz0|Selector4~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: CLKCTRL_G7
\ggt|gcfsm|currState.gradeZnarlyS~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y22_N10
\ggt|gcfsm|prevPrevGradeIt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gcfsm|prevPrevGradeIt~feeder_combout\ = \ggt|gcfsm|prevGradeIt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ggt|gcfsm|prevGradeIt~q\,
	combout => \ggt|gcfsm|prevPrevGradeIt~feeder_combout\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ng|segment[0]~0_combout\,
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
	i => \ng|segment[1]~1_combout\,
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
	i => \ng|segment[2]~2_combout\,
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
	i => \ng|segment[3]~3_combout\,
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
	i => \ng|segment[4]~4_combout\,
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
	i => \ng|segment[5]~5_combout\,
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
	i => \ng|segment[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rn|segment[0]~0_combout\,
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
	i => \rn|segment[1]~1_combout\,
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
	i => \rn|segment[2]~2_combout\,
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
	i => \rn|segment[3]~3_combout\,
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
	i => \rn|segment[4]~4_combout\,
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
	i => \rn|segment[5]~5_combout\,
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
	i => \rn|segment[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zo|segment\(0),
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
	i => \zo|segment\(0),
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
	i => \zo|segment\(0),
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
	i => \zo|segment[3]~0_combout\,
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
	i => \zo|segment[3]~0_combout\,
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
	i => \zo|segment\(0),
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
	i => \zo|ALT_INV_segment[3]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zn|ALT_INV_segment[0]~0_combout\,
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
	i => \zn|ALT_INV_segment[1]~1_combout\,
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
	i => \zn|segment~2_combout\,
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
	i => \zn|segment\(3),
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
	i => \zn|segment\(4),
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
	i => \zn|segment[5]~3_combout\,
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
	i => \zn|segment\(6),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lms|h4|ALT_INV_segment[0]~0_combout\,
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
	i => \lms|h4|ALT_INV_segment[1]~1_combout\,
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
	i => \lms|h4|segment~2_combout\,
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
	i => \lms|h4|segment\(3),
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
	i => \lms|h4|segment\(4),
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
	i => \lms|h4|segment[5]~3_combout\,
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
	i => \lms|h4|segment\(6),
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lms|h3|ALT_INV_segment[0]~0_combout\,
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
	i => \lms|h3|ALT_INV_segment[1]~1_combout\,
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
	i => \lms|h3|segment~2_combout\,
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
	i => \lms|h3|segment\(3),
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
	i => \lms|h3|segment\(4),
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
	i => \lms|h3|segment[5]~3_combout\,
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
	i => \lms|h3|segment\(6),
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lms|h2|ALT_INV_segment[0]~0_combout\,
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
	i => \lms|h2|ALT_INV_segment[1]~1_combout\,
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
	i => \lms|h2|segment~2_combout\,
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
	i => \lms|h2|segment\(3),
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
	i => \lms|h2|segment\(4),
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
	i => \lms|h2|segment[5]~3_combout\,
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
	i => \lms|h2|segment\(6),
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lms|h1|ALT_INV_segment[0]~0_combout\,
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
	i => \lms|h1|ALT_INV_segment[1]~1_combout\,
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
	i => \lms|h1|segment~2_combout\,
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
	i => \lms|h1|segment\(3),
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
	i => \lms|h1|segment\(4),
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
	i => \lms|h1|segment[5]~3_combout\,
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
	i => \lms|h1|segment\(6),
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ggt|gzn|GameWon~q\,
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
	i => \ggt|addIn\(3),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tca|ready~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \igp|currState.ingame~q\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lms|ALT_INV_masterLoaded~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_BLANK_N~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_SYNC_N~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: LCCOMB_X109_Y20_N18
\tca|r1|Q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|r1|Q[0]~4_combout\ = (\tca|adderIn~2_combout\ & (\tca|r1|Q\(0) $ (VCC))) # (!\tca|adderIn~2_combout\ & (\tca|r1|Q\(0) & VCC))
-- \tca|r1|Q[0]~5\ = CARRY((\tca|adderIn~2_combout\ & \tca|r1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|adderIn~2_combout\,
	datab => \tca|r1|Q\(0),
	datad => VCC,
	combout => \tca|r1|Q[0]~4_combout\,
	cout => \tca|r1|Q[0]~5\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X111_Y20_N20
\igp|prevstartGame~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \igp|prevstartGame~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	combout => \igp|prevstartGame~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X111_Y20_N21
\igp|prevstartGame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \igp|prevstartGame~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \igp|prevstartGame~q\);

-- Location: LCCOMB_X110_Y20_N26
\igp|prevprevstartGame~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \igp|prevprevstartGame~feeder_combout\ = \igp|prevstartGame~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \igp|prevstartGame~q\,
	combout => \igp|prevprevstartGame~feeder_combout\);

-- Location: FF_X110_Y20_N27
\igp|prevprevstartGame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \igp|prevprevstartGame~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \igp|prevprevstartGame~q\);

-- Location: LCCOMB_X109_Y20_N20
\tca|r1|Q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|r1|Q[1]~6_combout\ = (\tca|r1|Q\(1) & (!\tca|r1|Q[0]~5\)) # (!\tca|r1|Q\(1) & ((\tca|r1|Q[0]~5\) # (GND)))
-- \tca|r1|Q[1]~7\ = CARRY((!\tca|r1|Q[0]~5\) # (!\tca|r1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(1),
	datad => VCC,
	cin => \tca|r1|Q[0]~5\,
	combout => \tca|r1|Q[1]~6_combout\,
	cout => \tca|r1|Q[1]~7\);

-- Location: LCCOMB_X109_Y20_N22
\tca|r1|Q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|r1|Q[2]~8_combout\ = (\tca|r1|Q\(2) & (\tca|r1|Q[1]~7\ $ (GND))) # (!\tca|r1|Q\(2) & (!\tca|r1|Q[1]~7\ & VCC))
-- \tca|r1|Q[2]~9\ = CARRY((\tca|r1|Q\(2) & !\tca|r1|Q[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tca|r1|Q\(2),
	datad => VCC,
	cin => \tca|r1|Q[1]~7\,
	combout => \tca|r1|Q[2]~8_combout\,
	cout => \tca|r1|Q[2]~9\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X108_Y20_N16
\tca|ca|prevCoinInserted~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|prevCoinInserted~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \tca|ca|prevCoinInserted~0_combout\);

-- Location: FF_X108_Y20_N17
\tca|ca|prevCoinInserted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|prevCoinInserted~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|prevCoinInserted~q\);

-- Location: LCCOMB_X108_Y20_N2
\tca|ca|prevPrevCoinInserted~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|prevPrevCoinInserted~feeder_combout\ = \tca|ca|prevCoinInserted~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tca|ca|prevCoinInserted~q\,
	combout => \tca|ca|prevPrevCoinInserted~feeder_combout\);

-- Location: FF_X108_Y20_N3
\tca|ca|prevPrevCoinInserted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|prevPrevCoinInserted~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|prevPrevCoinInserted~q\);

-- Location: LCCOMB_X108_Y20_N20
\tca|ca|goNow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|goNow~0_combout\ = (\tca|ca|prevCoinInserted~q\ & !\tca|ca|prevPrevCoinInserted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tca|ca|prevCoinInserted~q\,
	datad => \tca|ca|prevPrevCoinInserted~q\,
	combout => \tca|ca|goNow~0_combout\);

-- Location: FF_X108_Y20_N21
\tca|ca|goNow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|goNow~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|goNow~q\);

-- Location: LCCOMB_X108_Y20_N28
\tca|ca|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Mux0~0_combout\ = ((!\SW[17]~input_o\ & !\SW[16]~input_o\)) # (!\tca|ca|goNow~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \tca|ca|goNow~q\,
	combout => \tca|ca|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y20_N6
\tca|ca|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector0~0_combout\ = (!\SW[17]~input_o\ & (\SW[16]~input_o\ & \tca|ca|goNow~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \tca|ca|goNow~q\,
	combout => \tca|ca|Selector0~0_combout\);

-- Location: LCCOMB_X108_Y20_N24
\tca|ca|nextState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState~7_combout\ = (\SW[17]~input_o\ & (!\SW[16]~input_o\ & \tca|ca|goNow~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \tca|ca|goNow~q\,
	combout => \tca|ca|nextState~7_combout\);

-- Location: LCCOMB_X108_Y20_N26
\tca|ca|nextState.d1ch3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState.d1ch3~4_combout\ = (\tca|ca|goNow~q\ & (\SW[16]~input_o\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tca|ca|goNow~q\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \tca|ca|nextState.d1ch3~4_combout\);

-- Location: LCCOMB_X109_Y20_N2
\tca|ca|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector1~0_combout\ = (\tca|ca|nextState~5_combout\ & ((\tca|ca|Selector0~0_combout\) # ((\tca|ca|Mux0~0_combout\ & \tca|ca|nextState~6_combout\)))) # (!\tca|ca|nextState~5_combout\ & (\tca|ca|Mux0~0_combout\ & ((\tca|ca|nextState~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|nextState~5_combout\,
	datab => \tca|ca|Mux0~0_combout\,
	datac => \tca|ca|Selector0~0_combout\,
	datad => \tca|ca|nextState~6_combout\,
	combout => \tca|ca|Selector1~0_combout\);

-- Location: FF_X109_Y20_N3
\tca|ca|currState.d0ch2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|Selector1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|currState.d0ch2~q\);

-- Location: LCCOMB_X108_Y20_N0
\tca|ca|nextState.d1ch3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState.d1ch3~5_combout\ = (\tca|ca|nextState.d1ch3~4_combout\ & ((\tca|ca|currState.d1ch2~q\) # (\tca|ca|currState.d0ch2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tca|ca|currState.d1ch2~q\,
	datac => \tca|ca|nextState.d1ch3~4_combout\,
	datad => \tca|ca|currState.d0ch2~q\,
	combout => \tca|ca|nextState.d1ch3~5_combout\);

-- Location: FF_X108_Y20_N1
\tca|ca|currState.d1ch3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|nextState.d1ch3~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|currState.d1ch3~q\);

-- Location: LCCOMB_X108_Y20_N10
\tca|ca|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector2~2_combout\ = (\tca|ca|Selector0~0_combout\ & ((\tca|ca|nextState~6_combout\) # ((\tca|ca|nextState~7_combout\ & \tca|ca|nextState~4_combout\)))) # (!\tca|ca|Selector0~0_combout\ & (\tca|ca|nextState~7_combout\ & 
-- ((\tca|ca|nextState~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|Selector0~0_combout\,
	datab => \tca|ca|nextState~7_combout\,
	datac => \tca|ca|nextState~6_combout\,
	datad => \tca|ca|nextState~4_combout\,
	combout => \tca|ca|Selector2~2_combout\);

-- Location: LCCOMB_X109_Y20_N4
\tca|ca|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector2~4_combout\ = (\tca|ca|Selector2~2_combout\) # ((\tca|ca|Mux0~0_combout\ & ((\tca|ca|currState.d1ch3~q\) # (\tca|ca|currState.d0ch3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|currState.d1ch3~q\,
	datab => \tca|ca|Mux0~0_combout\,
	datac => \tca|ca|currState.d0ch3~q\,
	datad => \tca|ca|Selector2~2_combout\,
	combout => \tca|ca|Selector2~4_combout\);

-- Location: FF_X109_Y20_N5
\tca|ca|currState.d0ch3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|Selector2~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|currState.d0ch3~q\);

-- Location: LCCOMB_X108_Y20_N22
\tca|ca|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector2~3_combout\ = (\tca|ca|currState.d1ch3~q\) # (\tca|ca|currState.d0ch3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tca|ca|currState.d1ch3~q\,
	datad => \tca|ca|currState.d0ch3~q\,
	combout => \tca|ca|Selector2~3_combout\);

-- Location: LCCOMB_X108_Y20_N8
\tca|ca|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector5~0_combout\ = (\tca|ca|nextState.d1ch3~4_combout\ & ((\tca|ca|nextState~5_combout\) # ((\tca|ca|Selector2~3_combout\ & \tca|ca|nextState~7_combout\)))) # (!\tca|ca|nextState.d1ch3~4_combout\ & (((\tca|ca|Selector2~3_combout\ & 
-- \tca|ca|nextState~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|nextState.d1ch3~4_combout\,
	datab => \tca|ca|nextState~5_combout\,
	datac => \tca|ca|Selector2~3_combout\,
	datad => \tca|ca|nextState~7_combout\,
	combout => \tca|ca|Selector5~0_combout\);

-- Location: FF_X108_Y20_N9
\tca|ca|currState.d1ch2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|currState.d1ch2~q\);

-- Location: LCCOMB_X108_Y20_N30
\tca|ca|nextState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState~6_combout\ = (\tca|ca|currState.d1ch2~q\) # (\tca|ca|currState.d0ch2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tca|ca|currState.d1ch2~q\,
	datad => \tca|ca|currState.d0ch2~q\,
	combout => \tca|ca|nextState~6_combout\);

-- Location: LCCOMB_X108_Y20_N18
\tca|ca|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector4~0_combout\ = (\tca|ca|nextState.d1ch3~4_combout\ & ((\tca|ca|nextState~4_combout\) # ((\tca|ca|nextState~7_combout\ & \tca|ca|nextState~6_combout\)))) # (!\tca|ca|nextState.d1ch3~4_combout\ & (\tca|ca|nextState~7_combout\ & 
-- (\tca|ca|nextState~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|nextState.d1ch3~4_combout\,
	datab => \tca|ca|nextState~7_combout\,
	datac => \tca|ca|nextState~6_combout\,
	datad => \tca|ca|nextState~4_combout\,
	combout => \tca|ca|Selector4~0_combout\);

-- Location: FF_X108_Y20_N19
\tca|ca|currState.d1ch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|currState.d1ch1~q\);

-- Location: LCCOMB_X109_Y20_N28
\tca|ca|nextState~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState~5_combout\ = (\tca|ca|currState.d0ch1~q\) # (\tca|ca|currState.d1ch1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|currState.d0ch1~q\,
	datad => \tca|ca|currState.d1ch1~q\,
	combout => \tca|ca|nextState~5_combout\);

-- Location: LCCOMB_X108_Y20_N4
\tca|ca|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector3~0_combout\ = (\SW[16]~input_o\ & (((\tca|ca|Selector2~3_combout\)))) # (!\SW[16]~input_o\ & (!\SW[17]~input_o\ & ((\tca|ca|nextState~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \tca|ca|Selector2~3_combout\,
	datad => \tca|ca|nextState~4_combout\,
	combout => \tca|ca|Selector3~0_combout\);

-- Location: LCCOMB_X108_Y20_N14
\tca|ca|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector3~1_combout\ = (\tca|ca|goNow~q\ & ((\tca|ca|Selector3~0_combout\) # ((\tca|ca|nextState~5_combout\ & \tca|ca|nextState~7_combout\)))) # (!\tca|ca|goNow~q\ & (\tca|ca|nextState~5_combout\ & ((\tca|ca|nextState~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|goNow~q\,
	datab => \tca|ca|nextState~5_combout\,
	datac => \tca|ca|Selector3~0_combout\,
	datad => \tca|ca|nextState~7_combout\,
	combout => \tca|ca|Selector3~1_combout\);

-- Location: FF_X108_Y20_N15
\tca|ca|currState.d1ch0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|Selector3~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|currState.d1ch0~q\);

-- Location: LCCOMB_X109_Y20_N6
\tca|ca|nextState.d0ch0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState.d0ch0~0_combout\ = (\tca|ca|goNow~q\) # ((!\tca|ca|currState.d1ch0~q\ & \tca|ca|currState.d0ch0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|currState.d1ch0~q\,
	datac => \tca|ca|currState.d0ch0~q\,
	datad => \tca|ca|goNow~q\,
	combout => \tca|ca|nextState.d0ch0~0_combout\);

-- Location: FF_X109_Y20_N7
\tca|ca|currState.d0ch0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|nextState.d0ch0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|currState.d0ch0~q\);

-- Location: LCCOMB_X108_Y20_N12
\tca|ca|nextState~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState~4_combout\ = (\tca|ca|currState.d1ch0~q\) # (!\tca|ca|currState.d0ch0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tca|ca|currState.d1ch0~q\,
	datad => \tca|ca|currState.d0ch0~q\,
	combout => \tca|ca|nextState~4_combout\);

-- Location: LCCOMB_X109_Y20_N8
\tca|ca|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector0~1_combout\ = (\tca|ca|nextState~5_combout\ & ((\tca|ca|Mux0~0_combout\) # ((\tca|ca|Selector0~0_combout\ & \tca|ca|nextState~4_combout\)))) # (!\tca|ca|nextState~5_combout\ & (((\tca|ca|Selector0~0_combout\ & 
-- \tca|ca|nextState~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|nextState~5_combout\,
	datab => \tca|ca|Mux0~0_combout\,
	datac => \tca|ca|Selector0~0_combout\,
	datad => \tca|ca|nextState~4_combout\,
	combout => \tca|ca|Selector0~1_combout\);

-- Location: FF_X109_Y20_N9
\tca|ca|currState.d0ch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|ca|Selector0~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|ca|currState.d0ch1~q\);

-- Location: LCCOMB_X109_Y20_N26
\tca|adderIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|adderIn~0_combout\ = (\tca|ca|currState.d0ch0~q\ & (!\tca|ca|currState.d0ch1~q\ & (!\tca|ca|currState.d0ch3~q\ & !\tca|ca|currState.d0ch2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|currState.d0ch0~q\,
	datab => \tca|ca|currState.d0ch1~q\,
	datac => \tca|ca|currState.d0ch3~q\,
	datad => \tca|ca|currState.d0ch2~q\,
	combout => \tca|adderIn~0_combout\);

-- Location: LCCOMB_X109_Y20_N14
\tca|r1|Q[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|r1|Q[3]~12_combout\ = ((\igp|startGameNow~q\) # (\tca|adderIn~0_combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \igp|startGameNow~q\,
	datad => \tca|adderIn~0_combout\,
	combout => \tca|r1|Q[3]~12_combout\);

-- Location: FF_X109_Y20_N23
\tca|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|r1|Q[2]~8_combout\,
	sclr => \tca|en_reg~combout\,
	ena => \tca|r1|Q[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|r1|Q\(2));

-- Location: LCCOMB_X109_Y20_N0
\tca|ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ready~0_combout\ = (\tca|r1|Q\(3)) # ((\tca|r1|Q\(1)) # ((\tca|r1|Q\(0)) # (\tca|r1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(1),
	datac => \tca|r1|Q\(0),
	datad => \tca|r1|Q\(2),
	combout => \tca|ready~0_combout\);

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

-- Location: LCCOMB_X111_Y20_N30
\igp|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \igp|Selector0~0_combout\ = (!\igp|currState.backtowaiting~q\ & ((\igp|startGameNow~q\) # (\igp|currState.waitingtoplay~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \igp|startGameNow~q\,
	datac => \igp|currState.waitingtoplay~q\,
	datad => \igp|currState.backtowaiting~q\,
	combout => \igp|Selector0~0_combout\);

-- Location: FF_X111_Y20_N31
\igp|currState.waitingtoplay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \igp|Selector0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \igp|currState.waitingtoplay~q\);

-- Location: LCCOMB_X111_Y20_N24
\igp|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \igp|Selector1~0_combout\ = (\igp|startGameNow~q\ & (((\igp|currState.ingame~q\ & !\ggt|addIn\(3))) # (!\igp|currState.waitingtoplay~q\))) # (!\igp|startGameNow~q\ & (((\igp|currState.ingame~q\ & !\ggt|addIn\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \igp|startGameNow~q\,
	datab => \igp|currState.waitingtoplay~q\,
	datac => \igp|currState.ingame~q\,
	datad => \ggt|addIn\(3),
	combout => \igp|Selector1~0_combout\);

-- Location: FF_X111_Y20_N25
\igp|currState.ingame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \igp|Selector1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \igp|currState.ingame~q\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X113_Y22_N24
\ggt|gcfsm|prevGradeIt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gcfsm|prevGradeIt~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	combout => \ggt|gcfsm|prevGradeIt~0_combout\);

-- Location: FF_X113_Y22_N25
\ggt|gcfsm|prevGradeIt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gcfsm|prevGradeIt~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gcfsm|prevGradeIt~q\);

-- Location: LCCOMB_X113_Y22_N22
\ggt|gcfsm|GradeItNow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gcfsm|GradeItNow~0_combout\ = (!\ggt|gcfsm|prevPrevGradeIt~q\ & (\igp|currState.ingame~q\ & \ggt|gcfsm|prevGradeIt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gcfsm|prevPrevGradeIt~q\,
	datac => \igp|currState.ingame~q\,
	datad => \ggt|gcfsm|prevGradeIt~q\,
	combout => \ggt|gcfsm|GradeItNow~0_combout\);

-- Location: FF_X113_Y22_N23
\ggt|gcfsm|GradeItNow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gcfsm|GradeItNow~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gcfsm|GradeItNow~q\);

-- Location: LCCOMB_X114_Y33_N26
\ggt|gcfsm|currState.gradeZnarlyS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gcfsm|currState.gradeZnarlyS~feeder_combout\ = \ggt|gcfsm|currState.loadGuessS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|gcfsm|currState.gradeZnarlyS~feeder_combout\);

-- Location: FF_X114_Y33_N27
\ggt|gcfsm|currState.gradeZnarlyS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gcfsm|currState.gradeZnarlyS~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gcfsm|currState.gradeZnarlyS~q\);

-- Location: LCCOMB_X112_Y20_N20
\ggt|gcfsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gcfsm|Selector1~0_combout\ = (\ggt|gcfsm|currState.gradeZnarlyS~q\) # ((!\ggt|gz0|currentState.done~q\ & \ggt|gcfsm|currState.gradeZoodS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gz0|currentState.done~q\,
	datab => \ggt|gcfsm|currState.gradeZnarlyS~q\,
	datad => \ggt|gcfsm|currState.gradeZoodS~q\,
	combout => \ggt|gcfsm|Selector1~0_combout\);

-- Location: FF_X112_Y20_N1
\ggt|gcfsm|currState.gradeZoodS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|gcfsm|Selector1~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gcfsm|currState.gradeZoodS~q\);

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

-- Location: LCCOMB_X113_Y20_N20
\ggt|lg|g1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g1|Q~0_combout\ = (\SW[3]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g1|Q~0_combout\);

-- Location: LCCOMB_X113_Y22_N18
\ggt|lg|g3|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g3|Q[1]~1_combout\ = ((\ggt|gcfsm|currState.loadGuessS~q\) # (\igp|currState.backtowaiting~q\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \ggt|gcfsm|currState.loadGuessS~q\,
	datad => \igp|currState.backtowaiting~q\,
	combout => \ggt|lg|g3|Q[1]~1_combout\);

-- Location: FF_X113_Y20_N21
\ggt|lg|g1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|lg|g1|Q~0_combout\,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g1|Q\(0));

-- Location: LCCOMB_X112_Y20_N0
\ggt|lg|g1|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g1|Q~1_combout\ = (\SW[4]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g1|Q~1_combout\);

-- Location: FF_X113_Y20_N19
\ggt|lg|g1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|lg|g1|Q~1_combout\,
	sload => VCC,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g1|Q\(1));

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

-- Location: LCCOMB_X110_Y20_N12
\lms|m1|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m1|Q[1]~0_combout\ = (\lms|load1~1_combout\ & ((\SW[1]~input_o\) # ((\lms|m1|Q\(1) & \ggt|lg|g3|Q[1]~0_combout\)))) # (!\lms|load1~1_combout\ & (((\lms|m1|Q\(1) & \ggt|lg|g3|Q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|load1~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \lms|m1|Q\(1),
	datad => \ggt|lg|g3|Q[1]~0_combout\,
	combout => \lms|m1|Q[1]~0_combout\);

-- Location: FF_X110_Y20_N13
\lms|m1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m1|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m1|Q\(1));

-- Location: LCCOMB_X113_Y20_N18
\ggt|gzn|gm1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gm1|Equal0~0_combout\ = (\lms|m1|Q\(0) & (\ggt|lg|g1|Q\(0) & (\ggt|lg|g1|Q\(1) $ (!\lms|m1|Q\(1))))) # (!\lms|m1|Q\(0) & (!\ggt|lg|g1|Q\(0) & (\ggt|lg|g1|Q\(1) $ (!\lms|m1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datab => \ggt|lg|g1|Q\(0),
	datac => \ggt|lg|g1|Q\(1),
	datad => \lms|m1|Q\(1),
	combout => \ggt|gzn|gm1|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y20_N10
\ggt|gzn|gm1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gm1|Equal0~1_combout\ = (\ggt|gzn|gm1|Equal0~0_combout\ & (\lms|m1|Q\(2) $ (!\ggt|lg|g1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(2),
	datab => \ggt|lg|g1|Q\(2),
	datad => \ggt|gzn|gm1|Equal0~0_combout\,
	combout => \ggt|gzn|gm1|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y20_N6
\ggt|gzn|seenOutZnarly[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|seenOutZnarly[1]~feeder_combout\ = \ggt|gzn|gm1|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ggt|gzn|gm1|Equal0~1_combout\,
	combout => \ggt|gzn|seenOutZnarly[1]~feeder_combout\);

-- Location: FF_X112_Y20_N7
\ggt|gzn|seenOutZnarly[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\,
	d => \ggt|gzn|seenOutZnarly[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gzn|seenOutZnarly\(1));

-- Location: LCCOMB_X112_Y20_N8
\ggt|gz0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gz0|Selector1~0_combout\ = (\ggt|gz0|currentState.check0~q\ & \ggt|gzn|seenOutZnarly\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gz0|currentState.check0~q\,
	datad => \ggt|gzn|seenOutZnarly\(1),
	combout => \ggt|gz0|Selector1~0_combout\);

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

-- Location: LCCOMB_X114_Y20_N0
\ggt|lg|g0|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g0|Q~2_combout\ = (\SW[2]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g0|Q~2_combout\);

-- Location: FF_X114_Y20_N1
\ggt|lg|g0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|lg|g0|Q~2_combout\,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g0|Q\(2));

-- Location: LCCOMB_X111_Y20_N22
\lms|load2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load2~0_combout\ = (!\KEY[3]~input_o\ & (!\SW[3]~input_o\ & !\igp|currState.ingame~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \igp|currState.ingame~q\,
	combout => \lms|load2~0_combout\);

-- Location: LCCOMB_X112_Y20_N24
\lms|m0|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m0|Q[1]~0_combout\ = (\SW[1]~input_o\ & ((\lms|load0~0_combout\) # ((\ggt|lg|g3|Q[1]~0_combout\ & \lms|m0|Q\(1))))) # (!\SW[1]~input_o\ & (\ggt|lg|g3|Q[1]~0_combout\ & (\lms|m0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ggt|lg|g3|Q[1]~0_combout\,
	datac => \lms|m0|Q\(1),
	datad => \lms|load0~0_combout\,
	combout => \lms|m0|Q[1]~0_combout\);

-- Location: FF_X112_Y20_N25
\lms|m0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m0|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m0|Q\(1));

-- Location: LCCOMB_X111_Y20_N4
\lms|m0|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m0|Q[2]~2_combout\ = (\SW[2]~input_o\ & ((\lms|load0~0_combout\) # ((\ggt|lg|g3|Q[1]~0_combout\ & \lms|m0|Q\(2))))) # (!\SW[2]~input_o\ & (\ggt|lg|g3|Q[1]~0_combout\ & (\lms|m0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ggt|lg|g3|Q[1]~0_combout\,
	datac => \lms|m0|Q\(2),
	datad => \lms|load0~0_combout\,
	combout => \lms|m0|Q[2]~2_combout\);

-- Location: FF_X111_Y20_N5
\lms|m0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m0|Q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m0|Q\(2));

-- Location: LCCOMB_X111_Y20_N0
\lms|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|Equal0~0_combout\ = (!\lms|m0|Q\(1) & (!\lms|m0|Q\(2) & !\lms|m0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(1),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(0),
	combout => \lms|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y20_N12
\lms|load0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load0~0_combout\ = (!\SW[4]~input_o\ & (\lms|load2~0_combout\ & \lms|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \lms|load2~0_combout\,
	datad => \lms|Equal0~0_combout\,
	combout => \lms|load0~0_combout\);

-- Location: LCCOMB_X112_Y20_N22
\lms|m0|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m0|Q[0]~1_combout\ = (\SW[0]~input_o\ & ((\lms|load0~0_combout\) # ((\ggt|lg|g3|Q[1]~0_combout\ & \lms|m0|Q\(0))))) # (!\SW[0]~input_o\ & (\ggt|lg|g3|Q[1]~0_combout\ & (\lms|m0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ggt|lg|g3|Q[1]~0_combout\,
	datac => \lms|m0|Q\(0),
	datad => \lms|load0~0_combout\,
	combout => \lms|m0|Q[0]~1_combout\);

-- Location: FF_X112_Y20_N23
\lms|m0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m0|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m0|Q\(0));

-- Location: LCCOMB_X112_Y20_N26
\ggt|lg|g0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g0|Q~0_combout\ = (\SW[0]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g0|Q~0_combout\);

-- Location: FF_X113_Y20_N1
\ggt|lg|g0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|lg|g0|Q~0_combout\,
	sload => VCC,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g0|Q\(0));

-- Location: LCCOMB_X113_Y20_N0
\ggt|gzn|gm0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gm0|Equal0~0_combout\ = (\ggt|lg|g0|Q\(1) & (\lms|m0|Q\(1) & (\lms|m0|Q\(0) $ (!\ggt|lg|g0|Q\(0))))) # (!\ggt|lg|g0|Q\(1) & (!\lms|m0|Q\(1) & (\lms|m0|Q\(0) $ (!\ggt|lg|g0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|lg|g0|Q\(1),
	datab => \lms|m0|Q\(0),
	datac => \ggt|lg|g0|Q\(0),
	datad => \lms|m0|Q\(1),
	combout => \ggt|gzn|gm0|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y20_N24
\ggt|gzn|gm0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gm0|Equal0~1_combout\ = (\ggt|gzn|gm0|Equal0~0_combout\ & (\lms|m0|Q\(2) $ (!\ggt|lg|g0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m0|Q\(2),
	datab => \ggt|lg|g0|Q\(2),
	datad => \ggt|gzn|gm0|Equal0~0_combout\,
	combout => \ggt|gzn|gm0|Equal0~1_combout\);

-- Location: FF_X113_Y20_N15
\ggt|gzn|seenOutZnarly[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\,
	asdata => \ggt|gzn|gm0|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gzn|seenOutZnarly\(0));

-- Location: LCCOMB_X112_Y20_N18
\ggt|gz0|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gz0|Selector1~1_combout\ = (\ggt|gz0|Selector1~0_combout\) # ((!\ggt|gz0|currentState.waiting~q\ & (\ggt|gcfsm|currState.gradeZoodS~q\ & !\ggt|gzn|seenOutZnarly\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gz0|currentState.waiting~q\,
	datab => \ggt|gcfsm|currState.gradeZoodS~q\,
	datac => \ggt|gz0|Selector1~0_combout\,
	datad => \ggt|gzn|seenOutZnarly\(0),
	combout => \ggt|gz0|Selector1~1_combout\);

-- Location: FF_X112_Y20_N19
\ggt|gz0|currentState.check1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gz0|Selector1~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gz0|currentState.check1~q\);

-- Location: LCCOMB_X112_Y20_N30
\lms|m2|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m2|Q[0]~1_combout\ = (\SW[0]~input_o\ & ((\lms|load2~1_combout\) # ((\ggt|lg|g3|Q[1]~0_combout\ & \lms|m2|Q\(0))))) # (!\SW[0]~input_o\ & (\ggt|lg|g3|Q[1]~0_combout\ & (\lms|m2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ggt|lg|g3|Q[1]~0_combout\,
	datac => \lms|m2|Q\(0),
	datad => \lms|load2~1_combout\,
	combout => \lms|m2|Q[0]~1_combout\);

-- Location: FF_X112_Y20_N31
\lms|m2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m2|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m2|Q\(0));

-- Location: LCCOMB_X112_Y20_N28
\lms|m2|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m2|Q[1]~0_combout\ = (\SW[1]~input_o\ & ((\lms|load2~1_combout\) # ((\ggt|lg|g3|Q[1]~0_combout\ & \lms|m2|Q\(1))))) # (!\SW[1]~input_o\ & (\ggt|lg|g3|Q[1]~0_combout\ & (\lms|m2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ggt|lg|g3|Q[1]~0_combout\,
	datac => \lms|m2|Q\(1),
	datad => \lms|load2~1_combout\,
	combout => \lms|m2|Q[1]~0_combout\);

-- Location: FF_X112_Y20_N29
\lms|m2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m2|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m2|Q\(1));

-- Location: LCCOMB_X111_Y20_N18
\lms|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|Equal2~0_combout\ = (!\lms|m2|Q\(2) & (!\lms|m2|Q\(0) & !\lms|m2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(2),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(1),
	combout => \lms|Equal2~0_combout\);

-- Location: LCCOMB_X111_Y20_N8
\lms|load2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load2~1_combout\ = (\SW[4]~input_o\ & (\lms|load2~0_combout\ & \lms|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \lms|load2~0_combout\,
	datad => \lms|Equal2~0_combout\,
	combout => \lms|load2~1_combout\);

-- Location: LCCOMB_X111_Y20_N14
\lms|m2|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m2|Q[2]~2_combout\ = (\SW[2]~input_o\ & ((\lms|load2~1_combout\) # ((\lms|m2|Q\(2) & \ggt|lg|g3|Q[1]~0_combout\)))) # (!\SW[2]~input_o\ & (((\lms|m2|Q\(2) & \ggt|lg|g3|Q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \lms|load2~1_combout\,
	datac => \lms|m2|Q\(2),
	datad => \ggt|lg|g3|Q[1]~0_combout\,
	combout => \lms|m2|Q[2]~2_combout\);

-- Location: FF_X111_Y20_N15
\lms|m2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m2|Q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m2|Q\(2));

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

-- Location: LCCOMB_X114_Y20_N30
\ggt|lg|g2|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g2|Q~1_combout\ = (\SW[7]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[7]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g2|Q~1_combout\);

-- Location: FF_X113_Y20_N29
\ggt|lg|g2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|lg|g2|Q~1_combout\,
	sload => VCC,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g2|Q\(1));

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

-- Location: LCCOMB_X114_Y20_N18
\ggt|lg|g2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g2|Q~0_combout\ = (\SW[6]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g2|Q~0_combout\);

-- Location: FF_X114_Y20_N19
\ggt|lg|g2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|lg|g2|Q~0_combout\,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g2|Q\(0));

-- Location: LCCOMB_X113_Y20_N28
\ggt|gzn|gm2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gm2|Equal0~0_combout\ = (\lms|m2|Q\(0) & (\ggt|lg|g2|Q\(0) & (\lms|m2|Q\(1) $ (!\ggt|lg|g2|Q\(1))))) # (!\lms|m2|Q\(0) & (!\ggt|lg|g2|Q\(0) & (\lms|m2|Q\(1) $ (!\ggt|lg|g2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m2|Q\(0),
	datab => \lms|m2|Q\(1),
	datac => \ggt|lg|g2|Q\(1),
	datad => \ggt|lg|g2|Q\(0),
	combout => \ggt|gzn|gm2|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y20_N8
\ggt|gzn|gm2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gm2|Equal0~1_combout\ = (\ggt|gzn|gm2|Equal0~0_combout\ & (\ggt|lg|g2|Q\(2) $ (!\lms|m2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|lg|g2|Q\(2),
	datab => \lms|m2|Q\(2),
	datad => \ggt|gzn|gm2|Equal0~0_combout\,
	combout => \ggt|gzn|gm2|Equal0~1_combout\);

-- Location: FF_X112_Y20_N5
\ggt|gzn|seenOutZnarly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\,
	asdata => \ggt|gzn|gm2|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gzn|seenOutZnarly\(2));

-- Location: LCCOMB_X112_Y20_N4
\ggt|gz0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gz0|Selector2~0_combout\ = (\ggt|gz0|currentState.check0~q\ & (((\ggt|gz0|currentState.check1~q\ & \ggt|gzn|seenOutZnarly\(2))) # (!\ggt|gzn|seenOutZnarly\(1)))) # (!\ggt|gz0|currentState.check0~q\ & (\ggt|gz0|currentState.check1~q\ & 
-- (\ggt|gzn|seenOutZnarly\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gz0|currentState.check0~q\,
	datab => \ggt|gz0|currentState.check1~q\,
	datac => \ggt|gzn|seenOutZnarly\(2),
	datad => \ggt|gzn|seenOutZnarly\(1),
	combout => \ggt|gz0|Selector2~0_combout\);

-- Location: FF_X112_Y20_N15
\ggt|gz0|currentState.check2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|gz0|Selector2~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gz0|currentState.check2~q\);

-- Location: LCCOMB_X111_Y20_N10
\lms|load1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load1~0_combout\ = (!\KEY[3]~input_o\ & (\SW[3]~input_o\ & !\igp|currState.ingame~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \igp|currState.ingame~q\,
	combout => \lms|load1~0_combout\);

-- Location: LCCOMB_X110_Y20_N20
\lms|m3|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m3|Q[0]~1_combout\ = (\SW[0]~input_o\ & ((\lms|load3~0_combout\) # ((\lms|m3|Q\(0) & \ggt|lg|g3|Q[1]~0_combout\)))) # (!\SW[0]~input_o\ & (((\lms|m3|Q\(0) & \ggt|lg|g3|Q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \lms|load3~0_combout\,
	datac => \lms|m3|Q\(0),
	datad => \ggt|lg|g3|Q[1]~0_combout\,
	combout => \lms|m3|Q[0]~1_combout\);

-- Location: FF_X110_Y20_N21
\lms|m3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m3|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m3|Q\(0));

-- Location: LCCOMB_X110_Y20_N2
\lms|m3|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m3|Q[1]~0_combout\ = (\SW[1]~input_o\ & ((\lms|load3~0_combout\) # ((\lms|m3|Q\(1) & \ggt|lg|g3|Q[1]~0_combout\)))) # (!\SW[1]~input_o\ & (((\lms|m3|Q\(1) & \ggt|lg|g3|Q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \lms|load3~0_combout\,
	datac => \lms|m3|Q\(1),
	datad => \ggt|lg|g3|Q[1]~0_combout\,
	combout => \lms|m3|Q[1]~0_combout\);

-- Location: FF_X110_Y20_N3
\lms|m3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m3|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m3|Q\(1));

-- Location: LCCOMB_X110_Y20_N6
\lms|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|Equal3~0_combout\ = (!\lms|m3|Q\(0) & (!\lms|m3|Q\(2) & !\lms|m3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(0),
	datac => \lms|m3|Q\(2),
	datad => \lms|m3|Q\(1),
	combout => \lms|Equal3~0_combout\);

-- Location: LCCOMB_X110_Y20_N24
\lms|load3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load3~0_combout\ = (\SW[4]~input_o\ & (\lms|load1~0_combout\ & \lms|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \lms|load1~0_combout\,
	datad => \lms|Equal3~0_combout\,
	combout => \lms|load3~0_combout\);

-- Location: LCCOMB_X110_Y20_N30
\lms|m3|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m3|Q[2]~2_combout\ = (\SW[2]~input_o\ & ((\lms|load3~0_combout\) # ((\lms|m3|Q\(2) & \ggt|lg|g3|Q[1]~0_combout\)))) # (!\SW[2]~input_o\ & (((\lms|m3|Q\(2) & \ggt|lg|g3|Q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \lms|load3~0_combout\,
	datac => \lms|m3|Q\(2),
	datad => \ggt|lg|g3|Q[1]~0_combout\,
	combout => \lms|m3|Q[2]~2_combout\);

-- Location: FF_X110_Y20_N31
\lms|m3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m3|Q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m3|Q\(2));

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

-- Location: LCCOMB_X114_Y20_N8
\ggt|lg|g3|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g3|Q~4_combout\ = (\SW[11]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[11]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g3|Q~4_combout\);

-- Location: FF_X113_Y20_N31
\ggt|lg|g3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|lg|g3|Q~4_combout\,
	sload => VCC,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g3|Q\(2));

-- Location: LCCOMB_X114_Y20_N12
\ggt|lg|g3|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g3|Q~2_combout\ = (\SW[9]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g3|Q~2_combout\);

-- Location: FF_X113_Y20_N3
\ggt|lg|g3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|lg|g3|Q~2_combout\,
	sload => VCC,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g3|Q\(0));

-- Location: LCCOMB_X113_Y20_N2
\ggt|gzn|gm3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gm3|Equal0~0_combout\ = (\ggt|lg|g3|Q\(1) & (\lms|m3|Q\(1) & (\ggt|lg|g3|Q\(0) $ (!\lms|m3|Q\(0))))) # (!\ggt|lg|g3|Q\(1) & (!\lms|m3|Q\(1) & (\ggt|lg|g3|Q\(0) $ (!\lms|m3|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|lg|g3|Q\(1),
	datab => \lms|m3|Q\(1),
	datac => \ggt|lg|g3|Q\(0),
	datad => \lms|m3|Q\(0),
	combout => \ggt|gzn|gm3|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y20_N30
\ggt|gzn|gm3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gm3|Equal0~1_combout\ = (\ggt|gzn|gm3|Equal0~0_combout\ & (\lms|m3|Q\(2) $ (!\ggt|lg|g3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(2),
	datac => \ggt|lg|g3|Q\(2),
	datad => \ggt|gzn|gm3|Equal0~0_combout\,
	combout => \ggt|gzn|gm3|Equal0~1_combout\);

-- Location: FF_X112_Y20_N21
\ggt|gzn|seenOutZnarly[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\,
	asdata => \ggt|gzn|gm3|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gzn|seenOutZnarly\(3));

-- Location: LCCOMB_X112_Y20_N14
\ggt|gz0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gz0|Selector5~0_combout\ = (\ggt|gz0|currentState.check2~q\ & !\ggt|gzn|seenOutZnarly\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ggt|gz0|currentState.check2~q\,
	datad => \ggt|gzn|seenOutZnarly\(3),
	combout => \ggt|gz0|Selector5~0_combout\);

-- Location: FF_X112_Y20_N27
\ggt|gz0|currentState.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|gz0|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gz0|currentState.done~q\);

-- Location: LCCOMB_X112_Y20_N2
\ggt|gcfsm|nextState.doneS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gcfsm|nextState.doneS~0_combout\ = (\ggt|gz0|currentState.done~q\ & \ggt|gcfsm|currState.gradeZoodS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ggt|gz0|currentState.done~q\,
	datad => \ggt|gcfsm|currState.gradeZoodS~q\,
	combout => \ggt|gcfsm|nextState.doneS~0_combout\);

-- Location: FF_X112_Y20_N3
\ggt|gcfsm|currState.doneS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gcfsm|nextState.doneS~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gcfsm|currState.doneS~q\);

-- Location: LCCOMB_X113_Y22_N20
\ggt|gcfsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gcfsm|Selector0~0_combout\ = (!\ggt|gcfsm|currState.doneS~q\ & ((\ggt|gcfsm|GradeItNow~q\) # (\ggt|gcfsm|currState.waitingS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gcfsm|GradeItNow~q\,
	datac => \ggt|gcfsm|currState.waitingS~q\,
	datad => \ggt|gcfsm|currState.doneS~q\,
	combout => \ggt|gcfsm|Selector0~0_combout\);

-- Location: FF_X113_Y22_N21
\ggt|gcfsm|currState.waitingS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gcfsm|Selector0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gcfsm|currState.waitingS~q\);

-- Location: LCCOMB_X113_Y22_N8
\ggt|gcfsm|nextState.loadGuessS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gcfsm|nextState.loadGuessS~0_combout\ = (!\ggt|gcfsm|currState.waitingS~q\ & \ggt|gcfsm|GradeItNow~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gcfsm|currState.waitingS~q\,
	datad => \ggt|gcfsm|GradeItNow~q\,
	combout => \ggt|gcfsm|nextState.loadGuessS~0_combout\);

-- Location: FF_X113_Y22_N9
\ggt|gcfsm|currState.loadGuessS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|gcfsm|nextState.loadGuessS~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gcfsm|currState.loadGuessS~q\);

-- Location: LCCOMB_X114_Y20_N14
\ggt|lg|g1|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g1|Q~2_combout\ = (\SW[5]~input_o\ & \ggt|gcfsm|currState.loadGuessS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \ggt|gcfsm|currState.loadGuessS~q\,
	combout => \ggt|lg|g1|Q~2_combout\);

-- Location: FF_X113_Y20_N25
\ggt|lg|g1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ggt|lg|g1|Q~2_combout\,
	sload => VCC,
	ena => \ggt|lg|g3|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|lg|g1|Q\(2));

-- Location: LCCOMB_X113_Y20_N14
\ggt|gzn|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|Add0~4_combout\ = (\ggt|gzn|gm0|Equal0~1_combout\ & (\ggt|gzn|gm1|Equal0~0_combout\ & (\lms|m1|Q\(2) $ (!\ggt|lg|g1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(2),
	datab => \ggt|lg|g1|Q\(2),
	datac => \ggt|gzn|gm0|Equal0~1_combout\,
	datad => \ggt|gzn|gm1|Equal0~0_combout\,
	combout => \ggt|gzn|Add0~4_combout\);

-- Location: LCCOMB_X113_Y20_N4
\ggt|gzn|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|Add1~1_combout\ = (\ggt|gzn|gm3|Equal0~1_combout\ & ((\ggt|gzn|gm2|Equal0~1_combout\) # (\ggt|gzn|gm0|Equal0~1_combout\ $ (\ggt|gzn|gm1|Equal0~1_combout\)))) # (!\ggt|gzn|gm3|Equal0~1_combout\ & (\ggt|gzn|gm2|Equal0~1_combout\ & 
-- (\ggt|gzn|gm0|Equal0~1_combout\ $ (\ggt|gzn|gm1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gzn|gm3|Equal0~1_combout\,
	datab => \ggt|gzn|gm0|Equal0~1_combout\,
	datac => \ggt|gzn|gm2|Equal0~1_combout\,
	datad => \ggt|gzn|gm1|Equal0~1_combout\,
	combout => \ggt|gzn|Add1~1_combout\);

-- Location: LCCOMB_X113_Y20_N6
\ggt|gzn|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|Add1~0_combout\ = \ggt|gzn|gm3|Equal0~1_combout\ $ (\ggt|gzn|gm0|Equal0~1_combout\ $ (\ggt|gzn|gm2|Equal0~1_combout\ $ (\ggt|gzn|gm1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gzn|gm3|Equal0~1_combout\,
	datab => \ggt|gzn|gm0|Equal0~1_combout\,
	datac => \ggt|gzn|gm2|Equal0~1_combout\,
	datad => \ggt|gzn|gm1|Equal0~1_combout\,
	combout => \ggt|gzn|Add1~0_combout\);

-- Location: LCCOMB_X113_Y20_N26
\ggt|gzn|gw|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|gw|Equal0~0_combout\ = (\igp|currState.ingame~q\ & (\ggt|gzn|Add0~4_combout\ & (\ggt|gzn|Add1~1_combout\ & !\ggt|gzn|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \igp|currState.ingame~q\,
	datab => \ggt|gzn|Add0~4_combout\,
	datac => \ggt|gzn|Add1~1_combout\,
	datad => \ggt|gzn|Add1~0_combout\,
	combout => \ggt|gzn|gw|Equal0~0_combout\);

-- Location: FF_X113_Y20_N27
\ggt|gzn|GameWon\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\,
	d => \ggt|gzn|gw|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gzn|GameWon~q\);

-- Location: LCCOMB_X112_Y22_N22
\ggt|addIn[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|addIn\(3) = (\ggt|Equal0~0_combout\) # (\ggt|gzn|GameWon~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ggt|Equal0~0_combout\,
	datad => \ggt|gzn|GameWon~q\,
	combout => \ggt|addIn\(3));

-- Location: LCCOMB_X112_Y22_N12
\ggt|rn|Q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|rn|Q[0]~4_combout\ = (\ggt|addIn\(3) & (\ggt|rn|Q\(0) & VCC)) # (!\ggt|addIn\(3) & (\ggt|rn|Q\(0) $ (VCC)))
-- \ggt|rn|Q[0]~5\ = CARRY((!\ggt|addIn\(3) & \ggt|rn|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|addIn\(3),
	datab => \ggt|rn|Q\(0),
	datad => VCC,
	combout => \ggt|rn|Q[0]~4_combout\,
	cout => \ggt|rn|Q[0]~5\);

-- Location: LCCOMB_X112_Y22_N28
\ggt|rn|Q[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|rn|Q[3]~12_combout\ = (\ggt|gcfsm|currState.loadGuessS~q\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ggt|gcfsm|currState.loadGuessS~q\,
	datad => \KEY[0]~input_o\,
	combout => \ggt|rn|Q[3]~12_combout\);

-- Location: FF_X112_Y22_N13
\ggt|rn|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|rn|Q[0]~4_combout\,
	sclr => \ggt|gcfsm|ALT_INV_currState.loadGuessS~q\,
	ena => \ggt|rn|Q[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|rn|Q\(0));

-- Location: LCCOMB_X112_Y22_N14
\ggt|rn|Q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|rn|Q[1]~6_combout\ = (\ggt|rn|Q\(1) & (!\ggt|rn|Q[0]~5\)) # (!\ggt|rn|Q\(1) & ((\ggt|rn|Q[0]~5\) # (GND)))
-- \ggt|rn|Q[1]~7\ = CARRY((!\ggt|rn|Q[0]~5\) # (!\ggt|rn|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ggt|rn|Q\(1),
	datad => VCC,
	cin => \ggt|rn|Q[0]~5\,
	combout => \ggt|rn|Q[1]~6_combout\,
	cout => \ggt|rn|Q[1]~7\);

-- Location: FF_X112_Y22_N15
\ggt|rn|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|rn|Q[1]~6_combout\,
	sclr => \ggt|gcfsm|ALT_INV_currState.loadGuessS~q\,
	ena => \ggt|rn|Q[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|rn|Q\(1));

-- Location: LCCOMB_X112_Y22_N16
\ggt|rn|Q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|rn|Q[2]~8_combout\ = (\ggt|rn|Q\(2) & (\ggt|rn|Q[1]~7\ $ (GND))) # (!\ggt|rn|Q\(2) & (!\ggt|rn|Q[1]~7\ & VCC))
-- \ggt|rn|Q[2]~9\ = CARRY((\ggt|rn|Q\(2) & !\ggt|rn|Q[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(2),
	datad => VCC,
	cin => \ggt|rn|Q[1]~7\,
	combout => \ggt|rn|Q[2]~8_combout\,
	cout => \ggt|rn|Q[2]~9\);

-- Location: LCCOMB_X112_Y22_N18
\ggt|rn|Q[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|rn|Q[3]~10_combout\ = \ggt|rn|Q\(3) $ (\ggt|rn|Q[2]~9\ $ (\ggt|addIn\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datad => \ggt|addIn\(3),
	cin => \ggt|rn|Q[2]~9\,
	combout => \ggt|rn|Q[3]~10_combout\);

-- Location: FF_X112_Y22_N19
\ggt|rn|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|rn|Q[3]~10_combout\,
	sclr => \ggt|gcfsm|ALT_INV_currState.loadGuessS~q\,
	ena => \ggt|rn|Q[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|rn|Q\(3));

-- Location: FF_X112_Y22_N17
\ggt|rn|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ggt|rn|Q[2]~8_combout\,
	sclr => \ggt|gcfsm|ALT_INV_currState.loadGuessS~q\,
	ena => \ggt|rn|Q[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|rn|Q\(2));

-- Location: LCCOMB_X112_Y22_N4
\ggt|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|Equal0~0_combout\ = (!\ggt|rn|Q\(0) & (\ggt|rn|Q\(3) & (!\ggt|rn|Q\(1) & !\ggt|rn|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(0),
	datab => \ggt|rn|Q\(3),
	datac => \ggt|rn|Q\(1),
	datad => \ggt|rn|Q\(2),
	combout => \ggt|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y22_N2
\igp|nextState.backtowaiting~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \igp|nextState.backtowaiting~0_combout\ = (\igp|currState.ingame~q\ & ((\ggt|Equal0~0_combout\) # (\ggt|gzn|GameWon~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|Equal0~0_combout\,
	datac => \igp|currState.ingame~q\,
	datad => \ggt|gzn|GameWon~q\,
	combout => \igp|nextState.backtowaiting~0_combout\);

-- Location: FF_X113_Y22_N3
\igp|currState.backtowaiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \igp|nextState.backtowaiting~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \igp|currState.backtowaiting~q\);

-- Location: LCCOMB_X113_Y22_N16
\ggt|lg|g3|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|lg|g3|Q[1]~0_combout\ = (\KEY[0]~input_o\ & !\igp|currState.backtowaiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \igp|currState.backtowaiting~q\,
	combout => \ggt|lg|g3|Q[1]~0_combout\);

-- Location: LCCOMB_X110_Y20_N18
\lms|load1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load1~1_combout\ = (!\SW[4]~input_o\ & (\lms|Equal1~0_combout\ & \lms|load1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \lms|Equal1~0_combout\,
	datac => \lms|load1~0_combout\,
	combout => \lms|load1~1_combout\);

-- Location: LCCOMB_X110_Y20_N22
\lms|m1|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m1|Q[0]~1_combout\ = (\SW[0]~input_o\ & ((\lms|load1~1_combout\) # ((\ggt|lg|g3|Q[1]~0_combout\ & \lms|m1|Q\(0))))) # (!\SW[0]~input_o\ & (\ggt|lg|g3|Q[1]~0_combout\ & (\lms|m1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ggt|lg|g3|Q[1]~0_combout\,
	datac => \lms|m1|Q\(0),
	datad => \lms|load1~1_combout\,
	combout => \lms|m1|Q[0]~1_combout\);

-- Location: FF_X110_Y20_N23
\lms|m1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m1|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m1|Q\(0));

-- Location: LCCOMB_X110_Y20_N28
\lms|m1|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m1|Q[2]~2_combout\ = (\SW[2]~input_o\ & ((\lms|load1~1_combout\) # ((\ggt|lg|g3|Q[1]~0_combout\ & \lms|m1|Q\(2))))) # (!\SW[2]~input_o\ & (\ggt|lg|g3|Q[1]~0_combout\ & (\lms|m1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ggt|lg|g3|Q[1]~0_combout\,
	datac => \lms|m1|Q\(2),
	datad => \lms|load1~1_combout\,
	combout => \lms|m1|Q[2]~2_combout\);

-- Location: FF_X110_Y20_N29
\lms|m1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lms|m1|Q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lms|m1|Q\(2));

-- Location: LCCOMB_X110_Y20_N4
\lms|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|Equal1~0_combout\ = (!\lms|m1|Q\(1) & (!\lms|m1|Q\(0) & !\lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(1),
	datac => \lms|m1|Q\(0),
	datad => \lms|m1|Q\(2),
	combout => \lms|Equal1~0_combout\);

-- Location: LCCOMB_X110_Y20_N16
\lms|masterLoaded~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|masterLoaded~0_combout\ = (\lms|Equal3~0_combout\) # ((\lms|Equal1~0_combout\) # ((\lms|Equal0~0_combout\) # (\lms|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|Equal3~0_combout\,
	datab => \lms|Equal1~0_combout\,
	datac => \lms|Equal0~0_combout\,
	datad => \lms|Equal2~0_combout\,
	combout => \lms|masterLoaded~0_combout\);

-- Location: LCCOMB_X110_Y20_N10
\tca|ready~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ready~1_combout\ = (!\igp|currState.ingame~q\ & (\tca|ready~0_combout\ & !\lms|masterLoaded~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \igp|currState.ingame~q\,
	datac => \tca|ready~0_combout\,
	datad => \lms|masterLoaded~0_combout\,
	combout => \tca|ready~1_combout\);

-- Location: LCCOMB_X110_Y20_N8
\igp|startGameNow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \igp|startGameNow~0_combout\ = (\igp|prevstartGame~q\ & (!\igp|prevprevstartGame~q\ & \tca|ready~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \igp|prevstartGame~q\,
	datac => \igp|prevprevstartGame~q\,
	datad => \tca|ready~1_combout\,
	combout => \igp|startGameNow~0_combout\);

-- Location: FF_X110_Y20_N9
\igp|startGameNow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \igp|startGameNow~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \igp|startGameNow~q\);

-- Location: LCCOMB_X109_Y20_N12
\tca|en_reg\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|en_reg~combout\ = (!\tca|adderIn~0_combout\ & !\igp|startGameNow~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|adderIn~0_combout\,
	datac => \igp|startGameNow~q\,
	combout => \tca|en_reg~combout\);

-- Location: FF_X109_Y20_N19
\tca|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|r1|Q[0]~4_combout\,
	sclr => \tca|en_reg~combout\,
	ena => \tca|r1|Q[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|r1|Q\(0));

-- Location: FF_X109_Y20_N21
\tca|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|r1|Q[1]~6_combout\,
	sclr => \tca|en_reg~combout\,
	ena => \tca|r1|Q[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|r1|Q\(1));

-- Location: LCCOMB_X109_Y20_N24
\tca|r1|Q[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|r1|Q[3]~10_combout\ = \tca|r1|Q\(3) $ (\tca|r1|Q[2]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	cin => \tca|r1|Q[2]~9\,
	combout => \tca|r1|Q[3]~10_combout\);

-- Location: FF_X109_Y20_N25
\tca|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|r1|Q[3]~10_combout\,
	sclr => \tca|en_reg~combout\,
	ena => \tca|r1|Q[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|r1|Q\(3));

-- Location: LCCOMB_X109_Y50_N28
\ng|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[0]~0_combout\ = (\tca|r1|Q\(1) & (\tca|r1|Q\(3))) # (!\tca|r1|Q\(1) & (\tca|r1|Q\(2) $ (((!\tca|r1|Q\(3) & \tca|r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(1),
	datab => \tca|r1|Q\(3),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(0),
	combout => \ng|segment[0]~0_combout\);

-- Location: LCCOMB_X109_Y50_N2
\ng|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[1]~1_combout\ = (\tca|r1|Q\(3) & ((\tca|r1|Q\(1)) # ((\tca|r1|Q\(2))))) # (!\tca|r1|Q\(3) & (\tca|r1|Q\(2) & (\tca|r1|Q\(1) $ (\tca|r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(1),
	datab => \tca|r1|Q\(3),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(0),
	combout => \ng|segment[1]~1_combout\);

-- Location: LCCOMB_X109_Y50_N16
\ng|segment[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[2]~2_combout\ = (\tca|r1|Q\(2) & (((\tca|r1|Q\(3))))) # (!\tca|r1|Q\(2) & (\tca|r1|Q\(1) & ((\tca|r1|Q\(3)) # (!\tca|r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(1),
	datab => \tca|r1|Q\(3),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(0),
	combout => \ng|segment[2]~2_combout\);

-- Location: LCCOMB_X109_Y50_N30
\ng|segment[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[3]~3_combout\ = (\tca|r1|Q\(2) & ((\tca|r1|Q\(3)) # (\tca|r1|Q\(1) $ (!\tca|r1|Q\(0))))) # (!\tca|r1|Q\(2) & ((\tca|r1|Q\(1) & (\tca|r1|Q\(3))) # (!\tca|r1|Q\(1) & ((\tca|r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(1),
	datab => \tca|r1|Q\(3),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(0),
	combout => \ng|segment[3]~3_combout\);

-- Location: LCCOMB_X109_Y50_N4
\ng|segment[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[4]~4_combout\ = (\tca|r1|Q\(0)) # ((\tca|r1|Q\(1) & (\tca|r1|Q\(3))) # (!\tca|r1|Q\(1) & ((\tca|r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(1),
	datab => \tca|r1|Q\(3),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(0),
	combout => \ng|segment[4]~4_combout\);

-- Location: LCCOMB_X109_Y50_N14
\ng|segment[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[5]~5_combout\ = (\tca|r1|Q\(2) & ((\tca|r1|Q\(3)) # ((\tca|r1|Q\(1) & \tca|r1|Q\(0))))) # (!\tca|r1|Q\(2) & ((\tca|r1|Q\(1)) # ((!\tca|r1|Q\(3) & \tca|r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(1),
	datab => \tca|r1|Q\(3),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(0),
	combout => \ng|segment[5]~5_combout\);

-- Location: LCCOMB_X109_Y50_N12
\ng|segment[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[6]~6_combout\ = (!\tca|r1|Q\(3) & ((\tca|r1|Q\(1) & (\tca|r1|Q\(2) & \tca|r1|Q\(0))) # (!\tca|r1|Q\(1) & (!\tca|r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(1),
	datab => \tca|r1|Q\(3),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(0),
	combout => \ng|segment[6]~6_combout\);

-- Location: LCCOMB_X112_Y22_N20
\rn|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rn|segment[0]~0_combout\ = (\ggt|rn|Q\(1) & (\ggt|rn|Q\(3))) # (!\ggt|rn|Q\(1) & (\ggt|rn|Q\(2) $ (((!\ggt|rn|Q\(3) & \ggt|rn|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datab => \ggt|rn|Q\(0),
	datac => \ggt|rn|Q\(2),
	datad => \ggt|rn|Q\(1),
	combout => \rn|segment[0]~0_combout\);

-- Location: LCCOMB_X112_Y22_N10
\rn|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rn|segment[1]~1_combout\ = (\ggt|rn|Q\(3) & (((\ggt|rn|Q\(2)) # (\ggt|rn|Q\(1))))) # (!\ggt|rn|Q\(3) & (\ggt|rn|Q\(2) & (\ggt|rn|Q\(0) $ (\ggt|rn|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datab => \ggt|rn|Q\(0),
	datac => \ggt|rn|Q\(2),
	datad => \ggt|rn|Q\(1),
	combout => \rn|segment[1]~1_combout\);

-- Location: LCCOMB_X112_Y22_N8
\rn|segment[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rn|segment[2]~2_combout\ = (\ggt|rn|Q\(2) & (\ggt|rn|Q\(3))) # (!\ggt|rn|Q\(2) & (\ggt|rn|Q\(1) & ((\ggt|rn|Q\(3)) # (!\ggt|rn|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datab => \ggt|rn|Q\(0),
	datac => \ggt|rn|Q\(2),
	datad => \ggt|rn|Q\(1),
	combout => \rn|segment[2]~2_combout\);

-- Location: LCCOMB_X112_Y22_N26
\rn|segment[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rn|segment[3]~3_combout\ = (\ggt|rn|Q\(0) & ((\ggt|rn|Q\(3)) # (\ggt|rn|Q\(2) $ (!\ggt|rn|Q\(1))))) # (!\ggt|rn|Q\(0) & ((\ggt|rn|Q\(1) & (\ggt|rn|Q\(3))) # (!\ggt|rn|Q\(1) & ((\ggt|rn|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datab => \ggt|rn|Q\(0),
	datac => \ggt|rn|Q\(2),
	datad => \ggt|rn|Q\(1),
	combout => \rn|segment[3]~3_combout\);

-- Location: LCCOMB_X112_Y22_N24
\rn|segment[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rn|segment[4]~4_combout\ = (\ggt|rn|Q\(0)) # ((\ggt|rn|Q\(1) & (\ggt|rn|Q\(3))) # (!\ggt|rn|Q\(1) & ((\ggt|rn|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datab => \ggt|rn|Q\(0),
	datac => \ggt|rn|Q\(2),
	datad => \ggt|rn|Q\(1),
	combout => \rn|segment[4]~4_combout\);

-- Location: LCCOMB_X112_Y22_N30
\rn|segment[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rn|segment[5]~5_combout\ = (\ggt|rn|Q\(0) & ((\ggt|rn|Q\(1)) # (\ggt|rn|Q\(3) $ (!\ggt|rn|Q\(2))))) # (!\ggt|rn|Q\(0) & ((\ggt|rn|Q\(2) & (\ggt|rn|Q\(3))) # (!\ggt|rn|Q\(2) & ((\ggt|rn|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datab => \ggt|rn|Q\(0),
	datac => \ggt|rn|Q\(2),
	datad => \ggt|rn|Q\(1),
	combout => \rn|segment[5]~5_combout\);

-- Location: LCCOMB_X112_Y22_N0
\rn|segment[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rn|segment[6]~6_combout\ = (!\ggt|rn|Q\(3) & ((\ggt|rn|Q\(2) & (\ggt|rn|Q\(0) & \ggt|rn|Q\(1))) # (!\ggt|rn|Q\(2) & ((!\ggt|rn|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datab => \ggt|rn|Q\(0),
	datac => \ggt|rn|Q\(2),
	datad => \ggt|rn|Q\(1),
	combout => \rn|segment[6]~6_combout\);

-- Location: LCCOMB_X113_Y20_N16
\ggt|gzn|rsrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|rsrl[0]~0_combout\ = (\igp|currState.ingame~q\ & \ggt|gzn|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \igp|currState.ingame~q\,
	datad => \ggt|gzn|Add1~0_combout\,
	combout => \ggt|gzn|rsrl[0]~0_combout\);

-- Location: FF_X113_Y20_N17
\ggt|gzn|Znarly[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\,
	d => \ggt|gzn|rsrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gzn|Znarly\(0));

-- Location: LCCOMB_X113_Y20_N22
\ggt|gzn|rsrl[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|rsrl[1]~1_combout\ = (\igp|currState.ingame~q\ & (\ggt|gzn|Add0~4_combout\ $ (\ggt|gzn|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Add0~4_combout\,
	datac => \ggt|gzn|Add1~1_combout\,
	datad => \igp|currState.ingame~q\,
	combout => \ggt|gzn|rsrl[1]~1_combout\);

-- Location: FF_X113_Y20_N23
\ggt|gzn|Znarly[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\,
	d => \ggt|gzn|rsrl[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gzn|Znarly\(1));

-- Location: LCCOMB_X112_Y22_N6
\ggt|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|LessThan0~0_combout\ = (\ggt|rn|Q\(3)) # ((\ggt|rn|Q\(0)) # ((\ggt|rn|Q\(2)) # (\ggt|rn|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|rn|Q\(3),
	datab => \ggt|rn|Q\(0),
	datac => \ggt|rn|Q\(2),
	datad => \ggt|rn|Q\(1),
	combout => \ggt|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y20_N12
\ggt|gzn|rsrl[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ggt|gzn|rsrl[2]~2_combout\ = (\ggt|gzn|Add0~4_combout\ & (\ggt|gzn|Add1~1_combout\ & \igp|currState.ingame~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Add0~4_combout\,
	datac => \ggt|gzn|Add1~1_combout\,
	datad => \igp|currState.ingame~q\,
	combout => \ggt|gzn|rsrl[2]~2_combout\);

-- Location: FF_X113_Y20_N13
\ggt|gzn|Znarly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ggt|gcfsm|currState.gradeZnarlyS~clkctrl_outclk\,
	d => \ggt|gzn|rsrl[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ggt|gzn|Znarly\(2));

-- Location: LCCOMB_X112_Y18_N0
\zo|segment[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \zo|segment\(0) = (\ggt|LessThan0~0_combout\ & ((\ggt|gzn|Znarly\(0) & ((!\ggt|gzn|Znarly\(2)) # (!\ggt|gzn|Znarly\(1)))) # (!\ggt|gzn|Znarly\(0) & ((\ggt|gzn|Znarly\(1)) # (\ggt|gzn|Znarly\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gzn|Znarly\(0),
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|LessThan0~0_combout\,
	datad => \ggt|gzn|Znarly\(2),
	combout => \zo|segment\(0));

-- Location: LCCOMB_X112_Y18_N26
\zo|segment[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \zo|segment[3]~0_combout\ = (\ggt|LessThan0~0_combout\ & ((\ggt|gzn|Znarly\(0)) # ((\ggt|gzn|Znarly\(1)) # (\ggt|gzn|Znarly\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ggt|gzn|Znarly\(0),
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|LessThan0~0_combout\,
	datad => \ggt|gzn|Znarly\(2),
	combout => \zo|segment[3]~0_combout\);

-- Location: LCCOMB_X112_Y18_N28
\zn|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \zn|segment[0]~0_combout\ = (\ggt|gzn|Znarly\(1)) # (\ggt|gzn|Znarly\(0) $ (!\ggt|gzn|Znarly\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|gzn|Znarly\(0),
	datad => \ggt|gzn|Znarly\(2),
	combout => \zn|segment[0]~0_combout\);

-- Location: LCCOMB_X112_Y18_N14
\zn|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \zn|segment[1]~1_combout\ = (\ggt|gzn|Znarly\(1) $ (!\ggt|gzn|Znarly\(0))) # (!\ggt|gzn|Znarly\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|gzn|Znarly\(0),
	datad => \ggt|gzn|Znarly\(2),
	combout => \zn|segment[1]~1_combout\);

-- Location: LCCOMB_X112_Y18_N24
\zn|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \zn|segment~2_combout\ = (\ggt|gzn|Znarly\(1) & (!\ggt|gzn|Znarly\(0) & !\ggt|gzn|Znarly\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|gzn|Znarly\(0),
	datad => \ggt|gzn|Znarly\(2),
	combout => \zn|segment~2_combout\);

-- Location: LCCOMB_X112_Y18_N18
\zn|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \zn|segment\(3) = (\ggt|gzn|Znarly\(1) & (\ggt|gzn|Znarly\(0) & \ggt|gzn|Znarly\(2))) # (!\ggt|gzn|Znarly\(1) & (\ggt|gzn|Znarly\(0) $ (\ggt|gzn|Znarly\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|gzn|Znarly\(0),
	datad => \ggt|gzn|Znarly\(2),
	combout => \zn|segment\(3));

-- Location: LCCOMB_X112_Y18_N4
\zn|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \zn|segment\(4) = (\ggt|gzn|Znarly\(0)) # ((!\ggt|gzn|Znarly\(1) & \ggt|gzn|Znarly\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|gzn|Znarly\(0),
	datad => \ggt|gzn|Znarly\(2),
	combout => \zn|segment\(4));

-- Location: LCCOMB_X112_Y18_N22
\zn|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \zn|segment[5]~3_combout\ = (\ggt|gzn|Znarly\(1) & ((\ggt|gzn|Znarly\(0)) # (!\ggt|gzn|Znarly\(2)))) # (!\ggt|gzn|Znarly\(1) & (\ggt|gzn|Znarly\(0) & !\ggt|gzn|Znarly\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|gzn|Znarly\(0),
	datad => \ggt|gzn|Znarly\(2),
	combout => \zn|segment[5]~3_combout\);

-- Location: LCCOMB_X112_Y18_N12
\zn|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \zn|segment\(6) = (\ggt|gzn|Znarly\(1) & (\ggt|gzn|Znarly\(0) & \ggt|gzn|Znarly\(2))) # (!\ggt|gzn|Znarly\(1) & ((!\ggt|gzn|Znarly\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ggt|gzn|Znarly\(1),
	datac => \ggt|gzn|Znarly\(0),
	datad => \ggt|gzn|Znarly\(2),
	combout => \zn|segment\(6));

-- Location: LCCOMB_X105_Y3_N24
\lms|h4|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment[0]~0_combout\ = (\lms|m0|Q\(1)) # (\lms|m0|Q\(2) $ (!\lms|m0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(1),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(0),
	combout => \lms|h4|segment[0]~0_combout\);

-- Location: LCCOMB_X105_Y3_N2
\lms|h4|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment[1]~1_combout\ = (\lms|m0|Q\(1) $ (!\lms|m0|Q\(0))) # (!\lms|m0|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(1),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(0),
	combout => \lms|h4|segment[1]~1_combout\);

-- Location: LCCOMB_X83_Y3_N4
\lms|h4|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment~2_combout\ = (!\lms|m0|Q\(0) & (\lms|m0|Q\(1) & !\lms|m0|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(1),
	datad => \lms|m0|Q\(2),
	combout => \lms|h4|segment~2_combout\);

-- Location: LCCOMB_X83_Y3_N10
\lms|h4|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment\(3) = (\lms|m0|Q\(0) & (\lms|m0|Q\(1) $ (!\lms|m0|Q\(2)))) # (!\lms|m0|Q\(0) & (!\lms|m0|Q\(1) & \lms|m0|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(1),
	datad => \lms|m0|Q\(2),
	combout => \lms|h4|segment\(3));

-- Location: LCCOMB_X83_Y3_N12
\lms|h4|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment\(4) = (\lms|m0|Q\(0)) # ((!\lms|m0|Q\(1) & \lms|m0|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(1),
	datad => \lms|m0|Q\(2),
	combout => \lms|h4|segment\(4));

-- Location: LCCOMB_X83_Y3_N22
\lms|h4|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment[5]~3_combout\ = (\lms|m0|Q\(0) & ((\lms|m0|Q\(1)) # (!\lms|m0|Q\(2)))) # (!\lms|m0|Q\(0) & (\lms|m0|Q\(1) & !\lms|m0|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(1),
	datad => \lms|m0|Q\(2),
	combout => \lms|h4|segment[5]~3_combout\);

-- Location: LCCOMB_X83_Y3_N28
\lms|h4|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment\(6) = (\lms|m0|Q\(1) & (\lms|m0|Q\(0) & \lms|m0|Q\(2))) # (!\lms|m0|Q\(1) & ((!\lms|m0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(1),
	datad => \lms|m0|Q\(2),
	combout => \lms|h4|segment\(6));

-- Location: LCCOMB_X107_Y20_N12
\lms|h3|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment[0]~0_combout\ = (\lms|m1|Q\(1)) # (\lms|m1|Q\(0) $ (!\lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(1),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment[0]~0_combout\);

-- Location: LCCOMB_X107_Y20_N26
\lms|h3|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment[1]~1_combout\ = (\lms|m1|Q\(0) $ (!\lms|m1|Q\(1))) # (!\lms|m1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(1),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment[1]~1_combout\);

-- Location: LCCOMB_X107_Y20_N24
\lms|h3|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment~2_combout\ = (!\lms|m1|Q\(0) & (\lms|m1|Q\(1) & !\lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(1),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment~2_combout\);

-- Location: LCCOMB_X107_Y20_N10
\lms|h3|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment\(3) = (\lms|m1|Q\(0) & (\lms|m1|Q\(1) $ (!\lms|m1|Q\(2)))) # (!\lms|m1|Q\(0) & (!\lms|m1|Q\(1) & \lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(1),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment\(3));

-- Location: LCCOMB_X107_Y20_N4
\lms|h3|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment\(4) = (\lms|m1|Q\(0)) # ((!\lms|m1|Q\(1) & \lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(1),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment\(4));

-- Location: LCCOMB_X107_Y20_N18
\lms|h3|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment[5]~3_combout\ = (\lms|m1|Q\(0) & ((\lms|m1|Q\(1)) # (!\lms|m1|Q\(2)))) # (!\lms|m1|Q\(0) & (\lms|m1|Q\(1) & !\lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(1),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment[5]~3_combout\);

-- Location: LCCOMB_X107_Y20_N8
\lms|h3|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment\(6) = (\lms|m1|Q\(1) & (\lms|m1|Q\(0) & \lms|m1|Q\(2))) # (!\lms|m1|Q\(1) & ((!\lms|m1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(1),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment\(6));

-- Location: LCCOMB_X88_Y4_N28
\lms|h2|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment[0]~0_combout\ = (\lms|m2|Q\(1)) # (\lms|m2|Q\(0) $ (!\lms|m2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(2),
	combout => \lms|h2|segment[0]~0_combout\);

-- Location: LCCOMB_X88_Y4_N22
\lms|h2|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment[1]~1_combout\ = (\lms|m2|Q\(1) $ (!\lms|m2|Q\(0))) # (!\lms|m2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(2),
	combout => \lms|h2|segment[1]~1_combout\);

-- Location: LCCOMB_X88_Y4_N4
\lms|h2|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment~2_combout\ = (\lms|m2|Q\(1) & (!\lms|m2|Q\(0) & !\lms|m2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(2),
	combout => \lms|h2|segment~2_combout\);

-- Location: LCCOMB_X88_Y4_N10
\lms|h2|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment\(3) = (\lms|m2|Q\(1) & (\lms|m2|Q\(0) & \lms|m2|Q\(2))) # (!\lms|m2|Q\(1) & (\lms|m2|Q\(0) $ (\lms|m2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(2),
	combout => \lms|h2|segment\(3));

-- Location: LCCOMB_X88_Y4_N12
\lms|h2|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment\(4) = (\lms|m2|Q\(0)) # ((!\lms|m2|Q\(1) & \lms|m2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(2),
	combout => \lms|h2|segment\(4));

-- Location: LCCOMB_X88_Y4_N14
\lms|h2|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment[5]~3_combout\ = (\lms|m2|Q\(1) & ((\lms|m2|Q\(0)) # (!\lms|m2|Q\(2)))) # (!\lms|m2|Q\(1) & (\lms|m2|Q\(0) & !\lms|m2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(2),
	combout => \lms|h2|segment[5]~3_combout\);

-- Location: LCCOMB_X88_Y4_N16
\lms|h2|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment\(6) = (\lms|m2|Q\(1) & (\lms|m2|Q\(0) & \lms|m2|Q\(2))) # (!\lms|m2|Q\(1) & ((!\lms|m2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(2),
	combout => \lms|h2|segment\(6));

-- Location: LCCOMB_X69_Y4_N0
\lms|h1|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment[0]~0_combout\ = (\lms|m3|Q\(1)) # (\lms|m3|Q\(2) $ (!\lms|m3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(2),
	datac => \lms|m3|Q\(0),
	datad => \lms|m3|Q\(1),
	combout => \lms|h1|segment[0]~0_combout\);

-- Location: LCCOMB_X69_Y4_N30
\lms|h1|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment[1]~1_combout\ = (\lms|m3|Q\(0) $ (!\lms|m3|Q\(1))) # (!\lms|m3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(2),
	datac => \lms|m3|Q\(0),
	datad => \lms|m3|Q\(1),
	combout => \lms|h1|segment[1]~1_combout\);

-- Location: LCCOMB_X69_Y4_N12
\lms|h1|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment~2_combout\ = (!\lms|m3|Q\(2) & (!\lms|m3|Q\(0) & \lms|m3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(2),
	datac => \lms|m3|Q\(0),
	datad => \lms|m3|Q\(1),
	combout => \lms|h1|segment~2_combout\);

-- Location: LCCOMB_X69_Y4_N2
\lms|h1|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment\(3) = (\lms|m3|Q\(2) & (\lms|m3|Q\(0) $ (!\lms|m3|Q\(1)))) # (!\lms|m3|Q\(2) & (\lms|m3|Q\(0) & !\lms|m3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(2),
	datac => \lms|m3|Q\(0),
	datad => \lms|m3|Q\(1),
	combout => \lms|h1|segment\(3));

-- Location: LCCOMB_X69_Y4_N28
\lms|h1|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment\(4) = (\lms|m3|Q\(0)) # ((\lms|m3|Q\(2) & !\lms|m3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(2),
	datac => \lms|m3|Q\(0),
	datad => \lms|m3|Q\(1),
	combout => \lms|h1|segment\(4));

-- Location: LCCOMB_X69_Y4_N26
\lms|h1|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment[5]~3_combout\ = (\lms|m3|Q\(2) & (\lms|m3|Q\(0) & \lms|m3|Q\(1))) # (!\lms|m3|Q\(2) & ((\lms|m3|Q\(0)) # (\lms|m3|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(2),
	datac => \lms|m3|Q\(0),
	datad => \lms|m3|Q\(1),
	combout => \lms|h1|segment[5]~3_combout\);

-- Location: LCCOMB_X69_Y4_N24
\lms|h1|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment\(6) = (\lms|m3|Q\(2) & (\lms|m3|Q\(0) & \lms|m3|Q\(1))) # (!\lms|m3|Q\(2) & ((!\lms|m3|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m3|Q\(2),
	datac => \lms|m3|Q\(0),
	datad => \lms|m3|Q\(1),
	combout => \lms|h1|segment\(6));

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

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_VGA_BLANK_N <= \VGA_BLANK_N~output_o\;

ww_VGA_CLK <= \VGA_CLK~output_o\;

ww_VGA_SYNC_N <= \VGA_SYNC_N~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;
END structure;


