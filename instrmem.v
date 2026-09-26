module instrmem(addr,data);
    parameter DEPTH = 16;
    parameter SIZE = 3;

    input [$clog2(DEPTH)-1:0]addr;
    output [2**SIZE-1:0] data;

    reg [2**SIZE-1:0] arom [DEPTH-1:0];

    assign data = arom[addr];

    initial begin
        $readmemh("instr.dat",arom);
    end
 
endmodule