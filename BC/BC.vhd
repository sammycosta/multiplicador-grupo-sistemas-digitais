library ieee;
use ieee.std_logic_1164.all;

entity bc is
    port (Reset, clk, inicio : in std_logic;
        Az, Bz : in std_logic;
        pronto : out std_logic;
        mP, cP, cA, cmult: out std_logic);
end bc;
-- mudança no port: variáveis de controle (que saem)

architecture estrutura of bc is
	type state_type is (S0, S1, S2, S3, S4, S5);
	signal state: state_type;
begin
    -- máquina de estados
    process(clk)
    begin
        if (Reset = '1') then
            state <= S0;
        elsif (clk'event and clk = '1') then
            case state IS
            when S0 =>
              if (inicio = '0') then
                state <= S0;
              else
                state <= S1;
              end if;
            -- when dos estados (ifs dentro se depender de vaiáveis)
            end case;
        end if;
    end process;

    -- lógica de saída
    process(state)
    begin
      case state is
			when S0 =>
      -- conteúdo das variáveis de controle (decidindo carga dos flip-flops, etc para o BO)         	
			when S1 =>
			when S2 =>
			when S3 =>
			when S4 =>
			when S5 =>
		end case;
    end process;
end estrutura;


