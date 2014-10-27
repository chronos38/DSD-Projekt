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
    type t_state is (UP, DOWN, HOLD, RESET);
    signal s_present_state : t_state;
    signal s_next_state    : t_state;
    
    signal s_cntr0_o : std_logic_vector(3 downto 0);
    signal s_cntr1_o : std_logic_vector(3 downto 0);
    signal s_cntr2_o : std_logic_vector(3 downto 0);
    signal s_cntr3_o : std_logic_vector(3 downto 0);
begin
    p_state : process(clk50, reset_n)
    begin
        if (reset_n = '1') then
            s_present_state <= UP;
            cntr0_o <= "0000";
            cntr1_o <= "0000";
            cntr2_o <= "0000";
            cntr3_o <= "0000";
        elsif rising_edge(clk50) then
            s_present_state <= s_next_state;
            cntr0_o <= s_cntr0_o;
            cntr1_o <= s_cntr1_o;
            cntr2_o <= s_cntr2_o;
            cntr3_o <= s_cntr3_o;
        end if;
    end p_state;
    
    p_count : process(
        clk50,
        ctup_i,
        ctdown_i,
        ctreset_i,
        cthold_i,
        s_present_state)
    begin
        if rising_edge(clk50) then
            case s_present_state is
                when UP =>
                    if (ctdown_i = '1') then
                        s_next_state <= DOWN;
                    elsif (ctreset_i = '1') then
                        s_next_state <= RESET;
                    elsif (cthold_i = '1') then
                        s_next_state <= HOLD;
                    end if;
                    -- TODO: Count up
                when DOWN =>
                    if (ctup_i = '1') then
                        s_next_state <= UP;
                    elsif (ctreset_i = '1') then
                        s_next_state <= RESET;
                    elsif (cthold_i = '1') then
                        s_next_state <= HOLD;
                    end if;
                    -- TODO: Count down
                when HOLD =>
                    if (ctreset_i = '1') then
                        s_next_state <= RESET;
                    end if;
                    -- Actually do nothing
                when RESET =>
                    if (ctup_i = '1') then
                        s_next_state <= UP;
                    elsif (ctdown_i = '1') then
                        s_next_state <= DOWN;
                    end if;
                    
                    -- Reset counter
                    s_cntr0_o <= "0000";
                    s_cntr1_o <= "0000";
                    s_cntr2_o <= "0000";
                    s_cntr3_o <= "0000";
            end case;
        end if;
    end p_count;
end rtl;
