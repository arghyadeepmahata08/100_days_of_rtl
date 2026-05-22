
module reg_file #(
parameter data_w = 32,
parameter addr_w = 3,
parameter depth = 8)(
input clk,rst,
input [addr_w-1:0] addr,
input [data_w-1:0] wr_data,
input wr_en,rd_en,
output reg [data_w-1:0] rd_data);

reg [data_w-1:0] mem [0:depth-1]; // defining the reg file

// asynchronus read logic

always @(*) begin
if (rd_en)
rd_data = mem[addr]; 
else
rd_data = 0;  // b'coz of possible latch interference
end

integer i;

// synchronus write logic

always @(posedge clk) begin
if (rst) begin
for (i = 0 ;i<depth;i=i+1) begin
mem [i] <= 0; 
end
end
else begin
if (wr_en && addr !=0)
mem [addr] <= wr_data;
end
end
endmodule