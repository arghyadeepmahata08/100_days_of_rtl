
import bus_pkg::*;

module bus_decoder (
    input clk,rst,
    input [31:0] raw_bus,
    input bus_valid,
    
    output logic [3:0] prot_out,
    output logic w_en_out,
    output logic [2:0] size_out,
    output logic [7:0] addr_out,
    output logic [7:0] w_data_out,
    output logic [7:0] strb_out,
    output logic [6:0] div_out,
    output logic priv_write,
    output logic full_strb,
    output logic cmd_valid_out
);

apb_cmd_t cmd;

assign cmd = raw_bus;

always_comb begin
    priv_write = (cmd.prot[0] && cmd.w_en);
    full_strb = (&cmd.strb);
end

always_ff @(posedge clk) begin
    if(rst) begin
        prot_out <= 0;
        w_en_out <= 0;
        size_out <= 0;
        addr_out <= 0;
        w_data_out <= 0;
        strb_out <= 0;
        cmd_valid_out <= 0;
    end
    else begin
        if (bus_valid) begin
            prot_out <= cmd.prot;
            w_en_out <= cmd.w_en;
            size_out <= cmd.size;
            addr_out <= cmd.addr;
            w_data_out <= cmd.w_data;
            strb_out <= cmd.strb;
            cmd_valid_out <= 1;
        end
        else cmd_valid_out <= 0;
    end

end
endmodule