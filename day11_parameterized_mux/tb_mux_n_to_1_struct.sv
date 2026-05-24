module tb_mux_n_to_1_struct;

    parameter int N = 8;
    parameter int W = 8;

    logic [W-1:0] in [N];
    logic [$clog2(N)-1:0] sel;
    logic [W-1:0] out;

    // DUT instantiation
    mux_n_to_1_struct #(
        .N(N),
        .W(W)
    ) dut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    // Test variables
    int i;

    initial begin

        // Initialize random inputs
        for(i = 0; i < N; i++) begin
            in[i] = $urandom_range(0, 255);
        end

        $display("\n ----->>INPUT VALUES<<------");

        for(i = 0; i < N; i++) begin
            $display("in[%0d] = %0h", i, in[i]);
        end

        $display("\n-----> Test Starts <-----");

        // Apply all select values
        for(i = 0; i < N; i++) begin

            sel = i;

            #5;

            // Display
            $display("sel = %0d | out = %0h | expected = %0h",
                      sel, out, in[i]);

            // Automatic check
            if(out !== in[i]) begin
                $display("TEST FAILED at sel = %0d", sel);
            end
            else begin
                $display("TEST PASSED");
            end

            $display("--------------------------------");
        end

        $display("===== TEST COMPLETE =====");

        #10;
        $finish;

    end

endmodule
