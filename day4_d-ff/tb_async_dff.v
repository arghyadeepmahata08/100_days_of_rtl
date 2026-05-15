
module tb_d_ff_async;

reg clk;
reg d;
reg rst;
wire q;

d_ff_async dut (
    .clk(clk),
    .d(d),
    .rst(rst),
    .q(q)
);


// Clock Generation
always begin
    #5 clk = ~clk;   // 10 time unit clock period
end


initial begin
    // Initialize signals
    clk = 0;
    d   = 0;
    rst = 0;

    // Display header
    $display("TIME\tCLK\tRST\tD\tQ");
    $monitor("%0t\t%b\t%b\t%b\t%b",
              $time, clk, rst, d, q);

    // Apply asynchronous reset
    #3  rst = 1;     // reset asserted asynchronously
    #7  rst = 0;

    // Apply data inputs
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;

    // Assert reset in between clock edges
    #4  rst = 1;
    #6  rst = 0;

    // More input changes
    #10 d = 0;
    #10 d = 1;

    #20 $finish;
end

endmodule