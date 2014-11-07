-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behavioral of prescaler is
    signal s_counter     : unsigned(24 downto 0); -- mindestens 24bit für 25000000
    signal s_clk1        : std_logic;
begin

    p_count_edges : process(clk50, reset_n)
    begin
        if reset_n = '0' then
            s_clk1 <= '0';
            s_counter <= (others => '0');
        elsif rising_edge(clk50) then
            if s_counter = x"17D7840" then -- 17D7840 für fpga, 1388 für sim 
                s_clk1 <= not s_clk1;              
                s_counter <= (others => '0');
            else
                s_counter <= s_counter + "1";
            end if;
        end if;
            
    end process p_count_edges;
    
    clk1 <= s_clk1;
    
end behavioral;