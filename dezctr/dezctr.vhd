library IEEE;
use IEEE.std_logic_1164.all;

entity dezctr is
	port (
		clk50 	: in std_logic;
		reset_n 	: in std_logic;
		sw_i		: in std_logic_vector(9 downto 0);
		pb_i		: in std_logic_vector(1 downto 0));
end entity;