library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

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
 -- Es gibt vier ZustÃ¤nde
 -- UP:    Zählt rauf
 -- DOWN:  Zählt runter
 -- HOLD:  Macht nichts
 -- RESET: Setzt alle Ziffern auf 0
   type t_state is (UP, DOWN, HOLD, RESET);
 
   component prescaler
      port (
      clk50        : in std_logic;
      reset_n    : in std_logic;
      clk1        : out std_logic);
   end component;
 
   signal s_clk_1s   : std_logic;                     -- Der interne Takt welcher den Zähler steuert
   signal s_count    : unsigned(11 downto 0);         -- Zählersignal
    
   signal s_present_state : t_state;                  -- Der jetzige Zustand
   signal s_next_state    : t_state;                  -- Der nächste Zustand
   
    
   signal s_cntr0_o : std_logic_vector(3 downto 0);   -- Interner Zähler auf Ziffer 1
   signal s_cntr1_o : std_logic_vector(3 downto 0);   -- Interner Zähler auf Ziffer 2
   signal s_cntr2_o : std_logic_vector(3 downto 0);   -- Interner Zähler auf Ziffer 3
   signal s_cntr3_o : std_logic_vector(3 downto 0);   -- Interner Zähler auf Ziffer 4
begin

   i_prescaler : prescaler
   port map(
      clk50    => clk50,
      reset_n  => reset_n,
      clk1     => s_clk_1s
   );

   p_sync : process(clk50, reset_n)
   begin
      if (reset_n = '1') then                         -- Externer Reset
         s_present_state <= UP;
         cntr0_o <= "0000";
         cntr1_o <= "0000";
         cntr2_o <= "0000";
         cntr3_o <= "0000";
         
         s_cntr0_o <= "0000";
         s_cntr1_o <= "0000";
         s_cntr2_o <= "0000";
         s_cntr3_o <= "0000";
         
      elsif rising_edge(clk50) then                   -- Taktsignal
         s_present_state <= s_next_state;             -- Aktualisiert den Zustand
         cntr0_o <= s_cntr0_o;                        -- Setzte externen cntr0
         cntr1_o <= s_cntr1_o;                        -- Setzte externen cntr1
         cntr2_o <= s_cntr2_o;                        -- Setzte externen cntr2
         cntr3_o <= s_cntr3_o;                        -- Setzte externen cntr3
         end if;
   end process;

   p_next_state : process(
      ctup_i,
      ctdown_i,
      ctreset_i,
      cthold_i,
      s_present_state,
      s_next_state)
   begin
      if (ctup_i = '1') then
         s_next_state <= UP;  
      elsif (ctdown_i = '1') then
         s_next_state <= DOWN;
      elsif (ctreset_i = '1') then
         s_next_state <= RESET;
      elsif (cthold_i = '1') then
         s_next_state <= HOLD;
      end if;
   end process;
      
   p_count : process(
      s_clk_1s,
      s_present_state)
   begin
      case s_present_state is
         when UP     => 
            if rising_edge(s_clk_1s) then
               s_count <= s_count + x"1";
            end if;
         when DOWN   => 
            if rising_edge(s_clk_1s) then
               s_count <= s_count - x"1";
            end if;
         when RESET  => s_count <= x"0";
         when HOLD   =>                               -- Do nothing
      end case;
   end process;
   
   p_outputform : process (
      s_count,
      s_cntr0_o,
      s_cntr1_o,
      s_cntr2_o,
      s_cntr3_o
   )
   variable v_count  : unsigned(11 downto 0) := x"0";
   variable v_tmp    : unsigned(3 downto 0)  := x"0";
   begin
      if rising_edge(clk50) then
      
         v_count := s_count;
         
         while v_count > x"38E" loop                  -- 1000 abziehen bis v_count kleiner als 1000 ist
            v_count := v_count - x"38E";
            v_tmp := v_tmp + x"1";
         end loop;
         
         s_cntr3_o <= std_logic_vector(v_tmp);        -- v_temp ist unsere 1000er Stelle
         v_tmp := x"0";
         
         while v_count > x"64" loop
            v_count := v_count - x"64";
            v_tmp := v_tmp + x"1";
         end loop;
                  
         s_cntr2_o <= std_logic_vector(v_tmp);
         v_tmp := x"0";

         while v_count > x"A" loop
            v_count := v_count - x"A";
            v_tmp := v_tmp + x"1";
         end loop;      

         s_cntr1_o <= std_logic_vector(v_tmp);
         s_cntr0_o <= std_logic_vector(v_count(3 downto 0));
      end if;
   end process;
   
end rtl;
