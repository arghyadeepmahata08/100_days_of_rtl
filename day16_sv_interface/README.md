# day-16>> SystemVerilog Ready-Valid Bus Protocol Verification

A cycle-accurate implementation and testbench verification of a custom **Master-Slave Bus Protocol** built with SystemVerilog interfaces, modports, and an FSM-driven architecture. Simulated and verified using **QuestaSim/ModelSim**.

---

## 📁 Repository Structure

```
.
├── module_master.sv   # Bus master FSM + simple_bus interface definition
├── module_slave.sv    # Bus slave with 16×8-bit memory
├── module_top.sv      # Top-level structural wrapper
├── tb_interface.sv    # Self-checking testbench with VCD dump
└── output.png         # Simulation console output screenshot
```

---

## 🔌 Interface — `simple_bus`

Defined inside `module_master.sv`, the `simple_bus` interface encapsulates all bus signals and enforces directional access through three **modports**:

| Signal    | Width  | Direction (Master → Slave) | Description                    |
|-----------|--------|----------------------------|--------------------------------|
| `clk`     | 1-bit  | Input to both              | System clock                   |
| `rst`     | 1-bit  | Input to both              | Synchronous active-high reset  |
| `valid`   | 1-bit  | Master drives              | Transaction request strobe     |
| `w_en`    | 1-bit  | Master drives              | Write enable (1=write, 0=read) |
| `addr`    | 4-bit  | Master drives              | Target memory address          |
| `w_data`  | 8-bit  | Master drives              | Write data                     |
| `r_data`  | 8-bit  | Slave drives               | Read data (combinational)      |
| `ready`   | 1-bit  | Slave drives               | Slave acceptance handshake     |

| Modport   | Outputs                          | Inputs                        |
|-----------|----------------------------------|-------------------------------|
| `master`  | `valid`, `addr`, `w_en`, `w_data`| `clk`, `rst`, `r_data`, `ready`|
| `slave`   | `r_data`, `ready`                | `clk`, `rst`, `valid`, `addr`, `w_en`, `w_data` |
| `monitor` | —                                | All signals (read-only)       |

---

## ⚙️ Protocol — Ready-Valid Handshake

A transaction completes **only** when both `valid` and `ready` are asserted simultaneously on the same rising edge of `clk`. The master holds its request signals stable until the slave asserts `ready`.

```
          ___     ___     ___     ___     ___
clk   ___|   |___|   |___|   |___|   |___|   |___
           ______________________
valid _____|                    |_______________
           ______________________
ready _____|                    |_______________
                                ^
                         Transaction captured
```

---

## 🧠 Master FSM — `module_master.sv`

The master is a 6-state Mealy FSM clocked on `posedge clk`:

```
IDLE ──► WRITE_REQ ──► WRITE_WAIT ──► READ_REQ ──► READ_WAIT ──► DONE ──► IDLE
                              │ (ready asserted)          │ (ready asserted)
```

| State        | Action                                                    |
|--------------|-----------------------------------------------------------|
| `IDLE`       | Load `tx_addr = 0xA`, `tx_data = 0xCC`; deassert bus     |
| `WRITE_REQ`  | Assert `valid`, `w_en`, drive `addr` and `w_data`         |
| `WRITE_WAIT` | Hold write request; deassert `valid` when `ready` seen    |
| `READ_REQ`   | Assert `valid`, deassert `w_en`, drive `addr`             |
| `READ_WAIT`  | Hold read request; latch `r_data` when `ready` seen       |
| `DONE`       | `$display` read result; return to `IDLE`                  |

---

## 💾 Slave — `module_slave.sv`

- **Memory**: `logic [7:0] mem [0:15]` — 16 entries of 8-bit width (byte-addressable).
- **Read**: Combinational (`assign bus.r_data = mem[bus.addr]`) — zero-latency reads.
- **Write**: Registered — captured on `posedge clk` when `valid && ready && w_en`.
- **Ready**: Deasserted during reset; permanently asserted thereafter (single-cycle slave).

---

## 🏗️ Top Level — `module_top.sv`

Structural wrapper instantiating the master and slave, both connected through a shared `simple_bus` instance. Modports enforce correct signal directionality at elaboration time.

```systemverilog
module top(input clk, rst);
    simple_bus bus(.clk(clk), .rst(rst));
    master dut_m(.bus(bus));
    slave  dut_s(.bus(bus));
endmodule
```

---

## 🧪 Testbench — `tb_interface.sv`

| Feature            | Detail                                              |
|--------------------|-----------------------------------------------------|
| Clock period       | 10 ns (`always #5 clk = ~clk`)                      |
| Reset duration     | 3 clock cycles synchronous reset                    |
| Monitor            | Prints every valid+ready transaction to console     |
| Write check        | Reads `u_slave.mem[0xA]` directly and compares      |
| Read check         | Compares `bus.r_data` against expected `0xCC`       |
| Ready check        | Verifies `bus.ready` is asserted post-transaction   |
| VCD dump           | `day16.vcd` — compatible with GTKWave               |

### Simulation Output

```
# [MON][55000]  WRITE  Addr=0xa Data=0xcc
# PASS: WRITE successful
# [MON][75000]  READ   Addr=0xa Data=0xcc
# PASS: READ returned correct data
# PASS: READY asserted
# Read Data = 0xcc from Address = 0xa
# [MON][115000] WRITE  Addr=0xa Data=0xcc
# TEST COMPLETED
# ** Note: $finish  Time: 125 ns
```

All three self-checks pass within **125 ns** of simulation time.

---

## 🚀 How to Run

### QuestaSim / ModelSim
```tcl
vlog module_master.sv module_slave.sv module_top.sv tb_interface.sv
vsim tb_interface
run -all
```

### Icarus Verilog + GTKWave
```bash
iverilog -g2012 -o sim module_master.sv module_slave.sv module_top.sv tb_interface.sv
vvp sim
gtkwave day16.vcd
```

---

## 📚 Concepts Demonstrated

- SystemVerilog **interfaces** and **modports** for type-safe port connections
- **FSM-based** bus master with enumerated state encoding
- **Ready-Valid handshake** protocol for flow control
- **Combinational vs. registered** read/write paths in a memory slave
- Self-checking testbench with **procedural monitor** and **automated assertions**
- **VCD waveform** generation for post-simulation analysis
