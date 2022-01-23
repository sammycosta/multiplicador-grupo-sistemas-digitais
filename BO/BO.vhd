library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bo is
      generic (N : integer);

      port (
            clk : in std_logic;
            cEnt, mB, op, cmult, mmult : in std_logic;
            entA, entB : in std_logic_vector(N - 1 downto 0);
            Az, Bz : out std_logic;
            mult : out std_logic_vector(N - 1 downto 0));
end bo;
architecture estrutura of bo is

      component registrador is
            generic (N : integer);
            port (
                  clk, carga : in std_logic;
                  d : in std_logic_vector(N - 1 downto 0);
                  q : out std_logic_vector(N - 1 downto 0));
      end component;

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
      signal saimuxB, sairegA, sairegB, saisomasub : std_logic_vector (N - 1 downto 0);
      signal quant_zero : integer range 0 to N - 1;
begin
      -- componentes e conexões entre eles (port map) usar generic
      regA : registrador generic map(N => N)
      port map
      (
            clk => clk;
            carga => cEnt;
            d => entA;
            q => sairegA
      );
      
      muxB: mux2para1 generic map (N => N)
      port map
      (
            a <= saisomasub;
            b <= entB;
            sel <= mB;
            y <= saimuxB
      );

      regB : registrador generic map(N => N)
      port map
      (
            clk => clk;
            carga => cEnt;
            d => saimuxB;
            q => sairegB
      );

      quantosZero: checa_potencia generic map(N => N)
      port map
      (
            entB <= sairegB;
            zeros <= quant_zero; 
      );

      -- falta: dois muxes da soma, somasub, mux de cmult e zeros/etc
	geraAz: igualazero generic map(N  => N) 
      port map 
      (
            a  <= sairegA;
            igual <= Az
      ); 

      geraBz: igualazero generic map(N  => N) 
      port map 
      (
            a  <= sairegAB;
            igual <= Bz
      ); 

end estrutura;