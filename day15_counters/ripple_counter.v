
module jk_ff (
    input wire clk,
    input wire rst_n,
    input wire j,
    input wire k,
    output reg q
);
always @(negedge clk or negedge rst_n) begin
    if (!rst_n) begin
        q <= 1'b0; // reset state
    end else begin
        case ({j, k})
            2'b00: q <= q;       // no change
            2'b01: q <= 1'b0;    // reset
            2'b10: q <= 1'b1;    // set
            2'b11: q <= ~q;      // toggle
        endcase
    end
end
endmodule

module ripple_counter #(
    parameter N = 4
)
(
    input wire clk,
    input wire rst_n,
    output wire  [N-1:0] out
);



genvar i;
generate
jk_ff ff0 (
    .clk (clk),
    .rst_n (rst_n),
    .j (1'b1),
    .k (1'b1),
    .q (out[0])
);
for (i = 1; i < N; i = i + 1) begin : g_ff
    jk_ff ff (
        .clk (out[i-1]), // clock is the output of the previous flip-flop
        .rst_n (rst_n),
        .j (1'b1),
        .k (1'b1),
        .q (out[i])
    );
end
endgenerate
endmodule