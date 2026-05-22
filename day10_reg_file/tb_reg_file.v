
module tb_reg_file ;
parameter data_w = 32,addr_w = 3,depth = 8;
reg clk,rst;
reg [addr_w-1:0] addr;
reg [data_w-1:0] wr_data;
reg wr_en,rd_en;
wire [data_w-1:0] rd_data;

// DUT INSTANTIATION
reg_file #(
    .data_w(32),.addr_w(3),.depth(8)
) dut (clk,rst,addr,wr_data,wr_en,rd_en,rd_data);

always #5 clk = ~clk;

//
// Task : Write
//
task write_reg;
    input [addr_w-1:0] w_addr;
    input [data_w-1:0] data;

    begin
        @(posedge clk);
        addr    = w_addr;
        wr_data = data;
        wr_en   = 1;

        @(posedge clk);
        wr_en   = 0;
    end
endtask

//
// Task : Read
//
task read_reg;
    input [addr_w-1:0] r_addr;

    begin
        addr  = r_addr;
        rd_en = 1;

        #1;
        $display("TIME=%0t | READ addr=%0d data=%h",
                 $time, r_addr, rd_data);

        @(posedge clk);
        rd_en = 0;
    end
endtask

//
// Initial Block
//
initial begin

    //
    // Initialize
    //
    clk     = 0;
    rst     = 1;

    addr    = 0;
    wr_data = 0;

    wr_en   = 0;
    rd_en   = 0;

    $display("\n========== REG FILE TEST START ==========\n");

    //
    // Corner Case 1:
    // Read before reset release
    //
    $display("\n[TEST 1] Read before reset release");

    addr  = 3'b001;
    rd_en = 1;

    #2;
    $display("TIME=%0t | rd_data = %h", $time, rd_data);

    rd_en = 0;

    //
    // Apply reset
    //
    #10;
    rst = 0;

    //
    // Corner Case 2:
    // Verify all registers reset to zero
    //
    $display("\n[TEST 2] Verify reset values");

    read_reg(3'b000);
    read_reg(3'b001);
    read_reg(3'b010);
    read_reg(3'b011);

    //
    // Corner Case 3:
    // Normal write and read
    //
    $display("\n[TEST 3] Normal write/read");

    write_reg(3'b001, 32'hAAAA_BBBB);
    read_reg(3'b001);

    //
    // Corner Case 4:
    // Back-to-back writes
    //
    $display("\n[TEST 4] Back-to-back writes");

    write_reg(3'b010, 32'h1111_1111);
    write_reg(3'b011, 32'h2222_2222);
    write_reg(3'b100, 32'h3333_3333);

    read_reg(3'b010);
    read_reg(3'b011);
    read_reg(3'b100);

    //
    // Corner Case 5:
    // Write to register 0
    //
    $display("\n[TEST 5] Write to register 0");

    write_reg(3'b000, 32'hFFFF_FFFF);

    read_reg(3'b000);

    //
    // Corner Case 6:
    // Simultaneous read and write same address
    //
    $display("\n[TEST 6] Simultaneous read/write same address");

    @(posedge clk);

    addr    = 3'b101;
    wr_data = 32'hDEAD_BEEF;

    wr_en   = 1;
    rd_en   = 1;

    #1;
    $display("TIME=%0t | SAME ADDR READ=%h",
             $time, rd_data);

    @(posedge clk);

    wr_en = 0;
    rd_en = 0;

    //
    // Read again after write
    //
    read_reg(3'b101);

    //
    // Corner Case 7:
    // Simultaneous read and write different address
    //
    $display("\n[TEST 7] Simultaneous read/write different address");

    @(posedge clk);

    addr    = 3'b110;
    wr_data = 32'hCAFE_BABE;

    wr_en   = 1;
    rd_en   = 1;

    #1;
    $display("TIME=%0t | READ=%h",
             $time, rd_data);

    @(posedge clk);

    wr_en = 0;
    rd_en = 0;

    read_reg(3'b110);

    //
    // Corner Case 8:
    // Reset during write
    //
    $display("\n[TEST 8] Reset during write");

    @(posedge clk);

    addr    = 3'b111;
    wr_data = 32'h9999_9999;

    wr_en = 1;
    rst   = 1;

    @(posedge clk);

    wr_en = 0;
    rst   = 0;

    read_reg(3'b111);

    //
    // Corner Case 9:
    // Read enable OFF
    //
    $display("\n[TEST 9] rd_en = 0");

    addr  = 3'b001;
    rd_en = 0;

    #2;

    $display("TIME=%0t | rd_en=0 | rd_data=%h",
             $time, rd_data);

    //
    // Corner Case 10:
    // Consecutive reads
    //
    $display("\n[TEST 10] Consecutive reads");

    read_reg(3'b001);
    read_reg(3'b010);
    read_reg(3'b011);
    read_reg(3'b100);

    //
    // Finish
    //
    #20;

    $display("\n========== TEST COMPLETE ==========\n");
    $finish;

end
endmodule

