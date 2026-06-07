
// PART 3 — Driver class
// Holds virtual interface handle, drives transactions onto DUT

class pbus_driver #(
    parameter int addr_w = 8,
    parameter int data_w = 32,
    parameter int strb_w = data_w / 8
);

    // Virtual interface handle — the bridge to hardware
    virtual pbus_if #(addr_w, data_w) vif;  

    // Constructor receives the virtual interface handle
    function new(virtual pbus_if #(addr_w, data_w) i);
        vif = i;        
    endfunction

    // Drive idle — deassert all master signals
    task drive_idle();
        @(vif.driver_cb);
        vif.driver_cb.valid <= 1'b0;    
        vif.driver_cb.w_en    <= 1'b0;
        vif.driver_cb.addr  <= '0;
        vif.driver_cb.w_data <= '0;
        vif.driver_cb.strb  <= '0;
    endtask

    // Drive one transaction (write or read)

typedef pbus_txn #(addr_w, data_w, strb_w) txn_t;
task drive(input txn_t txn);

        @(vif.driver_cb);

        // Assert request
        vif.driver_cb.valid <= 1'b1;           
        vif.driver_cb.addr  <= txn.addr;          
        vif.driver_cb.w_en    <= txn.is_write;           
        vif.driver_cb.w_data <= txn.is_write ? txn.data : '0; 
        vif.driver_cb.strb  <= txn.is_write ? txn.strb : '0; 

        // Wait for ready
        do begin
            @(vif.driver_cb);
        end while (!vif.driver_cb.ready);

        // Capture read data
        if (!txn.is_write)
            txn.data = vif.driver_cb.r_data;    

        // Deassert
        @(vif.driver_cb);
        vif.driver_cb.valid <= 1'b0;
        vif.driver_cb.w_en    <= 1'b0;

        txn.display("[DRV] sent:");
    endtask

endclass 
