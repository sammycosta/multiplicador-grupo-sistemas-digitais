library ieee;
use ieee.std_logic_1164.all;

entity bc is
    port (Reset, clk, inicio : in std_logic;
        A_zero, B_zero : in std_logic;
        pronto : out std_logic;
        -- mP, cP, cA, cmult: out std_logic;
        clk_Entradas, clk_mult, op, mux_B, mux_mult: out std_logic);
end bc;
-- mudança no port: variáveis de controle (que saem)

architecture estrutura of bc is
	type state_type is (S0, S1, S2, S3, S4, S5);
	signal state: state_type;
begin
    -- troca de estados
    -- máquina de estados
    process(Reset, clk)
    begin
      if (Reset = '1') then
          state <= S0;
      elsif (clk'event and clk = '1') then
        case state is
          when S0 =>
              if (inicio = '0') then
                state <= S0;
              else
                state <= S1;
              end if;
          when S1 => state <= S2;
          when S2 =>
              -- Fazer estado 3 com a lógica de inversão
                state <= S4;
          when S4 =>
              if (B_zero = '1') then
                state <= S7;
              else
                state <= S5;
              end if;
          when S5 =>
                
                

                
          

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
        mux_mult <= '1';      -- reseta multiplicação
        mux_B <= '1';         -- B recebe entB
        clk_Entradas <= '1';  -- atualiza os valores de A e B
        -- valores iniciais:
        op <= '0';

			when S2 =>
        -- a fazer para checar maior qual o maior e inverter
        
			when S3 =>
        -- inverter  

			when S4 =>
        mB <= '0';  -- B passa a receber valor da subtração
      
			when S5 =>
		end case;
    end process;
end estrutura;


