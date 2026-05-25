
module lfsr_galoic #(
    parameter N = 8,
    parameter [N-1:0] TAPS = 8'b10111000,
    parameter [N-1:0] SEED = 8'b00000001    
)(
    input wire clk,
    input wire rst,
    input wire enable,
    output [N-1:0] lfsr_out,
    output wire out,
    output reg valid
);
reg [N-1:0] state;  
wire feedback;

integer i;

assign feedback = state [0];

always @(posedge clk) begin
    if (rst) begin
        state <= SEED;
        valid <= 0;
    end
    else if (enable) begin
        if (state == 0) begin
            state <= SEED;
            valid <= 1;
        end
        else begin
            for (i=0; i<N-1; i=i+1) begin
                valid <= 1;
                if (TAPS[i])
                state[i] <= state[i+1] ^ feedback;
                else
                state[i] <= state[i+1];
            end
            state[N-1] <= feedback;
        end
    end
    else valid <= 0;
end

assign lfsr_out = state;
assign out = state[0];

endmodule
