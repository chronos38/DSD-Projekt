library IEEE;
use IEEE.std_logic_1164.all;

entity prescaler is
	port (
		clk50		: in std_logic;
		reset_n	: in std_logic;
		clk1		: out std_logic);
end entity;