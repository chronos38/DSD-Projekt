library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture rtl of decoder is
begin
    p_decode : process(clk50, reset_n)
    begin
        if (reset_n) then
            ss_o <= "00000000";
        elsif rising_edge(clk50) then
            case cntr_i is
                when "0000" => ss_o <= "00111111";
                when "0001" => ss_o <= "00000110";
                when "0010" => ss_o <= "01011011";
                when "0011" => ss_o <= "01001111";
                when "0100" => ss_o <= "01100110";
                when "0101" => ss_o <= "01101101";
                when "0110" => ss_o <= "01111101";
                when "0111" => ss_o <= "00000111";
                when "1000" => ss_o <= "00111111";
                when "1001" => ss_o <= "00100111";
                when others => ss_o <= "11111111";
            end case;
        end if;
    end p_decode;
end rtl;
