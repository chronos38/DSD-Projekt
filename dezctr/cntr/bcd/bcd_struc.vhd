-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
architecture rtl of bcd is
    signal s_cntr  : std_logic_vector(3 downto 0);
begin
    process (clk, reset_n)
    begin
        if (reset_n = '0') then -- Externer Reset
            s_cntr <= "0000";
        elsif rising_edge(clk) then -- Taktflanke
            if (reset_i = '1') then -- Interner Reset
                s_cntr  <= "0000";
            elsif (enable_i = '1') then -- Aktiviert
                if (operation_i = '0') then -- UP
                    if (s_cntr = "1001") then -- Wenn 9 dann starte wieder bei 0
                        s_cntr  <= "0000";
                    else -- Andernfalls addiere eins
                        s_cntr  <= std_logic_vector(unsigned(s_cntr) + 1);
                    end if;
                else -- DOWN
                    if (s_cntr = "0000") then -- Wenn 0 dann starte wieder bei 9
                        s_cntr  <= "1001";
                    else -- Andernfalls subtrahiere eins
                        s_cntr  <= std_logic_vector(unsigned(s_cntr) - 1);
                    end if;
                end if;
            end if;
        end if;
    end process;
    result_o <= s_cntr;
end rtl;
