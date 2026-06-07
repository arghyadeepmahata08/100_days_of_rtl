
`timescale 1ns/1ps

// parameterized bus interface 

interface pbus_if #(
    parameter int addr_w = 8,
    parameter int data_w = 32,
    parameter int strb_w = data_w / 8   // derived — do not override
)(
    input logic clk,
    input logic rst
);
    // Bus signals

    logic              valid;
    logic [addr_w-1:0] addr;
    logic              w_en;
    logic [data_w-1:0] w_data;
    logic [strb_w-1:0] strb;      // byte enables
    logic [data_w-1:0] r_data;
    logic              ready;

    // RTL modports (for synthesizable RTL — no clocking block)

    modport master (
        input  clk, rst,
        output valid, addr, w_en, w_data, strb,
        input  r_data, ready
    );

    modport slave (
        input  clk, rst,
        input  valid, addr, w_en, w_data, strb,
        output r_data, ready
    );

    // Driver clocking block — TB drives outputs after posedge

    clocking driver_cb @(posedge clk);
        default input  #1step;
        default output #1;
        output valid,addr,w_en,w_data, strb;       
        input ready, r_data;        
    endclocking

    // Monitor clocking block — read-only, all inputs

    clocking monitor_cb @(posedge clk);
        default input #1step;
        input valid, addr, w_en, w_data, strb, r_data, ready;
    endclocking

    // Testbench modports — expose clocking blocks to classes

    modport tb_driver (
        clocking driver_cb,      
        input    clk, rst
    );

    modport tb_monitor (
        clocking monitor_cb,      
        input    clk, rst
    );

endinterface