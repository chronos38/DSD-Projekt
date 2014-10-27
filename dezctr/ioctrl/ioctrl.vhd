library IEEE;
use IEEE.std_logic_1164.all;

entity ioctrl is
    port (
        clk50    : in std_logic; -- Takt
        reset_n  : in std_logic; -- Asynchroner Reset
        
        sw_i     : in std_logic_vector(9 downto 0); -- Schalter Eingang
        pb_i     : in std_logic_vector(1 downto 0); -- Button Eingang
        
        cntr0    : in std_logic_vector(3 downto 0); -- Counter 0
        cntr1    : in std_logic_vector(3 downto 0); -- Counter 1
        cntr2    : in std_logic_vector(3 downto 0); -- Counter 2
        cntr3    : in std_logic_vector(3 downto 0); -- Counter 3
        
        ss0_o    : out std_logic_vector(7 downto 0); -- Display 0
        ss1_o    : out std_logic_vector(7 downto 0); -- Display 1
        ss2_o    : out std_logic_vector(7 downto 0); -- Display 2
        ss3_o    : out std_logic_vector(7 downto 0); -- Display 3
        
        swsync_o : out std_logic_vector(9 downto 0); -- Synchronisierter Schalter
        pbsync_o : out std_logic_vector(1 downto 0)); -- Synchronisierter Button
end entity;
