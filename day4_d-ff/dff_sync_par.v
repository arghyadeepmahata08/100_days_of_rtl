// N bit parameterized data width 

module d_sync_par #(
parameter N = 8,
parameter reset_val = 0)(
input clk, input rst,input en, input [N-1:0] d,output reg [N-1:0]q);

always @(posedge clk) begin
if(rst)
q<={8'(reset_val)};
else if(en)
q<=d;
end

endmodule
