library IEEE;
use IEEE.std_logic_1164.all;

architecture behavioral of dezctr is
   component ioctrl
      port (
         clk50       : in std_logic;
         reset_n     : in std_logic;
           
         sw_i        : in std_logic_vector(9 downto 0);
         pb_i        : in std_logic_vector(1 downto 0);
           
         cntr0       : in std_logic_vector(3 downto 0);
         cntr1       : in std_logic_vector(3 downto 0);
         cntr2       : in std_logic_vector(3 downto 0);
         cntr3       : in std_logic_vector(3 downto 0);
           
         ss0_o       : out std_logic_vector(7 downto 0);
         ss1_o       : out std_logic_vector(7 downto 0);
         ss2_o       : out std_logic_vector(7 downto 0);
         ss3_o       : out std_logic_vector(7 downto 0);
           
         swsync_o    : out std_logic_vector(9 downto 0);
         pbsync_o    : out std_logic_vector(1 downto 0));
   end component;
    
   component cntr
      port (
         clk50       : in std_logic;
         reset_n     : in std_logic;
           
         ctup_i      : in std_logic;
         ctdown_i    : in std_logic;
         ctreset_i   : in std_logic;
         cthold_i    : in std_logic;
           
         cntr0_o     : out std_logic_vector(3 downto 0);
         cntr1_o     : out std_logic_vector(3 downto 0);
         cntr2_o     : out std_logic_vector(3 downto 0);
         cntr3_o     : out std_logic_vector(3 downto 0));
   end component;
   
   signal s_swsync_o       :  std_logic_vector(9 downto 0)  := (others => '0');
   signal s_pbsync_o       :  std_logic_vector(1 downto 0)  := (others => '0');
   signal s_cntr0,s_cntr1,
      s_cntr2,s_cntr3      : std_logic_vector(3 downto 0)   := (others => '0');
begin

   i_ioctrl : ioctrl
      port map(
         clk50    => clk50,
         reset_n  => reset_n,
         sw_i     => sw_i,
         pb_i     => pb_i,
         
         cntr0    => s_cntr0,
         cntr1    => s_cntr1,
         cntr2    => s_cntr2,
         cntr3    => s_cntr3,
         
         ss0_o    => ss0_o,
         ss1_o    => ss1_o,
         ss2_o    => ss2_o,
         ss3_o    => ss3_o,
         
         swsync_o => s_swsync_o,
         pbsync_o => s_pbsync_o
      );
   
   i_cntr : cntr
      port map(
         clk50    => clk50,
         reset_n  => reset_n,
         ctup_i   => s_pbsync_o(0),
         ctdown_i => s_pbsync_o(1),
         
         ctreset_i=> s_swsync_o(0),
         cthold_i => s_swsync_o(1),
         
         cntr0_o  => s_cntr0,
         cntr1_o  => s_cntr1,
         cntr2_o  => s_cntr2,
         cntr3_o  => s_cntr3
      );

end architecture;