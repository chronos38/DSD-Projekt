-- David Wolf if12b096

library IEEE;
use IEEE.std_logic_1164.all;

entity tb_cntr is
end tb_cntr;

architecture sim of tb_cntr is
    component cntr
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
    end component;

    signal s_clk50   : std_logic := '0';
    signal s_reset_n : std_logic := '0';
    
    signal s_ctup_i     : std_logic := '0';
    signal s_ctdown_i   : std_logic := '0';
    signal s_ctreset_i  : std_logic := '0';
    signal s_cthold_i   : std_logic := '0';
    
    signal s_cntr0_o : std_logic_vector(3 downto 0) := (others => '0');
    signal s_cntr1_o : std_logic_vector(3 downto 0) := "0000";
    signal s_cntr2_o : std_logic_vector(3 downto 0) := (others => '0');
    signal s_cntr3_o : std_logic_vector(3 downto 0) := "0000";
begin
    s_clk50 <= not s_clk50 after 20 ps;

    -- Erstellt ein Testobjekt
    tb_cntr : cntr
        port map (
            clk50     => s_clk50,
            reset_n   => s_reset_n,
            ctup_i    => s_ctup_i,
            ctdown_i  => s_ctdown_i,
            cthold_i  => s_cthold_i,
            ctreset_i => s_ctreset_i,
            cntr0_o   => s_cntr0_o,
            cntr1_o   => s_cntr1_o,
            cntr2_o   => s_cntr2_o,
            cntr3_o   => s_cntr3_o);
    
    p_test : process
    begin
        -- Testfall: Externer Reset
        -- Externer Reset '0' der Rest deaktiviert
        s_reset_n   <= '0';
        s_ctup_i    <= '1';
        s_ctdown_i  <= '1';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 1 ns;
        
        -- Testfall: DOWN
        -- s_ctdown_i auf '1'
        s_reset_n   <= '1';
        s_ctup_i    <= '1';
        s_ctdown_i  <= '0';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 17 ns;
        
        -- Testfall: HOLD
        -- s_ctdown_i auf '1'
        s_reset_n   <= '1';
        s_ctup_i    <= '0';
        s_ctdown_i  <= '0';
        s_cthold_i  <= '1';
        s_ctreset_i <= '0';
        wait for 1 ns;
        
        -- Testfall: HOLD auf DOWN
        -- s_ctdown_i auf '1'
        s_reset_n   <= '1';
        s_ctup_i    <= '1';
        s_ctdown_i  <= '1';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 1 ns;
        
        -- Testfall: UP
        -- s_ctdup_i auf '1'
        s_reset_n   <= '1';
        s_ctup_i    <= '0';
        s_ctdown_i  <= '1';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 30 ns;
        
        -- Testfall: HOLD
        -- s_ctdown_i auf '1'
        s_reset_n   <= '1';
        s_ctup_i    <= '0';
        s_ctdown_i  <= '0';
        s_cthold_i  <= '1';
        s_ctreset_i <= '0';
        wait for 1 ns;
        
        -- Testfall: HOLD auf UP
        -- s_ctdown_i auf '1'
        s_reset_n   <= '1';
        s_ctup_i    <= '1';
        s_ctdown_i  <= '1';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 1 ns;
        
        -- Testfall: UP auf DOWN
        s_reset_n   <= '1';
        s_ctup_i    <= '1';
        s_ctdown_i  <= '0';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 1 ns;
        
        -- Testfall: DOWN auf UP
        s_reset_n   <= '1';
        s_ctup_i    <= '0';
        s_ctdown_i  <= '1';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 1 ns;
        
        -- Testfall: RESET
        -- s_ctdown_i auf '1'
        s_reset_n   <= '1';
        s_ctup_i    <= '0';
        s_ctdown_i  <= '0';
        s_cthold_i  <= '0';
        s_ctreset_i <= '1';
        wait for 1 ns;
        
        -- Testfall: Alle Eingänge auf '1'
        s_reset_n   <= '1';
        s_ctup_i    <= '1';
        s_ctdown_i  <= '1';
        s_cthold_i  <= '1';
        s_ctreset_i <= '1';
        wait for 1 ns;
        
        -- Testfall: Externer Reset
        -- Alle Eingänge '0'
        s_reset_n   <= '0';
        s_ctup_i    <= '0';
        s_ctdown_i  <= '0';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 1 ns;
        
        -- Testfall: Nach Reset sollte der Zustand UP sein.
        -- Alle Eingänge auf '0'
        s_reset_n   <= '1';
        s_ctup_i    <= '0';
        s_ctdown_i  <= '0';
        s_cthold_i  <= '0';
        s_ctreset_i <= '0';
        wait for 100 ps;
    end process p_test;
end sim;
