
package fsm_pkg;

typedef enum logic [2:0] {
    s_idle=3'b000,
    s_start = 3'b001,
    s_active = 3'b010,
    s_done = 3'b011,
    s_error = 3'b100
} state_t;

endpackage : fsm_pkg;

import fsm_pkg::*;
module bus_ctrl_fsm (
    input logic clk,
    input logic rst,
    input logic  req,
    input logic ack,
    input logic err,
    output logic done,
    output logic error_out,
    output logic busy
);

state_t state, next_state;

// state transition logic 
always_ff @(posedge clk) begin
    if (rst)
        state <= s_idle;
        else 
        state <= next_state;
end

// next state logic 
always_comb begin
    next_state = state; // default to hold state
    unique case (state)
        s_idle: begin
            if (req)
                next_state = s_start;
        end
        s_start: begin
            if (ack)
                next_state = s_active;
        end
        s_active: begin
            if (err)
                next_state = s_error;
            else
                next_state = s_done;
        end
        s_error: next_state = s_idle;
        s_done : next_state = s_idle;
        default: next_state = s_idle;
    endcase
end

assign done = (state == s_done);
assign error_out = (state == s_error);
assign busy = (state == s_start) || (state == s_active);

endmodule