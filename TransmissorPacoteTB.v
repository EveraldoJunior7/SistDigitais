`timescale 1ps / 1ps

module TransmissorPacoteTB;

    reg [7:0] dados;
    reg [2:0] endereco;
    wire [10:0] pacote;

    TransmissorPacote uut (
        dados, endereco, pacote
    );

    initial begin
        dados = 8'b00000000; endereco = 3'b000; #100;
        dados = 8'b00000001; endereco = 3'b001; #100;
        dados = 8'b10101010; endereco = 3'b010; #100;
        dados = 8'b11111111; endereco = 3'b011; #100;
        dados = 8'b10000001; endereco = 3'b100; #100;
        dados = 8'b01010101; endereco = 3'b101; #100;
        dados = 8'b00001111; endereco = 3'b110; #100;
        dados = 8'b11000011; endereco = 3'b111; #100;
    end

endmodule
