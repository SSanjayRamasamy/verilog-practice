module Encoder #(parameter N=2) (input [(2**N)-1:0] data_in,output reg [N-1:0]data_out);

integer i;

always@(*) begin
    data_out=0;
    for (i=0;i<=(2**N)-1;i=i+1) begin
            if(data_in[i]==1'b1) begin
                data_out=i;
            end
    end
end
endmodule