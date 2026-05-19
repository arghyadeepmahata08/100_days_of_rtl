`timescale 1ns/1ps

module tb_mealy_seq_set;

reg clk, rst, in;
wire detect;

// DUT instantiation
mealy_seq_det dut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .detect(detect)
);

// Clock generation
always #5 clk = ~clk;

// Initial values
initial begin
    clk = 0;
    rst = 1;
    in  = 0;
end

// Dump file
initial begin
    $dumpfile("mealy_seq_set.vcd");
    $dumpvars(0, tb_mealy_seq_set);
end

// Monitor
initial begin
    $monitor("TIME=%0t clk=%b rst=%b in=%b state=%b detect=%b",
              $time, clk, rst, in, dut.state, detect);
end

// Stimulus
initial begin

    // Reset
    #12;
    rst = 0;

    // Apply sequence 1011
    @(posedge clk) in = 1;
    @(posedge clk) in = 0;
    @(posedge clk) in = 1;
    @(posedge clk) in = 1;   // detect = 1

    // Overlapping sequence
    @(posedge clk) in = 0;
    @(posedge clk) in = 1;
    @(posedge clk) in = 0;
    @(posedge clk) in = 1;
    @(posedge clk) in = 1;   // detect = 1

    // Random inputs
    @(posedge clk) in = 1;
    @(posedge clk) in = 0;
    @(posedge clk) in = 0;
    @(posedge clk) in = 1;
    @(posedge clk) in = 1;

    #20;
    $finish;

end

endmodule
