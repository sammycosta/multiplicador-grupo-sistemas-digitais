library ieee;
use ieee.std_logic_1164.all;

entity somador is
    generic(N: integer);
	port(A, B: in std_logic_vector(N-1 downto 0);
		cin: in std_logic;
		S: out std_logic_vector(N-1 downto 0);
		cout: out std_logic);
end somador;

architecture arch of somador is
    -- signal de carrys, cada bit repesentra um carry-out de uma soma de um fulladder
    -- com o primeiro sendo o carry-in e o ultimo funciona como um "status" de overflow

	signal C: std_logic_vector(N downto 0);

	component fulladder is
		port(a, b, cin: in std_logic;
			s, cout: out std_logic);
	end component;
	
begin
    C(0) <= cin; cout <= C(N);
    FA: for i in 0 to N-1 generate
        FAi: fulladder port map (A(i), B(i), C(i), S(i), C(i+1));
    end generate;
end arch;
