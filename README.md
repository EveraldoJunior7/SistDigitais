# Sistema de Processamento de Dados de Sensores

## Descrição do Projeto
Este projeto é um trabalho prático desenvolvido para a disciplina **Sistemas Digitais** do **7º período do curso de Engenharia de Computação**. O objetivo do projeto é implementar um sistema de processamento de dados de sensores usando conceitos de circuitos digitais, incluindo:

- Multiplexadores (MUX)
- Demultiplexadores (DEMUX)
- Gerenciamento sequencial de endereços
- Geração e verificação de bits de paridade

O projeto foi desenvolvido em **Verilog HDL** e validado através de simulações para garantir o correto funcionamento de cada componente.

---

## Funcionamento
### Visão Geral
O sistema é responsável por processar os dados provenientes de **8 sensores**, transmitindo-os sequencialmente por meio de um canal de comunicação limitado a um pacote por vez. Cada pacote transmitido contém:
- **8 bits** de dados
- **3 bits** de endereço do sensor
- **1 bit** de paridade (paridade par)

A integridade dos dados é garantida através da verificação de paridade no lado do processador. Caso ocorra erro na transmissão, o sistema sinaliza uma **solicitação de retransmissão**.

---

### Componentes Principais
1. **Controlador de Endereço**
   - Gera endereços sequenciais (3 bits) que identificam os sensores ativos.

2. **MUX8x1 (Multiplexador)**
   - Seleciona os dados de um dos 8 sensores com base no endereço gerado pelo controlador.

3. **Transmissor de Pacotes**
   - Monta o pacote transmitido contendo dados, endereço e bit de paridade.

4. **Verificador de Paridade**
   - Verifica a integridade dos dados recebidos comparando o bit de paridade.

5. **DEMUX8x1 (Demultiplexador)**
   - Redistribui os dados recebidos para a saída correspondente com base no endereço.

6. **Sinal de Reenvio**
   - Caso um erro de paridade seja detectado, o sistema gera um sinal de **solicitação de retransmissão**.

---

## Estrutura do Projeto
O projeto é organizado nos seguintes arquivos:

- `SistemaSensores.v` - Módulo principal que integra todos os componentes.
- `ControladorEndereco.v` - Gera endereços sequenciais.
- `MUX8x1.v` - Multiplexador que seleciona os dados dos sensores.
- `TransmissorPacote.v` - Monta o pacote contendo dados, endereço e paridade.
- `GeradorParidade.v` - Calcula o bit de paridade dos dados.
- `VerificadorParidade.v` - Verifica a integridade dos dados recebidos.
- `DEMUX8x1.v` - Redistribui os dados para os sensores.

---

## Simulação
O sistema foi validado usando **ModelSim** com os seguintes testes:
1. **Transmissão Sequencial**: Verifica se os sensores são lidos sequencialmente.
2. **Geração de Pacotes**: Confirma a correta montagem dos pacotes com dados, endereço e bit de paridade.
3. **Verificação de Erro**: Simula erros de paridade e verifica se o sinal de retransmissão é ativado corretamente.

---

## Ferramentas Utilizadas
- **Verilog HDL**
- **ModelSim** para simulação
- **Intel Quartus Prime** para compilação
