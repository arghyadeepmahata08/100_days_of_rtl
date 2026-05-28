
`timescale 1ns/1ps

module tb_johnson_counter;

parameter N = 4;

reg clk;
reg rst_n;
wire [N-1:0] out;

// DUT instantiation
johnson_counter #(
    .N(N)
) dut (
    .clk   (clk),
    .rst_n (rst_n),
    .out   (out)
);

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
// monitor signals  
initial begin
    $display("TIME\tRST_N\tOUT");

    $monitor("%0t\t%b\t%b",
             $time, rst_n, out);
end

// dump waveforms
initial begin
    $dumpfile("johnson_counter.vcd");
    $dumpvars(0, tb_johnson_counter);
end

endmodule