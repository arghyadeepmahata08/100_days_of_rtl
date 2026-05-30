# SystemVerilog Ready-Valid Bus Protocol Verification ECE Project

This repository contains a cycle-accurate implementation and testbench verification of a custom **Master-Slave Bus Protocol** using SystemVerilog interfaces, modports, and an FSM-driven architecture.

---

## 📁 File Architecture

* [cite_start]**`simple_bus.sv`**: Defines the `simple_bus` interface signals including `valid`, `w_en`, `addr`, `w_data`, `r_data`, and `ready`[cite: 1, 2]. [cite_start]It encapsulates directional communication access rules using `master`, `slave`, and `monitor` modports[cite: 2, 3, 4].
* [cite_start]**`module_master.sv`**: Implements the bus master using a 3-bit enumerated state machine consisting of `IDLE`, `WRITE_REQ`, `WRITE_WAIT`, `READ_REQ`, `READ_WAIT`, and `DONE` states[cite: 5, 6]. [cite_start]The master coordinates single-cycle data transfers by tracking the slave's `ready` signal status[cite: 17, 22].
* [cite_start]**`module_slave.sv`**: Implements an asynchronous-read storage unit containing a memory array `mem` composed of 16 entries of 8-bit wide logic[cite: 25]. [cite_start]It uses a continuous combinational assignment for memory reads [cite: 25] [cite_start]alongside a registered `ready` handshake routine[cite: 26, 28].
* **`module_top.sv`**: Acts as the top-level structural wrapper that instantiates and connects the `master` module and `slave` module via the `simple_bus` instance[cite: 30, 31].
* [cite_start]**`tb_interface.sv`**: A comprehensive verification environment that generates a 10ns clock period [cite: 32][cite_start], drives synchronous reset signals [cite: 36, 37][cite_start], monitors bus activity [cite: 34][cite_start], and performs automated data integrity validation checks [cite: 38-45].

---

## ⚙️ Protocol Handshake & FSM Control Flow

The custom bus utilizes a **Ready-Valid handshake mechanism** to throttle and manage data transmissions safely:
1. [cite_start]A transaction successfully completes **only** when both `bus.valid` and `bus.ready` evaluate to `1` on the same rising edge of `bus.clk`[cite: 29, 34].
2. [cite_start]The control path is driven entirely by the Master FSM sequence[cite: 7]: