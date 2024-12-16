module TransmissorPacote (
    input [7:0] dados,
    input [2:0] endereco,
    output [10:0] pacote
);

    wire bit_paridade;

    GeradorParidade gerador (dados, bit_paridade);

    assign pacote = {bit_paridade, endereco, dados};

endmodule
