module Signed_FixedPoint_Comparator_tb();
localparam N=10,
           A_point=4,
           B_point=3;
wire greater,equal,lesser;
reg signed [N-1:0] a,b;

Signed_FixedPoint_Comparator #(N,A_point,B_point)UUT (a,b,greater,equal,lesser);

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
    a = 10'sd80;   // 5.0 in Q6.4
    b = 10'sd40;   // 5.0 in Q7.3
    #10;
    a = 10'sd83;   // ~5.1875 in Q6.4
    b = 10'sd41;   // ~5.125  in Q7.3
    #10;
    a = 10'sd80;   // 5.0
    b = 10'sd39;   // 4.875 (1 LSB smaller)
    #10;
    a = 10'sd100;  // 6.25
    b = 10'sd40;   // 5.0
    #10;
    a = 10'sd80;   // 5.0
    b = 10'sd50;   // 6.25
    #10;
    a = -10'sd83;  // -5.1875
    b = -10'sd42;  // -5.25
    #10;
    a = -10'sd20;  // -1.25
    b = -10'sd30;  // -3.75
    #10;
    a = -10'sd100; // -6.25
    b = -10'sd20;  // -2.5
    #10;
    a = -10'sd32;  // -2.0
    b =  10'sd16;  // +2.0
    #10;

    $finish;
end
endmodule