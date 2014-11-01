library IEEE;
use IEEE.std_logic_1164.all;

entity tb_debounce is
end entity tb_debounce;

architecture sim of tb_debounce is

   component debounce
      generic ( 
         WIDTH 		: natural;
         DELAY 		: natural);
      port ( 
         clk50       : in   std_logic;
         keyin_i     : in   std_logic_vector(WIDTH-1 downto 0);
         keyout_o    : out  std_logic_vector(WIDTH-1 downto 0));
   end component;
  
  signal s_clk50     : std_logic	:= '0';
  signal s_keyin_i   : std_logic_vector(7 downto 0) := x"00";
  signal s_keyout_o  : std_logic_vector(7 downto 0) := x"00";
  
begin

   i_debounce : debounce
   generic map ( 
      WIDTH => s_keyin_i'length,
      DELAY => 11)
   port map (
      clk50       => s_clk50,
      keyin_i     => s_keyin_i,
      keyout_o     => s_keyout_o);
	 
	s_clk50 <= not s_clk50 after 1 ns;

   p_test : process
      begin
         s_keyin_i <= (others => '0');
         wait for 10 ns;
         s_keyin_i <= x"FF";
         wait for 10 ns;
         s_keyin_i <= (others => '0');
         wait for 10 ns;
         s_keyin_i <= x"FF";
         wait for 100 ns;
         s_keyin_i <= (others => '0');
         wait for 100 ns;

      end process;

end sim;