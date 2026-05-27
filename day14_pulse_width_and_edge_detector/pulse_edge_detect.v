
module pulse_edge_detect (
    input clk,
    input rst,
    input sig,
    output rise,
    output fall,
    output both
);
reg sig_d;
always @(posedge clk) begin
    if (rst) begin
        sig_d <= 1'b0;
    end
    else begin
        sig_d <= sig;
    end
end 
assign rise = sig & ~sig_d; // rising edge
assign fall = ~sig & sig_d; // falling edge             
assign both = sig ^ sig_d; // both edges
endmodule