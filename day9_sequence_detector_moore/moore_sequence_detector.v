
module moore_sequence_detector (
input clk,rst,in,
output detect);

reg [2:0] state,next_state;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;

// state equation

always @(posedge clk) begin
if(rst)
state <= s0;
else state <= next_state; 
end

// next state equation

always @(*) begin
case (state) 
s0 : begin
if (in==1) 
next_state = s1;
else 
next_state = s0;
end
s1 : begin
if (in==0)
next_state = s2;
else 
next_state = s1;
end
s2 : begin
if(in==1)
next_state = s3;
else next_state = s0;
end
s3 : begin
if (in==1)
next_state = s4;
else next_state = s0;
end
s4 : begin
if (in==0)
next_state = s0;
else 
next_state = s1;
end
default : next_state = s0;
endcase
end

// output generation

assign detect = (state == s4) ? 1 : 0;

endmodule