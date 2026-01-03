module Parity_Encoder_Even #(parameter N=10, parity_index=5) (input [N-1:0]data_in , output reg [N:0] data_out);

integer i;

always@(*) begin

    for(i=0;i<=N;i=i+1) begin
    
        if(i==parity_index) begin
            data_out[i]=^data_in;
        end
        
        else if (i<parity_index) begin
            data_out[i]=data_in[i];
        end
        
        else if(i>parity_index) begin
            data_out[i]=data_in[i-1];
        end
        
    end

end

endmodule