-- David Wolf if12b096

library IEEE;
use IEEE.std_logic_1164.all;

entity tb_bcd is
end tb_bcd;

architecture sim of tb_bcd is

    -- Intialisiere das Testobjekt
    component bcd
        port (
            clk         : in std_logic;
            reset_n     : in std_logic;
            reset_i     : in std_logic; -- Interner Reset
            enable_i    : in std_logic; -- '0'=FALSE und '1'=TRUE
            operation_i : in std_logic; -- '0'=UP und '1'=DOWN
            result_o    : out std_logic_vector(3 downto 0)); -- Die berechnete Zahl
    end component;
  
    signal s_clk50   : std_logic := '0';
    signal s_reset_n : std_logic := '1';
    
    signal s_reset_i     : std_logic := '0';
    signal s_enable_i    : std_logic := '0';
    signal s_operation_i : std_logic := '0';
    signal s_result_o    : std_logic_vector(3 downto 0) := "0000";
begin
    s_clk50 <= not s_clk50 after 20 ps;

    -- Erstellt ein Testobjekt
    tb_bcd : bcd
        port map (
            clk         => s_clk50,
            reset_n     => s_reset_n,
            reset_i     => s_reset_i,
            enable_i    => s_enable_i,
            operation_i => s_operation_i,
            result_o    => s_result_o);
    
    -- Testfälle
    p_test : process
    begin
        -- Testfall: Externer Reset
        -- Alle Eingänge auf '1'
        s_reset_n     <= '1';
        s_reset_i     <= '1';
        s_enable_i    <= '1';
        s_operation_i <= '1';
        wait for 1 ns;
        
        -- Alle Eingänge auf '0'
        s_reset_n     <= '0';
        s_reset_i     <= '0';
        s_enable_i    <= '0';
        s_operation_i <= '0';
        wait for 1 ns;
        
        -- Testfall: Interner Reset
        -- Alle Eingänge auf '1'
        s_reset_i     <= '1';
        s_enable_i    <= '1';
        s_operation_i <= '1';
        wait for 1 ns;
        
        -- Testfall: Operation UP ohne enable
        -- Eingänge:
        --   reset_n = '0'
        --   operation_i = '0'
        --   enable_i = '0'
        s_reset_i     <= '0';
        s_enable_i    <= '0';
        s_operation_i <= '0';
        wait for 1 ns;
        
        -- Testfall: Operation UP mit enable
        -- Eingänge:
        --   reset_n = '0'
        --   operation_i = '0'
        --   enable_i = '1'
        s_reset_i     <= '0';
        s_enable_i    <= '1';
        s_operation_i <= '0';
        wait for 1 ns;
        
        -- Testfall: Operation DOWN ohne enable
        -- Eingänge:
        --   reset_n = '0'
        --   operation_i = '0'
        --   enable_i = '0'
        s_reset_i     <= '0';
        s_enable_i    <= '0';
        s_operation_i <= '1';
        wait for 1 ns;
        
        -- Testfall: Operation DOWN mit enable
        -- Eingänge:
        --   reset_n = '0'
        --   operation_i = '0'
        --   enable_i = '1'
        s_reset_i     <= '0';
        s_enable_i    <= '1';
        s_operation_i <= '1';
        wait for 1 ns;
    end process p_test;

end sim;
