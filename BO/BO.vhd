library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--use ieee.std_logic_arith.all; 
use ieee.numeric_std.all;  

entity bo is
      generic (N : integer);
      port (
            clk : in std_logic;
            cEnt, mB, op, cmult, mmult : in std_logic;
            entA, entB : in std_logic_vector(N - 1 downto 0);
            Az, Bz, ovf: out std_logic;
            abComparacao: out std_logic_vector(1 downto 0);
            mult : out std_logic_vector(2*N - 1 downto 0));
end bo;
architecture estrutura of bo is

      component registrador is
            generic (N : integer);
            port (
                  clk, carga : in std_logic;
                  d : in std_logic_vector(N - 1 downto 0);
                  q : out std_logic_vector(N - 1 downto 0));
      end component;

      component comparador is
            generic (N : integer);
            port(
                  valorA, valorB : in std_logic_vector(N-1 downto 0);
                  flagComparacao : out std_logic_vector(1 downto 0));
      end comparador;

      component mux2para1 is
            generic (N : integer);
            port (
                  a, b : in std_logic_vector(N - 1 downto 0);
                  sel : in std_logic;
                  y : out std_logic_vector(N - 1 downto 0));
      end component;

      component somadorsubtrator is
            generic (N : integer);
            port (
                  A, B : in std_logic_vector(N - 1 downto 0);
                  op : in std_logic;
                  S : out std_logic_vector(N - 1 downto 0);
                  o : out std_logic); -- status do overflow
      end component;

      component igualazero is
            generic (N : integer);
            port (
                  a : in std_logic_vector(N - 1 downto 0);
                  igual : out std_logic);
      end component;

      component checa_potencia is
            generic (N : integer);
            port (
                  entB : in std_logic_vector(N - 1 downto 0);
                  zeros : out integer range 0 to N - 1);
      end component;

      signal ZERO : std_logic_vector(N - 1 downto 0) := (others => '0');
      signal sairegMult, saimuxB, sairegA, sairegB, saisomasub, saimuxMult, saimuxsoma1, saimuxsoma2: std_logic_vector (2*N - 1 downto 0);
      signal quant_zero : integer range 0 to 2*N - 1;
      signal zero_um: std_logic_vector(2*N - 2 downto 0):= (others => '0');
      signal AmaiorSignal, ABigualSignal;

begin
      -- componentes e conexÃµes entre eles (port map) usar generic
      -- resolver esse problema, testar, depois resolver o caso em que nÃ£o tem zeros pra adicionar.

      -- SHIFT:
      --    direita:    010 -> 001
      --    esquerda:   010 -> 100

      regA : registrador generic map(N => 2*N)
      port map
      (
            clk => clk,
            carga => cEnt,
            d => ZERO&entA, -- transforma pro max bit 
            q => sairegA
      );
      
      muxB: mux2para1 generic map (N => 2*N)
      port map
      (
            a => saisomasub,
            b => ZERO&entB, -- transforma pro max bit 
            sel => mB,
            y => saimuxB
      );

      regB : registrador generic map(N => 2*N)
      port map
      (
            clk => clk,
            carga => cEnt,
            d => saimuxB,
            q => sairegB
      );

      quantosZero: checa_potencia generic map(N => 2*N)
      port map
      (
            entB => sairegB,
            zeros => quant_zero 
      );


      muxMult: mux2para1 generic map (N => 2*N)
      port map
      (
            a => saisomasub,
            b => ZERO&ZERO,
            sel => cmult,
            y => saimuxMult
      );

      regMult : registrador generic map(N => 2*N)
      port map
      (
            clk => clk,
            carga => cmult,
            d => saimuxMult,
            q => sairegMult
      );

      muxsoma1: mux2para1 generic map (N => 2*N)
      port map
      (
            a => sairegMult,
            b => sairegB,
            sel => op,
            y => saimuxsoma1
      );

      muxsoma2: mux2para1 generic map (N => 2*N)
      port map
      (
            a => std_logic_vector(shift_left(unsigned(sairegA), quant_zero)) ,    -- shift de n vezes, sendo n = quant_zero
            b => std_logic_vector(shift_left(unsigned(zero_um &'1'), quant_zero)),   -- potÃŠncia a ser retirada de b
            sel => op,
            y => saimuxsoma2
      );

      somasub: somadorsubtrator generic map (N => 2*N)
      port map
      (
            A => saimuxsoma1,
            B => saimuxsoma2,
            op => op,
            S => saisomasub,
            o => ovf
      );

	geraAz: igualazero generic map(N  => 2*N) 
      port map 
      (
            a => sairegA,
            igual => Az
      ); 

      geraBz: igualazero generic map(N  => 2*N) 
      port map 
      (
            a => sairegB,
            igual => Bz
      ); 

      comparadorBits: comparador generic map(N => 2 *N)
      port map
      (
            valorA => sairegA,
            valorB => sairegB,
            flagComparacao => abComparacao
      )


	mult <= sairegMult;

end estrutura;