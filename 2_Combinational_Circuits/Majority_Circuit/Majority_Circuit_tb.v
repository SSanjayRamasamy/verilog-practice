module Majority_Circuit_tb ();

localparam N=10; 
reg [N-1:0] data_in;
wire majority_flag;

Majority_Circuit #(N) UUT (data_in,majority_flag);

initial begin
    repeat(10) begin
        data_in=$urandom();
        #10;
    end
    $finish;
end
endmodule