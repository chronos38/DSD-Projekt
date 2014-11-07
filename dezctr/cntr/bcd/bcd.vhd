-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd is
    port(
        clk         : in std_logic; -- Takteingang
        reset_n     : in std_logic; -- Externer Reset
        reset_i     : in std_logic; -- Interner Reset
        enable_i    : in std_logic; -- '0'=FALSE und '1'=TRUE
        operation_i : in std_logic; -- '0'=UP und '1'=DOWN
        result_o    : out std_logic_vector(3 downto 0)); -- Ergebnis der Berechnung
end bcd;
