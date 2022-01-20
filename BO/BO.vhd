library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bo is
generic (N:integer);
-- alterações no port: variáveis de carga/controle (analisar)
port (clk : in std_logic;
      mP, cP, cA, cmult: in std_logic;
      entA, entB : in std_logic_vector(N-1 downto 0);
      Az, Bz : out std_logic;
		  mult: out std_logic_vector(N-1 downto 0));
end bo;
architecture estrutura of bo is
	
-- componentes
	
-- signals (saídas de registradores, somas, etc conexões)
begin
-- componentes e conexões entre eles (port map) usar generic

end estrutura;