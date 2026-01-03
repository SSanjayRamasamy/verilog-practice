module Parity_Generator_Odd #(parameter dataSize=10)(input [dataSize-1:0]data_in, output parity_bit);

assign parity_bit=~^data_in;

endmodule