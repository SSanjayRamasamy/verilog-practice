module Parity_Encoder_Even_tb ();

localparam N=10, parity_index=5;
reg [N-1:0]data_in ;
wire [N:0] data_out;

Parity_Encoder_Even #(N, parity_index) UUT (data_in,data_out);

initial begin

    repeat(10) begin
        data_in=$urandom;
        #10;
    end
    $finish;
end


endmodule