# 🔷 100 Days of RTL Design

> ** A structured, public challenge to master RTL design from synthesizable Verilog fundamentals through SystemVerilog, advanced microarchitecture, industry protocols, and UVM — one focussed module per day.**
## 👤 About This Challenge

I am Arghyadeep Mahata , a RTL design and verification enthusiast currently strengthening my skills in digital design, SystemVerilog, and hardware verification. This repository documents my **100 Days of RTL** challenge — one synthesizable, simulation-verified RTL module pushed every day.

**Why this challenge?**
- Build real RTL muscle memory across every domain that top companies test
- Create a public, verifiable portfolio of working RTL code
- Go from Verilog fundamentals through UVM testbenches — the complete ASIC design stack
- Document insights that help others learning RTL on their own

**Target companies:** Intel · Qualcomm · AMD · Apple Silicon · NVIDIA · ARM · MediaTek · Samsung · Broadcom

---

## 📅 Roadmap — 5 Phases, 100 Days

| Phase | Days | Focus | Language |
|---|---|---|---|
| **Phase 1** | 1 – 15 | Verilog RTL core — adders, FSMs, FIFOs, memory, clocking | Verilog |
| **Phase 2** | 16 – 40 | SystemVerilog fundamentals — interfaces, types, assertions, OOP | SystemVerilog |
| **Phase 3** | 41 – 60 | Advanced RTL — pipelined arithmetic, DFT, CDC, CPU microarch | Verilog + SV |
| **Phase 4** | 61 – 80 | Protocols — SPI, I2C, UART, AXI4, AXI-Stream, PCIe, Ethernet | SystemVerilog |
| **Phase 5** | 81 – 100 | UVM, formal verification, low-power UPF | SystemVerilog |

---
⚙️ Typical Workflow
RTL Design Flow
1. Write RTL code in VS Code
2. Develop self-checking testbench
3. Simulate design in Vivado / QuestaSim
4. Analyze waveforms and timing behavior
5. Inspect RTL schematics/netlists
6. Debug and optimize the design
7. Commit final implementation to GitHub
## ✅ Progress Tracker

### Phase 1 — Verilog RTL Core (Days 1–15)

| Day | Module | Difficulty | Status | Key Concept |
|---|---|---|---|---|
| 01 | N-bit ripple carry adder — behavioral | Medium | ⬜ | Width extension, carry-out |
| 02 | N-bit adder — structural full-adder chain | Medium | ⬜ | generate/genvar |
| 03 | Barrel shifter — logical shift (left + right) | Medium | ⬜ | Mux-tree, log₂N stages |
| 04 | Barrel shifter — arithmetic right shift | Medium | ⬜ | Sign-bit replication |
| 05 | D flip-flop — sync vs async reset | Medium | ⬜ | Sensitivity list, CLR pin |
| 06 | Synchronous FIFO — pointer logic + flags | Medium | ⬜ | Full/empty decode, count |
| 07 | Priority encoder 8-to-3 with valid bit | Medium | ⬜ | casez, don't-care |
| 08 | Clock divider — even and odd ratio | Medium | ⬜ | Dual-edge phase merge |
| 09 | Mealy FSM — 1011 detector, overlapping | Medium | ⬜ | Combinational output |
| 10 | Moore FSM — 1011 detector, non-overlapping | Medium | ⬜ | Registered output, 5 states |
| 11 | Single-port register file 8×32 | Medium | ⬜ | r0 hardwired, async read |
| 12 | Parameterized MUX — N inputs, generate | Medium | ⬜ | +: part-select, tree depth |
| 13 | Gray code encoder and decoder | Medium | ⬜ | XOR chain, CDC prep |
| 14 | LFSR — Fibonacci maximal-length | Medium | ⬜ | Tap polynomial, BIST |
| 15 | Pulse-width and both-edge detector | Medium | ⬜ | Edge detection, glitch |

### Phase 2 — SystemVerilog Fundamentals (Days 16–40)

| Day | Module | Difficulty | Status | Key Concept |
|---|---|---|---|---|
| 16 | SV interface — basic modport | Medium | ⬜ | Port abstraction |
| 17 | SV interface — clocking block | Medium | ⬜ | Input/output skew |
| 18 | SV interface — parameterized + virtual | Medium | ⬜ | UVM handle prep |
| 19 | SV data types — logic, packed/unpacked | Medium | ⬜ | Synthesis rules |
| 20 | SV packed struct for bus field decode | Medium | ⬜ | Named fields |
| 21 | SV enum FSM — unique case | Medium | ⬜ | Synthesis-safe encoding |
| 22 | always_comb, always_ff, always_latch | Medium | ⬜ | Tool enforcement |
| 23 | SV typedef and localparam | Medium | ⬜ | Clean parameterization |
| 24 | SV function and task — automatic | Medium | ⬜ | Synthesis rules |
| 25 | Immediate assertions — $error, $fatal | Medium | ⬜ | Simulation guards |
| 26 | Concurrent assertion — ##N delay, \|-> | Medium | ⬜ | SVA temporal |
| 27 | SVA sequences — repetition, throughout | Hard | ⬜ | Protocol windows |
| 28 | SVA — AXI valid-stable property | Hard | ⬜ | Real-world SVA |
| 29 | SVA checker — bind construct | Hard | ⬜ | Non-invasive check |
| 30 | Round-robin arbiter — 4 requesters | Hard | ⬜ | Rotating priority |
| 31 | Weighted round-robin arbiter | Hard | ⬜ | Credit-per-requester |
| 32 | Two-flop synchronizer — MTBF | Hard | ⬜ | Metastability |
| 33 | Async FIFO — gray-code pointer CDC | Hard | ⬜ | CDC safe design |
| 34 | Pulse synchronizer — toggle method | Hard | ⬜ | Single-pulse CDC |
| 35 | Multi-cycle path — constraint-aware RTL | Hard | ⬜ | MCP annotation |
| 36 | SV covergroup — coverpoint + cross | Hard | ⬜ | Functional coverage |
| 37 | SV constrained random — solve-before | Hard | ⬜ | Constraint solving |
| 38 | SV class — OOP inheritance | Hard | ⬜ | Virtual methods |
| 39 | SV mailbox and semaphore | Hard | ⬜ | IPC |
| 40 | SV fork-join variants | Hard | ⬜ | TB timing |

### Phase 3 — Advanced RTL + CDC (Days 41–60)

| Day | Module | Difficulty | Status | Key Concept |
|---|---|---|---|---|
| 41 | Booth radix-2 multiplier cell | Hard | ⬜ | Partial product gen |
| 42 | Wallace tree 4-to-2 compressor | Hard | ⬜ | Carry-save add |
| 43 | Non-restoring divider cell | Hard | ⬜ | Radix-2 iteration |
| 44 | FP adder — exponent alignment | Hard | ⬜ | IEEE 754 stage 1 |
| 45 | FP adder — normalize + round | Hard | ⬜ | IEEE 754 stage 2 |
| 46 | SECDED ECC encoder | Hard | ⬜ | Hamming positions |
| 47 | SECDED ECC decoder | Hard | ⬜ | Syndrome decode |
| 48 | JTAG TAP controller FSM | Hard | ⬜ | 16-state machine |
| 49 | Scan chain wrapper | Hard | ⬜ | DFT SE/SI/SO |
| 50 | Systolic FIR — single MAC stage | Hard | ⬜ | Pipeline MAC |
| 51 | FIR filter — full N-tap chain | Hard | ⬜ | DSP systolic |
| 52 | CAM — binary 8-entry | Hard | ⬜ | Parallel compare |
| 53 | Clock gating — ICG cell | Hard | ⬜ | Glitch-free enable |
| 54 | Retention flop controller | Hard | ⬜ | Save/restore |
| 55 | RISC-V ALU — all RV32I ops | Hard | ⬜ | CPU datapath |
| 56 | RISC-V decode unit | Hard | ⬜ | Immediate gen |
| 57 | RISC-V EX stage — forwarding | Hard | ⬜ | Hazard detection |
| 58 | RISC-V IF/ID stage | Hard | ⬜ | PC + flush |
| 59 | RISC-V MEM/WB stage | Hard | ⬜ | Load/store + WB |
| 60 | Branch predictor — 2-bit BHT | Hard | ⬜ | Saturating counter |

### Phase 4 — Protocols (Days 61–80)

| Day | Module | Difficulty | Status | Key Concept |
|---|---|---|---|---|
| 61 | SPI master — mode 0 | Medium | 🔒 | Shift register |
| 62 | SPI master — all 4 modes | Hard | 🔒 | CPOL/CPHA |
| 63 | I2C master — start/stop/ACK | Hard | 🔒 | Open-drain |
| 64 | I2C master — repeated start + stretch | Hard | 🔒 | Clock stretch |
| 65 | UART TX — baud gen + framing | Medium | 🔒 | 16x oversampling |
| 66 | UART RX — majority vote + errors | Hard | 🔒 | 3x sample vote |
| 67 | APB slave — register map | Medium | 🔒 | PSEL/PENABLE |
| 68 | AXI4-Lite slave — write path | Hard | 🔒 | AW+W+B channels |
| 69 | AXI4-Lite slave — read path | Hard | 🔒 | AR+R channels |
| 70 | AXI4-Lite master — write sequencer | Hard | 🔒 | FSM initiator |
| 71 | AXI4 full slave — INCR burst write | Extra Hard | 🔒 | AWLEN/WSTRB |
| 72 | AXI4 full slave — INCR burst read | Extra Hard | 🔒 | Beat counter |
| 73 | AXI-Stream — packet framer | Hard | 🔒 | TVALID/TLAST |
| 74 | AXI-Stream — width converter | Hard | 🔒 | 32→64 packing |
| 75 | AXI4 SVA checker | Hard | 🔒 | Handshake rules |
| 76 | USB 2.0 NRZI encoder + bit-stuffer | Hard | 🔒 | Differential enc |
| 77 | PCIe TLP header builder | Extra Hard | 🔒 | 3DW header |
| 78 | Ethernet CRC-32 — parallel | Hard | 🔒 | LFSR parallel |
| 79 | DMA engine — scatter-gather | Extra Hard | 🔒 | Descriptor fetch |
| 80 | Credit-based flow control | Hard | 🔒 | TX credit counter |

### Phase 5 — UVM + Formal (Days 81–100)

| Day | Module | Difficulty | Status | Key Concept |
|---|---|---|---|---|
| 81 | UVM component hierarchy + factory | Medium | 🔒 | create(), factory |
| 82 | UVM sequence item + field macros | Medium | 🔒 | Randomization |
| 83 | UVM driver — get_next_item | Medium | 🔒 | TLM get port |
| 84 | UVM sequencer + sequence body | Medium | 🔒 | start_item/finish |
| 85 | UVM monitor — analysis port | Medium | 🔒 | ap.write() |
| 86 | UVM scoreboard — reference model | Medium | 🔒 | TLM FIFO |
| 87 | UVM agent — active/passive | Medium | 🔒 | is_active |
| 88 | UVM env + test — top-level | Medium | 🔒 | Phase objection |
| 89 | UVM config_db — interface passing | Hard | 🔒 | set/get pattern |
| 90 | UVM virtual sequence | Hard | 🔒 | Multi-agent coord |
| 91 | UVM factory override | Hard | 🔒 | Type/instance OVR |
| 92 | UVM register model — RAL | Hard | 🔒 | uvm_reg_block |
| 93 | UVM RAL — frontdoor read/write | Hard | 🔒 | predict/mirror |
| 94 | UVM built-in register sequences | Hard | 🔒 | hw_reset, bit-bash |
| 95 | Full UVM TB — AXI4-Lite slave DUT | Extra Hard | 🔒 | Complete TB |
| 96 | Formal — assume/assert/cover | Extra Hard | 🔒 | BMC + CEX |
| 97 | Formal — liveness + reachability | Extra Hard | 🔒 | Induction |
| 98 | Low-power UPF — power domain + ISO | Extra Hard | 🔒 | UPF 2.1 |
| 99 | Low-power UPF — retention flop | Extra Hard | 🔒 | Save/restore |
| 100 | Integration: AXI4-Lite + APB + regfile | Extra Hard | 🔒 | End-to-end |

**Legend:** ✅ Complete · 🔄 In progress · ⬜ Upcoming · 🔒 Locked (starts Day 61+)

---

## 🔧 Tools & Setup
🧪 Simulation & Verification Tools
Vivado

Used for:

RTL simulation
Waveform debugging
Schematic visualization
Synthesis checks
Resource understanding
# Typical Vivado Flow
xvlog design.sv tb.sv
xelab tb -s sim_out
xsim sim_out

QuestaSim / ModelSim

Used mainly for:
SystemVerilog simulation
Assertion verification
Advanced debugging
UVM-oriented workflows
vlog design.sv tb.sv
vsim tb
run -all

GTKWave
Used occasionally for lightweight waveform viewing.
gtkwave waveform.vcd

---

## 📐 Design Rules (Applied Every Day)

These rules are enforced on every RTL file in this repository:

- **No latches** — every `always_comb` has a default assignment; every `case` has a `default`
- **No `casex`** — always use `casez` for don't-care; `casex` masks simulation `x` values
- **Explicit sensitivity lists** — no `always @(*)` in sequential blocks
- **Reset every register** — no uninitialized flip-flops in synthesizable RTL
- **Parameter guards** — every parameterized module includes a `localparam` width check where applicable
- **Self-checking testbenches** — every testbench has explicit pass/fail display, no visual-only waveforms
- **Synthesizable only** — no `#delay`, no `$display` inside RTL modules, no `initial` blocks in RTL
- **r0 = 0** — RISC-V register file always enforces x0 hardwired zero

---

## 🧠 Key Concepts Covered

```
Arithmetic       Adder · Barrel shifter · Booth multiplier · Wallace tree
                 FP adder · Divider · Gray code · LFSR

Sequential       DFF (sync/async) · Counters · Shift registers
                 Ring counter · Johnson counter

Memory           FIFO (sync + async) · Register file · SRAM controller · CAM

FSM              Mealy · Moore · Sequence detector · JTAG TAP · UART · SPI

CDC              Two-flop sync · Gray pointer · Pulse sync · Async FIFO

Protocols        SPI · I²C · UART · APB · AXI4-Lite · AXI4 Full
                 AXI-Stream · USB 2.0 · PCIe TLP · Ethernet MAC · DMA

CPU              ALU · Decode · EX forwarding · IF/ID · MEM/WB
                 Branch predictor

DSP              FIR filter · Systolic MAC

DFT              LFSR BIST · JTAG · Scan chain · SECDED ECC

Low Power        ICG · Retention flop · UPF power domain · ISO cell

UVM              Sequence item · Driver · Monitor · Scoreboard
                 Agent · Env · config_db · Factory · RAL

Formal           Assume/assert/cover · BMC · Liveness · Induction
```

---

## 📝 Day-by-Day Learnings

Each day's folder contains a `README.md` with:

- **Problem statement** — what the module does and why it matters
- **Design spec** — ports, parameters, timing rules
- **Key insight** — the one thing that took the most thought

---

## 📊 Stats

| Metric | Value |
|---|---|
| Total days | 100 |
| Verilog modules | ~35 |
| SystemVerilog modules | ~65 |
| Lines of RTL (target) | ~8,000 |
| Lines of testbench (target) | ~6,000 |
| Protocols covered | 10+ |
| UVM components | 15 |

---

**Follow the journey:** [linkedin.com/in/YOUR-PROFILE](www.linkedin.com/in/ami-arghyadeep)

If this helps you, leave a ⭐ on the repo — it helps others find it.

PRs, issues, and discussion are welcome. If you spot a bug in any RTL module or testbench, open an issue.

---

## 📜 License

This repository is open source under the [MIT License](LICENSE). Use freely for learning, interview prep, and personal projects. Attribution appreciated but not required.

---

**Built one module at a time · Started [START DATE] · Target completion [END DATE]**

`#RTLDesign` `#VLSI` `#Verilog` `#SystemVerilog` `#ChipDesign` `#ASIC` `#100DaysOfRTL`
