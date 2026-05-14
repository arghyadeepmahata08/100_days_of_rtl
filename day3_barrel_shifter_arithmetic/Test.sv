`timescale 1ns/1ps
module tb_barrel_shifter_arith;
    parameter N=8, SW=3;

    reg signed [N-1:0] in;
    reg        [SW-1:0] shamt;
    wire signed [N-1:0] out;

    barrel_shifter_arith_r8 #(.N(N),.shamt(SW)) dut(.in(in),.shamt_w(shamt),.out(out));

    task check(input signed [N-1:0] d, input [SW-1:0] sh);
        reg signed [N-1:0] exp;
        in=d; shamt=sh; #10;
        exp = d >>> sh;          // Verilog signed >>> is ASR
        if(out !== exp)
            $display("FAIL: in=%0d sh=%0d | got=%0d exp=%0d",d,sh,out,exp);
        else
            $display("PASS: %0d >>> %0d = %0d  [%b]",d,sh,out,out);
    endtask

    integer i;
    initial begin
        // Identity
        check(-36, 0);   check(100, 0);

        // Positive ? ASR identical to LSR
        check(8'sd64,  1);   // 64 >> 1 = 32
        check(8'sd100, 2);   // 100 >> 2 = 25

        // Negative ? sign must be preserved
        check(-8'sd1,  1);   // -1 >>> 1 = -1  (all ones)
        check(-8'sd36, 3);   // -36 >>> 3 = -5
        check(-8'sd1,  7);   // -1 >>> 7 = -1
        check(-8'sd64, 1);   // -64 >>> 1 = -32
        check(-8'sd128,1);   // most negative

        // All shift amounts
        for(i=0;i<N;i=i+1) begin
            check(-8'sd100, i[SW-1:0]);
            check( 8'sd100, i[SW-1:0]);
        end

        $display("--- done ---"); $finish;
    end
endmodule