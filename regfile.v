

module regfile 
(  clk,we3,ra1,ra2,wa3,wd3,rd1,rd2
);

    parameter DEPTH = 16;
    parameter SIZE = 3;

    input clk;
    input we3;
    input [$clog2(DEPTH)-1:0] ra1,ra2,wa3;
    input [2**SIZE-1:0] wd3;
    output [2**SIZE-1:0] rd1,rd2;
    
    

    reg [2**SIZE-1:0] mem [DEPTH-1:0];

    always @(posedge clk) begin
        if(we3)
            mem[wa3] <=wd3 ;
        
    end
    assign  rd1 = (ra1!=0)? mem[ra1]: {2**SIZE{1'b0}};
    assign  rd2 = (ra2!=0)? mem[ra2]: {2**SIZE{1'b0}};

endmodule




