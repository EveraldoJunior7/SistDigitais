`timescale 1ps / 1ps

module MUX8x1TB;

    reg [7:0] S1, S2, S3, S4, S5, S6, S7, S8;
    reg [2:0] endereco;
    wire [7:0] dados_selecionados;

    MUX8x1 multiplexador (
        S1, S2, S3, S4, S5, S6, S7, S8, endereco, dados_selecionados
    );

    initial begin
        S1 = 8'b00000001; S2 = 8'b00000010; S3 = 8'b00000100; S4 = 8'b00001000;
        S5 = 8'b00010000; S6 = 8'b00100000; S7 = 8'b01000000; S8 = 8'b10000000;

        endereco = 3'b000; #100;
        endereco = 3'b001; #100;
        endereco = 3'b010; #100;
        endereco = 3'b011; #100;
        endereco = 3'b100; #100;
        endereco = 3'b101; #100;
        endereco = 3'b110; #100;
        endereco = 3'b111; #100;

    end

endmodule
