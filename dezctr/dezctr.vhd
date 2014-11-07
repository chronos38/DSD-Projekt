-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity dezctr is
   port (
      clk50     : in std_logic; -- Takteingang
      reset_n     : in std_logic; -- Asynchroner Reset
      sw_i        : in std_logic_vector(9 downto 0); -- Schalter
      pb_i        : in std_logic_vector(1 downto 0); -- Buttons
      ss0_o     : out std_logic_vector(7 downto 0); -- Ziffer eins des BCD
      ss1_o     : out std_logic_vector(7 downto 0); -- Ziffer zwei des BCD
      ss2_o     : out std_logic_vector(7 downto 0); -- Ziffer drei des BCD
      ss3_o     : out std_logic_vector(7 downto 0)); -- Ziffer vier des BCD
end entity;