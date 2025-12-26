module Decoder #(parameter N=4)(input [N-1:0]in,output [size-1:0]out);
localparam size=2**N;
assign out={{(size-1){1'b0}},1'b1}<<in;
endmodule