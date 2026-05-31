module monitor (clocked_bus.tb_monitor bus);

logic [3:0] rd_addr;

initial begin
    wait(!bus.rst);

    forever begin

        @(bus.monitor_cb);
        // write request
        if(bus.monitor_cb.valid &&
           bus.monitor_cb.ready &&
           bus.monitor_cb.w_en)
        begin
            $display(
                "[MONITOR][%0t] WRITE : ADDR=%0h DATA=%0h",
                $time,
                bus.monitor_cb.addr,
                bus.monitor_cb.w_data
            );
        end

        // Read Request
        if(bus.monitor_cb.valid &&
           bus.monitor_cb.ready &&
           !bus.monitor_cb.w_en)
        begin

            rd_addr = bus.monitor_cb.addr;

            @(bus.monitor_cb);
            $display(
                "[MONITOR][%0t] READ  : ADDR=%0h DATA=%0h",
                $time,
                rd_addr,
                bus.monitor_cb.r_data
            );
        end
    end
end
endmodule