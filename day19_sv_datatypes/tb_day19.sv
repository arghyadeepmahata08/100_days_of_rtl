
`timescale 1ns/1ps

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
module tb_struct_enum;

    logic clk;
    logic rst;
    logic valid_in;
    logic valid_out;

    packet_t pkt_in;
    packet_t pkt_out;

    // DUT
    struct_enum dut (
        .clk(clk),
        .rst(rst),
        .valid_in(valid_in),
        .pkt_in(pkt_in),
        .valid_out(valid_out),
        .pkt_out(pkt_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Monitor
    initial begin
        $monitor(
            "[%0t] state=%0d valid_in=%0b valid_out=%0b cmd=%0d src=%0d dst=%0d data=%0d out_data=%0d",
            $time,
            dut.state,
            valid_in,
            valid_out,
            pkt_in.cmd,
            pkt_in.src_id,
            pkt_in.dst_id,
            pkt_in.data,
            pkt_out.data
        );
    end

    initial begin

        // Reset
        rst      = 1;
        valid_in = 0;
        pkt_in   = '0;

        repeat(2) @(posedge clk);

        rst = 0;

        // CMD_ADD
        @(posedge clk);

        valid_in      = 1;
        pkt_in.cmd    = cmd_add;
        pkt_in.src_id = 4'd3;
        pkt_in.dst_id = 4'd2;
        pkt_in.data   = 16'd100;

        @(posedge clk);
        valid_in = 0;

        repeat(4) @(posedge clk);

        // CMD_SUB
        @(posedge clk);

        valid_in      = 1;
        pkt_in.cmd    = cmd_sub;
        pkt_in.src_id = 4'd2;
        pkt_in.dst_id = 4'd1;
        pkt_in.data   = 16'd50;

        @(posedge clk);
        valid_in = 0;

        repeat(4) @(posedge clk);

        // CMD_INV
        @(posedge clk);

        valid_in      = 1;
        pkt_in.cmd    = cmd_inv;
        pkt_in.src_id = 4'd0;
        pkt_in.dst_id = 4'd0;
        pkt_in.data   = 16'h00FF;

        @(posedge clk);
        valid_in = 0;

        repeat(4) @(posedge clk);

        // CMD_PASS
        @(posedge clk);

        valid_in      = 1;
        pkt_in.cmd    = cmd_pass;
        pkt_in.src_id = 4'd7;
        pkt_in.dst_id = 4'd8;
        pkt_in.data   = 16'd1234;

        @(posedge clk);
        valid_in = 0;

        repeat(4) @(posedge clk);

        $finish;
    end

endmodule

`timescale 1ns/1ps

module tb_unpacked_memory;

    parameter DEPTH = 16;
    parameter WIDTH = 8;

    logic clk;
    logic we;
    logic [$clog2(DEPTH)-1:0] addr;
    logic [WIDTH-1:0] wdata;
    logic [WIDTH-1:0] rdata;

    // DUT
    unpacked_memory #(
        .DEPTH(DEPTH),
        .WIDTH(WIDTH)
    ) dut (
        .clk   (clk),
        .we    (we),
        .addr  (addr),
        .wdata (wdata),
        .rdata (rdata)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Monitor
    initial begin
        $monitor("[%0t] we=%0b addr=%0d wdata=%0h rdata=%0h",
                  $time, we, addr, wdata, rdata);
    end

    initial begin

        // Initialization
        we    = 0;
        addr  = 0;
        wdata = 0;

        // Write 0xAA to address 3
        @(posedge clk);
        we    = 1;
        addr  = 4'd3;
        wdata = 8'hAA;

        @(posedge clk);
        we = 0;

        // Read address 3
        #1;
        addr = 4'd3;

        #1;
        if (rdata == 8'hAA)
            $display("PASS : Addr 3 = %h", rdata);
        else
            $display("FAIL : Addr 3 Expected AA Got %h", rdata);

        // Write 0x55 to address 7
        @(posedge clk);
        we    = 1;
        addr  = 4'd7;
        wdata = 8'h55;

        @(posedge clk);
        we = 0;

        // Read address 7
        #1;
        addr = 4'd7;

        #1;
        if (rdata == 8'h55)
            $display("PASS : Addr 7 = %h", rdata);
        else
            $display("FAIL : Addr 7 Expected 55 Got %h", rdata);

        // Demonstrate async read
        #1 addr = 4'd3;
        #1 $display("Async Read Addr 3 = %h", rdata);

        #1 addr = 4'd7;
        #1 $display("Async Read Addr 7 = %h", rdata);

        // Write several locations
        for (int i = 0; i < 8; i++) begin
            @(posedge clk);
            we    = 1;
            addr  = i;
            wdata = i + 8'h10;
        end

        @(posedge clk);
        we = 0;

        // Read back all locations
        for (int i = 0; i < 8; i++) begin
            addr = i;
            #1;
            $display("MEM[%0d] = %h", i, rdata);
        end

        #20;
        $finish;

    end

endmodule

`timescale 1ns/1ps

module tb_packed_array_opr;

    parameter N = 4;
    parameter W = 8;

    logic clk;
    logic rst;

    logic [N-1:0][W-1:0] packed_in;
    logic [$clog2(N)-1:0] sel;
    logic [$clog2(W)-1:0] shft_amt;
    logic signed_mode;

    logic [N-1:0][W-1:0] packed_out;
    logic [W-1:0] elem_out;
    logic [W-1:0] lsr_out;
    logic [W-1:0] asr_out;
    logic [W-1:0] inv_out;
    logic valid_out;

    // DUT
    packed_array_opr #(
        .N(N),
        .W(W)
    ) dut (
        .clk(clk),
        .rst(rst),
        .packed_in(packed_in),
        .sel(sel),
        .shft_amt(shft_amt),
        .signed_mode(signed_mode),
        .packed_out(packed_out),
        .elem_out(elem_out),
        .lsr_out(lsr_out),
        .asr_out(asr_out),
        .inv_out(inv_out),
        .valid_out(valid_out)
    );

    // Clock generation

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Monitor
    initial begin
        $monitor(
        "[%0t] sel=%0d elem=%h lsr=%h asr=%h inv=%h valid=%0b",
        $time,
        sel,
        elem_out,
        lsr_out,
        asr_out,
        inv_out,
        valid_out
        );
    end

    // Stimulus
    initial begin

        rst         = 1;
        sel         = 0;
        shft_amt    = 0;
        signed_mode = 0;
        packed_in   = '0;

        // Reset
        repeat(2) @(posedge clk);
        rst = 0;

        // Initialize packed array
        packed_in[0] = 8'h12;
        packed_in[1] = 8'h34;
        packed_in[2] = 8'hF0;   // negative if signed
        packed_in[3] = 8'hAA;

        // Test 1: Select element 1
        sel = 1;
        shft_amt = 2;
        signed_mode = 0;

        #2;

        $display("\n--> Test 1 <--");
        $display("Element   = %h", elem_out);
        $display("LSR       = %h", lsr_out);
        $display("ASR       = %h", asr_out);
        $display("Invert    = %h", inv_out);

        // Test 2: Signed arithmetic shift
        sel = 2;       // 8'hF0
        shft_amt = 2;
        signed_mode = 1;

        #2;

        $display("\n--> Test 2 <--");
        $display("Element   = %h", elem_out);
        $display("LSR       = %h", lsr_out);
        $display("ASR       = %h", asr_out);
        $display("Invert    = %h", inv_out);

        // Test 3: Unsigned shift
        signed_mode = 0;

        #2;

        $display("\n--> Test 3 <--");
        $display("Element   = %h", elem_out);
        $display("LSR       = %h", lsr_out);
        $display("ASR       = %h", asr_out);
        $display("Invert    = %h", inv_out);

        // Wait for registered output
        @(posedge clk);

        $display("\n--> Packed Output <--");

        for(int i=0;i<N;i++) begin
            $display("packed_out[%0d] = %h", i, packed_out[i]);
        end

        $display("valid_out = %0b", valid_out);

        // Change input array
        packed_in[0] = 8'h11;
        packed_in[1] = 8'h22;
        packed_in[2] = 8'h33;
        packed_in[3] = 8'h44;

        @(posedge clk);

        $display("\n--> Updated Packed Output <--");

        for(int i=0;i<N;i++) begin
            $display("packed_out[%0d] = %h", i, packed_out[i]);
        end

        #20;
        $finish;

    end

endmodule