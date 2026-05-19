`timescale 1ns/1ps

module tb_odd_ratio;

    parameter N = 3;
    parameter CNT_W = $clog2(N);

    reg clk;
    reg rst;

    wire clk_out;

    odd_ratio #(
        .N(N),
        .CNT_W(CNT_W)
    ) dut (
        .clk(clk),
        .rst(rst),
        .clk_out(clk_out)
    );

    // Clock Generation
    // 10 ns period
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset Generation
    
    initial begin
        rst = 1;

        #20;
        rst = 0;
    end

    // Monitor Signals
    
    initial begin
    
        $dumpfile("odd_ratio.vcd");
        $dumpvars(0, tb_odd_ratio);

        $display(" TIME   rst clk count clk_p clk_n clk_out");

        $monitor("%4t    %b    %b    %0d     %b     %b      %b",
                 $time,
                 rst,
                 clk,
                 dut.count,
                 dut.clk_p,
                 dut.clk_n,
                 clk_out);

        #300;

        $finish;
    end

endmodule

