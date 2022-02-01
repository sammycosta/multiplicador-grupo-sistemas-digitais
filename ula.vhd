library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity ula is
	generic(N: INTEGER);
	port(clk, reset: in std_logic;
		entradaA, entradaB: in std_logic_vector(N-1 downto 0);
		op: in std_logic_vector(1 downto 0);
		pronto,inicio: out std_logic;
		saida: out std_logic_vector(2*N-1 downto 0));
end ula;

architecture arch of ula is
	
	component multiplicador_grupo is
		generic (N : integer := 4);
		port (clk, Reset, inicio: in std_logic;
			entA, entB : in std_logic_vector(N-1 downto 0);
			saida: out std_logic_vector(2*N-1 downto 0);
			pronto: out std_logic);
	end component;
	
	signal multSaidaSig: std_logic_vector(2*N-1 downto 0);

		-- somador quando 00
		-- subtrator quando 01
		-- multiplicador quando 11 
		-- divisor quando 10

	begin
		saida <= entradaA + entradaB when op = "00" else
				entradaA - entradaB when op = "01" else
				multSaidaSig when op = "11" else
				entradaA + entradaB when others;
	
	
	-- somador
	
	-- divisor
	
	-- subtrator
	
	-- multiplicador
		mult: multiplicador_grupo generic map(N => 2*N)
		port map (
			clk => clk,
			reset => reset,
			inicio => inicio,
			pronto => pronto,
			entA => entradaA,
			entB => entradaB,
			saida => divSaidaSig,
		);
	
end arch;
	