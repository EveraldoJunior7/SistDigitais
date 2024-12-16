module SistemaSensores (
    input clk,
    input [7:0] S1, S2, S3, S4, S5, S6, S7, S8,
    output [10:0] pacote,
    output reg solicitar_reenvio,
    output [7:0] E1, E2, E3, E4, E5, E6, E7, E8
);
    wire [2:0] endereco;
    wire [7:0] dados_selecionados;
    wire bit_erro;

    ControladorEndereco ctrl (
        clk, endereco
    );

    MUX8x1 mux (
        S1, S2, S3, S4, S5, S6, S7, S8, endereco, dados_selecionados
    );

    TransmissorPacote transmissor (
        dados_selecionados, endereco, pacote
    );

    VerificadorParidade verificador (
        pacote[7:0], pacote[10], bit_erro
    );

    DEMUX8x1 demux (
        pacote[7:0], pacote[9:8], E1, E2, E3, E4, E5, E6, E7, E8
    );

    always @(posedge clk) begin
        solicitar_reenvio <= bit_erro;
    end

endmodule