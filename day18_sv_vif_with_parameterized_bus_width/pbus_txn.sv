
// PART 2 — Defining the transaction class
// Data object passed between driver, monitor, scoreboard

class pbus_txn #(
    parameter int addr_w = 8,
    parameter int data_w = 32,
    parameter int strb_w = data_w / 8
);

    // Transaction fields
    logic [addr_w-1:0] addr;
    logic [data_w-1:0] data;
    logic              is_write;
    logic [strb_w-1:0] strb;

    // Constructor

    function new(                               // initialize with default values
        input logic [addr_w-1:0] a    = '0,
        input logic [data_w-1:0] d    = '0,
        input logic              w_en   = 1'b0,
        input logic [strb_w-1:0] s    = '1      // all byte enables by default
    );
        addr     = a;
        data     = d;
        is_write = w_en;
        strb     = s;
    endfunction

    // Display — for debug prints

    function void display(input string prefix = "");
        $display("%s %s addr=0x%0h data=0x%0h strb=0b%0b",
                  prefix,
                  is_write ? "WRITE" : "READ",
                  addr, data, strb);
    endfunction

    // Compare — for scoreboard checking

    function bit compare(input pbus_txn #(addr_w, data_w, strb_w) other);
        return (addr     === other.addr    ) &&
               (data     === other.data    ) &&
               (is_write === other.is_write) &&
               (strb     === other.strb    );
    endfunction

endclass 
