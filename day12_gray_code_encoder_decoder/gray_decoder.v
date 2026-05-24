module gray_decoder #(
    parameter N=4
)(
    input wire [N-1:0] gray,
    output reg [N-1:0] binary
);
integer i;
always @(*) begin
    binary [N-1] = gray [N-1]; // MSB is same for both binary and gray  

    for(i = N-2; i >= 0; i = i - 1) begin
        binary[i] = binary[i+1] ^ gray[i];
    end
end

endmodule
