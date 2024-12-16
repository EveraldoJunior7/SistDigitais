module GeradorParidade (
    input [7:0] dados,
    output paridade
);

    assign paridade = ~(^dados);

endmodule
