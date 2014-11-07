-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture rtl of decoder is
begin
   p_decode : process(clk50)
   begin
      if rising_edge(clk50) then
         case cntr_i is
            when "0000" => ss_o <= "11000000"; -- 0
            when "0001" => ss_o <= "11111001"; -- 1
            when "0010" => ss_o <= "10100100"; -- 2
            when "0011" => ss_o <= "10110000"; -- 3
            when "0100" => ss_o <= "10011001"; -- 4
            when "0101" => ss_o <= "10010010"; -- 5
            when "0110" => ss_o <= "10000010"; -- 6
            when "0111" => ss_o <= "11111000"; -- 7
            when "1000" => ss_o <= "10000000"; -- 8
            when "1001" => ss_o <= "10010000"; -- 9
            when others => ss_o <= "11111111"; -- hurr
         end case;
      end if;
   end process;
end rtl;
