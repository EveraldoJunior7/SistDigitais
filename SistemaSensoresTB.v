`timescale 1ps / 1ps

module SistemaSensoresTB;

    reg clk;
    reg [7:0] S1, S2, S3, S4, S5, S6, S7, S8;
    wire [10:0] pacote;
    wire solicitar_reenvio;
    wire [7:0] E1, E2, E3, E4, E5, E6, E7, E8;

    SistemaSensores uut (
        clk, S1, S2, S3, S4, S5, S6, S7, S8, pacote, solicitar_reenvio, E1, E2, E3, E4, E5, E6, E7, E8
    );

    initial begin
        clk = 0;
        forever #50 clk = ~clk;
    end

    initial begin
        S1 = 8'b00000001; S2 = 8'b00000010; S3 = 8'b00000100; S4 = 8'b00001000;
        S5 = 8'b00010000; S6 = 8'b00100000; S7 = 8'b01000000; S8 = 8'b10000000;

        #1000;
    end

endmodule
