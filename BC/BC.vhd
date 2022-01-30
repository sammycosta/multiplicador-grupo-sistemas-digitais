library ieee;
use ieee.std_logic_1164.all;

entity bc is
    port (Reset, clk, inicio : in std_logic;
        A_zero, B_zero: in std_logic;
        abComparacao: in std_logic_vector(1 downto 0);
        pronto: out std_logic;
        carga_Entradas, carga_mult, op, mux_B, mux_mult: out std_logic);
end bc;

architecture estrutura of bc is
	type state_type is (S0, S1, S2, S3, S4, S5, S6, S7);
	signal state: state_type;
begin
    -- máquina de estados
    process(Reset, clk)
    begin
      if (Reset = '1') then
          state <= S0;
      elsif (clk'event and clk = '1') then
        case state is

          -- espera para ser iniciado 
          when S0 =>
              if (inicio = '0') then
                state <= S0;
              else
                state <= S1;
              end if;
          
          -- estado de setup
          when S1 => 
              state <= S2;
          
          -- S2 e S3 garantem que B receba o menor valor, evitando bordas de relogio adicionais
          -- checa os valores (um maior q o outro)
          when S2 =>
--              if (A_maior = '1') then
--                state <= S3;
--              else
                state <= S4;
--              end if;
          
          -- inverte os valores
          when S3 => 
              state <= S2;

          -- checa se B (valor de retirada das potencias) eh 0
          when S4 =>
              if (B_zero = '1') then
                state <= S7;
              else
                state <= S5;
              end if;
          
          -- adiciona potencia ao mult (checa overflow)
          when S5 =>
                state <= S6;
          
          -- retira potencia previamente adicionada do B
          when S6 => 
              state <= S4;

          -- chegou aqui, terminou de alguma forma. voltar ao início
          when S7 =>
              state <= S0;

        end case;
      end if;
    end process;

    -- lógica de saída
    process(state)
    begin
      case state is
      -- conteúdo das variáveis de controle (decidindo carga dos flip-flops, etc para o BO)         	

        when S0 =>
          pronto <= '1';        -- indica que esta pronto pra outra

        when S1 =>
          mux_mult <= '1';      -- reseta multiplicação
          mux_B <= '1';         -- B recebe entB
          carga_Entradas <= '1';  -- atualiza os valores de A e B (entA e entB)
          carga_mult <= '1';      -- atualiza valor da multiplicacao (reseta valor)
          pronto <= '0';
          -- definindo valores iniciais arbitrarios:
          op <= '0';
			 

        when S2 =>
          mux_B <= '0';         -- B passa a receber valor da subtração
          carga_Entradas <= '0';  -- mantem os valores de A e B (checa A = 0)
          carga_mult <= '0';
			 mux_mult <= '0';      -- regmult recebe a soma
          pronto <= '0';

        when S3 =>
          -- inverter
          carga_Entradas <= '1';  -- atualiza os valores de A e B 
          carga_mult <= '0';
			 mux_mult <= '0';      -- regmult recebe a soma
          pronto <= '0';

        when S4 =>
          carga_Entradas <= '0';  -- mantem os valores de A e B (checa B = 0)
          carga_mult <= '0';
			 mux_mult <= '0';      -- regmult recebe a soma
          pronto <= '0';
        
        when S5 =>
          op <= '0';            -- operacao de soma (mult)
          carga_mult <= '1';      -- atualiza valor da multiplicacao
          mux_mult <= '0';      -- regmult recebe a soma
          pronto <= '0';

        when S6 =>
          op <= '1';            -- operacao de subtracao (B)
          carga_Entradas <= '1';  -- atualiza os valores de A e B (diminui B)
          mux_B <= '0'; -- B passa a receber valor da subtração
			 carga_mult <= '0';
			 mux_mult <= '0';      -- regmult recebe a soma
          pronto <= '0';

        when S7 =>
          pronto <= '0';
			 carga_mult <= '0';

		  end case;
    end process;
end estrutura;


