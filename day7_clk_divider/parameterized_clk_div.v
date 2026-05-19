module clk_div_50 #(
    parameter N = 3,
    parameter CNT_W = $clog2(N)
)(
    input  clk,
    input  rst,
    output clk_out
);

reg [CNT_W-1:0] count;

reg clk_p;   // posedge-generated clock
reg clk_n;   // negedge-delayed version

// Counter

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 0;
    else begin
        if (count == N-1)
            count <= 0;
        else
            count <= count + 1;
    end
end

// Positive-edge pulse generation

always @(posedge clk or posedge rst) begin
    if (rst)
        clk_p <= 0;
    else begin
        if (count < (N/2))
            clk_p <= 1;
        else
            clk_p <= 0;
    end
end

// Negative-edge extension
// Needed only for odd N

always @(negedge clk or posedge rst) begin
    if (rst)
        clk_n <= 0;
    else
        clk_n <= clk_p;
end

// Output logic

assign clk_out = (N % 2 == 0) ? clk_p : (clk_p | clk_n);

endmodule
