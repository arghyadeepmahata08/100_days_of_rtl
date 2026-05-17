module sync_fifo #(
parameter depth=8,
parameter data_w=8,
parameter addr_w=3)(   // addr_w the width of the read and write pointer =log(depth)
input [data_w-1:0] data_in,
input rd_en,
input wr_en,
input clk,rst,
output full,empty,
output reg [data_w-1:0] data_out,
output reg [addr_w:0] count);

reg [data_w-1:0] mem [0:depth-1];  // creating a register file [depth*data_w]
reg [addr_w-1:0] rd_ptr,wr_ptr;   // defining the read and write pointer 

always @(posedge clk) begin
if(rst) begin
data_out <=0;
count <=0;
rd_ptr <=0;
wr_ptr <=0;
end
else begin
	if (wr_en && !full && !(rd_en && !empty)) begin  // write only operation
	    	mem[wr_ptr] <=data_in;
	    	count <= (count+1);
	    	if(wr_ptr == depth-1)
    	    	   wr_ptr <= 0;
	    	else
    	    	   wr_ptr <= wr_ptr + 1; 
	end
 	else if (rd_en && !empty && !(wr_en && !full)) begin // read  only operation
		data_out <= mem[rd_ptr];
		count <= count -1 ;
		if(rd_ptr == depth-1)
   		   rd_ptr <= 0;
		else
   		   rd_ptr <= rd_ptr + 1; 
		end
        else if(rd_en && wr_en && !empty && !full) begin   // simaltaneous read and write operations 

            mem[wr_ptr] <= data_in;
            data_out <= mem[rd_ptr];

            if(wr_ptr == depth-1)
                wr_ptr <= 0;
            else
                wr_ptr <= wr_ptr + 1;

            if(rd_ptr == depth-1)
                rd_ptr <= 0;
            else
                rd_ptr <= rd_ptr + 1;
	end
end
end
assign empty = (count==0); 		// empty condition
assign full = (count == depth );        // full condition

endmodule
