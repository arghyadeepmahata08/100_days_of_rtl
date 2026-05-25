
module lfsr_fibonacci #(
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
assign feedback = ^(state & TAPS);   

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
        state <= {feedback, state [N-1 : 1]};
        valid <= 1;
        end
    end
    else valid <=0;
end

assign lfsr_out = state;
assign out = state[0];
endmodule
