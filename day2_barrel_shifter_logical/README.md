# Logarithmic Barrel Shifter

## Problem Statement
Design a hardware module capable of shifting an N-bit data bus by a variable amount in a single combinational path. Traditional iterative shifters are too slow for high-performance processors; therefore, a logarithmic structure is required to minimize gate delay and area while supporting both left and right logical shifts.

## Theory
A logarithmic barrel shifter breaks the shifting operation into stages based on powers of two. For an $N$-bit input, the design utilizes log_2(N) stages.
- Each stage k (where k = 0, 1, 2, ...$) is responsible for a potential shift of 2^k bits.
- If the k-th bit of the shift amount (`shamt[k]`) is '1', the data is shifted by 2^k positions; otherwise, it is passed through to the next stage unchanged.
- This results in a total shift equal to the binary value of the `shamt` input.
- Direction is handled by conditionally selecting between left-shift (padding LSBs with 0) and right-shift (padding MSBs with 0) logic at each stage.

## Ports & Parameters
| Name    | Type | Description |
| :---    | :--- | :--- |
| **N**   | Parameter | Data bus width (Default: 8). |
|**SHAMT_W**| Parameter | Width of shift amount (must equal log_2(N)). |
| **in**  | Input | N-bit data to be shifted. |
|**shamt**| Input | Control signal indicating the number of bits to shift. |
| **dir** | Input | Direction control (0: Left Shift, 1: Right Shift). |
| **out** | Output | N-bit shifted result. |

## Verification
The design includes a testbench (`tb_barrel_shifter_log`) that verifies:
- Identity shifts (0 bits).
- Maximum width shifts.
- Exhaustive validation of all 2 	imes N shift combinations against behavioral models.