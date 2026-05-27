
`timescale 1ns/1ps

module tb_signal_conditioner;

////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////

parameter MIN_WIDTH = 2;
parameter MAX_WIDTH = 15;
parameter CNT_WIDTH = 4;

////////////////////////////////////////////////////////////
// DUT Signals
////////////////////////////////////////////////////////////

reg clk;
reg rst;
reg sig_in;

wire sig_clean;

wire rise;
wire fall;
wire both;

wire [CNT_WIDTH-1:0] pulse_width;
wire width_valid;

////////////////////////////////////////////////////////////
// DUT Instantiation
////////////////////////////////////////////////////////////

signal_conditioner #(
    .MIN_WIDTH(MIN_WIDTH),
    .MAX_WIDTH(MAX_WIDTH),
    .CNT_WIDTH(CNT_WIDTH)
) dut (
    .clk(clk),
    .rst(rst),
    .sig_in(sig_in),

    .sig_clean(sig_clean),

    .rise(rise),
    .fall(fall),
    .both(both),

    .pulse_width(pulse_width),
    .width_valid(width_valid)
);

////////////////////////////////////////////////////////////
// Clock Generation
////////////////////////////////////////////////////////////

always #5 clk = ~clk;

////////////////////////////////////////////////////////////
// Test Sequence
////////////////////////////////////////////////////////////

initial begin

    // Initialize
    clk = 0;
    rst = 1;
    sig_in = 0;

    // Reset
    #20;
    rst = 0;

    ////////////////////////////////////////////////////////
    // Test 1: Short glitch (should be filtered)
    ////////////////////////////////////////////////////////

    $display("TEST1: Short glitch");

    #10;
    sig_in = 1;

    #10;
    sig_in = 0;

    ////////////////////////////////////////////////////////
    // Test 2: Valid pulse width = 4 clocks
    ////////////////////////////////////////////////////////

    #30;

    $display("TEST2: Valid pulse");

    sig_in = 1;

    #40;

    sig_in = 0;

    ////////////////////////////////////////////////////////
    // Test 3: Long pulse
    ////////////////////////////////////////////////////////

    #30;

    $display("TEST3: Long pulse");

    sig_in = 1;

    #100;

    sig_in = 0;

    ////////////////////////////////////////////////////////
    // Test 4: Multiple pulses
    ////////////////////////////////////////////////////////

    #30;

    $display("TEST4: Multiple pulses");

    repeat (3) begin

        sig_in = 1;
        #30;

        sig_in = 0;
        #20;
    end

    ////////////////////////////////////////////////////////
    // Finish
    ////////////////////////////////////////////////////////

    #100;

    $finish;
end

////////////////////////////////////////////////////////////
// Monitor
////////////////////////////////////////////////////////////

initial begin

    $display("-------------------------------------------------------------");
    $display("TIME\tSIG_IN\tCLEAN\tRISE\tFALL\tBOTH\tWIDTH\tVALID");
    $display("-------------------------------------------------------------");

    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%0d\t%b",
             $time,
             sig_in,
             sig_clean,
             rise,
             fall,
             both,
             pulse_width,
             width_valid);
end

////////////////////////////////////////////////////////////
// Waveform Dump
////////////////////////////////////////////////////////////

initial begin
    $dumpfile("signal_conditioner.vcd");
    $dumpvars(0, tb_signal_conditioner);
end

endmodule