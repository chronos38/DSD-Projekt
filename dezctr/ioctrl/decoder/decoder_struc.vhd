library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture rtl of decoder is
begin
    p_decode : process(clk50)
    begin
        if rising_edge(clk50) then
            case cntr_i is
                when "0000" => ss_o <= "00111111"; -- 0
                when "0001" => ss_o <= "00000110"; -- 1
                when "0010" => ss_o <= "01011011"; -- 2
                when "0011" => ss_o <= "01001111"; -- 3
                when "0100" => ss_o <= "01100110"; -- 4
                when "0101" => ss_o <= "01101101"; -- 5
                when "0110" => ss_o <= "01111101"; -- 6
                when "0111" => ss_o <= "00000111"; -- 7
                when "1000" => ss_o <= "00111111"; -- 8
                when "1001" => ss_o <= "00100111"; -- 9
                when others => ss_o <= "10000000"; -- hurr
            end case;
        end if;
    end p_decode;
end rtl;
