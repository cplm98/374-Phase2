library IEEE;
use ieee.std_logic_1164.all;

entity R0_mod_or
port(
r0_in : in std_logic_vector(31 downto 0);
BAout : in std_logic;
r0_out : out std_logic_vector(31 downto 0)
);
end R0_mod_or

architecture structure of R0_mod_or is

process(r(3 downto 0), Gr)
begin
begin

case BAout is

when '0' => r0_out <= r0_in(31 downto 0);
when others => and_out <= "00000000";

end case;
end process;
end structure;