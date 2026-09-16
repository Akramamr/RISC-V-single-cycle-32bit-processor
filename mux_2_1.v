module mux_2_1 (s,in0,in1,out);

parameter WIDTH = 32;

input [WIDTH-1:0] in0,in1;
input s;
output out;

assign out = s? in1 :in0;


endmodule



































// module mux_2_1(s,d0,d1,y);
//     input s,d0,d1;
//     output y;

//     wire not_s,outg1,outg2;

//     notgate g1 (s,not_s);
//     andgate g2 (d0,not_s,outg1);
//     andgate g3 (d1,s,outg2);
//     orgate  g4(outg1,outg2,y);


// endmodule

// module notgate(a,y);
//     input a;
//     output y;

//     assign y =~a;

// endmodule

// module andgate(a,b,y);
//     input a,b;
//     output y;

//     assign y = a & b;

// endmodule

// module orgate(a,b,y);
//     input a,b;
//     output y;

//     assign y =a | b;

// endmodule