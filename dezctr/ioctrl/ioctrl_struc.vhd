library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.numeric_std.all;

architecture Behavioral of ioctrl is
	constant C_ENCOUNTVAL 	: unsigned(12 downto 0):= "10011100";
	signal s_count				: unsigned(12 downto 0);

	signal s_pbsync			: std_logic_vector(1 downto 0);
	signal s_swsync			: std_logic_vector(9 downto 0);
begin

	p_synchronize : process 
	begin 
		
		if(reset_n = '0') then
		elsif rising_edge(clk50) then
			
		end if;
	end process;

end architecture Behavioral;