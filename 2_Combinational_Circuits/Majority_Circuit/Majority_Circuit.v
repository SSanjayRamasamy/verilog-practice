module Majority_Circuit #(parameter N=10) (input [N-1:0] data_in,output majority_flag);
reg [$clog2(N+1)-1:0] ones_count;
integer i;

always@(*) begin
    ones_count=0;
    for (i=0;i<N;i=i+1) begin
        if(data_in[i]==1)begin
            ones_count=ones_count+1;
        end
    end
end

assign majority_flag=(ones_count>(N>>1));
endmodule