
module tb_gray_encoder;
parameter N = 4;    
reg [N-1:0] binary;
wire [N-1:0] gray;

// dut instantiation
gray_encoder #(.N(N)) dut ( 
    .binary(binary),
    .gray(gray)
);  
initial begin
    $monitor("Time = %0t, binary = %b, gray = %b", $time, binary, gray);
end 

initial begin
    binary = 4'b0000; #10;
    binary = 4'b0001; #10;
    binary = 4'b0010; #10;
    binary = 4'b0011; #10;
    binary = 4'b0100; #10;
    binary = 4'b0101; #10;
    binary = 4'b0110; #10;
    binary = 4'b0111; #10;
    binary = 4'b1000; #10;
    binary = 4'b1001; #10;
    binary = 4'b1010; #10;
    binary = 4'b1011; #10;
    binary = 4'b1100; #10;
    binary = 4'b1101; #10;
    binary = 4'b1110; #10;
    binary = 4'b1111; #10;  
    $finish;        
    end
endmodule