`timescale 1ps / 1ps

module ControladorEnderecoTB;

    reg clk;
    wire [2:0] endereco;

    ControladorEndereco uut (
        clk, endereco
    );

    initial begin
        clk = 0;
        forever #50 clk = ~clk;
    end

    initial begin
        #1000;
    end

endmodule
