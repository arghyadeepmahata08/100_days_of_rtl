module fa(input a,b,cin,output sum,cout);
assign sum= a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);
endmodule

module adder_n_behav #(parameter N=8)(
 input [N-1:0]a,
 input [N-1:0]b,
 input cin,
 output [N-1:0]sum,
 output cout);

wire [N:0]carry;
assign carry[0]=cin;

genvar i;
generate
for(i=0;i<N;i=i+1) begin: adder_chain
fa inst(.a(a[i]),.b(b[i]),.cin(carry[i]),.sum(sum[i]),.cout(carry[i+1]));
end
endgenerate

assign cout=carry[N];
endmodule