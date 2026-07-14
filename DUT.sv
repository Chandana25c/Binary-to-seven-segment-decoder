module bin_to_7seg_decoder(
    input  logic        clk,
    input  logic        rst,
    input  logic [3:0]  bin,
    output logic [6:0]  seg
);
logic [3:0] bin_reg;
always_ff @(posedge clk or posedge rst) begin
    if (rst)
        bin_reg <= 4'b0000;
    else
        bin_reg <= bin;
end
always_comb begin
    case(bin_reg)
        4'h0: seg = 7'b1111110;
        4'h1: seg = 7'b0110000;
        4'h2: seg = 7'b1101101;
        4'h3: seg = 7'b1111001;
        4'h4: seg = 7'b0110011;
        4'h5: seg = 7'b1011011;
        4'h6: seg = 7'b1011111;
        4'h7: seg = 7'b1110000;
        4'h8: seg = 7'b1111111;
        4'h9: seg = 7'b1111011;
        4'hA: seg = 7'b1110111;
        4'hB: seg = 7'b0011111;
        4'hC: seg = 7'b1001110;
        4'hD: seg = 7'b0111101;
        4'hE: seg = 7'b1001111;
        4'hF: seg = 7'b1000111;
        default: seg = 7'b0000000;
    endcase
end
endmodule