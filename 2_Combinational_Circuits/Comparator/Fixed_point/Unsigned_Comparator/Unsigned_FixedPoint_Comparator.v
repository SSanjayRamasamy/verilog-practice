module Unsigned_FixedPoint_Comparator #(parameter N=8,A_point=4,B_point=3)(input [N-1:0]a,b, output greater,equal,lesser);

wire [N-1:0] A_normalised,B_normalised,diff_mag;

assign A_normalised=(A_point>B_point)?(a>>(A_point-B_point)):a;

assign B_normalised=(B_point>A_point)?(b>>(B_point-A_point)):b;

assign diff_mag=A_normalised>B_normalised?A_normalised-B_normalised:
                A_normalised<B_normalised?B_normalised-A_normalised:
                0;

assign greater=diff_mag>=1?(A_normalised>B_normalised?1:0):0;
assign equal=diff_mag<1?1:0;
assign lesser=diff_mag>=1?(A_normalised<B_normalised?1:0):0;
endmodule