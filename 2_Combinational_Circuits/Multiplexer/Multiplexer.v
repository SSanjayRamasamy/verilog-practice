module Multiplexer #(parameter  bitWidth=10,selectLine=2) (input [(bitWidth*(1<<selectLine))-1:0]data_in, input [selectLine-1:0] sel, output reg [bitWidth-1:0]data_out);

always@(*) begin
    data_out=data_in[sel*bitWidth+:bitWidth];
end
endmodule