
`timescale 1ns/1ps

module tb_moore_sequence_detector;

reg clk;
reg rst;
reg in;

wire detect;

// Instantiate DUT

moore_sequence_detector dut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .detect(detect)
);

// Clock Generation

always #5 clk = ~clk;

// Task for applying input

task apply_bit;
input bit_value;
begin
    in = bit_value;
    #10;
end
endtask

initial begin
    $monitor("TIME=%0t | rst=%b | in=%b | state=%b | detect=%b",
              $time, rst, in, dut.state, detect);
end

// Test Sequence

initial begin

    // initial value

    clk = 0;
    rst = 1;
    in  = 0;

    #20;

    rst = 0;

    // TEST CASE 1
    // Simple valid sequence: 1011

    $display("\nTEST CASE 1 : Single Detection");

    apply_bit(1);
    apply_bit(0);
    apply_bit(1);
    apply_bit(1);

    #20;

    // TEST CASE 2
    // Random invalid sequence

    $display("\nTEST CASE 2 : Invalid Sequence");

    apply_bit(1);
    apply_bit(1);
    apply_bit(0);
    apply_bit(0);

    #20;

    // TEST CASE 3
    // Two non-overlapping valid sequences

    $display("\nTEST CASE 3 : Two Separate Detections");

    // 1011
    apply_bit(1);
    apply_bit(0);
    apply_bit(1);
    apply_bit(1);

    // gap
    apply_bit(0);
    apply_bit(0);

    // another 1011
    apply_bit(1);
    apply_bit(0);
    apply_bit(1);
    apply_bit(1);

    #20;

    // TEST CASE 4
    // Overlapping pattern attempt
    // Input = 1011011

    $display("\nTEST CASE 4 : Overlapping Attempt");

    apply_bit(1);
    apply_bit(0);
    apply_bit(1);
    apply_bit(1);
    apply_bit(0);
    apply_bit(1);
    apply_bit(1);

    // Should detect ONLY ONCE
    // because detector is NON-overlapping

    #20;

    // TEST CASE 5
    // Continuous 1's

    $display("\nTEST CASE 5 : Continuous 1's");

    apply_bit(1);
    apply_bit(1);
    apply_bit(1);
    apply_bit(1);
    apply_bit(1);

    #20;

    // TEST CASE 6
    // Continuous 0's

    $display("\nTEST CASE 6 : Continuous 0's");

    apply_bit(0);
    apply_bit(0);
    apply_bit(0);
    apply_bit(0);

    #20;

    // TEST CASE 7
    // Reset in middle of sequence
    // Should NOT detect

    $display("\nTEST CASE 7 : Reset During Detection");

    apply_bit(1);
    apply_bit(0);

    rst = 1;
    #10;

    rst = 0;

    apply_bit(1);
    apply_bit(1);

    #20;

    // TEST CASE 8
    // Back-to-back sequences

    $display("\nTEST CASE 8 : Back-to-Back Sequences");

    // first 1011
    apply_bit(1);
    apply_bit(0);
    apply_bit(1);
    apply_bit(1);

    // second 1011 immediately
    apply_bit(1);
    apply_bit(0);
    apply_bit(1);
    apply_bit(1);

    #20;

    $display("\nSimulation Finished");

    $finish;

end

endmodule