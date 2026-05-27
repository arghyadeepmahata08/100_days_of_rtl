
module signal_conditioner #(
    parameter MIN_WIDTH = 2,
    parameter MAX_WIDTH = 15,
    parameter CNT_WIDTH = 4
)(
    input clk,
    input rst,
    input sig_in,

    output sig_clean,

    output rise,
    output fall,
    output both,

    output [CNT_WIDTH-1:0] pulse_width,
    output width_valid
);

// glitch filter instance

glitch_filter #(
    .min_width(MIN_WIDTH),
    .max_width(MAX_WIDTH),
    .cnt_width(CNT_WIDTH)
) dut_glitch_filter (
    .clk(clk),
    .rst(rst),
    .sig(sig_in),
    .sig_out(sig_clean)
);

// edge detector instance

pulse_edge_detect dut_edge_detect (
    .clk(clk),
    .rst(rst),
    .sig(sig_clean),

    .rise(rise),
    .fall(fall),
    .both(both)
);

// pulse Width detector instance

pulse_width_detect #(
    .max_width(MAX_WIDTH),
    .cnt_width(CNT_WIDTH)
) dut_pulse_width_detect (
    .clk(clk),
    .rst(rst),
    .sig(sig_clean),

    .width(pulse_width),
    .valid(width_valid)
);

endmodule