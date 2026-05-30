module slave (simple_bus.slave bus);

logic [7:0] mem [0:15];

assign bus.r_data = mem[bus.addr]; // combinational read for single-cycle slave

integer i;
always_ff @(posedge bus.clk) begin
   if(bus.rst) begin
    bus.ready <= 0;

    for (i=0; i<16; i++)
        mem[i] <= 0;
   end

   else begin
    bus.ready <= 1;

    if (bus.valid && bus.ready && bus.w_en)
        mem[bus.addr] <= bus.w_data;
   end
end

endmodule