module controller(input [5:0] funct,op,
                  input ZeroFlag,
                  output MemWrite  ,RegWrite,
                  output MemtoReg ,RegDst,
                  output ALUSrc,PCSrc,
                  output jump,
                  output [2:0] alucontrol
                    );
    wire [1:0] ALUOp;
    wire Branch;

    maindec md (op,MemtoReg,MemWrite,Branch,ALUSrc,RegDst,RegWrite,jump,ALUOp);
    aludec  ad (funct,ALUOp,alucontrol);

    assign PCSrc =ZeroFlag & Branch;


endmodule