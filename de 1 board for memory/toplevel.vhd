-- Copyright (C) 1991-2010 Altera Corporation
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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 10.0 Build 262 08/18/2010 Service Pack 1 SJ Full Version"
-- CREATED		"Fri Sep 21 11:15:32 2012"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY top_de1 IS 
  port(clk : in  std_logic;
	reset: in std_logic;
	pixel_ready : in std_logic;
	zoom	: in std_logic_vector(2 downto 0);
	position : in std_logic_vector(2 downto 0);
	a	: out std_logic_vector(11 downto 0);
	b	: out std_logic_vector(11 downto 0);
	frame_ready : out std_logic
	);
end top_de1;
	

ARCHITECTURE bdf_type OF top_de1 IS 

component main is
   port(clk : in  std_logic;
	reset: in std_logic;
	pixel_ready : in std_logic;
	zoom	: in std_logic_vector(2 downto 0);
	position : in std_logic_vector(2 downto 0);
	a	: out std_logic_vector(11 downto 0);
	b	: out std_logic_vector(11 downto 0);
	frame_ready : out std_logic
	);
end component;

COMPONENT gen6mhz
	PORT(clk50mhz : IN STD_LOGIC;
		 clk6mhz : OUT STD_LOGIC
	);
END COMPONENT;

signal clk6mhz : std_logic;



BEGIN 


b2v_inst1 : gen6mhz
PORT MAP(clk50mhz => clk,clk6mhz=>clk6mhz);
b2v_inst : main
PORT MAP(clk=>clk6mhz,reset=>reset,pixel_ready=>pixel_ready,zoom=>zoom,position=>position,a=>a,b=>b,frame_ready=>frame_ready);





END bdf_type;
