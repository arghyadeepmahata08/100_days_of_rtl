module mux2 #(
    parameter int W = 8
)(
    input  logic [W-1:0] a,
    input  logic [W-1:0] b,
    input  logic         sel,
    output logic [W-1:0] y
);

    assign y = sel ? b : a;

endmodule

module mux_n_to_1_struct #(
    parameter int N = 4,
    parameter int W = 8
)(
    input  logic [W-1:0] in [N],
    input  logic [$clog2(N)-1:0] sel,
    output logic [W-1:0] out
);

    localparam int n = $clog2(N); // 2^n : 1 mux

    // total n number of mux tree layer

    // Intermediate stage wires
    logic [W-1:0] stage [n:0][0:N-1];  // n+1 stage of wire

    genvar i, j;

    generate

        // Connect inputs to first stage
        for(i = 0; i < N; i++) begin : INPUT_STAGE
            assign stage[0][i] = in[i];
        end

        // Generate mux tree
        for(i = 0; i < n; i++) begin : STAGE

            for(j = 0; j < (N >> (i+1)); j++) begin : MUX

                mux2 #(.W(W)) u_mux (
                    .a   (stage[i][2*j]),
                    .b   (stage[i][2*j + 1]),
                    .sel (sel[i]),
                    .y   (stage[i+1][j])
                );

            end

        end

    endgenerate

    assign out = stage[n][0];

endmodule
