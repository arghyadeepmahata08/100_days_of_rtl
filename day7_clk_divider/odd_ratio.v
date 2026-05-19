
module odd_ratio #(
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

always @(posedge clk) begin
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

always @(posedge clk) begin
    if (rst)
        clk_p <= 0;
    else begin
        if (count == N-1)
            clk_p <= 1;
        else if (count ==(N/2)-1)
            clk_p <= 0;
    end
end

// Negative-edge extension

always @(negedge clk ) begin
    if (rst)
        clk_n <= 0;
    else
        clk_n <= clk_p;
end

// Output logic

assign clk_out =(clk_p | clk_n);

endmodule