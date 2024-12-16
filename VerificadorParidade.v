module VerificadorParidade (
    input [7:0] dados,
    input bit_paridade,
    output erro
);

    assign erro = (bit_paridade != ~(^dados));

endmodule
