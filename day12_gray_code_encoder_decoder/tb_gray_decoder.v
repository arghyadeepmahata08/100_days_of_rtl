
module tb_gray_decoder;
parameter N=4;
reg [N-1:0] gray;
wire [N-1:0] binary;
// dut instantiation
gray_decoder #(.N(N)) dut (
    .gray(gray),
    .binary(binary)
);  
initial begin
    $monitor("Time = %0t, gray = %b, binary = %b", $time, gray, binary);
end 
initial begin
    gray = 4'b0000; #10;
    gray = 4'b0001; #10;
    gray = 4'b0011; #10;
    gray = 4'b0010; #10;
    gray = 4'b0110; #10;
    gray = 4'b0111; #10;
    gray = 4'b0101; #10;
    gray = 4'b0100; #10;
    gray = 4'b1100; #10;
    gray = 4'b1101; #10;
    gray = 4'b1111; #10;
    gray = 4'b1110; #10;
    gray = 4'b1010; #10;
    gray = 4'b1011; #10;
    gray = 4'b1001; #10;
    gray = 4'b1000; #10;  
    $finish;        
end
endmodule