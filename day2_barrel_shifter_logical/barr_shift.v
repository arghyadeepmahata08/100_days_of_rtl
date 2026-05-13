
module barrel_shifter_log #(
    parameter N       = 8,
    parameter SHAMT_W = 3        // must equal $clog2(N)
)(
    input  wire [N-1:0]       in,
    input  wire [SHAMT_W-1:0] shamt,
    input  wire               dir,   // 0=left, 1=right
    output wire [N-1:0]       out
);

    // Intermediate stage wires: stage[0] = in, stage[SHAMT_W] = out

    wire [N-1:0] stage [0:SHAMT_W];

    assign stage[0] = in;

    genvar k;
    generate
        for (k = 0; k < SHAMT_W; k = k + 1) begin : shift_stages

            localparam SHIFT = (1 << k);   // 1, 2, 4, 8 ...

            wire [N-1:0] shifted;

            // When dir=0: stage[k] shifted left by SHIFT, vacate LSBs with 0
            // When dir=1: stage[k] shifted right by SHIFT, vacate MSBs with 0
            assign shifted = (dir == 1'b0)
                ? { stage[k][N-SHIFT-1:0], {SHIFT{1'b0}} }   // left: drop MSBs, pad LSBs
                : { {SHIFT{1'b0}}, stage[k][N-1:SHIFT] }; // right: pad MSBs, drop LSBs

            assign stage[k+1] = shamt[k] ? shifted : stage[k];

        end
    endgenerate

    assign out = stage[SHAMT_W];

endmodule