
import bus_pkg::*;

module struct_builder (
    input  logic [3:0]  prot,
    input  logic        w_en,
    input  logic [2:0]  size,
    input  logic [7:0]  addr,
    input  logic [7:0]  w_data,
    input  logic [7:0]  strb,
    output logic [31:0] raw_out,    
    output apb_cmd_t    struct_out  
);
    apb_cmd_t cmd;

    always_comb begin
        cmd.prot  = prot;
        cmd.w_en    = w_en;
        cmd.size  = size;
        cmd.addr  = addr;
        cmd.w_data = w_data;
        cmd.strb  = strb;
    end

    assign raw_out    = cmd;        // implicit cast: struct → logic[31:0]
    assign struct_out = cmd;

endmodule : struct_builder