
module mealy_seq_det (
 input clk,rst,in,
 output detect);

// state declaration
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0] state,next_state;

// present state equation

always @(posedge clk) begin
if(rst)
state <= s0;
else 
state <= next_state;
end

//next state equation
always @(*) begin
case (state) 
s0: begin
    if (in==1)
    next_state = s1;
    else
    next_state = s0;
    end
s1: begin
    if(in==0) 
    next_state = s2;
    else 
    next_state = s1;
    end
s2: begin
    if(in==1) 
    next_state = s3;
    else
    next_state = s0;
    end
s3: begin
    if (in==1)
    next_state = s1;
    else
    next_state = s2;
    end
default : next_state = s0;
endcase
end

// output declaration
assign detect = ((state==s3) && (in==1)) ? 1 : 0;

endmodule
