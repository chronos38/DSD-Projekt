library IEEE;
use IEEE.std_logic_1164.all;

entity tb_dezctr is
end tb_dezctr;

-- Beim Testen den Prescaler anpassen

architecture sim of tb_dezctr is

   component dezctr
      port (
      clk50    : in std_logic;
      reset_n  : in std_logic;
      sw_i     : in std_logic_vector(9 downto 0);
      pb_i     : in std_logic_vector(1 downto 0);
      ss0_o    : out std_logic_vector(7 downto 0);
      ss1_o    : out std_logic_vector(7 downto 0);
      ss2_o    : out std_logic_vector(7 downto 0);
      ss3_o    : out std_logic_vector(7 downto 0));
   end component;

   signal s_clk50             : std_logic := '0';
   signal s_reset_n           : std_logic := '0';
   signal s_sw_i              : std_logic_vector(9 downto 0) := (others =>'0');
   signal s_pb_i              : std_logic_vector(1 downto 0) := (others =>'0');
   signal s_ss0_o, s_ss1_o,
      s_ss2_o, s_ss3_o        : std_logic_vector(7 downto 0) := (others =>'0');

begin

   i_dezctr : dezctr
      port map (
      clk50    => s_clk50,
      reset_n  => s_reset_n,
      sw_i     => s_sw_i,
      pb_i     => s_pb_i,
      ss0_o    => s_ss0_o,
      ss1_o    => s_ss1_o,
      ss2_o    => s_ss2_o,
      ss3_o    => s_ss3_o
      );

   s_clk50 <= not s_clk50 after 1 ns;

   p_test : process
   begin
      -- Nach Rest hochzählen
      s_reset_n <= '0';
      wait for 100 ns;
      s_reset_n <= '1';
      wait for 500 ns; 
      
      -- Runterzählen
      s_pb_i(1) <= '1';
      wait for 100 ns;
      s_pb_i(1) <= '0';
      wait for 500 ns; 
   end process;

end sim;
