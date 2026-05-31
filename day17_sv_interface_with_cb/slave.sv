
module slave (clocked_bus.slave bus);

logic [7:0] mem [0:15];

integer i;
always_ff @(posedge bus.clk) begin
   if(bus.rst) begin
    bus.r_data <= 0;
    bus.ready <= 0;
    for (i=0; i<16; i++) mem[i] <= 0;
   end 
   else begin
    bus.ready <= 1;
    if (bus.valid && bus.ready ) begin
        if (bus.w_en) begin
            mem [bus.addr] <= bus.w_data;
            bus.r_data <= 0;
        end
        else bus.r_data <= mem [bus.addr];
    end
   end
end

endmodule