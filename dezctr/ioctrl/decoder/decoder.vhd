library IEEE;
use IEEE.std_logic_1164.all;

-- 7-Segment Display. Ab Seite 25 User Manual bzw Kapitel 4.3
--
--     D0
--    ****
--   *    *
-- D5*    *D1
--   * D6 *
--    ****
--   *    *
-- D4*    *D2
--   *    *
--    ****
--     D3
entity decoder is
    port (
        clk50   : in std_logic; -- Takt
        reset_n : in std_logic; -- Asynchroner Reset
        cntr_i  : in std_logic_vector(4 downto 0); -- Counter
        ss_o    : out std_logic_vector(7 downto 0)); -- Display
end entity;
