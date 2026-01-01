module Parity_Checker_Even_tb ();

localparam dataSize=10; 
reg [dataSize-1:0] data_in;
reg parity_bit;
wire error_flag;


Parity_Checker_Even #(dataSize) UUT (data_in,parity_bit,error_flag);

initial begin

    repeat(10) begin
        data_in=$urandom;
        parity_bit=$urandom;
        #10;
    end
    $finish;
end

endmodule
