library ieee;
use ieee.std_logic_1164.all;

entity comparador is
    generic (N : integer);
    port(
        valorA, valorB : in std_logic_vector(N-1 downto 0);
        flagComparacao : out std_logic_vector(1 downto 0));
end comparador;

architecture arch_comparador is

begin
    flagComparacao <= "11" when A = B else
                      "10" when A > B else
                      "01";
    flagComparacao <= '
end arch_comparador;

-- se A > B  "10"
-- se A < B  "01"
-- se A = B  "11"
-- não mapeado "00"





