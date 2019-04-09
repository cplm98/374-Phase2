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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Mon Mar 04 14:36:38 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY phase2_schematic IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		clr :  IN  STD_LOGIC;
		PCout :  IN  STD_LOGIC;
		ZHout :  IN  STD_LOGIC;
		ZLout :  IN  STD_LOGIC;
		MDRout :  IN  STD_LOGIC;
		MARin :  IN  STD_LOGIC;
		PCin :  IN  STD_LOGIC;
		MDRin :  IN  STD_LOGIC;
		IRin :  IN  STD_LOGIC;
		Yin :  IN  STD_LOGIC;
		Zin :  IN  STD_LOGIC;
		con_enable :  IN  STD_LOGIC;
		RAM_wren :  IN  STD_LOGIC;
		RAM_rden :  IN  STD_LOGIC;
		outport_in :  IN  STD_LOGIC;
		LOin :  IN  STD_LOGIC;
		HIin :  IN  STD_LOGIC;
		LOout :  IN  STD_LOGIC;
		HIout :  IN  STD_LOGIC;
		strobe :  IN  STD_LOGIC;
		OutPort :  IN  STD_LOGIC;
		Gra :  IN  STD_LOGIC;
		Grb :  IN  STD_LOGIC;
		Grc :  IN  STD_LOGIC;
		Rin :  IN  STD_LOGIC;
		Rout :  IN  STD_LOGIC;
		BAout :  IN  STD_LOGIC;
		IncPC :  IN  STD_LOGIC;
		Rd :  IN  STD_LOGIC;
		ctl_add :  IN  STD_LOGIC;
		ctl_sub :  IN  STD_LOGIC;
		ctl_mul :  IN  STD_LOGIC;
		ctl_div :  IN  STD_LOGIC;
		ctl_shr :  IN  STD_LOGIC;
		ctl_shra :  IN  STD_LOGIC;
		ctl_shl :  IN  STD_LOGIC;
		ctl_ror :  IN  STD_LOGIC;
		ctl_rol :  IN  STD_LOGIC;
		ctl_and :  IN  STD_LOGIC;
		ctl_or :  IN  STD_LOGIC;
		ctl_not :  IN  STD_LOGIC;
		ctl_neg :  IN  STD_LOGIC;
		input_port_in :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MDatain :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Con_FF_out :  OUT  STD_LOGIC;
		BusMuxOut :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		C_sign_extended_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		HIvalue :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		LOValue :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		outport_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R0value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R10value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R11value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R12value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R13value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R14value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R15value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R1value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R2value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R3value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R4value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R5value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R6value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R7value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R8value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R9value :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		RAM_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		sel_en_Rin :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		sel_en_Rout :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		ZLValue :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END phase2_schematic;

ARCHITECTURE bdf_type OF phase2_schematic IS 

COMPONENT datapath_phase2
	PORT(clk : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 PCout : IN STD_LOGIC;
		 ZHout : IN STD_LOGIC;
		 ZLout : IN STD_LOGIC;
		 MDRout : IN STD_LOGIC;
		 MARin : IN STD_LOGIC;
		 PCin : IN STD_LOGIC;
		 MDRin : IN STD_LOGIC;
		 IRin : IN STD_LOGIC;
		 Yin : IN STD_LOGIC;
		 Zin : IN STD_LOGIC;
		 con_enable : IN STD_LOGIC;
		 RAM_wren : IN STD_LOGIC;
		 RAM_rden : IN STD_LOGIC;
		 outport_in : IN STD_LOGIC;
		 LOin : IN STD_LOGIC;
		 HIin : IN STD_LOGIC;
		 LOout : IN STD_LOGIC;
		 HIout : IN STD_LOGIC;
		 strobe : IN STD_LOGIC;
		 OutPort : IN STD_LOGIC;
		 Gra : IN STD_LOGIC;
		 Grb : IN STD_LOGIC;
		 Grc : IN STD_LOGIC;
		 Rin : IN STD_LOGIC;
		 Rout : IN STD_LOGIC;
		 BAout : IN STD_LOGIC;
		 IncPC : IN STD_LOGIC;
		 Rd : IN STD_LOGIC;
		 ctl_add : IN STD_LOGIC;
		 ctl_sub : IN STD_LOGIC;
		 ctl_mul : IN STD_LOGIC;
		 ctl_div : IN STD_LOGIC;
		 ctl_shr : IN STD_LOGIC;
		 ctl_shra : IN STD_LOGIC;
		 ctl_shl : IN STD_LOGIC;
		 ctl_ror : IN STD_LOGIC;
		 ctl_rol : IN STD_LOGIC;
		 ctl_and : IN STD_LOGIC;
		 ctl_or : IN STD_LOGIC;
		 ctl_not : IN STD_LOGIC;
		 ctl_neg : IN STD_LOGIC;
		 input_port_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 MDatain : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Con_FF_out : OUT STD_LOGIC;
		 BusMuxOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 C_sign_extended_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 HIvalue : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 LOvalue : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 outport_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R0value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R10value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R11value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R12value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R13value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R14value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R15value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R1value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R2value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R3value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R4value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R5value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R6value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R7value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R8value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R9value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 RAM_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sel_en_Rin : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sel_en_Rout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ZLValue : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : datapath_phase2
PORT MAP(clk => clk,
		 clr => clr,
		 PCout => PCout,
		 ZHout => ZHout,
		 ZLout => ZLout,
		 MDRout => MDRout,
		 MARin => MARin,
		 PCin => PCin,
		 MDRin => MDRin,
		 IRin => IRin,
		 Yin => Yin,
		 Zin => Zin,
		 con_enable => con_enable,
		 RAM_wren => RAM_wren,
		 RAM_rden => RAM_rden,
		 outport_in => outport_in,
		 LOin => LOin,
		 HIin => HIin,
		 LOout => LOout,
		 HIout => HIout,
		 strobe => strobe,
		 OutPort => OutPort,
		 Gra => Gra,
		 Grb => Grb,
		 Grc => Grc,
		 Rin => Rin,
		 Rout => Rout,
		 BAout => BAout,
		 IncPC => IncPC,
		 Rd => Rd,
		 ctl_add => ctl_add,
		 ctl_sub => ctl_sub,
		 ctl_mul => ctl_mul,
		 ctl_div => ctl_div,
		 ctl_shr => ctl_shr,
		 ctl_shra => ctl_shra,
		 ctl_shl => ctl_shl,
		 ctl_ror => ctl_ror,
		 ctl_rol => ctl_rol,
		 ctl_and => ctl_and,
		 ctl_or => ctl_or,
		 ctl_not => ctl_not,
		 ctl_neg => ctl_neg,
		 input_port_in => input_port_in,
		 MDatain => MDatain,
		 Con_FF_out => Con_FF_out,
		 BusMuxOut => BusMuxOut,
		 C_sign_extended_out => C_sign_extended_out,
		 HIvalue => HIvalue,
		 LOvalue => LOValue,
		 outport_out => outport_out,
		 R0value => R0value,
		 R10value => R10value,
		 R11value => R11value,
		 R12value => R12value,
		 R13value => R13value,
		 R14value => R14value,
		 R15value => R15value,
		 R1value => R1value,
		 R2value => R2value,
		 R3value => R3value,
		 R4value => R4value,
		 R5value => R5value,
		 R6value => R6value,
		 R7value => R7value,
		 R8value => R8value,
		 R9value => R9value,
		 RAM_out => RAM_out,
		 sel_en_Rin => sel_en_Rin,
		 sel_en_Rout => sel_en_Rout,
		 ZLValue => ZLValue);


END bdf_type;