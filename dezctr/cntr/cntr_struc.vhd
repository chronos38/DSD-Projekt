-------------------------------------------------------------------------------
-- Author:  David Wolf, Leonhardt Schwarz
-- Project: FPGA Project
--
-- Copyright (C) 2014 David Wolf, Leonhardt Schwarz
-------------------------------------------------------------------------------
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
    
   signal s_present_state : t_state := UP; -- Der jetzige Zustand
   signal s_next_state    : t_state := UP; -- Der nächste Zustand
    
   signal s_clk_1s : std_logic := '0'; -- Der interne Takt welcher den Zähler steuert
    
   signal s_cntr0_o : std_logic_vector(3 downto 0) := (others => '0'); -- Interner ZÃ¤hler auf Ziffer 1
   signal s_cntr1_o : std_logic_vector(3 downto 0) := (others => '0'); -- Interner ZÃ¤hler auf Ziffer 2
   signal s_cntr2_o : std_logic_vector(3 downto 0) := (others => '0'); -- Interner ZÃ¤hler auf Ziffer 3
   signal s_cntr3_o : std_logic_vector(3 downto 0) := (others => '0'); -- Interner ZÃ¤hler auf Ziffer 4
    
   signal s_reset_bcd  : std_logic := '0'; -- Interner Reset für BCD
   signal s_enable_bcd : std_logic_vector(3 downto 0) := (others => '0'); -- Enable für BCD, '1'=TRUE
   signal s_op_bcd     : std_logic := '0'; -- Operation für BCD, '0'=UP '1'=DOWN
    
   signal s_saved_state : t_state := UP; -- Zwischenspeicher für den Zustand
begin
    -- Schaltet den Takt auf 1 Sekunde
    i_prescaler : prescaler
        port map(
            clk50 => clk50,
            reset_n => reset_n,
            clk1 => s_clk_1s
        );
    
    -- Berechnet die Ziffer 0
    i_bcd0 : bcd
        port map(
            clk         => s_clk_1s,
            reset_n     => reset_n,
            reset_i     => s_reset_bcd,
            enable_i    => s_enable_bcd(0),
            operation_i => s_op_bcd,
            result_o    => s_cntr0_o
        );
    
    -- Berechnet die Ziffer 1
    i_bcd1 : bcd
        port map(
            clk         => s_clk_1s,
            reset_n     => reset_n,
            reset_i     => s_reset_bcd,
            enable_i    => s_enable_bcd(1),
            operation_i => s_op_bcd,
            result_o    => s_cntr1_o
        );
    
    -- Berechnet die Ziffer 2
    i_bcd2 : bcd
        port map(
            clk         => s_clk_1s,
            reset_n     => reset_n,
            reset_i     => s_reset_bcd,
            enable_i    => s_enable_bcd(2),
            operation_i => s_op_bcd,
            result_o    => s_cntr2_o
        );
    
    -- Berechnet die Ziffer 3
    i_bcd3 : bcd
        port map(
            clk         => s_clk_1s,
            reset_n     => reset_n,
            reset_i     => s_reset_bcd,
            enable_i    => s_enable_bcd(3),
            operation_i => s_op_bcd,
            result_o    => s_cntr3_o
        );
   
   -- Hauptprozess
   -- Reagiert auf Takt und Reset
   -- Gibt den internen Zustand nach außen weiter
   p_main : process(clk50, reset_n)
   begin
      if (reset_n = '0') then -- Externer Reset
         s_present_state <= UP;
         cntr0_o <= (others => '0');
         cntr1_o <= (others => '0');
         cntr2_o <= (others => '0');
         cntr3_o <= (others => '0');
      elsif rising_edge(clk50) then -- Taktsignal
         if s_present_state = UP then
            s_saved_state <= UP; -- Speichert den Zustand für HOLD
         elsif s_present_state = DOWN then
            s_saved_state <= DOWN; -- Speichert den Zustand für HOLD
         end if;
         s_present_state <= s_next_state; -- Aktualisiert den Zustand
         
         cntr0_o <= s_cntr0_o; -- Setzte externen cntr0
         cntr1_o <= s_cntr1_o; -- Setzte externen cntr1
         cntr2_o <= s_cntr2_o; -- Setzte externen cntr2
         cntr3_o <= s_cntr3_o; -- Setzte externen cntr3
      end if;
   end process p_main;
    
   -- Zustandsübergangsprozess
   -- Aktualisiert den Zustandsübergang und setzt den nächsten Zustand
   p_next : process(
      s_present_state,
      s_saved_state,
      ctup_i,
      ctdown_i,
      ctreset_i,
      cthold_i)
   begin
      if (ctreset_i = '1') then
         s_next_state  <= RESET;
            
      elsif (cthold_i = '1') then
         s_next_state  <= HOLD;
         
      elsif (ctup_i = '0') then
         s_next_state <= UP;
         
      elsif (ctdown_i = '0') then
         s_next_state <= DOWN;
      else
         s_next_state <= s_saved_state;
      end if;    
   end process p_next;
    
   -- Zustandsprozess
   -- Berechnet die Ziffern anhand des jetzigen Zustands
   p_state : process(
   s_present_state,
   s_cntr0_o,
   s_cntr1_o,
   s_cntr2_o,
   s_cntr3_o)
   begin
      case s_present_state is
         -- Zählt nach oben
         when UP =>
            if (s_cntr0_o = "1001") then -- Erste Ziffer = 9
               if (s_cntr1_o = "1001") then -- Zweite Ziffer = 9
                  if (s_cntr2_o = "1001") then -- Dritte Ziffer = 9
                     s_enable_bcd(3) <= '1'; -- Aktiviere vierte Ziffer wenn erste, zweite und dritte = 9
                  else
                     s_enable_bcd(3) <= '0'; -- Deaktiviere dritte Ziffer
                  end if;
                  
                  s_enable_bcd(2) <= '1'; -- Aktiviere die dritte Ziffer wenn zweite und erste = 9
               else
                  s_enable_bcd(3 downto 2) <= "00"; -- Deaktiviere vierte und dritte Ziffer
               end if;
               
               s_enable_bcd(1) <= '1'; -- Aktiviere die zweite Ziffer wenn erste = 9
            else
               s_enable_bcd(3 downto 1) <= "000"; -- Deaktiviere vierte, dritte und zweite Ziffer
            end if;
            
            s_reset_bcd  <= '0'; -- Deaktiviere internen Reset
            s_op_bcd     <= '0'; -- Operation '0' entspricht Addieren
            s_enable_bcd(0) <= '1'; -- Erste Ziffer immer aktiv
         
         -- Zählt nach unten
         when DOWN =>
            if (s_cntr0_o = "0000") then -- Erste Ziffer = 0
               if (s_cntr1_o = "0000") then -- Zweite Ziffer = 0
                  if (s_cntr2_o = "0000") then -- Dritte Ziffer = 0
                     s_enable_bcd(3) <= '1'; -- Aktiviere vierte Ziffer wenn erste, zweite und dritte = 0
                  else
                     s_enable_bcd(3) <= '0'; -- Deaktiviere vierte Ziffer
                  end if;

                  s_enable_bcd(2) <= '1'; -- Aktiviere dritte Ziffer wenn erste und zweite = 0
               else
                  s_enable_bcd(3 downto 2) <= "00"; -- Deaktiviere vierte und dritte Ziffer
               end if;
                 
               s_enable_bcd(1) <= '1'; -- Aktiviere die zweite Ziffer wenn erste = 0
            else
               s_enable_bcd(3 downto 1) <= "000"; -- Deaktiviere vierte, dritte und zweite Ziffer
            end if;
             
            s_reset_bcd  <= '0'; -- Deaktiviere internen Reset
            s_op_bcd     <= '1'; -- Operation '1' entspricht Subtraktion
            s_enable_bcd(0) <= '1'; -- Erste Ziffer immer aktiv
          
         when HOLD =>
            s_reset_bcd  <= '0'; -- Deaktiviere internen Reset
            s_op_bcd     <= '0'; -- Operation wird ignoriert
            s_enable_bcd <= "0000"; -- Deaktiviere alle Recheneinheiten
          
         when RESET =>
            s_reset_bcd  <= '1'; -- Aktiviere internen Reset
            s_op_bcd     <= '0'; -- Operation wird ignoriert
            s_enable_bcd <= "0000"; -- Deaktiviere alle Recheneinheiten
      end case;
   end process p_state;
end rtl;
