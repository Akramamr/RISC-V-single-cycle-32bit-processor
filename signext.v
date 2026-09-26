module signext(in,out);
parameter WIDTH = 32;
parameter HALF_WIDTH = 16;

input [HALF_WIDTH-1:0] in;
output [WIDTH-1:0] out;

assign out ={{HALF_WIDTH{in[HALF_WIDTH-1]}},in};

endmodule