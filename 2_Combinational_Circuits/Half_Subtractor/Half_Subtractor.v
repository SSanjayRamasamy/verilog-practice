module Half_Subtractor (input a,b,output sum, bout);

assign sum=a^b;
assign bout=~a&b;

endmodule