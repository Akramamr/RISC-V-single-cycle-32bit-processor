module datapath(
    input clk,reset,
    input RegWrite,RegDst,
    input ALUSrc,MemtoReg,
    input PCSrc,
    input [2:0] ALUControl,
    input jump,
    input [31:0] ReadData,instr,
    output [31:0] ALUResult,WriteData,PC,
    output Zero
);

    wire [31:0]PCBranch,PCPlus4,PCNext,PCNextBranch;
    wire[31:0] signimm,signimm_sh;
    wire[4:0]WriteReg;
    wire [31:0]result;
    wire [31:0]srca,srcb;

    d_ff pc(PCNext,clk,reset,PC);
    adder pcplus4(PC,32'b100,PCPlus4);
    sl2 sl2(signimm,signimm_sh);
    adder pcbr(signimm_sh,PCPlus4,PCBranch);
    mux_2_1 muxbr (PCSrc,PCPlus4,PCBranch,PCNextBranch);
    mux_2_1 muxjmp(jump,PCNextBranch,{PCPlus4[31:28],instr[25:0],2'b00},PCNext);

    regfile #(32,5) rf (clk,RegWrite,instr[25:21],instr[20:16],WriteReg,result,srca,WriteData);
    mux_2_1 #(5) muxWrReg (RegDst,instr[20:16],instr[15:11],WriteReg);
    mux_2_1 muxRes (MemtoReg,ALUResult,ReadData,result);

    signext se(instr[15:0],signimm);
    mux_2_1 srcB (ALUSrc,WriteData,signimm,srcb);

    alu alu (srca,srcb,ALUControl,ALUResult,Zero);






endmodule