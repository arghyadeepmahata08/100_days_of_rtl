
interface clocked_bus (input logic clk, input logic rst);
logic valid, w_en;
logic [3:0] addr;
logic [7:0] w_data;
logic [7:0] r_data;
logic ready;

    timeunit 1ns;
    timeprecision 1ps;
    
clocking driver_cb @(posedge clk);
default input #1step output #1ns;
input r_data,ready;
output valid,w_en,addr,w_data;
endclocking

clocking monitor_cb @(posedge clk);
default input #1step;
input valid,w_en,addr,w_data,r_data,ready;
endclocking

modport slave (input clk, rst, valid, addr, w_en, w_data, output r_data, ready);

modport tb_monitor (clocking monitor_cb,input clk,rst);

modport tb_driver (clocking driver_cb, input rst,clk);

endinterface