
module even_ratio #(
parameter N=4,
parameter cnt_w =2)(
input clk,rst,
output reg clk_out);
// counter will go from o to N/2-1
reg [cnt_w-1:0] i;
	always @(posedge clk) begin
		if (rst) begin
		  i <=0;
		  clk_out <= 0;
		end
		else begin
		   if (i==(N/2)-1) begin
		       clk_out <= ~clk_out;
		       i <=0; 
		   end
		   else i <=i+1;	
		end	
	end
endmodule