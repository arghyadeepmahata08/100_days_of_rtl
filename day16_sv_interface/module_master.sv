
interface simple_bus (input logic clk, input logic rst);
logic valid, w_en;
logic [3:0] addr;
logic [7:0] w_data;
logic [7:0] r_data;
logic ready;

modport master (input clk,rst,r_data,ready, output valid, addr, w_en, w_data);

modport slave (input clk, rst, valid, addr, w_en, w_data, output r_data, ready);

modport monitor (input clk,rst ,input valid, addr, w_en, w_data, r_data, ready);

endinterface

module master (simple_bus.master bus);

typedef enum logic [2:0] {
    IDLE,
    WRITE_REQ,
    WRITE_WAIT,
    READ_REQ,
    READ_WAIT,
    DONE
} state_t;

state_t state;

logic [3:0] tx_addr;
logic [7:0] tx_data;
logic [7:0] rx_data;

always_ff @(posedge bus.clk) begin
    if (bus.rst) begin
        state       <= IDLE;

        tx_addr     <= 0;
        tx_data     <= 0;
        rx_data     <= 0;

        bus.valid   <= 0;
        bus.addr    <= 0;
        bus.w_en    <= 0;
        bus.w_data  <= 0;
    end

    else begin
        case(state)

        // Load transaction information
        IDLE: begin
            tx_addr <= 4'hA;
            tx_data <= 8'hCC;

            bus.valid  <= 0;
            bus.addr   <= 0;
            bus.w_en   <= 0;
            bus.w_data <= 0;

            state <= WRITE_REQ;
        end

        // Drive write request
        WRITE_REQ: begin
            bus.valid  <= 1;
            bus.addr   <= tx_addr;
            bus.w_en   <= 1;
            bus.w_data <= tx_data;

            state <= WRITE_WAIT;
        end

        // Wait until slave accepts write
        WRITE_WAIT: begin
            bus.valid  <= 1;
            bus.addr   <= tx_addr;
            bus.w_en   <= 1;
            bus.w_data <= tx_data;

            if (bus.ready) begin
                bus.valid <= 0;
                state <= READ_REQ;
            end
        end

        // Drive read request
        READ_REQ: begin
            bus.valid  <= 1;
            bus.addr   <= tx_addr;
            bus.w_en   <= 0;
            bus.w_data <= 0;

            state <= READ_WAIT;
        end

        // Wait until read completes
        READ_WAIT: begin
            bus.valid  <= 1;
            bus.addr   <= tx_addr;
            bus.w_en   <= 0;
            bus.w_data <= 0;

            if (bus.ready) begin
                rx_data <= bus.r_data;
                bus.valid <= 0;
                state <= DONE;
            end
        end

        // Display result
        DONE: begin
            $display("Read Data = 0x%0h from Address = 0x%0h",
                     rx_data, tx_addr);

            state <= IDLE;
        end

        default: state <= IDLE;

        endcase
    end
end
endmodule