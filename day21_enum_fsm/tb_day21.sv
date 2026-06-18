
`timescale 1ns/1ps

module tb_day21;

    logic clk;
    logic rst;
    logic req;
    logic ack;
    logic err;

    logic done;
    logic error_out;
    logic busy;

    bus_ctrl_fsm dut (
        .clk(clk),
        .rst(rst),
        .req(req),
        .ack(ack),
        .err(err),
        .done(done),
        .error_out(error_out),
        .busy(busy)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Monitor
    initial begin
        $monitor(
            "T=%0t rst=%0b req=%0b ack=%0b err=%0b | state=%s | done=%0b error=%0b busy=%0b",$time,rst,req,ack,err,dut.state.name(),done,error_out,busy);
    end

    initial begin

        rst = 1;
        req = 0;
        ack = 0;
        err = 0;

        // Reset
        repeat(2) @(posedge clk);
        rst = 0;

        //Normal transaction
        $display("\n NORMAL FLOW");

        @(posedge clk);
        req = 1;

        @(posedge clk);
        req = 0;

        @(posedge clk);
        ack = 1;

        @(posedge clk);
        ack = 0;

        // s_active -> s_done
        @(posedge clk);

        // s_done -> s_idle
        @(posedge clk);

        // Error transaction
        $display("\n ERROR FLOW ");

        @(posedge clk);
        req = 1;

        @(posedge clk);
        req = 0;

        @(posedge clk);
        ack = 1;

        @(posedge clk);
        ack = 0;
        err = 1;
        // Force error in s_active state
         @(posedge clk);


        @(posedge clk);
        err = 0;

        // s_error -> s_idle
        @(posedge clk);

        $display("\nAll tests completed.");
        #20;
        $finish;
    end

endmodule