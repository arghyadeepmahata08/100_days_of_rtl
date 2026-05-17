class bit_gen;
    rand logic [7:0] in_gen;
endclass


module test;
    bit_gen gen = new();

    logic [7:0] in;
    logic valid;
    logic [2:0] out;

    priority_encoder_8to3 dut (
        .in(in),
        .valid(valid),
        .out(out)
    );

    initial begin
        repeat (20) begin
            gen.randomize();
            in = gen.in_gen;
            #3;
            $display("in=%b, valid=%0b, out=%0b, time=%0t",in, valid, out, $time);
        end

        $finish;

    end

endmodule