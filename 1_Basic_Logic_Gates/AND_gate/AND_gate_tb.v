`timescale 1ns/1ps

module AND_gate_tb();
reg a, b;
wire y;
integer i;
AND_gate UUT (a, b, y);
initial begin
for(i=0;i<4;i=i+1) begin
    {a,b}=i;
    #10;          
end
$finish;
end
endmodule
