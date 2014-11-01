library IEEE;
use IEEE.std_logic_1164.all;

entity tb_ioctrl is
end entity tb_ioctrl;

architecture sim of tb_ioctrl is

   component ioctrl
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
   end component;
  
   signal s_clk50, s_reset_n : std_logic := '0';
   signal s_sw_i, s_swsync_o : std_logic_vector(9 downto 0) := "0000000000"; 
      
   signal s_pb_i : std_logic_vector(1 downto 0) := "00";
   
   signal s_cntr0, s_cntr1,
      s_cntr2, s_cntr3     : std_logic_vector(3 downto 0) := x"0";
      
   signal s_ss0_o, s_ss1_o,
      s_ss2_o, s_ss3_o     : std_logic_vector(7 downto 0) := x"00";
     
   signal s_pb_sync_o      : std_logic_vector(1 downto 0) := "00";
begin

   i_ioctrl : ioctrl
   port map (
      clk50       => s_clk50,
      reset_n     => s_reset_n,
      sw_i        => s_sw_i,
      pb_i        => s_pb_i,
      cntr0       => s_cntr0,
      cntr1       => s_cntr1,
      cntr2       => s_cntr2,
      cntr3       => s_cntr3,
      ss0_o       => s_ss0_o,
      ss1_o       => s_ss1_o,
      ss2_o       => s_ss2_o,
      ss3_o       => s_ss3_o,
      swsync_o    => s_swsync_o,
      pbsync_o    => s_pb_sync_o
   );
	 
	s_clk50 <= not s_clk50 after 20 ps;

   p_test : process
      begin
         s_reset_n <= '0';
         wait for 10 ns;
         s_reset_n <= '1';
         wait for 10 ns;
         s_sw_i <= "1111111111";
         wait for 100 ns;
         s_sw_i <= "0000000000";
         wait for 10 ns;
         s_pb_i <= "11";
         wait for 100 ns;
         s_pb_i <= "00";
         wait for 100 ns;
      end process;

end sim;