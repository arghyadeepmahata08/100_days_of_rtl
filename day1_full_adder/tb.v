`timescale 1ns/1ps

module tb;

    parameter N = 8;
    reg  [N-1:0] a, b;
    reg          cin;
    wire [N-1:0] sum;
    wire         cout;

    // instantiate dut
    adder_n_behav #(.N(N)) dut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    // reference model
    reg [N:0] expected;

    task check(input [N-1:0] t_a, t_b, input t_c); begin
        a = t_a; b = t_b; cin = t_c;
        #10;
        expected = t_a + t_b + t_c;
        if ({cout,sum} !== expected) begin
            $display("FAIL: a=%0d b=%0d cin=%0d | got cout=%b sum=%0d | exp=%0d",
                      t_a, t_b, t_c, cout, sum, expected);
        end else begin
            $display("PASS: %0d + %0d + %0d = {%b,%0d}", t_a, t_b, t_c, cout, sum);
        end
end
    endtask

    integer seed = 42;
    integer i;

    initial begin
        // Corner cases
        check(0,     0,     0);
        check(8'hFF, 8'hFF, 0);   // max + max->overflow
        check(8'hFF, 8'h01, 0);   // carry-out expected
        check(8'h00, 8'hFF, 1);   // carry-in propagation
        check(8'hAA, 8'h55, 0);   // alternating bits

        // 20 random vectors
        for (i = 0; i < 20; i = i + 1) begin
            check($random(seed) % (1<<N),
                  $random(seed) % (1<<N),
                  $random(seed) % 2);
        end

        $display("--- >>Testbench complete<< ---");
        $finish;
    end

endmodule