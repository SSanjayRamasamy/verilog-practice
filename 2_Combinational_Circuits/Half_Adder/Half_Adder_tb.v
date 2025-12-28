module Half_Adder_tb();

wire sum,carry;
reg a,b;
integer i;

Half_Adder UUT (a,b,sum,carry);

initial begin
    for(i=0;i<4;i=i+1) begin
        {a,b}=i;
        #10;
    end
    $finish;
end

endmodule 
