library IEEE;
use IEEE.std_logic_1164.all;

entity cntr is
   port (
      clk50     : in std_logic; -- Takt
      reset_n   : in std_logic; -- Externer Reset
        
      ctup_i    : in std_logic; -- Zählt rauf
      ctdown_i  : in std_logic; -- Zahlt ab
      ctreset_i : in std_logic; -- Interner Reset
      cthold_i  : in std_logic; -- Zählt nicht

        
      cntr0_o   : out std_logic_vector(3 downto 0); -- Erste Ziffer
      cntr1_o   : out std_logic_vector(3 downto 0); -- Zweite Ziffer
      cntr2_o   : out std_logic_vector(3 downto 0); -- Dritte Ziffer
      cntr3_o   : out std_logic_vector(3 downto 0)); -- Vierte Ziffer
end entity;