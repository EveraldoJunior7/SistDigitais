`timescale 1ps / 1ps

module GeradorParidadeTB;

    reg [7:0] dados;
    wire paridade;

    GeradorParidade uut (
        dados, paridade
    );

   initial begin
      dados = 8'b00000000; #100; //1
      dados = 8'b00010000; #100; //0
      dados = 8'b10000001; #100; //1
      dados = 8'b00000111; #100; //0
      dados = 8'b00110011; #100; //1
      dados = 8'b00011111; #100; //0
      dados = 8'b10111110; #100; //1
		dados = 8'b11111110; #100; //0
      dados = 8'b11111111; #100; //1
	end

endmodule
