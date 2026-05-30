
module top(input clk,rst);

simple_bus bus(.clk(clk),.rst(rst));

master dut_m(.bus(bus)); // automatically connects the master port of the bus to the master port of the module_master
slave dut_s(.bus(bus));  // automatically connects the slave port of the bus to the slave port of the module_slave

endmodule