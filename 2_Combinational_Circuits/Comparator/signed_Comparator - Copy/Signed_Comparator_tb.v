module Comparator_tb();
localparam N=100;
wire greater,equal,lesser;
reg [N-1:0]a,b;

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
    $finish;
end
endmodule