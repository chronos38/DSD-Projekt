architecture rtl of bcd is
    signal s_cntr  : std_logic_vector(3 downto 0);
begin
    process (clk, reset_n)
    begin
        if (reset_n = '0') then
            s_cntr <= "0000";
        elsif rising_edge(clk) then
            if (reset_i = '1') then
                s_cntr  <= "0000";
            elsif (enable_i = '1') then
                if (operation_i = '0') then -- UP
                    if (s_cntr = "1001") then
                        s_cntr  <= "0000";
                    else
                        s_cntr  <= std_logic_vector(unsigned(s_cntr) + 1);
                    end if;
                else -- DOWN
                    if (s_cntr = "0000") then
                        s_cntr  <= "1001";
                    else
                        s_cntr  <= std_logic_vector(unsigned(s_cntr) - 1);
                    end if;
                end if;
            end if;
        end if;
    end process;
    result_o <= s_cntr;
end rtl;
