module ControladorEndereco (
    input clk,
    output reg [2:0] endereco
);

    always @(posedge clk) begin
        if (endereco == 3'b111)
            endereco <= 3'b000;
        else
            endereco <= endereco + 1;
    end

endmodule
