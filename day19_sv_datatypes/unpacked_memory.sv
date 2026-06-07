
module unpacked_memory #(
    parameter int DEPTH = 16,
    parameter int WIDTH = 8
)(
    input  logic                      clk,
    input  logic                      we,
    input  logic [$clog2(DEPTH)-1:0]  addr,
    input  logic [WIDTH-1:0]          wdata,
    output logic [WIDTH-1:0]          rdata   // async read
);

    logic [WIDTH-1:0] mem [0:DEPTH-1];   // unpacked dimension DEPTH * WIDTH

    // Synchronous write
    always_ff @(posedge clk) begin
        if (we) mem[addr] <= wdata;
    end

    // Asynchronous read — combinational
    assign rdata = mem[addr];

endmodule