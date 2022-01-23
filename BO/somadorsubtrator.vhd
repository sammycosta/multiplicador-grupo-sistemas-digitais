-- nao sei se vai ser um somadorsubtrator ou blocos diferentes, de qualquer forma esse n ta pronto

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somadorsubtrator is
      generic (N: integer);
      port (A, B: in std_logic_vector(N-1 downto 0);
            op: in std_logic;
            S: out std_logic_vector(N-1 downto 0);
            o: out std_logic);      -- status do overflow
end somadorsubtrator;

architecture arch of somadorsubtrator is
      signal SS: std_logic_vector(N-1 downto 0);

      component somador is
            generic(N: integer);
            port(A, B: in std_logic_vector(N-1 downto 0);
                  cin: in std_logic;
                  S: out std_logic_vector(N-1 downto 0);
                  cout: out std_logic);
      end component;

begin
      -- seletor
	with op select
         S <= SS when '0',
            A - B when others;
      
      -- (nao sei quanto ao carry-in, se gente vai aproveitar ele pra algo)
      SUM: somador generic map (N); port map (A, B, '0', SS, o);
end arch;
