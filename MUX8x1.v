module MUX8x1 (
    input [7:0] S1, S2, S3, S4, S5, S6, S7, S8,
    input [2:0] endereco,                      
    output reg [7:0] dados_selecionados        
);

    always @(*) begin
        case (endereco)
            3'b000: dados_selecionados = S1;
            3'b001: dados_selecionados = S2;
            3'b010: dados_selecionados = S3;
            3'b011: dados_selecionados = S4;
            3'b100: dados_selecionados = S5;
            3'b101: dados_selecionados = S6;
            3'b110: dados_selecionados = S7;
            3'b111: dados_selecionados = S8;
            default: dados_selecionados = 8'b0;
        endcase
    end

endmodule
