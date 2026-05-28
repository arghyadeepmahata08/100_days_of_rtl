
module johnson_counter #(
    parameter N = 4,
    parameter [N-1:0]INIT = {N{1'b0}} // default: all 0s
)
(
    input wire clk,
    input wire rst_n,
    output reg [N-1:0] out
);
initial begin
    out = INIT;
end
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        out <= INIT;
    end
    else begin
        out <= {out[N-2:0], ~out[N-1]}; // left circular shift with inversion of the last bit
    end
end
endmodule