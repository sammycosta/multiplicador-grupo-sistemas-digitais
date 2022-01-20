library ieee;
use ieee.std_logic_1164.all;

entity multiplicador_grupo is
    generic (N : integer := 8);
    port (clk, Reset, inicio: in std_logic;
        entA, entB : in std_logic_vector(N-1 downto 0);
        saida: out std_logic_vector(N-1 downto 0);
        pronto: out std_logic);
end multiplicador_grupo;

architecture arc of multiplicador_grupo is
    -- componentes (bo e bc)

    -- sinais de saida bc
    signal mP, cP, cA, cmult: std_logic;

    -- sinais de saida do bo
    signal Az, Bz: std_logic;

begin
  -- port map (conexoes entre bloco de controle e bloco operativo)
end arc;