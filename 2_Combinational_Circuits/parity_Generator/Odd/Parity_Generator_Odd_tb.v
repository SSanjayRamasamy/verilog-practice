module Parity_Generator_Odd_tb ();

localparam dataSize=5;
reg [dataSize-1:0] data_in;
wire  parity_bit;

Parity_Generator_Odd #(dataSize) UUT (data_in,parity_bit);

initial begin

    repeat(10) begin
        data_in=$urandom;
        #10;
    end
    $finish;
end


endmodule