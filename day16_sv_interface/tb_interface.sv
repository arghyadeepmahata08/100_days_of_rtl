`timescale 1ns/1ps

module tb_interface;

    logic clk, rst;

    initial clk = 0;
    always #5 clk = ~clk;

    // Interface instance
    simple_bus bus (.clk(clk), .rst(rst));

    master u_master (.bus(bus));
    slave  u_slave  (.bus(bus));

    // Monitor
    always @(posedge clk) begin
        if (bus.valid && bus.ready) begin
            if (bus.w_en)
                $display("[MON][%0t] WRITE  Addr=0x%0h Data=0x%0h",
                         $time, bus.addr, bus.w_data);
            else
                $display("[MON][%0t] READ   Addr=0x%0h Data=0x%0h",
                         $time, bus.addr, bus.r_data);
        end
    end

    // Stimulus + Checks
    initial begin
        rst = 1;

        repeat(3) @(posedge clk);
        rst = 0;

        // Wait for write transaction--
        wait(bus.valid && bus.ready && bus.w_en);

        @(posedge clk);

        if (u_slave.mem[4'hA] == 8'hCC)
            $display("PASS: WRITE successful");
        else
            $display("FAIL: WRITE failed");

        // Wait for read transaction
        wait(bus.valid && bus.ready && !bus.w_en);

        @(posedge clk);

        if (bus.r_data == 8'hCC)
            $display("PASS: READ returned correct data");
        else
            $display("FAIL: READ returned incorrect data");

        // Check ready
        if (bus.ready)
            $display("PASS: READY asserted");
        else
            $display("FAIL: READY deasserted");

        // Let simulation run a few cycles
        repeat(5) @(posedge clk);

        $display("TEST COMPLETED");

        $finish;
    end

    initial begin
        $dumpfile("day16.vcd");
        $dumpvars(0, tb_interface);
    end

endmodule