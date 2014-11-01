library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd is
    port(
        clk50       : in std_logic;
        reset_n     : in std_logic;
        reset_i     : in std_logic; -- Interner Reset
        enable_i    : in std_logic; -- '0'=FALSE und '1'=TRUE
        operation_i : in std_logic; -- '0'=UP und '1'=DOWN
        result_o    : out std_logic_vector(3 downto 0)); -- Ergebnis der Berechnung
end bcd;
