module Signed_Integer_Comparator #(parameter N=8)(input signed [N-1:0]a,b, output greater,equal,lesser);

assign greater=a>b?1:0;
assign equal=(a==b)?1:0;
assign lesser=a<b?1:0;
endmodule