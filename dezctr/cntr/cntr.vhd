library IEEE;
use IEEE.std_logic_1164.all;

entity cntr is
	port (
		clk50		: in std_logic;
		reset_n	: in std_logic;
		
		ctup		: in std_logic;
		ctdowm	: in std_logic;
		ctreset	: in std_logic;
		cthold	: in std_logic;
		
		cntr0		: out std_logic_vector(4 downto 0);
		cntr1		: out std_logic_vector(4 downto 0);
		cntr2		: out std_logic_vector(4 downto 0);
		cntr3		: out std_logic_vector(4 downto 0));
end entity;