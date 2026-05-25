`timescale 1ns/1ps

module tb_lfsr_fibonacci;

parameter N     = 8;
parameter TAPS  = 8'b10111000;
parameter SEED  = 8'b00000001;

reg clk;
reg rst;
reg enable;

wire [N-1:0] lfsr_out;
wire out;
wire valid;

//--------------------------------------------------
// DUT INSTANTIATION
//--------------------------------------------------

lfsr_fibonacci #(
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

//--------------------------------------------------
// CLOCK GENERATION
//--------------------------------------------------

always #5 clk = ~clk;

//--------------------------------------------------
// VARIABLES
//--------------------------------------------------

integer cycle_count;
integer expected_period;

reg [(2**N)-1:0] visited_states;

//--------------------------------------------------
// INITIALIZATION
//--------------------------------------------------

initial begin

    clk = 0;
    rst = 1;
    enable = 0;

    cycle_count = 0;
    expected_period = (2**N)-1;

    visited_states = 0;

    //--------------------------------------------------
    // RESET TEST
    //--------------------------------------------------

    $display("\n========================================");
    $display("RESET TEST");
    $display("========================================");

    #20;

    rst = 0;

    //--------------------------------------------------
    // CHECK RESET VALUE
    //--------------------------------------------------

    if (lfsr_out !== SEED)
        $display("ERROR : RESET FAILED");
    else
        $display("RESET PASSED");

    //--------------------------------------------------
    // ENABLE TEST
    //--------------------------------------------------

    enable = 1;

    $display("\n========================================");
    $display("LFSR SEQUENCE TEST");
    $display("========================================");

    //--------------------------------------------------
    // MAIN TEST LOOP
    //--------------------------------------------------

    forever begin

        @(posedge clk);

        cycle_count = cycle_count + 1;

        //--------------------------------------------------
        // DISPLAY OUTPUTS
        //--------------------------------------------------

        $display("Cycle = %0d | State = %b | out = %b | valid = %b",
                  cycle_count,
                  lfsr_out,
                  out,
                  valid);

        //--------------------------------------------------
        // CHECK VALID SIGNAL
        //--------------------------------------------------

        if (enable && !valid)
            $display("ERROR : VALID NOT ASSERTED");

        //--------------------------------------------------
        // CHECK ILLEGAL ZERO STATE
        //--------------------------------------------------

        if (lfsr_out == 0) begin
            $display("ERROR : ILLEGAL ZERO STATE DETECTED");
            $finish;
        end

        //--------------------------------------------------
        // CHECK FOR REPEATED STATES
        //--------------------------------------------------

        if (visited_states[lfsr_out]) begin

            $display("\n========================================");
            $display("REPEATED STATE DETECTED");
            $display("========================================");

            $display("Repeated State = %b", lfsr_out);
            $display("Sequence Length = %0d", cycle_count-1);

            //--------------------------------------------------
            // PERIOD VERIFICATION
            //--------------------------------------------------

            if ((cycle_count-1) == expected_period) begin

                $display("\nMAXIMAL LENGTH VERIFIED");
                $display("Expected Period = %0d", expected_period);
                $display("Obtained Period = %0d", cycle_count-1);

            end
            else begin

                $display("\nERROR : NOT MAXIMAL LENGTH");
                $display("Expected Period = %0d", expected_period);
                $display("Obtained Period = %0d", cycle_count-1);

            end

            $finish;
        end

        //--------------------------------------------------
        // MARK STATE AS VISITED
        //--------------------------------------------------

        visited_states[lfsr_out] = 1'b1;

    end
end

//--------------------------------------------------
// ENABLE HOLD TEST
//--------------------------------------------------

initial begin

    #100;

    enable = 0;

    $display("\n========================================");
    $display("ENABLE HOLD TEST");
    $display("========================================");

    $display("Enable Disabled");

    #40;

    enable = 1;

    $display("Enable Enabled Again");

end

//--------------------------------------------------
// RANDOM RESET TEST
//--------------------------------------------------

initial begin

    #220;

    $display("\n========================================");
    $display("RANDOM RESET TEST");
    $display("========================================");

    rst = 1;

    #10;

    rst = 0;

    $display("Reset Released");

end

//--------------------------------------------------
// MONITOR
//--------------------------------------------------

initial begin

    $monitor("TIME = %0t | clk = %b | rst = %b | enable = %b | state = %b",
              $time,
              clk,
              rst,
              enable,
              lfsr_out);

end

//--------------------------------------------------
// WAVEDUMP
//--------------------------------------------------

initial begin

    $dumpfile("lfsr_fibonacci.vcd");
    $dumpvars(0, tb_lfsr_fibonacci);

end

endmodule