
module mux_n_to_1 #(
    parameter N = 4,
    parameter W = 8,
    parameter SEL_NO = 2  // parameter SEL_NO = $clog2(N)
)(
    input  [W-1:0] in [0:N-1],
    input  [SEL_NO-1:0] sel,
    output [W-1:0] out
);

assign out = (sel < N) ? in[sel] : {W{1'b0}};

endmodule