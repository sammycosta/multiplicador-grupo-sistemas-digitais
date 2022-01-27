library ieee;
use ieee.std_logic_1164.all;

entity multiplicador_grupo is
    generic (N : integer := 4);
    port (clk, Reset, inicio: in std_logic;
        entA, entB : in std_logic_vector(N-1 downto 0);
        saida: out std_logic_vector(2*N-1 downto 0);
        pronto, erro: out std_logic);
end multiplicador_grupo;

architecture arc of multiplicador_grupo is
    -- componentes (bo e bc)

    component bc is
      port (Reset, clk, inicio : in std_logic;
      A_zero, B_zero, ovf: in std_logic;
      abComparacao: in std_logic_vector(1 downto 0);
      pronto, erro : out std_logic;
      -- mP, cP, cA, cmult: out std_logic;
      clk_Entradas, clk_mult, op, mux_B, mux_mult: out std_logic);
    end component;

    component bo is
      generic (N : integer);
      port (
            clk : in std_logic;
            cEnt, mB, op, cmult, mmult : in std_logic;
            entA, entB : in std_logic_vector(N - 1 downto 0);
            Az, Bz, ovf: out std_logic;
            abComparacao: out std_logic_vector(1 downto 0);
            mult : out std_logic_vector(2*N - 1 downto 0));
    end component;

    -- sinais de saida bc
    signal clk_Entradas, clk_mult, op, mux_B, mux_mult: std_logic;

    -- sinais de saida do bo
    signal Az, Bz, ovf: std_logic;
    signal abComparacao: std_logic_vector(1 downto 0);

begin
  -- port map (conexoes entre bloco de controle e bloco operativo)

     -- bloco de comando
    CONTROLE : bc port map (
      Reset => Reset,
      clk => clk,
      inicio => inicio,
      A_zero => Az, 
      B_zero => Bz, 
      ovf => ovf, 
      abComparacao => abComparacao,
      pronto => pronto,
      erro => erro,
      clk_Entradas => clk_Entradas,
      clk_mult => clk_mult,
      op => op, 
      mux_B => mux_B, 
      mux_mult => mux_mult
    );

  -- bloco operativo
    OPERATIVO : bo generic map (N => N) port map (
            clk => clk,
            cEnt => clk_Entradas, 
            mB => mux_B, 
            op => op, 
            cmult => clk_mult, 
            mmult => mux_mult,
            entA => entA,
            entB => entB,
            Az => Az,
            Bz => Bz,
            ovf => ovf,
            abComparacao => abComparacao,
            mult => saida
    );
end arc;