library IEEE;
use IEEE.std_logic_1164.all;

entity tb_cntr is
end entity tb_cntr;

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
  
   signal s_reset_n, s_ctup_i,
         s_ctdown_i, s_ctreset_i,
         s_cthold_i, s_clk50           : std_logic := '0';
   signal s_cntr0_o, s_cntr1_o,
         s_cntr2_o, s_cntr3_o          : std_logic_vector(3 downto 0) := x"0";
begin

   i_cntr : cntr
   port map (
      clk50       => s_clk50,
      reset_n     => s_reset_n,
      ctup_i      => s_ctup_i,
      ctdown_i    => s_ctdown_i,
      ctreset_i   => s_ctreset_i,
      cthold_i    => s_cthold_i,
      cntr0_o     => s_cntr0_o,
      cntr1_o     => s_cntr1_o,
      cntr2_o     => s_cntr2_o,
      cntr3_o     => s_cntr3_o);
	 
	s_clk50 <= not s_clk50 after 1 ns;

   p_test : process
      begin
         s_reset_n <= '0';
         wait for 10 ns;
         s_reset_n <= '1';
         wait for 10 ns;
         s_ctup_i <= '1';
         wait for 10 ns;
         s_ctup_i <= '0';
         wait for 1000 ns;
         s_cthold_i <= '1';
         wait for 10 ns;
         s_cthold_i <= '0';
         wait for 200 ns;
         s_ctdown_i <= '1';
         wait for 10 ns;
         s_ctdown_i <= '0';
         wait for 1000 ns;

      end process;

end sim;