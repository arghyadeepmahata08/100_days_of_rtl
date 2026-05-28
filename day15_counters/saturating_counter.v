
module saturating_counter #(
    parameter N = 4
)(
    input clk,
    input rst,
    input en,
    input up_down,   // 1 = up, 0 = down
    output reg [N-1:0] q
);

localparam MAX = (1 << N) - 1;

always @(posedge clk) begin
    if(rst)
        q <= 0;

    else if(en) begin

        // Count Up
        if(up_down) begin
            if(q != MAX)
                q <= q + 1;
        end

        // Count Down
        else begin
            if(q != 0)
                q <= q - 1;
        end
    end
end

endmodule