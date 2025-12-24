`timescale 1ns/1ps

module NOT_gate_tb();
reg a;
wire y;
integer i;
NOT_gate UUT (a,y);
initial begin
for(i=0;i<2;i=i+1) begin
    a=i;
    #10;          
end
 $finish;
end
endmodule
