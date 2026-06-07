
module pbus_slave #(
    parameter int addr_w   = 8,
    parameter int data_w   = 32,
    parameter int strb_w   = data_w/ 8,
    parameter int mem_depth = 256
)(
    pbus_if.slave bus
);

    logic [data_w-1:0] mem [0:mem_depth-1];

    always_ff @(posedge bus.clk) begin
        if (bus.rst) begin
            bus.r_data <= '0;
            bus.ready <= 1'b1;
            foreach (mem[i]) mem[i] <= '0;
        end else begin
            bus.ready <= 1'b1;
            bus.r_data <= '0;

            if (bus.valid && bus.ready) begin
                if (bus.w_en) begin
                    // Byte-enable write — only update enabled byte lanes
                    for (int b = 0; b < strb_w; b++) begin
                        if (bus.strb[b])
                            mem[bus.addr][b*8 +: 8] <= bus.w_data[b*8 +: 8]; // TODO
                    end
                end else begin
                    bus.r_data <= mem[bus.addr];
                end
            end
        end
    end

endmodule : pbus_slave