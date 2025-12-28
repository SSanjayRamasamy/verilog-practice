module Half_Subtractor_tb();

wire sum,bout;
reg a,b;
integer i;

Half_Subtractor UUT (a,b,sum, bout);

initial begin
    for(i=0;i<4;i=i+1) begin
        {a,b}=i;
        #10;
    end
    $finish;
end

endmodule 