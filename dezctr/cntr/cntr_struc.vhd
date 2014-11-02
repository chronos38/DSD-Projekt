library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--clk50     : in std_logic;
--reset_n   : in std_logic;

--ctup_i    : in std_logic;
--ctdown_i  : in std_logic;
--ctreset_i : in std_logic;
--cthold_i  : in std_logic;

--cntr0_o   : out std_logic_vector(3 downto 0);
--cntr1_o   : out std_logic_vector(3 downto 0);
--cntr2_o   : out std_logic_vector(3 downto 0);
--cntr3_o   : out std_logic_vector(3 downto 0));

architecture rtl of cntr is
    
    component bcd
        port (
            clk         : in std_logic;
            reset_n     : in std_logic;
            reset_i     : in std_logic; -- Interner Reset
            enable_i    : in std_logic; -- '0'=FALSE und '1'=TRUE
            operation_i : in std_logic; -- '0'=UP und '1'=DOWN
            result_o    : out std_logic_vector(3 downto 0)); -- Ergebnis der Berechnung
    end component;
    
    component prescaler
        port (
            clk50   : in std_logic;
            reset_n : in std_logic;
            clk1    : out std_logic);
    end component;

    -- Es gibt vier Zustände
    -- UP:    Zählt rauf
    -- DOWN:  Zählt runter
    -- HOLD:  Macht nichts
    -- RESET: Setzt alle Ziffern auf 0
    type t_state is (UP, DOWN, HOLD, RESET);
    signal s_present_state : t_state; -- Der jetzige Zustand
    signal s_next_state    : t_state; -- Der nächste Zustand
    
    signal s_clk_1s : std_logic := '0'; -- Der interne Takt welcher den Zähler steuert
    
    signal s_cntr0_o : std_logic_vector(3 downto 0) := (others => '0'); -- Interner Zähler auf Ziffer 1
    signal s_cntr1_o : std_logic_vector(3 downto 0) := "0000"; -- Interner Zähler auf Ziffer 2
    signal s_cntr2_o : std_logic_vector(3 downto 0) := (others => '0'); -- Interner Zähler auf Ziffer 3
    signal s_cntr3_o : std_logic_vector(3 downto 0) := "0000"; -- Interner Zähler auf Ziffer 4
    
    signal s_reset_bcd  : std_logic := '0'; -- Interner Reset für BCD
    signal s_enable_bcd : std_logic_vector(3 downto 0) := "0000"; -- Enable für BCD, '1'=TRUE
    signal s_op_bcd     : std_logic := '0'; -- Operation für BCD, '0'=UP '1'=DOWN
begin
    i_prescaler : prescaler
        port map(
            clk50 => clk50,
            reset_n => reset_n,
            clk1 => s_clk_1s
        );
    
    i_bcd0 : bcd
        port map(
            clk         => s_clk_1s,
            reset_n     => reset_n,
            reset_i     => s_reset_bcd,
            enable_i    => s_enable_bcd(0),
            operation_i => s_op_bcd,
            result_o    => s_cntr0_o
        );
    
    i_bcd1 : bcd
        port map(
            clk         => s_clk_1s,
            reset_n     => reset_n,
            reset_i     => s_reset_bcd,
            enable_i    => s_enable_bcd(1),
            operation_i => s_op_bcd,
            result_o    => s_cntr1_o
        );
    
    i_bcd2 : bcd
        port map(
            clk         => s_clk_1s,
            reset_n     => reset_n,
            reset_i     => s_reset_bcd,
            enable_i    => s_enable_bcd(2),
            operation_i => s_op_bcd,
            result_o    => s_cntr2_o
        );
    
    i_bcd3 : bcd
        port map(
            clk         => s_clk_1s,
            reset_n     => reset_n,
            reset_i     => s_reset_bcd,
            enable_i    => s_enable_bcd(3),
            operation_i => s_op_bcd,
            result_o    => s_cntr3_o
        );
    
    p_main : process(clk50, reset_n)
    begin
        if (reset_n = '0') then -- Externer Reset
            s_present_state <= UP;
            cntr0_o <= "0000";
            cntr1_o <= "0000";
            cntr2_o <= "0000";
            cntr3_o <= "0000";
        elsif rising_edge(clk50) then -- Taktsignal
            s_present_state <= s_next_state; -- Aktualisiert den Zustand
            cntr0_o <= s_cntr0_o; -- Setzte externen cntr0
            cntr1_o <= s_cntr1_o; -- Setzte externen cntr1
            cntr2_o <= s_cntr2_o; -- Setzte externen cntr2
            cntr3_o <= s_cntr3_o; -- Setzte externen cntr3
        end if;
    end process p_main;
    
    p_next : process(
        ctup_i,
        ctdown_i,
        ctreset_i,
        cthold_i)
    begin
        if (ctreset_i = '1') then
            s_next_state <= RESET;
        elsif (cthold_i = '1') then
            s_next_state <= HOLD;
        elsif (ctup_i = '0') then
            s_next_state <= UP;
        elsif (ctdown_i = '0') then
            s_next_state <= DOWN;
        end if;
    end process p_next;
    
    p_state : process(
        s_present_state,
        s_cntr0_o,
        s_cntr1_o,
        s_cntr2_o,
        s_cntr3_o)
    begin
        case s_present_state is
            when UP =>
                if (s_cntr0_o = "1001") then
                    if (s_cntr1_o = "1001") then
                        if (s_cntr2_o = "1001") then
                            s_enable_bcd(3) <= '1';
                        else
                            s_enable_bcd(3) <= '0';
                        end if;
                        
                        s_enable_bcd(2) <= '1';
                    else
                        s_enable_bcd(3 downto 2) <= "00";
                    end if;
                
                    s_enable_bcd(1) <= '1';
                else
                    s_enable_bcd(3 downto 1) <= "000";
                end if;
                
                s_reset_bcd  <= '0';
                s_op_bcd     <= '0';
                s_enable_bcd(0) <= '1';
                
            when DOWN =>
                if (s_cntr0_o = "0000") then
                    if (s_cntr1_o = "0000") then
                        if (s_cntr2_o = "0000") then
                            s_enable_bcd(3) <= '1';
                        else
                            s_enable_bcd(3) <= '0';
                        end if;
                        
                        s_enable_bcd(2) <= '1';
                    else
                        s_enable_bcd(3 downto 2) <= "00";
                    end if;
                    
                    s_enable_bcd(1) <= '1';
                else
                    s_enable_bcd(3 downto 1) <= "000";
                end if;
                
                s_reset_bcd  <= '0';
                s_op_bcd     <= '1';
                s_enable_bcd(0) <= '1';
                
            when HOLD =>
                s_reset_bcd  <= '0';
                s_op_bcd     <= '0';
                s_enable_bcd <= "0000";
                
            when RESET =>
                s_reset_bcd  <= '1';
                s_op_bcd     <= '0';
                s_enable_bcd <= "0000";
        end case;
    end process p_state;
end rtl;
