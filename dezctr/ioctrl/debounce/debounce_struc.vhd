-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behavioral of debounce is
    signal s_keydeb : std_logic_vector(WIDTH-1 downto 0) := (others=>'0');
    signal s_debcnt : integer range 0 to DELAY + 1 := 0;
begin
   p_debounce: process
   begin
      wait until rising_edge(clk50);
        
      if (keyin_i = s_keydeb) then 
            s_debcnt <= 0;
      else
            s_debcnt <= s_debcnt + 1;
      end if;
        
      if (s_debcnt = DELAY) then 
            s_keydeb <= keyin_i; 
      end if;
   end process;
   
   keyout_o <= s_keydeb;

end behavioral;