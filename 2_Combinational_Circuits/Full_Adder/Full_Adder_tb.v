module Full_Adder_tb();

wire sum,carry;
reg a,b,cin;
integer i;

Full_Adder UUT (a,b,cin,sum,carry);

initial begin

    for(i=0;i<16;i=i+1) begin
        {a,b,cin}=i;
        #10;
    end
    $finish;
end

endmodule 
