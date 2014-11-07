-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity debounce is
    generic ( 
        WIDTH         : natural := 2;
        DELAY         : natural := 156);
    port ( clk50   : in   std_logic;
        keyin_i     : in   std_logic_vector(WIDTH-1 downto 0);
        keyout_o    : out  std_logic_vector(WIDTH-1 downto 0));
end debounce;