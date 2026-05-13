`timescale 1ns/1ps

module tb_barrel_shifter_log;
    parameter N = 8, SW = 3;

    reg  [N-1:0] in;
    reg  [SW-1:0] shamt;
    reg           dir;
    wire [N-1:0]  out;

    barrel_shifter_log #(.N(N),.SHAMT_W(SW)) dut (
        .in(in), .shamt(shamt), .dir(dir), .out(out)
    );

task check(input [N-1:0] d, input [SW-1:0] sh, input dr);
    reg [N-1:0] exp;

    begin
        in    = d;
        shamt = sh;
        dir   = dr;
        #10;

        exp = (dr == 0) ? (d << sh) : (d >> sh);

        if (out !== exp[N-1:0])
            $display("FAIL: in=%b sh=%0d dir=%0d | got=%b exp=%b",
                     d, sh, dr, out, exp[N-1:0]);
        else
            $display("PASS: %b %s %0d = %b",
                     d, dr ? ">>>" : "<<<", sh, out);
    end
endtask

    integer i;
    initial begin
        check(8'hAB, 0, 0);   check(8'hAB, 0, 1); // Identity: shift by 0

        // Left shifts
        check(8'b00000001, 1, 0);   // 0000_0010
        check(8'b10000000, 1, 0);   // MSB dropped, 0000_0000
        check(8'hFF,       3, 0);   // F8
        check(8'hFF,       8, 0);   // 00 (full width shift ? check your param)

        // Right shifts
        check(8'b10000000, 1, 1);   // 0100_0000
        check(8'b00000001, 1, 1);   // 0000_0000
        check(8'hFF,       3, 1);   // 1F

        // All shift amounts 0-7 both directions
        for(i=0;i<N;i=i+1) begin
            check(8'hA5, i[SW-1:0], 0);
            check(8'hA5, i[SW-1:0], 1);
        end

        $display("--> done <--"); $finish;
    end
endmodule