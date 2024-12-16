module DEMUX8x1 (
    input [7:0] dados,
    input [2:0] endereco,
    output reg [7:0] E1, E2, E3, E4, E5, E6, E7, E8	
);

    always @(*) begin
        E1 = 8'b0; E2 = 8'b0; E3 = 8'b0; E4 = 8'b0;
        E5 = 8'b0; E6 = 8'b0; E7 = 8'b0; E8 = 8'b0;

        case (endereco)
            3'b000: E1 = dados;
            3'b001: E2 = dados;
            3'b010: E3 = dados;
            3'b011: E4 = dados;
            3'b100: E5 = dados;
            3'b101: E6 = dados;
            3'b110: E7 = dados;
            3'b111: E8 = dados;
        endcase
    end

endmodule
