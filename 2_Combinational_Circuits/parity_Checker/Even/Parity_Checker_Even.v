module Parity_Checker_Even #(parameter dataSize=10) (input [dataSize-1:0] data_in,input parity_bit,output error_flag);

assign error_flag=^{data_in,parity_bit};

endmodule