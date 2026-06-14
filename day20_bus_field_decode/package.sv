
package bus_pkg;

typedef struct packed {
    logic [3:0] prot;
    logic w_en;
    logic [2:0] size;
    logic [7:0] addr;
    logic [7:0] w_data;
    logic [7:0] strb;
}apb_cmd_t;

typedef struct packed {
    logic reserved;
    logic [6:0] div;
    logic [7:0] prescale;
    logic irq_en;
    logic dma_en;
    logic [1:0] mode;
    logic [3:0] priority_level;
    logic [7:0] thresold;
}ctrl_reg_t;

typedef enum logic [1:0] {
    mode_idle = 2'b00,
    mode_rx = 2'b01,
    mode_tx = 2'b10,
    mode_loopback = 2'b11
} mode_t;

typedef struct packed {
    apb_cmd_t cmd;
    ctrl_reg_t ctrl;
    logic [31:0] status;
} config_bundle_t;

endpackage