`timescale 1ns/1ps

module tb_even_ratio;

    // Parameters
    parameter N = 4;
    parameter cnt_w = 2;

    // Testbench signals
    reg clk;
    reg rst;
    wire clk_out;

    // DUT Instantiation
    even_ratio #(
        .N(N),
        .cnt_w(cnt_w)
    ) dut (
        .clk(clk),
        .rst(rst),
        .clk_out(clk_out)
    );

    // Clock Generation
    // 10 ns clock period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset Sequence
    initial begin
        rst = 1;

        // Hold reset for some time
        #20;

        rst = 0;
    end

    // Simulation Control
    initial begin

        // Dump waveform
        $dumpfile("even_ratio.vcd");
        $dumpvars(0, tb_even_ratio);

        // Monitor signals
        $monitor("TIME=%0t | rst=%b | clk=%b | clk_out=%b | counter=%0d",
                  $time, rst, clk, clk_out, dut.i);

        // Run simulation
        #200;

        $finish;
    end

endmodule
