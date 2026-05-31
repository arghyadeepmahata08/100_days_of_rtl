
`timescale 1ns/1ps

module tb_day17;

    //-----------------------------------------
    // Clock and Reset
    //-----------------------------------------

    logic clk;
    logic rst;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;      // 10 ns period
    end

    initial begin
        rst = 1;

        repeat(3) @(posedge clk);

        rst = 0;

        $display("[%0t] Reset Released",$time);
    end

    //-----------------------------------------
    // Interface Instance
    //-----------------------------------------

    clocked_bus bus (
        .clk(clk),
        .rst(rst)
    );

    //-----------------------------------------
    // DUT
    //-----------------------------------------

    slave dut (
        .bus(bus)
    );

    //-----------------------------------------
    // Driver
    //-----------------------------------------

    driver drv (
        .bus(bus)
    );

    //-----------------------------------------
    // Monitor
    //-----------------------------------------

    monitor mon (
        .bus(bus)
    );

    //-----------------------------------------
    // Waveform Dump
    //-----------------------------------------

    initial begin
        $dumpfile("day17_clocking_block.vcd");
        $dumpvars(0,tb);
    end

    //-----------------------------------------
    // Timeout Protection
    //-----------------------------------------

    initial begin

        #300;

        $display("\n=================================");
        $display(" Simulation Completed ");
        $display("=================================\n");

        $finish;

    end

endmodule
