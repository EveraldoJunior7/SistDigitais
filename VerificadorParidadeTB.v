`timescale 1ps / 1ps

module VerificadorParidadeTB;

    reg [7:0] dados;
    reg bit_paridade;
    wire erro;

    VerificadorParidade uut (
        dados, bit_paridade, erro
    );

    initial begin
        dados = 8'b00000000; bit_paridade = 1'b1; #100;
        dados = 8'b00000001; bit_paridade = 1'b0; #100;
        dados = 8'b00000011; bit_paridade = 1'b1; #100;
        dados = 8'b00000111; bit_paridade = 1'b0; #100;
        dados = 8'b00001111; bit_paridade = 1'b1; #100;
        dados = 8'b00011111; bit_paridade = 1'b0; #100;
        dados = 8'b00111111; bit_paridade = 1'b1; #100;
        dados = 8'b01111111; bit_paridade = 1'b0; #100;
		  dados = 8'b11111111; bit_paridade = 1'b1; #100;
		  
		  dados = 8'b00000000; bit_paridade = 1'b0; #100;
		  dados = 8'b11111110; bit_paridade = 1'b1; #100;
    end

endmodule
