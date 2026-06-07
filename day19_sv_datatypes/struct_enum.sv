
typedef enum logic [1:0]{
    cmd_add,
    cmd_sub,
    cmd_inv,
    cmd_pass
} cmd_t;

typedef enum logic [1:0] {
    state_idle,
    state_receive,
    state_process,
    state_transmit
}state_t;

typedef struct packed {
    cmd_t cmd;
    logic [3:0] src_id;
    logic [3:0] dst_id;
    logic [15:0] data;
} packet_t;

module struct_enum(
    input clk,rst,
    input logic valid_in,
    input packet_t pkt_in,
    output logic valid_out,
    output packet_t pkt_out
);

packet_t pkt_reg;
state_t state;

always_ff @(posedge clk) begin
    if(rst) begin
        state <= state_idle;
        pkt_out <= '0;
        valid_out <= 1'b0;
        pkt_reg <= '0;
    end

    else begin
        valid_out <= 1'b0; // default to 0, will set to 1 when output is valid
        case(state)

        state_idle: begin
            if(valid_in) begin
                state <= state_receive;
            end
        end

        state_receive: begin
            if(pkt_in.cmd != cmd_pass) begin
                state <= state_process;
                pkt_reg <= pkt_in; // store the packet for processing
            end
            else begin
                pkt_out <= pkt_in; // pass through the packet
                state <= state_transmit;
            end
        end

        state_process : begin

            pkt_out.cmd <= pkt_reg.cmd;
            pkt_out.src_id <= pkt_reg.src_id;
            pkt_out.dst_id <= pkt_reg.dst_id;

            state <= state_transmit;

            case(pkt_reg.cmd)
            cmd_add : pkt_out.data <= pkt_reg.src_id + pkt_reg.dst_id + pkt_reg.data;
            cmd_sub : pkt_out.data <= pkt_reg.data - pkt_reg.src_id - pkt_reg.dst_id;
            cmd_inv : pkt_out.data <= ~pkt_reg.data;
            default : pkt_out.data <= pkt_reg.data; // for cmd_pass or any undefined command
            endcase
        end

        state_transmit: begin
            valid_out <= 1'b1; // output is valid
            state <= state_idle; // go back to idle after transmitting
        end
        default: state <= state_idle; // default case to handle unexpected states
        endcase
    end
end
endmodule