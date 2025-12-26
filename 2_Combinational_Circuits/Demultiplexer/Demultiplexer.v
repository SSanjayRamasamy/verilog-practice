module Demultiplexer #(parameter bitWidth=4,selectLine=2) (input [bitWidth-1:0]data_in,input[selectLine-1:0]sel,output reg [(bitWidth*(2**selectLine))-1:0]data_out);

always@(*) begin
    data_out=0;
    data_out[sel*bitWidth +:bitWidth]=data_in;  
end
endmodule