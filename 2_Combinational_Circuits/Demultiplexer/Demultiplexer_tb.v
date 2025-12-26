module Demultiplexer_tb();
localparam bitWidth=4,selectLine=2; 
reg [bitWidth-1:0]data_in;
reg [selectLine-1:0]sel;
wire [(bitWidth*(2**selectLine))-1:0] data_out;

Demultiplexer #(bitWidth,selectLine) UUT (data_in,sel,data_out);

initial begin
    repeat(5) begin
        data_in=$random;
        sel=$random;
        #10;
    end
    $finish;
end
endmodule
