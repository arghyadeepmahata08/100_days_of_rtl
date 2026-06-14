
import bus_pkg::*;
module reg_file #(
    parameter int depth = 4
)(
    input w_en,
    input [$clog2(depth)-1:0] w_addr,
    input [31:0] w_data,
    input [$clog2(depth)-1:0] r_addr,
    input clk,rst,

    output ctrl_reg_t r_data,
    output logic [7:0] entry0_thresold,
    output logic entry0_irq_en,
    output mode_t entry0_mode 
);

integer i;

ctrl_reg_t regs [0:depth-1];
always_ff @(posedge clk) begin
    if (rst) begin
        for (i=0;i<depth;i=i+1) begin
            regs[i] <= '0;
        end
end
else if (w_en) begin
    regs[w_addr] <= ctrl_reg_t'(w_data);
    regs[w_addr].reserved <= 0;
end
end

assign r_data = regs[r_addr];

assign entry0_thresold = regs[0].thresold;
assign entry0_irq_en = regs[0].irq_en;
assign entry0.mode = mode_t'(regs[0].mode);
endmodule
