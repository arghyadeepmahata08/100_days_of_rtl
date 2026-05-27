module glitch_filter #(
    parameter min_width = 2,
    parameter max_width = 15,
    parameter cnt_width = 4
)(
    input clk,
    input rst,
    input sig,

    output reg sig_out
);

reg [cnt_width-1:0] cnt;

always @(posedge clk) begin
    if (rst) begin
        cnt     <= 0;
        sig_out <= 0;
    end
    else begin
        
        // count stable high duration
        if (sig) begin
            if (cnt < max_width)
                cnt <= cnt + 1;
        end
        else begin
            cnt <= 0;
        end

        // glitch filter output
        if (sig && cnt >= min_width)
            sig_out <= 1'b1;
        else
            sig_out <= 1'b0;
    end
end

endmodule