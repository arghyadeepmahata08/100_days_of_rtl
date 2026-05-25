`timescale 1ns/1ps

module tb_lfsr_galoic;

    // =========================================================
    // PARAMETERS
    // =========================================================
    parameter N    = 8;
    parameter TAPS = 8'b10111000;
    parameter SEED = 8'b00000001;

    // =========================================================
    // DUT SIGNALS
    // =========================================================
    reg clk;
    reg rst;
    reg enable;

    wire [N-1:0] lfsr_out;
    wire out;
    wire valid;

    // =========================================================
    // DUT INSTANTIATION
    // =========================================================
    lfsr_galoic #(
        .N(N),
        .TAPS(TAPS),
        .SEED(SEED)
    ) dut (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .lfsr_out(lfsr_out),
        .out(out),
        .valid(valid)
    );

    // =========================================================
    // CLOCK GENERATION
    // =========================================================
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   // 10ns clock period
    end

    // =========================================================
    // MONITOR
    // =========================================================
    initial begin
        $monitor("TIME=%0t | rst=%b | enable=%b | valid=%b | out=%b | lfsr_out=%b",
                  $time, rst, enable, valid, out, lfsr_out);
    end

    // =========================================================
    // TEST SEQUENCE
    // =========================================================
    initial begin

        // Dump waveform
        $dumpfile("lfsr_galoic.vcd");
        $dumpvars(0, tb_lfsr_galoic);

        // -----------------------------------------------------
        // INITIALIZATION
        // -----------------------------------------------------
        rst    = 0;
        enable = 0;

        // -----------------------------------------------------
        // TEST 1 : APPLY RESET
        // -----------------------------------------------------
        #12;
        rst = 1;

        #10;
        rst = 0;

        // Check seed loaded
        #10;
        if (lfsr_out == SEED)
            $display("TEST1 PASS : SEED loaded correctly");
        else
            $display("TEST1 FAIL : SEED not loaded");

        // -----------------------------------------------------
        // TEST 2 : ENABLE LFSR SHIFTING
        // -----------------------------------------------------
        enable = 1;

        repeat(20) begin
            @(posedge clk);
            #1;
            $display("LFSR STATE = %b", lfsr_out);
        end

        // -----------------------------------------------------
        // TEST 3 : DISABLE CHECK
        // -----------------------------------------------------
        enable = 0;

        reg [N-1:0] hold_value;

        hold_value = lfsr_out;

        repeat(5) begin
            @(posedge clk);
        end

        if (lfsr_out == hold_value)
            $display("TEST3 PASS : LFSR held value when enable=0");
        else
            $display("TEST3 FAIL : LFSR changed when enable=0");

        // -----------------------------------------------------
        // TEST 4 : RE-ENABLE
        // -----------------------------------------------------
        enable = 1;

        repeat(10) begin
            @(posedge clk);
            #1;
            $display("RESTART STATE = %b", lfsr_out);
        end

        // -----------------------------------------------------
        // TEST 5 : FORCE ZERO STATE
        // -----------------------------------------------------
        // Internal state force for corner case checking
        // -----------------------------------------------------
        @(posedge clk);

        force dut.state = 0;

        @(posedge clk);

        release dut.state;

        #1;

        if (lfsr_out == SEED)
            $display("TEST5 PASS : Zero state recovered to SEED");
        else
            $display("TEST5 FAIL : Zero state recovery failed");

        // -----------------------------------------------------
        // FINISH SIMULATION
        // -----------------------------------------------------
        #50;
        $display("SIMULATION FINISHED");
        $finish;

    end

endmodule
