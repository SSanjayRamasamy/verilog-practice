`timescale 1ns/1ps

module AND_gate_tb();
    reg a, b;
    wire y;
    integer i;

    AND_gate UUT (a, b, y);

    // *** FORCE VCD GENERATION ***
    initial begin
        $dumpfile("dump.vcd");     // VCD file name
        $dumpvars(0, AND_gate_tb); // Dump all signals
    end

    initial begin
        // Apply all combinations
        {a, b} = 2'b00;
        #10;
        {a, b} = 2'b01;
        #10;
        {a, b} = 2'b10;
        #10;
        {a, b} = 2'b11;
        #10;

        #50;   // Give simulator time to write VCD
        $finish;
    end
endmodule
