
module packed_array_opr #(
    parameter int N = 4,
    parameter int W = 8,
    parameter int sel_w = $clog2(N),
    parameter int shft_w = $clog2(W)
)(
    input logic clk,rst,
    input logic [N-1:0] [W-1:0] packed_in,
    input logic [sel_w-1:0] sel,
    input logic [shft_w-1:0] shft_amt,
    input logic signed_mode,

    output logic [N-1:0] [W-1:0] packed_out,
    output logic [W-1:0] elem_out,
    output logic [W-1:0] lsr_out,
    output logic [W-1:0] asr_out,
    output logic [W-1:0] inv_out,
    output logic valid_out
);

logic [W-1:0] temp_array [N-1:0];      // assigning temporary array
logic signed [W-1:0] elem_signed;

assign elem_signed = packed_in[sel];

always_comb begin
    elem_out = packed_in[sel]; // select the element based on sel

    lsr_out = packed_in[sel] >> shft_amt; // logical shift right

    asr_out = signed_mode ? elem_signed >>> shft_amt : packed_in[sel] >> shft_amt; // arithmetic shift right

    inv_out = ~packed_in[sel]; // bitwise inversion

    for(int i= 0; i<N; i=i+1) begin
        temp_array[i] = packed_in[i];
    end
end

always_ff @(posedge clk or posedge rst) begin
    if(rst) begin
        packed_out <= '0;
        valid_out <= 0;
    end
    else begin
        for(int i= 0; i<N; i=i+1) begin
            packed_out[i] <= temp_array[i]; // assign the temporary array to output
        end
        valid_out <= 1; // indicate that output is valid
    end
end
endmodule