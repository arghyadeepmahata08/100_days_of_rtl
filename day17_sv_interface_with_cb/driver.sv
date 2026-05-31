
module driver (clocked_bus.tb_driver bus);

typedef enum logic [1:0] {
    idle,
    write,
    read,
    done
} state_t;

state_t state;

logic [3:0] tx_addr;
logic [7:0] tx_data;

initial begin
    bus.driver_cb.valid <= 0;
    bus.driver_cb.addr  <= 0;
    bus.driver_cb.w_en  <= 0;
    bus.driver_cb.w_data <= 0;

    state   = idle;
    tx_addr = 0;
    tx_data = 0;

    forever begin
        @(bus.driver_cb);

        if (bus.rst) begin

            bus.driver_cb.valid <= 0;
            bus.driver_cb.addr  <= 0;
            bus.driver_cb.w_en  <= 0;
            bus.driver_cb.w_data <= 0;

            state   <= idle;
            tx_addr <= 0;
            tx_data <= 0;

        end
        else begin

            case(state)

                idle : begin

                    tx_addr <= 4'b1010;
                    tx_data <= 8'b11001100;

                    bus.driver_cb.valid <= 0;
                    bus.driver_cb.addr  <= 0;
                    bus.driver_cb.w_en  <= 0;
                    bus.driver_cb.w_data <= 0;
                    state <= write;

                end

                write : begin
                    if(bus.driver_cb.ready) begin

                        bus.driver_cb.valid <= 1'b1;
                        bus.driver_cb.addr  <= tx_addr;
                        bus.driver_cb.w_en  <= 1'b1;
                        bus.driver_cb.w_data <= tx_data;
                        state <= read;

                    end
                    else bus.driver_cb.valid <= 0;   
                end

                read : begin
                    if(bus.driver_cb.ready) begin
                        bus.driver_cb.valid <= 1'b1;
                        bus.driver_cb.addr  <= tx_addr;
                        bus.driver_cb.w_en  <= 0;
                        bus.driver_cb.w_data <= 0;
                        state <= done;
                    end
                    else bus.driver_cb.valid <= 0;


                end

                done : begin
                    bus.driver_cb.valid <= 0;

                    $display("master read data : %0h, from address : %0h",bus.driver_cb.r_data,tx_addr);
                    state <= idle;
                end

                default : state <= idle;
            endcase

        end
    end
end
endmodule