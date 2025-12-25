module Unsigned_FixedPoint_Comparator_tb();
localparam N=10,
           A_point=4,
           B_point=3;

wire greater,equal,lesser;
reg [N-1:0]a,b;

Unsigned_FixedPoint_Comparator #(N,A_point,B_point) UUT (a,b,greater,equal,lesser);

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
    a=83;//~~5.2 in Q6.4
    b=41;//~~5.2 in Q7.3
    #10;
    $finish;
end
endmodule