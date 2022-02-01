library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_ula is
end tb_ula;

architecture arch of tb_ula is
	constant CLK_PERIOD: time := 20ns;
	constant N: integer := 4;

	signal clk, reset, pronto, inicio: std_logic := '0';
	signal entradaA, entradaB: std_logic_vector(N-1 downto 0);
	signal saida: std_logic_vector(2*N-1 downto 0);
	signal op: std_logic_vector(1 downto 0);

begin
	-- clock
	clk <= not clk after CLK_PERIOD;

	-- control
	inicio <= '1' when pronto = '1' else '0';
	reset <= '0';
	op <= "11";

	-- entradas
	entradaA <= "1111", "0000" after 230 ns, "0101" after 50 ns, "1100" after 50 ns;
	entradaB <= "1111", "0011" after 230 ns, "0001" after 50 ns, "0110" after 50 ns;


	UUT: entity work.ula port map (
		clk => clk,
		reset => reset,
		pronto => pronto,
		inicio => inicio,
		entradaA => entradaA,
		entradaB => entradaB,
		saida => saida,
		op => op
	);

end arch;
