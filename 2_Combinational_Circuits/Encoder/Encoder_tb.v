module Encoder_tb();

localparam N=4; 
reg [(2**N)-1:0] data_in;
wire [N-1:0]data_out;
integer i;

Encoder #(N) UUT (data_in,data_out);

initial begin
    for (i=0;i<2**N;i=i+1) begin
        data_in={{(N-1){1'b0}},1'b1}<<i;
        #10;
    end
    $finish;
end

endmodule
