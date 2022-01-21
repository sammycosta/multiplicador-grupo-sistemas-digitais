library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port(a, b, cin: in std_logic;
		s, cout: out std_logic);
end fulladder;

architecture arch of fulladder is
begin
	s <= a xor b xor cin;
	cout <= (a and cin) or (b and cin) or (a and b);
end arch;