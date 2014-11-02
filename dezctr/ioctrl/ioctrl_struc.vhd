library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.numeric_std.all;

architecture Behavioral of ioctrl is

   component debounce
      generic ( 
         WIDTH 		: natural;
         DELAY 		: natural);
      port ( 
         clk50       : in   std_logic;
         keyin_i     : in   std_logic_vector(WIDTH-1 downto 0);
         keyout_o    : out  std_logic_vector(WIDTH-1 downto 0));
   end component;
    
   component decoder
      port (
         clk50   : in  std_logic; -- Takt
         cntr_i  : in  std_logic_vector(3 downto 0); -- Counter
         ss_o    : out std_logic_vector(7 downto 0)); -- Display
   end component;


   signal s_ff_pbsync0        : std_logic_vector(1 downto 0):= (others => '0');
   signal s_ff_pbsync1        : std_logic_vector(1 downto 0):= (others => '0'); -- read here

   signal s_ff_swsync0        : std_logic_vector(9 downto 0):= (others => '0');
   signal s_ff_swsync1        : std_logic_vector(9 downto 0):= (others => '0'); -- read here
   
   signal s_swsync            : std_logic_vector(9 downto 0):= (others => '0'); 
   signal s_pbsync            : std_logic_vector(1 downto 0):= (others => '0'); 
   
   signal s_reset_occured     : std_logic := '1';
   signal s_cycle_counter     : integer range 0 to 100 := 0;
begin

   -- Entprellt die Schalter
   i_sw_debouncer : debounce
      generic map (
         WIDTH       => s_ff_swsync1'length,
         DELAY       => 156)
      port map (
         clk50       => clk50,
         keyin_i     => s_ff_swsync1,
         keyout_o    => s_swsync);
        
   -- Entprellt die Buttons
   i_pb_debouncer : debounce
      generic map (
         WIDTH    => s_ff_pbsync1'length,
         DELAY       => 156)
      port map (
         clk50    => clk50,
         keyin_i  => s_ff_pbsync1,
         keyout_o => s_pbsync);
     
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
         s_reset_occured   <= '1';
         pbsync_o          <= (others => '0');
         swsync_o          <= (others => '0');
         s_ff_pbsync0      <= (others => '0');
         s_ff_pbsync1      <= (others => '0');
         s_ff_swsync0      <= (others => '0');
         s_ff_swsync1      <= (others => '0');
         
      elsif rising_edge(clk50) then
         
         if (s_reset_occured = '1' and s_cycle_counter < 100)  then
            s_cycle_counter <= s_cycle_counter + 1;
         else
            s_reset_occured <= '0';
               
            s_ff_pbsync0 <= pb_i;
            s_ff_pbsync1 <= s_ff_pbsync0;
            s_ff_swsync0 <= sw_i;
            s_ff_swsync1 <= s_ff_swsync0;
            
            swsync_o <= s_swsync;
            pbsync_o <= s_pbsync;
         end if;
end if;
   end process;
end architecture Behavioral;
