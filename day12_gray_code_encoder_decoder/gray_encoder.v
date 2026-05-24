
module gray_encoder #(
    parameter N = 4
)(
    input wire [N-1:0] binary,
    output  [N-1:0] gray 
);

assign gray = binary ^ (binary >> 1);

endmodule
