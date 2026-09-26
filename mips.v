module mips(input clk,reset,
            input [31:0] ReadData,instr,
        //     input [5:0] funct,opcode,
            output [31:0] ALUResult,WriteData,PC,
            output MemWrite
            );

    wire [2:0] ALUControl;
    wire RegWrite,RegDst,ALUSrc,MemtoReg;
    wire Zero,PCSrc;
    wire jump;

    controller cntrl(instr[5:0],instr[31:26],Zero,MemWrite,
                    RegWrite,MemtoReg,RegDst,ALUSrc,
                    PCSrc,jump,ALUControl);
    datapath dp(clk,reset,RegWrite,RegDst,ALUSrc,MemtoReg,PCSrc,
                ALUControl,jump,ReadData,instr,ALUResult,WriteData,PC,Zero);

endmodule