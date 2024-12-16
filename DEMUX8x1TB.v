`timescale 1ps / 1ps

module DEMUX8x1TB;

    reg [7:0] dados;
    reg [2:0] endereco;
    wire [7:0] E1, E2, E3, E4, E5, E6, E7, E8;

    DEMUX8x1 uut (
        dados, endereco, E1, E2, E3, E4, E5, E6, E7, E8
    );

    initial begin
        dados = 8'b00000001; endereco = 3'b000; #100;
        dados = 8'b00000010; endereco = 3'b001; #100;
        dados = 8'b00000100; endereco = 3'b010; #100;
        dados = 8'b00001000; endereco = 3'b011; #100;
        dados = 8'b00010000; endereco = 3'b100; #100;
        dados = 8'b00100000; endereco = 3'b101; #100;
        dados = 8'b01000000; endereco = 3'b110; #100;
        dados = 8'b10000000; endereco = 3'b111; #100;
    end

endmodule
