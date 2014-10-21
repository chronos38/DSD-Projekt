library IEEE;
use IEEE.std_logic_1164.all;

entity tb_prescaler is
end tb_prescaler;

-- Beim Testen den Prescaler anpassen

architecture sim of tb_prescaler is

  component prescaler
    port (
        clk50        : in std_logic;
        reset_n    : in std_logic;
        clk1        : out std_logic);
  end component;
  
  signal s_clk50         : std_logic    := '0';
  signal s_reset_n         : std_logic := '0';
  signal s_clk1            : std_logic := '0';
  
begin

  i_prescaler : prescaler
  port map (
    clk50          => s_clk50,
    reset_n     => s_reset_n,
    clk1           => s_clk1);
     
     s_clk50 <= not s_clk50 after 1 ps;

  p_test : process
    begin
      s_reset_n <= '0';
          wait for 20 ps;
      s_reset_n <= '1';
      wait for 40000 ps;
    end process;

end sim;