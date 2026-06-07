
// PART 4 — Monitor class
// Holds virtual interface handle, samples DUT signals

class pbus_monitor #(
    parameter int addr_w = 8,
    parameter int data_w = 32,
    parameter int strb_w = data_w / 8
);

    virtual pbus_if #(addr_w, data_w) vif;

    // Constructor receives the virtual interface handle
    function new(virtual pbus_if #(addr_w, data_w) i);
        vif = i;
    endfunction

    // Wait for and capture one transaction
    // Blocks until valid & ready both asserted

    task capture(output pbus_txn#(addr_w, data_w, strb_w) txn);
        pbus_txn #(addr_w, data_w, strb_w) t = new();

        // Wait for active transaction
        do begin
            @(vif.monitor_cb);
        end while (!(vif.monitor_cb.valid && vif.monitor_cb.ready));

        // Sample all signals — race-free due to #1step skew
        t.addr     = vif.monitor_cb.addr;  
        t.is_write = vif.monitor_cb.we;   
        t.strb     = vif.monitor_cb.strb;   
        t.data     = t.is_write ?
                     vif.monitor_cb.w_data :
                     vif.monitor_cb.r_data;  

        t.display("[MON] captured:");
        txn = t;
    endtask

endclass : pbus_monitor
