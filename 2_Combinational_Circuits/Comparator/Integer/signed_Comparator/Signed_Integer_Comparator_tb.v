module Signed_Integer_Comparator_tb();
localparam N=10;
wire greater,equal,lesser;
reg signed [N-1:0]a,b;

Comparator #(N) UUT (a,b,greater,equal,lesser);

initial begin
    repeat(5) begin
        a=$random;
        b=$random;
        #10;
    end
    a=100;
    b=100;
    #10;
    a=0;
    b=0;
    #10;
    a=-10'sd100;
    b=-10'sd100;
    #10;
    a=-10'sd100;
    b=-10'sd99;
    #10;
    a=10'sd100;
    b=-10'sd100;
    #10;
    $finish;
end
endmodule