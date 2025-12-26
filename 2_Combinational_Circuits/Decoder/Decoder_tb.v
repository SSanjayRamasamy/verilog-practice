module Decoder_tb();
localparam N=4;
reg [N-1:0]in;
wire [(2**N)-1:0]out;
integer i;

Decoder #(N) UUT (in,out);

initial begin
    for (i=0;i<(2**N);i=i+1) begin
        in=i;
        #10;
    end
    $finish;
end
endmodule