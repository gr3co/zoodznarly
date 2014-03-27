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

-- DATE "03/27/2014 12:43:05"

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
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \tca|adderIn~0_combout\ : std_logic;
SIGNAL \tca|adderIn~1_combout\ : std_logic;
SIGNAL \tca|adderIn~2_combout\ : std_logic;
SIGNAL \lms|load2~1_combout\ : std_logic;
SIGNAL \tca|ca|nextState.d1ch3~4_combout\ : std_logic;
SIGNAL \tca|ca|prevPrevCoinInserted~q\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \tca|ca|prevPrevCoinInserted~feeder_combout\ : std_logic;
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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \tca|ca|prevCoinInserted~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \tca|ca|prevCoinInserted~q\ : std_logic;
SIGNAL \tca|ca|goNow~0_combout\ : std_logic;
SIGNAL \tca|ca|goNow~q\ : std_logic;
SIGNAL \tca|ca|nextState.d0ch0~0_combout\ : std_logic;
SIGNAL \tca|ca|currState.d0ch0~q\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \tca|ca|nextState~7_combout\ : std_logic;
SIGNAL \tca|ca|Mux0~0_combout\ : std_logic;
SIGNAL \tca|ca|Selector3~0_combout\ : std_logic;
SIGNAL \tca|ca|Selector3~1_combout\ : std_logic;
SIGNAL \tca|ca|currState.d1ch0~q\ : std_logic;
SIGNAL \tca|ca|nextState~4_combout\ : std_logic;
SIGNAL \tca|ca|Selector2~2_combout\ : std_logic;
SIGNAL \tca|ca|Selector2~4_combout\ : std_logic;
SIGNAL \tca|ca|currState.d0ch3~q\ : std_logic;
SIGNAL \tca|ca|nextState.d1ch3~5_combout\ : std_logic;
SIGNAL \tca|ca|currState.d1ch3~q\ : std_logic;
SIGNAL \tca|ca|Selector2~3_combout\ : std_logic;
SIGNAL \tca|ca|Selector5~0_combout\ : std_logic;
SIGNAL \tca|ca|currState.d1ch2~q\ : std_logic;
SIGNAL \tca|ca|nextState~6_combout\ : std_logic;
SIGNAL \tca|ca|Selector4~0_combout\ : std_logic;
SIGNAL \tca|ca|currState.d1ch1~q\ : std_logic;
SIGNAL \tca|ca|Selector0~0_combout\ : std_logic;
SIGNAL \tca|ca|Selector0~1_combout\ : std_logic;
SIGNAL \tca|ca|currState.d0ch1~q\ : std_logic;
SIGNAL \tca|ca|nextState~5_combout\ : std_logic;
SIGNAL \tca|ca|Selector1~0_combout\ : std_logic;
SIGNAL \tca|ca|currState.d0ch2~q\ : std_logic;
SIGNAL \tca|ca|WideOr4~0_combout\ : std_logic;
SIGNAL \tca|r1|Q[1]~12_combout\ : std_logic;
SIGNAL \tca|r1|Q[0]~5\ : std_logic;
SIGNAL \tca|r1|Q[1]~7\ : std_logic;
SIGNAL \tca|r1|Q[2]~8_combout\ : std_logic;
SIGNAL \tca|r1|Q[2]~9\ : std_logic;
SIGNAL \tca|r1|Q[3]~10_combout\ : std_logic;
SIGNAL \tca|r1|Q[1]~6_combout\ : std_logic;
SIGNAL \ng|segment[0]~0_combout\ : std_logic;
SIGNAL \ng|segment[1]~1_combout\ : std_logic;
SIGNAL \ng|segment[2]~2_combout\ : std_logic;
SIGNAL \ng|segment[3]~3_combout\ : std_logic;
SIGNAL \ng|segment[4]~4_combout\ : std_logic;
SIGNAL \ng|segment[5]~5_combout\ : std_logic;
SIGNAL \ng|segment[6]~6_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \lms|m0|Q[1]~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \lms|m0|Q[2]~2_combout\ : std_logic;
SIGNAL \lms|load0~0_combout\ : std_logic;
SIGNAL \lms|load0~1_combout\ : std_logic;
SIGNAL \lms|m0|Q[0]~1_combout\ : std_logic;
SIGNAL \lms|h4|segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h4|segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h4|segment~2_combout\ : std_logic;
SIGNAL \lms|h4|segment[5]~3_combout\ : std_logic;
SIGNAL \lms|m1|Q[2]~2_combout\ : std_logic;
SIGNAL \lms|load1~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \lms|load1~1_combout\ : std_logic;
SIGNAL \lms|m1|Q[1]~0_combout\ : std_logic;
SIGNAL \lms|m1|Q[0]~1_combout\ : std_logic;
SIGNAL \lms|h3|segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h3|segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h3|segment~2_combout\ : std_logic;
SIGNAL \lms|h3|segment[5]~3_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \lms|m2|Q[1]~0_combout\ : std_logic;
SIGNAL \lms|m2|Q[2]~2_combout\ : std_logic;
SIGNAL \lms|m2|Q[0]~1_combout\ : std_logic;
SIGNAL \lms|h2|segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h2|segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h2|segment~2_combout\ : std_logic;
SIGNAL \lms|h2|segment[5]~3_combout\ : std_logic;
SIGNAL \lms|m3|Q[0]~1_combout\ : std_logic;
SIGNAL \lms|load3~0_combout\ : std_logic;
SIGNAL \lms|load3~1_combout\ : std_logic;
SIGNAL \lms|m3|Q[1]~0_combout\ : std_logic;
SIGNAL \lms|m3|Q[2]~2_combout\ : std_logic;
SIGNAL \lms|h1|segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h1|segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h1|segment~2_combout\ : std_logic;
SIGNAL \lms|h1|segment[5]~3_combout\ : std_logic;
SIGNAL \tca|ready~0_combout\ : std_logic;
SIGNAL \lms|load2~0_combout\ : std_logic;
SIGNAL \lms|masterLoaded~0_combout\ : std_logic;
SIGNAL \tca|ready~1_combout\ : std_logic;
SIGNAL \lms|h1|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|h2|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|h3|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|h4|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lms|m1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \lms|m2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \lms|m3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tca|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lms|m0|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \lms|ALT_INV_masterLoaded~0_combout\ : std_logic;
SIGNAL \lms|h1|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h1|ALT_INV_segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h2|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h2|ALT_INV_segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h3|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h3|ALT_INV_segment[0]~0_combout\ : std_logic;
SIGNAL \lms|h4|ALT_INV_segment[1]~1_combout\ : std_logic;
SIGNAL \lms|h4|ALT_INV_segment[0]~0_combout\ : std_logic;

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
\lms|ALT_INV_masterLoaded~0_combout\ <= NOT \lms|masterLoaded~0_combout\;
\lms|h1|ALT_INV_segment[1]~1_combout\ <= NOT \lms|h1|segment[1]~1_combout\;
\lms|h1|ALT_INV_segment[0]~0_combout\ <= NOT \lms|h1|segment[0]~0_combout\;
\lms|h2|ALT_INV_segment[1]~1_combout\ <= NOT \lms|h2|segment[1]~1_combout\;
\lms|h2|ALT_INV_segment[0]~0_combout\ <= NOT \lms|h2|segment[0]~0_combout\;
\lms|h3|ALT_INV_segment[1]~1_combout\ <= NOT \lms|h3|segment[1]~1_combout\;
\lms|h3|ALT_INV_segment[0]~0_combout\ <= NOT \lms|h3|segment[0]~0_combout\;
\lms|h4|ALT_INV_segment[1]~1_combout\ <= NOT \lms|h4|segment[1]~1_combout\;
\lms|h4|ALT_INV_segment[0]~0_combout\ <= NOT \lms|h4|segment[0]~0_combout\;

-- Location: LCCOMB_X107_Y12_N16
\tca|adderIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|adderIn~0_combout\ = (!\tca|r1|Q\(3) & (((!\tca|r1|Q\(2)) # (!\tca|r1|Q\(1))) # (!\tca|r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(0),
	datab => \tca|r1|Q\(1),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(3),
	combout => \tca|adderIn~0_combout\);

-- Location: LCCOMB_X107_Y12_N4
\tca|adderIn~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|adderIn~1_combout\ = (!\tca|ca|WideOr4~0_combout\ & \tca|adderIn~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tca|ca|WideOr4~0_combout\,
	datad => \tca|adderIn~0_combout\,
	combout => \tca|adderIn~1_combout\);

-- Location: LCCOMB_X107_Y12_N30
\tca|adderIn~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|adderIn~2_combout\ = (\tca|adderIn~1_combout\) # ((!\KEY[2]~input_o\ & (\tca|ready~0_combout\ & !\lms|masterLoaded~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \tca|ready~0_combout\,
	datac => \tca|adderIn~1_combout\,
	datad => \lms|masterLoaded~0_combout\,
	combout => \tca|adderIn~2_combout\);

-- Location: LCCOMB_X106_Y12_N10
\lms|load2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load2~1_combout\ = (\lms|load2~0_combout\ & (!\SW[3]~input_o\ & (\SW[4]~input_o\ & !\KEY[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|load2~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \KEY[3]~input_o\,
	combout => \lms|load2~1_combout\);

-- Location: LCCOMB_X105_Y12_N10
\tca|ca|nextState.d1ch3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState.d1ch3~4_combout\ = (\SW[16]~input_o\ & (\tca|ca|goNow~q\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \tca|ca|goNow~q\,
	datad => \SW[17]~input_o\,
	combout => \tca|ca|nextState.d1ch3~4_combout\);

-- Location: FF_X105_Y12_N13
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

-- Location: LCCOMB_X105_Y12_N12
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X107_Y12_N6
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

-- Location: LCCOMB_X108_Y12_N12
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

-- Location: FF_X108_Y12_N13
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

-- Location: LCCOMB_X105_Y12_N30
\tca|ca|goNow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|goNow~0_combout\ = (!\tca|ca|prevPrevCoinInserted~q\ & \tca|ca|prevCoinInserted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|prevPrevCoinInserted~q\,
	datad => \tca|ca|prevCoinInserted~q\,
	combout => \tca|ca|goNow~0_combout\);

-- Location: FF_X105_Y12_N31
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

-- Location: LCCOMB_X107_Y12_N24
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

-- Location: FF_X107_Y12_N25
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

-- Location: LCCOMB_X105_Y12_N4
\tca|ca|nextState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState~7_combout\ = (!\SW[16]~input_o\ & (\tca|ca|goNow~q\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \tca|ca|goNow~q\,
	datad => \SW[17]~input_o\,
	combout => \tca|ca|nextState~7_combout\);

-- Location: LCCOMB_X105_Y12_N0
\tca|ca|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Mux0~0_combout\ = ((!\SW[16]~input_o\ & !\SW[17]~input_o\)) # (!\tca|ca|goNow~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \tca|ca|goNow~q\,
	datad => \SW[17]~input_o\,
	combout => \tca|ca|Mux0~0_combout\);

-- Location: LCCOMB_X105_Y12_N8
\tca|ca|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector3~0_combout\ = (\SW[16]~input_o\ & (\tca|ca|Selector2~3_combout\)) # (!\SW[16]~input_o\ & (((!\SW[17]~input_o\ & \tca|ca|nextState~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|Selector2~3_combout\,
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \tca|ca|nextState~4_combout\,
	combout => \tca|ca|Selector3~0_combout\);

-- Location: LCCOMB_X105_Y12_N24
\tca|ca|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector3~1_combout\ = (\tca|ca|goNow~q\ & ((\tca|ca|Selector3~0_combout\) # ((\tca|ca|nextState~7_combout\ & \tca|ca|nextState~5_combout\)))) # (!\tca|ca|goNow~q\ & (\tca|ca|nextState~7_combout\ & ((\tca|ca|nextState~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|goNow~q\,
	datab => \tca|ca|nextState~7_combout\,
	datac => \tca|ca|Selector3~0_combout\,
	datad => \tca|ca|nextState~5_combout\,
	combout => \tca|ca|Selector3~1_combout\);

-- Location: FF_X105_Y12_N25
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

-- Location: LCCOMB_X105_Y12_N6
\tca|ca|nextState~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState~4_combout\ = (\tca|ca|currState.d1ch0~q\) # (!\tca|ca|currState.d0ch0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tca|ca|currState.d0ch0~q\,
	datad => \tca|ca|currState.d1ch0~q\,
	combout => \tca|ca|nextState~4_combout\);

-- Location: LCCOMB_X105_Y12_N14
\tca|ca|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector2~2_combout\ = (\tca|ca|Selector0~0_combout\ & ((\tca|ca|nextState~6_combout\) # ((\tca|ca|nextState~7_combout\ & \tca|ca|nextState~4_combout\)))) # (!\tca|ca|Selector0~0_combout\ & (((\tca|ca|nextState~7_combout\ & 
-- \tca|ca|nextState~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|Selector0~0_combout\,
	datab => \tca|ca|nextState~6_combout\,
	datac => \tca|ca|nextState~7_combout\,
	datad => \tca|ca|nextState~4_combout\,
	combout => \tca|ca|Selector2~2_combout\);

-- Location: LCCOMB_X107_Y12_N22
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

-- Location: FF_X107_Y12_N23
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

-- Location: LCCOMB_X105_Y12_N20
\tca|ca|nextState.d1ch3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState.d1ch3~5_combout\ = (\tca|ca|nextState.d1ch3~4_combout\ & ((\tca|ca|currState.d1ch2~q\) # (\tca|ca|currState.d0ch2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|nextState.d1ch3~4_combout\,
	datab => \tca|ca|currState.d1ch2~q\,
	datad => \tca|ca|currState.d0ch2~q\,
	combout => \tca|ca|nextState.d1ch3~5_combout\);

-- Location: FF_X105_Y12_N21
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

-- Location: LCCOMB_X105_Y12_N26
\tca|ca|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector2~3_combout\ = (\tca|ca|currState.d0ch3~q\) # (\tca|ca|currState.d1ch3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tca|ca|currState.d0ch3~q\,
	datad => \tca|ca|currState.d1ch3~q\,
	combout => \tca|ca|Selector2~3_combout\);

-- Location: LCCOMB_X105_Y12_N28
\tca|ca|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector5~0_combout\ = (\tca|ca|nextState.d1ch3~4_combout\ & ((\tca|ca|nextState~5_combout\) # ((\tca|ca|nextState~7_combout\ & \tca|ca|Selector2~3_combout\)))) # (!\tca|ca|nextState.d1ch3~4_combout\ & (\tca|ca|nextState~7_combout\ & 
-- (\tca|ca|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|nextState.d1ch3~4_combout\,
	datab => \tca|ca|nextState~7_combout\,
	datac => \tca|ca|Selector2~3_combout\,
	datad => \tca|ca|nextState~5_combout\,
	combout => \tca|ca|Selector5~0_combout\);

-- Location: FF_X105_Y12_N29
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

-- Location: LCCOMB_X105_Y12_N2
\tca|ca|nextState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState~6_combout\ = (\tca|ca|currState.d1ch2~q\) # (\tca|ca|currState.d0ch2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tca|ca|currState.d1ch2~q\,
	datad => \tca|ca|currState.d0ch2~q\,
	combout => \tca|ca|nextState~6_combout\);

-- Location: LCCOMB_X105_Y12_N16
\tca|ca|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector4~0_combout\ = (\tca|ca|nextState.d1ch3~4_combout\ & ((\tca|ca|nextState~4_combout\) # ((\tca|ca|nextState~6_combout\ & \tca|ca|nextState~7_combout\)))) # (!\tca|ca|nextState.d1ch3~4_combout\ & (\tca|ca|nextState~6_combout\ & 
-- (\tca|ca|nextState~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|nextState.d1ch3~4_combout\,
	datab => \tca|ca|nextState~6_combout\,
	datac => \tca|ca|nextState~7_combout\,
	datad => \tca|ca|nextState~4_combout\,
	combout => \tca|ca|Selector4~0_combout\);

-- Location: FF_X105_Y12_N17
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

-- Location: LCCOMB_X105_Y12_N18
\tca|ca|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector0~0_combout\ = (\SW[16]~input_o\ & (\tca|ca|goNow~q\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \tca|ca|goNow~q\,
	datad => \SW[17]~input_o\,
	combout => \tca|ca|Selector0~0_combout\);

-- Location: LCCOMB_X106_Y12_N24
\tca|ca|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector0~1_combout\ = (\tca|ca|Mux0~0_combout\ & ((\tca|ca|nextState~5_combout\) # ((\tca|ca|nextState~4_combout\ & \tca|ca|Selector0~0_combout\)))) # (!\tca|ca|Mux0~0_combout\ & (\tca|ca|nextState~4_combout\ & (\tca|ca|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|Mux0~0_combout\,
	datab => \tca|ca|nextState~4_combout\,
	datac => \tca|ca|Selector0~0_combout\,
	datad => \tca|ca|nextState~5_combout\,
	combout => \tca|ca|Selector0~1_combout\);

-- Location: FF_X106_Y12_N25
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

-- Location: LCCOMB_X106_Y12_N18
\tca|ca|nextState~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|nextState~5_combout\ = (\tca|ca|currState.d1ch1~q\) # (\tca|ca|currState.d0ch1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tca|ca|currState.d1ch1~q\,
	datad => \tca|ca|currState.d0ch1~q\,
	combout => \tca|ca|nextState~5_combout\);

-- Location: LCCOMB_X106_Y12_N26
\tca|ca|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|Selector1~0_combout\ = (\tca|ca|nextState~6_combout\ & ((\tca|ca|Mux0~0_combout\) # ((\tca|ca|nextState~5_combout\ & \tca|ca|Selector0~0_combout\)))) # (!\tca|ca|nextState~6_combout\ & (\tca|ca|nextState~5_combout\ & 
-- (\tca|ca|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|nextState~6_combout\,
	datab => \tca|ca|nextState~5_combout\,
	datac => \tca|ca|Selector0~0_combout\,
	datad => \tca|ca|Mux0~0_combout\,
	combout => \tca|ca|Selector1~0_combout\);

-- Location: FF_X106_Y12_N27
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

-- Location: LCCOMB_X107_Y12_N26
\tca|ca|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ca|WideOr4~0_combout\ = (\tca|ca|currState.d0ch3~q\) # (((\tca|ca|currState.d0ch2~q\) # (\tca|ca|currState.d0ch1~q\)) # (!\tca|ca|currState.d0ch0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|ca|currState.d0ch3~q\,
	datab => \tca|ca|currState.d0ch0~q\,
	datac => \tca|ca|currState.d0ch2~q\,
	datad => \tca|ca|currState.d0ch1~q\,
	combout => \tca|ca|WideOr4~0_combout\);

-- Location: LCCOMB_X108_Y12_N4
\tca|r1|Q[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|r1|Q[1]~12_combout\ = (!\tca|ca|WideOr4~0_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \tca|ca|WideOr4~0_combout\,
	combout => \tca|r1|Q[1]~12_combout\);

-- Location: FF_X107_Y12_N7
\tca|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|r1|Q[0]~4_combout\,
	sclr => \tca|ca|WideOr4~0_combout\,
	ena => \tca|r1|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|r1|Q\(0));

-- Location: LCCOMB_X107_Y12_N8
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

-- Location: LCCOMB_X107_Y12_N10
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

-- Location: FF_X107_Y12_N11
\tca|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|r1|Q[2]~8_combout\,
	sclr => \tca|ca|WideOr4~0_combout\,
	ena => \tca|r1|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|r1|Q\(2));

-- Location: LCCOMB_X107_Y12_N12
\tca|r1|Q[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|r1|Q[3]~10_combout\ = \tca|r1|Q\(3) $ (\tca|r1|Q[2]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tca|r1|Q\(3),
	cin => \tca|r1|Q[2]~9\,
	combout => \tca|r1|Q[3]~10_combout\);

-- Location: FF_X107_Y12_N13
\tca|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|r1|Q[3]~10_combout\,
	sclr => \tca|ca|WideOr4~0_combout\,
	ena => \tca|r1|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|r1|Q\(3));

-- Location: FF_X107_Y12_N9
\tca|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tca|r1|Q[1]~6_combout\,
	sclr => \tca|ca|WideOr4~0_combout\,
	ena => \tca|r1|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tca|r1|Q\(1));

-- Location: LCCOMB_X108_Y12_N0
\ng|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[0]~0_combout\ = (\tca|r1|Q\(1) & (\tca|r1|Q\(3))) # (!\tca|r1|Q\(1) & (\tca|r1|Q\(2) $ (((!\tca|r1|Q\(3) & \tca|r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(0),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(1),
	combout => \ng|segment[0]~0_combout\);

-- Location: LCCOMB_X108_Y12_N10
\ng|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[1]~1_combout\ = (\tca|r1|Q\(3) & (((\tca|r1|Q\(2)) # (\tca|r1|Q\(1))))) # (!\tca|r1|Q\(3) & (\tca|r1|Q\(2) & (\tca|r1|Q\(0) $ (\tca|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(0),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(1),
	combout => \ng|segment[1]~1_combout\);

-- Location: LCCOMB_X108_Y12_N24
\ng|segment[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[2]~2_combout\ = (\tca|r1|Q\(2) & (\tca|r1|Q\(3))) # (!\tca|r1|Q\(2) & (\tca|r1|Q\(1) & ((\tca|r1|Q\(3)) # (!\tca|r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(0),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(1),
	combout => \ng|segment[2]~2_combout\);

-- Location: LCCOMB_X108_Y12_N30
\ng|segment[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[3]~3_combout\ = (\tca|r1|Q\(0) & ((\tca|r1|Q\(3)) # (\tca|r1|Q\(2) $ (!\tca|r1|Q\(1))))) # (!\tca|r1|Q\(0) & ((\tca|r1|Q\(1) & (\tca|r1|Q\(3))) # (!\tca|r1|Q\(1) & ((\tca|r1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(0),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(1),
	combout => \ng|segment[3]~3_combout\);

-- Location: LCCOMB_X108_Y12_N16
\ng|segment[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[4]~4_combout\ = (\tca|r1|Q\(0)) # ((\tca|r1|Q\(1) & (\tca|r1|Q\(3))) # (!\tca|r1|Q\(1) & ((\tca|r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(0),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(1),
	combout => \ng|segment[4]~4_combout\);

-- Location: LCCOMB_X108_Y12_N6
\ng|segment[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[5]~5_combout\ = (\tca|r1|Q\(0) & ((\tca|r1|Q\(1)) # (\tca|r1|Q\(3) $ (!\tca|r1|Q\(2))))) # (!\tca|r1|Q\(0) & ((\tca|r1|Q\(2) & (\tca|r1|Q\(3))) # (!\tca|r1|Q\(2) & ((\tca|r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(0),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(1),
	combout => \ng|segment[5]~5_combout\);

-- Location: LCCOMB_X108_Y12_N28
\ng|segment[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ng|segment[6]~6_combout\ = (!\tca|r1|Q\(3) & ((\tca|r1|Q\(2) & (\tca|r1|Q\(0) & \tca|r1|Q\(1))) # (!\tca|r1|Q\(2) & ((!\tca|r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(0),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(1),
	combout => \ng|segment[6]~6_combout\);

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

-- Location: LCCOMB_X107_Y12_N28
\lms|m0|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m0|Q[1]~0_combout\ = (\SW[1]~input_o\ & ((\lms|load0~1_combout\) # ((\KEY[0]~input_o\ & \lms|m0|Q\(1))))) # (!\SW[1]~input_o\ & (\KEY[0]~input_o\ & (\lms|m0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \lms|m0|Q\(1),
	datad => \lms|load0~1_combout\,
	combout => \lms|m0|Q[1]~0_combout\);

-- Location: FF_X107_Y12_N29
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

-- Location: LCCOMB_X108_Y12_N20
\lms|m0|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m0|Q[2]~2_combout\ = (\KEY[0]~input_o\ & ((\lms|m0|Q\(2)) # ((\SW[2]~input_o\ & \lms|load0~1_combout\)))) # (!\KEY[0]~input_o\ & (\SW[2]~input_o\ & ((\lms|load0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \lms|m0|Q\(2),
	datad => \lms|load0~1_combout\,
	combout => \lms|m0|Q[2]~2_combout\);

-- Location: FF_X108_Y12_N21
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

-- Location: LCCOMB_X107_Y12_N14
\lms|load0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load0~0_combout\ = (!\lms|m0|Q\(1) & (!\lms|m0|Q\(2) & !\lms|m0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(1),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(0),
	combout => \lms|load0~0_combout\);

-- Location: LCCOMB_X108_Y12_N22
\lms|load0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load0~1_combout\ = (!\SW[3]~input_o\ & (!\SW[4]~input_o\ & (!\KEY[3]~input_o\ & \lms|load0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \KEY[3]~input_o\,
	datad => \lms|load0~0_combout\,
	combout => \lms|load0~1_combout\);

-- Location: LCCOMB_X108_Y12_N26
\lms|m0|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m0|Q[0]~1_combout\ = (\KEY[0]~input_o\ & ((\lms|m0|Q\(0)) # ((\SW[0]~input_o\ & \lms|load0~1_combout\)))) # (!\KEY[0]~input_o\ & (\SW[0]~input_o\ & ((\lms|load0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \lms|m0|Q\(0),
	datad => \lms|load0~1_combout\,
	combout => \lms|m0|Q[0]~1_combout\);

-- Location: FF_X108_Y12_N27
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

-- Location: LCCOMB_X103_Y12_N28
\lms|h4|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment[0]~0_combout\ = (\lms|m0|Q\(1)) # (\lms|m0|Q\(0) $ (!\lms|m0|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(1),
	combout => \lms|h4|segment[0]~0_combout\);

-- Location: LCCOMB_X108_Y12_N18
\lms|h4|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment[1]~1_combout\ = (\lms|m0|Q\(0) $ (!\lms|m0|Q\(1))) # (!\lms|m0|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(1),
	datad => \lms|m0|Q\(2),
	combout => \lms|h4|segment[1]~1_combout\);

-- Location: LCCOMB_X103_Y12_N14
\lms|h4|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment~2_combout\ = (!\lms|m0|Q\(0) & (!\lms|m0|Q\(2) & \lms|m0|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(1),
	combout => \lms|h4|segment~2_combout\);

-- Location: LCCOMB_X103_Y12_N20
\lms|h4|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment\(3) = (\lms|m0|Q\(0) & (\lms|m0|Q\(2) $ (!\lms|m0|Q\(1)))) # (!\lms|m0|Q\(0) & (\lms|m0|Q\(2) & !\lms|m0|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(1),
	combout => \lms|h4|segment\(3));

-- Location: LCCOMB_X103_Y12_N10
\lms|h4|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment\(4) = (\lms|m0|Q\(0)) # ((\lms|m0|Q\(2) & !\lms|m0|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(1),
	combout => \lms|h4|segment\(4));

-- Location: LCCOMB_X103_Y12_N12
\lms|h4|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment[5]~3_combout\ = (\lms|m0|Q\(0) & ((\lms|m0|Q\(1)) # (!\lms|m0|Q\(2)))) # (!\lms|m0|Q\(0) & (!\lms|m0|Q\(2) & \lms|m0|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(1),
	combout => \lms|h4|segment[5]~3_combout\);

-- Location: LCCOMB_X103_Y12_N22
\lms|h4|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h4|segment\(6) = (\lms|m0|Q\(2) & (\lms|m0|Q\(0) & \lms|m0|Q\(1))) # (!\lms|m0|Q\(2) & ((!\lms|m0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m0|Q\(0),
	datac => \lms|m0|Q\(2),
	datad => \lms|m0|Q\(1),
	combout => \lms|h4|segment\(6));

-- Location: LCCOMB_X106_Y12_N8
\lms|m1|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m1|Q[2]~2_combout\ = (\SW[2]~input_o\ & ((\lms|load1~1_combout\) # ((\lms|m1|Q\(2) & \KEY[0]~input_o\)))) # (!\SW[2]~input_o\ & (((\lms|m1|Q\(2) & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \lms|load1~1_combout\,
	datac => \lms|m1|Q\(2),
	datad => \KEY[0]~input_o\,
	combout => \lms|m1|Q[2]~2_combout\);

-- Location: FF_X106_Y12_N9
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

-- Location: LCCOMB_X106_Y12_N16
\lms|load1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load1~0_combout\ = (!\lms|m1|Q\(0) & (!\lms|m1|Q\(2) & !\lms|m1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(2),
	datad => \lms|m1|Q\(1),
	combout => \lms|load1~0_combout\);

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

-- Location: LCCOMB_X106_Y12_N0
\lms|load1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load1~1_combout\ = (!\SW[4]~input_o\ & (\lms|load1~0_combout\ & (\SW[3]~input_o\ & !\KEY[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \lms|load1~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \KEY[3]~input_o\,
	combout => \lms|load1~1_combout\);

-- Location: LCCOMB_X106_Y12_N28
\lms|m1|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m1|Q[1]~0_combout\ = (\SW[1]~input_o\ & ((\lms|load1~1_combout\) # ((\lms|m1|Q\(1) & \KEY[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\lms|m1|Q\(1) & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \lms|load1~1_combout\,
	datac => \lms|m1|Q\(1),
	datad => \KEY[0]~input_o\,
	combout => \lms|m1|Q[1]~0_combout\);

-- Location: FF_X106_Y12_N29
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

-- Location: LCCOMB_X106_Y12_N30
\lms|m1|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m1|Q[0]~1_combout\ = (\SW[0]~input_o\ & ((\lms|load1~1_combout\) # ((\lms|m1|Q\(0) & \KEY[0]~input_o\)))) # (!\SW[0]~input_o\ & (((\lms|m1|Q\(0) & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \lms|load1~1_combout\,
	datac => \lms|m1|Q\(0),
	datad => \KEY[0]~input_o\,
	combout => \lms|m1|Q[0]~1_combout\);

-- Location: FF_X106_Y12_N31
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

-- Location: LCCOMB_X80_Y1_N0
\lms|h3|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment[0]~0_combout\ = (\lms|m1|Q\(1)) # (\lms|m1|Q\(0) $ (!\lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m1|Q\(1),
	datac => \lms|m1|Q\(0),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment[0]~0_combout\);

-- Location: LCCOMB_X80_Y1_N30
\lms|h3|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment[1]~1_combout\ = (\lms|m1|Q\(1) $ (!\lms|m1|Q\(0))) # (!\lms|m1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m1|Q\(1),
	datac => \lms|m1|Q\(0),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment[1]~1_combout\);

-- Location: LCCOMB_X98_Y1_N24
\lms|h3|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment~2_combout\ = (!\lms|m1|Q\(0) & (!\lms|m1|Q\(2) & \lms|m1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m1|Q\(0),
	datac => \lms|m1|Q\(2),
	datad => \lms|m1|Q\(1),
	combout => \lms|h3|segment~2_combout\);

-- Location: LCCOMB_X80_Y1_N12
\lms|h3|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment\(3) = (\lms|m1|Q\(1) & (\lms|m1|Q\(0) & \lms|m1|Q\(2))) # (!\lms|m1|Q\(1) & (\lms|m1|Q\(0) $ (\lms|m1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m1|Q\(1),
	datac => \lms|m1|Q\(0),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment\(3));

-- Location: LCCOMB_X80_Y1_N10
\lms|h3|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment\(4) = (\lms|m1|Q\(0)) # ((!\lms|m1|Q\(1) & \lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m1|Q\(1),
	datac => \lms|m1|Q\(0),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment\(4));

-- Location: LCCOMB_X80_Y1_N20
\lms|h3|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment[5]~3_combout\ = (\lms|m1|Q\(1) & ((\lms|m1|Q\(0)) # (!\lms|m1|Q\(2)))) # (!\lms|m1|Q\(1) & (\lms|m1|Q\(0) & !\lms|m1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m1|Q\(1),
	datac => \lms|m1|Q\(0),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment[5]~3_combout\);

-- Location: LCCOMB_X80_Y1_N14
\lms|h3|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h3|segment\(6) = (\lms|m1|Q\(1) & (\lms|m1|Q\(0) & \lms|m1|Q\(2))) # (!\lms|m1|Q\(1) & ((!\lms|m1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m1|Q\(1),
	datac => \lms|m1|Q\(0),
	datad => \lms|m1|Q\(2),
	combout => \lms|h3|segment\(6));

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

-- Location: LCCOMB_X106_Y12_N2
\lms|m2|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m2|Q[1]~0_combout\ = (\lms|load2~1_combout\ & ((\SW[1]~input_o\) # ((\lms|m2|Q\(1) & \KEY[0]~input_o\)))) # (!\lms|load2~1_combout\ & (((\lms|m2|Q\(1) & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|load2~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \lms|m2|Q\(1),
	datad => \KEY[0]~input_o\,
	combout => \lms|m2|Q[1]~0_combout\);

-- Location: FF_X106_Y12_N3
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

-- Location: LCCOMB_X106_Y12_N22
\lms|m2|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m2|Q[2]~2_combout\ = (\lms|load2~1_combout\ & ((\SW[2]~input_o\) # ((\lms|m2|Q\(2) & \KEY[0]~input_o\)))) # (!\lms|load2~1_combout\ & (((\lms|m2|Q\(2) & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|load2~1_combout\,
	datab => \SW[2]~input_o\,
	datac => \lms|m2|Q\(2),
	datad => \KEY[0]~input_o\,
	combout => \lms|m2|Q[2]~2_combout\);

-- Location: FF_X106_Y12_N23
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

-- Location: LCCOMB_X106_Y12_N4
\lms|m2|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m2|Q[0]~1_combout\ = (\lms|load2~1_combout\ & ((\SW[0]~input_o\) # ((\lms|m2|Q\(0) & \KEY[0]~input_o\)))) # (!\lms|load2~1_combout\ & (((\lms|m2|Q\(0) & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|load2~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \lms|m2|Q\(0),
	datad => \KEY[0]~input_o\,
	combout => \lms|m2|Q[0]~1_combout\);

-- Location: FF_X106_Y12_N5
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

-- Location: LCCOMB_X74_Y1_N0
\lms|h2|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment[0]~0_combout\ = (\lms|m2|Q\(1)) # (\lms|m2|Q\(2) $ (!\lms|m2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(2),
	datad => \lms|m2|Q\(0),
	combout => \lms|h2|segment[0]~0_combout\);

-- Location: LCCOMB_X74_Y1_N22
\lms|h2|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment[1]~1_combout\ = (\lms|m2|Q\(1) $ (!\lms|m2|Q\(0))) # (!\lms|m2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(2),
	datad => \lms|m2|Q\(0),
	combout => \lms|h2|segment[1]~1_combout\);

-- Location: LCCOMB_X74_Y1_N8
\lms|h2|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment~2_combout\ = (\lms|m2|Q\(1) & (!\lms|m2|Q\(2) & !\lms|m2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(2),
	datad => \lms|m2|Q\(0),
	combout => \lms|h2|segment~2_combout\);

-- Location: LCCOMB_X74_Y1_N14
\lms|h2|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment\(3) = (\lms|m2|Q\(1) & (\lms|m2|Q\(2) & \lms|m2|Q\(0))) # (!\lms|m2|Q\(1) & (\lms|m2|Q\(2) $ (\lms|m2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(2),
	datad => \lms|m2|Q\(0),
	combout => \lms|h2|segment\(3));

-- Location: LCCOMB_X74_Y1_N12
\lms|h2|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment\(4) = (\lms|m2|Q\(0)) # ((!\lms|m2|Q\(1) & \lms|m2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(2),
	datad => \lms|m2|Q\(0),
	combout => \lms|h2|segment\(4));

-- Location: LCCOMB_X74_Y1_N10
\lms|h2|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment[5]~3_combout\ = (\lms|m2|Q\(1) & ((\lms|m2|Q\(0)) # (!\lms|m2|Q\(2)))) # (!\lms|m2|Q\(1) & (!\lms|m2|Q\(2) & \lms|m2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(2),
	datad => \lms|m2|Q\(0),
	combout => \lms|h2|segment[5]~3_combout\);

-- Location: LCCOMB_X74_Y1_N28
\lms|h2|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h2|segment\(6) = (\lms|m2|Q\(1) & (\lms|m2|Q\(2) & \lms|m2|Q\(0))) # (!\lms|m2|Q\(1) & (!\lms|m2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lms|m2|Q\(1),
	datac => \lms|m2|Q\(2),
	datad => \lms|m2|Q\(0),
	combout => \lms|h2|segment\(6));

-- Location: LCCOMB_X107_Y12_N2
\lms|m3|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m3|Q[0]~1_combout\ = (\SW[0]~input_o\ & ((\lms|load3~1_combout\) # ((\KEY[0]~input_o\ & \lms|m3|Q\(0))))) # (!\SW[0]~input_o\ & (\KEY[0]~input_o\ & (\lms|m3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \lms|m3|Q\(0),
	datad => \lms|load3~1_combout\,
	combout => \lms|m3|Q[0]~1_combout\);

-- Location: FF_X107_Y12_N3
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

-- Location: LCCOMB_X107_Y12_N20
\lms|load3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load3~0_combout\ = (!\lms|m3|Q\(2) & (!\lms|m3|Q\(0) & !\lms|m3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m3|Q\(2),
	datab => \lms|m3|Q\(0),
	datad => \lms|m3|Q\(1),
	combout => \lms|load3~0_combout\);

-- Location: LCCOMB_X106_Y12_N20
\lms|load3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load3~1_combout\ = (\SW[4]~input_o\ & (\SW[3]~input_o\ & (\lms|load3~0_combout\ & !\KEY[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \lms|load3~0_combout\,
	datad => \KEY[3]~input_o\,
	combout => \lms|load3~1_combout\);

-- Location: LCCOMB_X106_Y12_N12
\lms|m3|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m3|Q[1]~0_combout\ = (\SW[1]~input_o\ & ((\lms|load3~1_combout\) # ((\KEY[0]~input_o\ & \lms|m3|Q\(1))))) # (!\SW[1]~input_o\ & (\KEY[0]~input_o\ & (\lms|m3|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \lms|m3|Q\(1),
	datad => \lms|load3~1_combout\,
	combout => \lms|m3|Q[1]~0_combout\);

-- Location: FF_X106_Y12_N13
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

-- Location: LCCOMB_X106_Y12_N14
\lms|m3|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|m3|Q[2]~2_combout\ = (\SW[2]~input_o\ & ((\lms|load3~1_combout\) # ((\KEY[0]~input_o\ & \lms|m3|Q\(2))))) # (!\SW[2]~input_o\ & (\KEY[0]~input_o\ & (\lms|m3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \lms|m3|Q\(2),
	datad => \lms|load3~1_combout\,
	combout => \lms|m3|Q[2]~2_combout\);

-- Location: FF_X106_Y12_N15
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

-- Location: LCCOMB_X70_Y1_N24
\lms|h1|segment[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment[0]~0_combout\ = (\lms|m3|Q\(1)) # (\lms|m3|Q\(2) $ (!\lms|m3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m3|Q\(1),
	datac => \lms|m3|Q\(2),
	datad => \lms|m3|Q\(0),
	combout => \lms|h1|segment[0]~0_combout\);

-- Location: LCCOMB_X70_Y1_N22
\lms|h1|segment[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment[1]~1_combout\ = (\lms|m3|Q\(1) $ (!\lms|m3|Q\(0))) # (!\lms|m3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m3|Q\(1),
	datac => \lms|m3|Q\(2),
	datad => \lms|m3|Q\(0),
	combout => \lms|h1|segment[1]~1_combout\);

-- Location: LCCOMB_X70_Y1_N16
\lms|h1|segment~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment~2_combout\ = (\lms|m3|Q\(1) & (!\lms|m3|Q\(2) & !\lms|m3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m3|Q\(1),
	datac => \lms|m3|Q\(2),
	datad => \lms|m3|Q\(0),
	combout => \lms|h1|segment~2_combout\);

-- Location: LCCOMB_X70_Y1_N18
\lms|h1|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment\(3) = (\lms|m3|Q\(1) & (\lms|m3|Q\(2) & \lms|m3|Q\(0))) # (!\lms|m3|Q\(1) & (\lms|m3|Q\(2) $ (\lms|m3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m3|Q\(1),
	datac => \lms|m3|Q\(2),
	datad => \lms|m3|Q\(0),
	combout => \lms|h1|segment\(3));

-- Location: LCCOMB_X70_Y1_N8
\lms|h1|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment\(4) = (\lms|m3|Q\(0)) # ((!\lms|m3|Q\(1) & \lms|m3|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m3|Q\(1),
	datac => \lms|m3|Q\(2),
	datad => \lms|m3|Q\(0),
	combout => \lms|h1|segment\(4));

-- Location: LCCOMB_X70_Y1_N30
\lms|h1|segment[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment[5]~3_combout\ = (\lms|m3|Q\(1) & ((\lms|m3|Q\(0)) # (!\lms|m3|Q\(2)))) # (!\lms|m3|Q\(1) & (!\lms|m3|Q\(2) & \lms|m3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m3|Q\(1),
	datac => \lms|m3|Q\(2),
	datad => \lms|m3|Q\(0),
	combout => \lms|h1|segment[5]~3_combout\);

-- Location: LCCOMB_X70_Y1_N20
\lms|h1|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|h1|segment\(6) = (\lms|m3|Q\(1) & (\lms|m3|Q\(2) & \lms|m3|Q\(0))) # (!\lms|m3|Q\(1) & (!\lms|m3|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m3|Q\(1),
	datac => \lms|m3|Q\(2),
	datad => \lms|m3|Q\(0),
	combout => \lms|h1|segment\(6));

-- Location: LCCOMB_X107_Y12_N0
\tca|ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ready~0_combout\ = (\tca|r1|Q\(3)) # ((\tca|r1|Q\(1)) # ((\tca|r1|Q\(2)) # (\tca|r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tca|r1|Q\(3),
	datab => \tca|r1|Q\(1),
	datac => \tca|r1|Q\(2),
	datad => \tca|r1|Q\(0),
	combout => \tca|ready~0_combout\);

-- Location: LCCOMB_X106_Y12_N6
\lms|load2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|load2~0_combout\ = (!\lms|m2|Q\(2) & (!\lms|m2|Q\(0) & !\lms|m2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|m2|Q\(2),
	datac => \lms|m2|Q\(0),
	datad => \lms|m2|Q\(1),
	combout => \lms|load2~0_combout\);

-- Location: LCCOMB_X107_Y12_N18
\lms|masterLoaded~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lms|masterLoaded~0_combout\ = (\lms|load1~0_combout\) # ((\lms|load2~0_combout\) # ((\lms|load0~0_combout\) # (\lms|load3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lms|load1~0_combout\,
	datab => \lms|load2~0_combout\,
	datac => \lms|load0~0_combout\,
	datad => \lms|load3~0_combout\,
	combout => \lms|masterLoaded~0_combout\);

-- Location: LCCOMB_X84_Y32_N0
\tca|ready~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tca|ready~1_combout\ = (\tca|ready~0_combout\ & !\lms|masterLoaded~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tca|ready~0_combout\,
	datad => \lms|masterLoaded~0_combout\,
	combout => \tca|ready~1_combout\);

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


