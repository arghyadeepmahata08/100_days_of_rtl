
module pulse_width_detect #(
    parameter max_width = 15,
    parameter cnt_width = 4)(
        input clk,
        input rst,
        input sig,
        output reg [cnt_width-1:0] width,
        output reg valid
    );
    reg [cnt_width-1:0] cnt;
    reg sig_d;

    wire rise,fall;
    
    assign rise = sig & ~sig_d; // rising edge
    assign fall = ~sig & sig_d; // falling edge

    always @(posedge clk) begin
        if (rst) begin
            sig_d <= 1'b0;
            cnt <= 0;
            width <= 1'b0;
            valid <= 1'b0;
        end
        else begin
            sig_d <= sig;
            if (rise) begin
                cnt <= 1'b1;
                valid <= 1'b0;
            end
            else if (sig && cnt<max_width) begin // count pulse width       
                cnt <= cnt + 1;
            end
            
            if (fall) begin
                width <= cnt;
                valid <= 1'b1;
        end
        else valid <= 1'b0; 
        end     
    end
endmodule