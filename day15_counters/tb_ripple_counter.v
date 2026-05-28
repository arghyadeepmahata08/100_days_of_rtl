
`timescale 1ns/1ps

module tb_ripple_counter;

parameter N = 4;

reg clk;
reg rst_n;
wire [N-1:0] out;

ripple_counter #(
    .N(N)
) dut (
    .clk   (clk),
    .rst_n (rst_n),
    .out   (out)
);

// Clock generation
initial begin
    clk = 1'b0;

    forever #5 clk = ~clk; // 10 ns clock period
end

initial begin
    rst_n = 1'b0;
    #20;

    rst_n = 1'b1;

    #200;

    $finish;
end

// monitor outputs
initial begin
    $monitor(
        "Time = %0t | rst_n = %b | out = %b",
        $time, rst_n, out
    );
end

// dump waveform
initial begin
    $dumpfile("ripple_counter.vcd");
    $dumpvars(0, tb_ripple_counter);
end

endmodule
