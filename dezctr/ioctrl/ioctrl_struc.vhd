library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.numeric_std.all;

architecture Behavioral of ioctrl is

   component debouncer 
   generic ( 
   WIDTH : natural;
   DELAY : natural := 156);
      port ( 
         clk50    : in   std_logic;
         keyin_i  : in   std_logic_vector(WIDTH-1 downto 0);
         keyout_o : out  std_logic_vector(WIDTH-1 downto 0));
   end component;
    
   component decoder
      port (
         clk50   : in  std_logic; -- Takt
         cntr_i  : in  std_logic_vector(4 downto 0); -- Counter
         ss_o    : out std_logic_vector(7 downto 0)); -- Display
   end component;

   constant C_ENCOUNTVAL     : unsigned(12 downto 0):= "10011100";
   signal s_count                : unsigned(12 downto 0);

   signal s_ff_pbsync0        : std_logic_vector(1 downto 0);
   signal s_ff_pbsync1        : std_logic_vector(1 downto 0); -- read here

   signal s_ff_swsync0        : std_logic_vector(9 downto 0);
   signal s_ff_swsync1        : std_logic_vector(9 downto 0); -- read here
 
begin

   -- Entprellt die Schalter
   i_sw_debouncer : debouncer
      generic map (
         WIDTH        => s_ff_swsync1'length)
      port map (
         clk50       => clk50,
         keyin_i     => s_ff_swsync1,
         keyout_o    => swsync_o);
        
   -- Entprellt die Buttons
   i_pb_debouncer : debouncer
      generic map (
         WIDTH => s_ff_pbsync1'length)
      port map (
         clk50    => clk50,
         keyin_i  => s_ff_swsync1,
         keyout_o => pbsync_o);
     
   -- Dekodiert output 0
   i_decoder0 : decoder
      port map (
         clk50  => clk50,
         cntr_i => cntr0,
         ss_o   => ss0_o
      );
     
   -- Dekodiert output 1
   i_decoder1 : decoder
      port map (
         clk50  => clk50,
         cntr_i => cntr1,
         ss_o   => ss1_o
      );
     
   -- Dekodiert output 2
   i_decoder2 : decoder
      port map (
         clk50  => clk50,
         cntr_i => cntr2,
         ss_o   => ss2_o
      );
     
   -- Dekodiert output 3
   i_decoder3 : decoder
      port map (
         clk50  => clk50,
         cntr_i => cntr3,
         ss_o   => ss3_o
      );
    
   p_synchronize : process(clk50, reset_n)
   begin
      if(reset_n = '0') then
         s_ff_pbsync0 <= "00";
         s_ff_pbsync1 <= "00";
         pbsync_o     <= "00";

         s_ff_swsync0 <= "0000000000";
         s_ff_swsync1 <= "0000000000";
         swsync_o     <= "0000000000";

         ss0_o        <= "0000000";
         ss1_o        <= "0000000";
         ss2_o        <= "0000000";
         ss3_o        <= "0000000";
      elsif rising_edge(clk50) then
         for i in 0 to 9 loop
            s_ff_swsync0(i) <= sw_i(i);
            s_ff_swsync1(i) <= s_ff_swsync0(i);
         end loop;

         for i in 0 to 1 loop
            s_ff_pbsync0(i) <= pb_i(i);
            s_ff_pbsync1(i) <= s_ff_pbsync0(i);
         end loop;
      end if;
   end process;
end architecture Behavioral;
