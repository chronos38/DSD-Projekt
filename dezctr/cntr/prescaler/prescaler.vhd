-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity prescaler is
    port (
        clk50        : in std_logic; -- Takteingang
        reset_n      : in std_logic; -- Asynchroner Reset
        clk1         : out std_logic); -- Taktausgang
end entity;