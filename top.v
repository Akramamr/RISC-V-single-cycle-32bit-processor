module top(input clk ,reset,
            output MemWrite,
            output [31:0 ] ALUOut,WriteData);

    // wire MemWrite;
    // wire [31:0 ] ALUOut,WriteData;
    wire [31:0]PC;
    wire[31:0] ReadData,instr;

    mips mips(clk ,reset,ReadData,instr,
              ALUOut,WriteData,PC,MemWrite);
    
    datamem #(64,5) dmem(clk,MemWrite,ALUOut,WriteData,ReadData);
    instrmem #(64,5) imem(PC[7:2],instr);






endmodule