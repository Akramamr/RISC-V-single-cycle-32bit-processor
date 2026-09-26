

module datamem 
(  clk,we,addr,wd,rd
);

    parameter DEPTH = 16;
    parameter SIZE = 3;

    input clk;
    input we;
    input [2**SIZE-1:0] addr;
    input [2**SIZE-1:0] wd;
    output [2**SIZE-1:0] rd;
    
    

    reg [2**SIZE-1:0] mem [DEPTH-1:0];

    always @(posedge clk) begin
        if(we)
            mem[addr[2**SIZE-1:2]] <=wd ;
        
    end
    assign  rd = (addr!=0)? mem[addr[2**SIZE-1:2]]: {2**SIZE{1'bz}};

endmodule




