# Day-16 (System Verilog interface implementation using master slave configuration)

This repository contains a cycle-accurate implementation and testbench verification of a custom **Master-Slave Bus Protocol** using SystemVerilog interfaces, modports, and an FSM-driven architecture.

---

## 📁 Component & Interface Descriptions

**`simple_bus` (Interface)**: Encapsulates all shared bus signals including `valid`, `w_en`, `addr`, `w_data`, `r_data`, and `ready` [cite: 1-2].
* It partitions directional hardware access permissions via `master`, `slave`, and `monitor` modports [cite: 2-4].
* **`master` (Module)**: Implements an FSM-driven bus master utilizing an enumerated 3-bit state machine (`IDLE`, `WRITE_REQ`, `WRITE_WAIT`, `READ_REQ`, `READ_WAIT`, `DONE`) to coordinate sequential, single-cycle write and read transactions [cite: 5, 11-24].
  **`slave` (Module)**: Acts as a synchronous-write, asynchronous-read peripheral featuring an internal storage array (`mem`) composed of 16 entries of 8-bit wide logic[cite: 25]. [cite_start]It utilizes a registered handshake protocol to control transaction ingestion [cite: 26-29].
  **`top` (Module)**: Serves as the top-level structural hardware wrapper that instantiates the `simple_bus` instance and structurally binds the `master` and `slave` DUTs together [cite: 30-31].
  **`tb_interface` (Testbench)**: A complete verification test environment that generates a 10ns clock period, controls synchronous reset lines, hooks into bus signals, and executes automated self-checking routines to validate data transfers [cite: 32-45].

---

## ⚙️ Protocol Handshake & FSM Control Flow

The custom bus utilizes a **Ready-Valid handshake mechanism** to throttle and manage data transmissions safely:
1. A transaction successfully completes **only** when both `bus.valid` and `bus.ready` evaluate to `1` on the same rising edge of `bus.clk`.
2. The control path is driven entirely by the Master FSM sequence:
