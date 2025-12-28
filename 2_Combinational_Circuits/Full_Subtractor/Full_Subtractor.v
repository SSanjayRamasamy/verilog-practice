module Full_Subtractor (input a,b,bin, output diff, bout);

assign diff=a^b^bin;
assign bout=~a&b|b&bin|bin&~a;

endmodule