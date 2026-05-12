module adder_n_behav #(parameter N=8)(
 input [N-1:0]a,
 input [N-1:0]b,
 input cin,
 output [N-1:0]sum,
 output cout);

wire [N:0]result;
assign result = a+b+cin;
assign sum = result [N-1:0];
assign cout = result [N];
endmodule